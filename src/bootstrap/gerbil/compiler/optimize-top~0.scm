(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710776833)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130599 (list gxc#::void::t))
            (__tmp130597
             (let ((__tmp130598
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130598 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130599
         '()
         __tmp130597
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128493_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128493_)))
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
      (lambda (_stx128485_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128488_
                (let ((__obj130580
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130580))
               (__tmp130600
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128488_ _stx128485_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130600
           gxc#current-compile-method
           _self128488_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130603 (list gxc#::false::t))
            (__tmp130601
             (let ((__tmp130602
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130602 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130603
         '()
         __tmp130601
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128482_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128482_)))
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
      (lambda (_stx128474_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128477_
                (let ((__obj130582
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130582))
               (__tmp130604
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128477_ _stx128474_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130604
           gxc#current-compile-method
           _self128477_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130607 (list gxc#::void::t))
            (__tmp130605
             (let ((__tmp130606
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130606 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130607
         '()
         __tmp130605
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128471_
        (apply make-instance gxc#::collect-type-info::t _$args128471_)))
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
      (lambda (_stx128463_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128466_
                (let ((__obj130584
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130584))
               (__tmp130608
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128466_ _stx128463_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130608
           gxc#current-compile-method
           _self128466_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130611 (list gxc#::false::t))
            (__tmp130609
             (let ((__tmp130610
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130610 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130611
         '()
         __tmp130609
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128460_
        (apply make-instance gxc#::basic-expression-type::t _$args128460_)))
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
      (lambda (_stx128452_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128455_
                (let ((__obj130586
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130586))
               (__tmp130612
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128455_ _stx128452_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130612
           gxc#current-compile-method
           _self128455_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130615 (list gxc#::basic-xform::t))
            (__tmp130613
             (let ((__tmp130614
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130614 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130615
         '()
         __tmp130613
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128449_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128449_)))
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
      (lambda (_stx128441_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128444_
                (let ((__obj130588
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130588))
               (__tmp130616
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128444_ _stx128441_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130616
           gxc#current-compile-method
           _self128444_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128343_ _stx128344_)
        (let* ((___stx128506128507_ _stx128344_)
               (_g128347128367_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128506128507_)))))
          (let ((___kont128508128509_
                 (lambda (_L128411_ _L128412_)
                   (let ((_sym128430_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128412_))))
                     (if (let ((__tmp130617 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130617 _sym128430_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128430_))
                         (let ((_type128431128433_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128411_))))
                           (if _type128431128433_
                               (let ((_type128436_ _type128431128433_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128430_
                                  _type128436_))
                               '#f))))))
                (___kont128510128511_ (lambda () '#!void)))
            (let ((___match128539128540_
                   (lambda (_e128353128379_
                            _hd128352128382_
                            _tl128351128384_
                            _e128356128387_
                            _hd128355128390_
                            _tl128354128392_
                            _e128359128395_
                            _hd128358128398_
                            _tl128357128400_
                            _e128362128403_
                            _hd128361128406_
                            _tl128360128408_)
                     (let ((_L128411_ _hd128361128406_)
                           (_L128412_ _hd128358128398_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128412_))
                           (___kont128508128509_ _L128411_ _L128412_)
                           (___kont128510128511_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128506128507_))
                  (let ((_e128353128379_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128506128507_))))
                    (let ((_tl128351128384_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128353128379_)))
                          (_hd128352128382_
                           (let ()
                             (declare (not safe))
                             (##car _e128353128379_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128351128384_))
                          (let ((_e128356128387_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128351128384_))))
                            (let ((_tl128354128392_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128356128387_)))
                                  (_hd128355128390_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128356128387_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128355128390_))
                                  (let ((_e128359128395_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128355128390_))))
                                    (let ((_tl128357128400_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128359128395_)))
                                          (_hd128358128398_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128359128395_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128357128400_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128354128392_))
                                              (let ((_e128362128403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128354128392_))))
                                                (let ((_tl128360128408_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128362128403_)))
                                                      (_hd128361128406_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128362128403_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128360128408_))
                                                      (___match128539128540_
                                                       _e128353128379_
                                                       _hd128352128382_
                                                       _tl128351128384_
                                                       _e128356128387_
                                                       _hd128355128390_
                                                       _tl128354128392_
                                                       _e128359128395_
                                                       _hd128358128398_
                                                       _tl128357128400_
                                                       _e128362128403_
                                                       _hd128361128406_
                                                       _tl128360128408_)
                                                      (___kont128510128511_))))
                                              (___kont128510128511_))
                                          (___kont128510128511_))))
                                  (___kont128510128511_))))
                          (___kont128510128511_))))
                  (___kont128510128511_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self128198_ _stx128199_)
        (let* ((___stx128542128543_ _stx128199_)
               (_g128202128233_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128542128543_)))))
          (let ((___kont128544128545_
                 (lambda (_L128315_ _L128316_)
                   (let ((_sym128332_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128316_))))
                     (if (let ((__tmp130618 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130618 _sym128332_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128332_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128332_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128332_))
                             (let ((_type128333128335_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128315_))))
                               (if _type128333128335_
                                   (let ((_type128338_ _type128333128335_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128332_
                                      _type128338_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self128198_ _L128315_)))))
                (___kont128546128547_
                 (lambda (_L128262_ _L128263_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self128198_ _L128262_)))))
            (let ((___match128575128576_
                   (lambda (_e128208128283_
                            _hd128207128286_
                            _tl128206128288_
                            _e128211128291_
                            _hd128210128294_
                            _tl128209128296_
                            _e128214128299_
                            _hd128213128302_
                            _tl128212128304_
                            _e128217128307_
                            _hd128216128310_
                            _tl128215128312_)
                     (let ((_L128315_ _hd128216128310_)
                           (_L128316_ _hd128213128302_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128316_))
                           (___kont128544128545_ _L128315_ _L128316_)
                           (___kont128546128547_
                            _hd128216128310_
                            _hd128210128294_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128542128543_))
                  (let ((_e128208128283_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128542128543_))))
                    (let ((_tl128206128288_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128208128283_)))
                          (_hd128207128286_
                           (let ()
                             (declare (not safe))
                             (##car _e128208128283_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128206128288_))
                          (let ((_e128211128291_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128206128288_))))
                            (let ((_tl128209128296_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128211128291_)))
                                  (_hd128210128294_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128211128291_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128210128294_))
                                  (let ((_e128214128299_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128210128294_))))
                                    (let ((_tl128212128304_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128214128299_)))
                                          (_hd128213128302_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128214128299_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128212128304_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128209128296_))
                                              (let ((_e128217128307_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128209128296_))))
                                                (let ((_tl128215128312_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128217128307_)))
                                                      (_hd128216128310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128217128307_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128215128312_))
                                                      (___match128575128576_
                                                       _e128208128283_
                                                       _hd128207128286_
                                                       _tl128206128288_
                                                       _e128211128291_
                                                       _hd128210128294_
                                                       _tl128209128296_
                                                       _e128214128299_
                                                       _hd128213128302_
                                                       _tl128212128304_
                                                       _e128217128307_
                                                       _hd128216128310_
                                                       _tl128215128312_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128202128233_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128202128233_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128209128296_))
                                              (let ((_e128228128254_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128209128296_))))
                                                (let ((_tl128226128259_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128228128254_)))
                                                      (_hd128227128257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128228128254_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128226128259_))
                                                      (___kont128546128547_
                                                       _hd128227128257_
                                                       _hd128210128294_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128202128233_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128202128233_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl128209128296_))
                                      (let ((_e128228128254_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl128209128296_))))
                                        (let ((_tl128226128259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e128228128254_)))
                                              (_hd128227128257_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e128228128254_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl128226128259_))
                                              (___kont128546128547_
                                               _hd128227128257_
                                               _hd128210128294_)
                                              (let ()
                                                (declare (not safe))
                                                (_g128202128233_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g128202128233_))))))
                          (let () (declare (not safe)) (_g128202128233_)))))
                  (let () (declare (not safe)) (_g128202128233_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self127978_ _stx127979_)
        (letrec ((_collect-e127981_
                  (lambda (_hd128142_ _expr128143_)
                    (let* ((___stx128598128599_ _hd128142_)
                           (_g128146128156_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128598128599_)))))
                      (let ((___kont128600128601_
                             (lambda (_L128176_)
                               (let ((_sym128187_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L128176_))))
                                 (if (let ((__tmp130619
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130619 _sym128187_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym128187_))
                                     (let ((_type128188128190_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr128143_))))
                                       (if _type128188128190_
                                           (let ((_type128193_
                                                  _type128188128190_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym128187_
                                              _type128193_
                                              '#t))
                                           '#f))))))
                            (___kont128602128603_ (lambda () '#!void)))
                        (let ((___match128611128612_
                               (lambda (_e128151128168_
                                        _hd128150128171_
                                        _tl128149128173_)
                                 (let ((_L128176_ _hd128150128171_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L128176_))
                                       (___kont128600128601_ _L128176_)
                                       (___kont128602128603_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128598128599_))
                              (let ((_e128151128168_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128598128599_))))
                                (let ((_tl128149128173_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128151128168_)))
                                      (_hd128150128171_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128151128168_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl128149128173_))
                                      (___match128611128612_
                                       _e128151128168_
                                       _hd128150128171_
                                       _tl128149128173_)
                                      (___kont128602128603_))))
                              (___kont128602128603_))))))))
          (let* ((_g127983128018_
                  (lambda (_g127984128015_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g127984128015_))))
                 (_g127982128139_
                  (lambda (_g127984128021_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g127984128021_))
                        (let ((_e127990128023_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g127984128021_))))
                          (let ((_hd127989128026_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127990128023_)))
                                (_tl127988128028_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127990128023_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127988128028_))
                                (let ((_e127993128031_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127988128028_))))
                                  (let ((_hd127992128034_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e127993128031_)))
                                        (_tl127991128036_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e127993128031_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd127992128034_))
                                        (let ((_g130620_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd127992128034_
                                                  '0))))
                                          (begin
                                            (let ((_g130621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130620_)
                                                         (##vector-length
                                                          _g130620_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130621_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130621_)))
                                            (let ((_target127994128039_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130620_
                                                      0)))
                                                  (_tl127996128041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130620_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127996128041_))
                                                  (letrec ((_loop127997128044_
                                                            (lambda (_hd127995128047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr128001128049_
                             _hd128002128051_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127995128047_))
                          (let ((_e127998128054_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127995128047_))))
                            (let ((_lp-hd127999128057_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127998128054_)))
                                  (_lp-tl128000128059_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127998128054_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd127999128057_))
                                  (let ((_e128007128062_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd127999128057_))))
                                    (let ((_hd128006128065_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128007128062_)))
                                          (_tl128005128067_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128007128062_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl128005128067_))
                                          (let ((_e128010128070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl128005128067_))))
                                            (let ((_hd128009128073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128010128070_)))
                                                  (_tl128008128075_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128010128070_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128008128075_))
                                                  (let ((__tmp130626
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd128009128073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr128001128049_)))
                (__tmp130625
                 (let ()
                   (declare (not safe))
                   (cons _hd128006128065_ _hd128002128051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop127997128044_
                                                     _lp-tl128000128059_
                                                     __tmp130626
                                                     __tmp130625))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127983128018_
                                                     _g127984128021_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127983128018_
                                             _g127984128021_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127983128018_ _g127984128021_)))))
                          (let ((_expr128003128078_
                                 (reverse _expr128001128049_))
                                (_hd128004128080_ (reverse _hd128002128051_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl127991128036_))
                                (let ((_e128013128083_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl127991128036_))))
                                  (let ((_hd128012128086_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128013128083_)))
                                        (_tl128011128088_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128013128083_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128011128088_))
                                        ((lambda (_L128091_
                                                  _L128092_
                                                  _L128093_)
                                           (for-each
                                            _collect-e127981_
                                            (let ((__tmp130622
                                                   (lambda (_g128113128116_
                                                            _g128114128118_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128113128116_
                                                             _g128114128118_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130622
                                                      '()
                                                      _L128093_))
                                            (let ((__tmp130623
                                                   (lambda (_g128120128123_
                                                            _g128121128125_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128120128123_
                                                             _g128121128125_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130623
                                                      '()
                                                      _L128092_)))
                                           (for-each
                                            (lambda (_g128127128129_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self127978_
                                                 _g128127128129_)))
                                            (let ((__tmp130624
                                                   (lambda (_g128131128134_
                                                            _g128132128136_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128131128134_
                                                             _g128132128136_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130624
                                                      '()
                                                      _L128092_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self127978_
                                              _L128091_)))
                                         _hd128012128086_
                                         _expr128003128078_
                                         _hd128004128080_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127983128018_ _g127984128021_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127983128018_ _g127984128021_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop127997128044_
                                                       _target127994128039_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127983128018_
                                                     _g127984128021_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g127983128018_ _g127984128021_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127983128018_ _g127984128021_)))))
                        (let ()
                          (declare (not safe))
                          (_g127983128018_ _g127984128021_))))))
            (declare (not safe))
            (_g127982128139_ _stx127979_)))))
    (define gxc#collect-type-call%
      (lambda (_self127465_ _stx127466_)
        (let* ((___stx128614128615_ _stx127466_)
               (_g127470127585_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128614128615_)))))
          (let ((___kont128616128617_
                 (lambda (_L127928_ _L127929_ _L127930_ _L127931_ _L127932_)
                   (let ((__tmp130630
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127931_)))
                         (__tmp130629
                          (let () (declare (not safe)) (gx#stx-e _L127930_)))
                         (__tmp130628
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127929_)))
                         (__tmp130627
                          (let () (declare (not safe)) (gx#stx-e _L127928_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130630
                      __tmp130629
                      __tmp130628
                      __tmp130627))))
                (___kont128618128619_
                 (lambda (_L127756_ _L127757_ _L127758_ _L127759_)
                   (let ((__tmp130633
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127758_)))
                         (__tmp130632
                          (let () (declare (not safe)) (gx#stx-e _L127757_)))
                         (__tmp130631
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127756_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130633
                      __tmp130632
                      __tmp130631
                      '#f))))
                (___kont128620128621_
                 (lambda (_L127622_)
                   (for-each
                    (lambda (_g127635127637_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127465_ _g127635127637_)))
                    (let ((__tmp130634
                           (lambda (_g127639127642_ _g127640127644_)
                             (let ()
                               (declare (not safe))
                               (cons _g127639127642_ _g127640127644_)))))
                      (declare (not safe))
                      (foldr1 __tmp130634 '() _L127622_))))))
            (let* ((___match128871128872_
                    (lambda (_e127571127590_
                             _hd127570127593_
                             _tl127569127595_
                             ___splice128622128623_
                             _target127572127598_
                             _tl127574127600_)
                      (letrec ((_loop127575127603_
                                (lambda (_hd127573127606_ _expr127579127608_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127573127606_))
                                      (let ((_e127576127611_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127573127606_))))
                                        (let ((_lp-tl127578127616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127576127611_)))
                                              (_lp-hd127577127614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127576127611_))))
                                          (let ((__tmp130635
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127577127614_
                                                         _expr127579127608_))))
                                            (declare (not safe))
                                            (_loop127575127603_
                                             _lp-tl127578127616_
                                             __tmp130635))))
                                      (let ((_expr127580127619_
                                             (reverse _expr127579127608_)))
                                        (___kont128620128621_
                                         _expr127580127619_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127575127603_ _target127572127598_ '())))))
                   (___match128751128752_
                    (lambda (_e127479127800_
                             _hd127478127803_
                             _tl127477127805_
                             _e127482127808_
                             _hd127481127811_
                             _tl127480127813_
                             _e127485127816_
                             _hd127484127819_
                             _tl127483127821_
                             _e127488127824_
                             _hd127487127827_
                             _tl127486127829_
                             _e127491127832_
                             _hd127490127835_
                             _tl127489127837_
                             _e127494127840_
                             _hd127493127843_
                             _tl127492127845_
                             _e127497127848_
                             _hd127496127851_
                             _tl127495127853_
                             _e127500127856_
                             _hd127499127859_
                             _tl127498127861_
                             _e127503127864_
                             _hd127502127867_
                             _tl127501127869_
                             _e127506127872_
                             _hd127505127875_
                             _tl127504127877_
                             _e127509127880_
                             _hd127508127883_
                             _tl127507127885_
                             _e127512127888_
                             _hd127511127891_
                             _tl127510127893_
                             _e127515127896_
                             _hd127514127899_
                             _tl127513127901_
                             _e127518127904_
                             _hd127517127907_
                             _tl127516127909_
                             _e127521127912_
                             _hd127520127915_
                             _tl127519127917_
                             _e127524127920_
                             _hd127523127923_
                             _tl127522127925_)
                      (let ((_L127928_ _hd127523127923_)
                            (_L127929_ _hd127514127899_)
                            (_L127930_ _hd127505127875_)
                            (_L127931_ _hd127496127851_)
                            (_L127932_ _hd127487127827_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127932_
                               'bind-method!))
                            (___kont128616128617_
                             _L127928_
                             _L127929_
                             _L127930_
                             _L127931_
                             _L127932_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127477127805_))
                                (let ((___splice128622128623_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127477127805_
                                          '0))))
                                  (let ((_tl127574127600_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128622128623_
                                            '1)))
                                        (_target127572127598_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128622128623_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127574127600_))
                                        (___match128871128872_
                                         _e127479127800_
                                         _hd127478127803_
                                         _tl127477127805_
                                         ___splice128622128623_
                                         _target127572127598_
                                         _tl127574127600_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127470127585_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127470127585_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128614128615_))
                  (let ((_e127479127800_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128614128615_))))
                    (let ((_tl127477127805_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127479127800_)))
                          (_hd127478127803_
                           (let ()
                             (declare (not safe))
                             (##car _e127479127800_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127477127805_))
                          (let ((_e127482127808_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127477127805_))))
                            (let ((_tl127480127813_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127482127808_)))
                                  (_hd127481127811_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127482127808_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127481127811_))
                                  (let ((_e127485127816_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127481127811_))))
                                    (let ((_tl127483127821_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127485127816_)))
                                          (_hd127484127819_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127485127816_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127484127819_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127484127819_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127483127821_))
                                                  (let ((_e127488127824_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127483127821_))))
                                                    (let ((_tl127486127829_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127488127824_)))
                                                          (_hd127487127827_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127488127824_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127486127829_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127480127813_))
                      (let ((_e127491127832_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127480127813_))))
                        (let ((_tl127489127837_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127491127832_)))
                              (_hd127490127835_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127491127832_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127490127835_))
                              (let ((_e127494127840_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127490127835_))))
                                (let ((_tl127492127845_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127494127840_)))
                                      (_hd127493127843_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127494127840_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127493127843_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127493127843_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127492127845_))
                                              (let ((_e127497127848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127492127845_))))
                                                (let ((_tl127495127853_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127497127848_)))
                                                      (_hd127496127851_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127497127848_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127495127853_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127489127837_))
                                                          (let ((_e127500127856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127489127837_))))
                    (let ((_tl127498127861_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127500127856_)))
                          (_hd127499127859_
                           (let ()
                             (declare (not safe))
                             (##car _e127500127856_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127499127859_))
                          (let ((_e127503127864_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127499127859_))))
                            (let ((_tl127501127869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127503127864_)))
                                  (_hd127502127867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127503127864_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127502127867_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127502127867_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127501127869_))
                                          (let ((_e127506127872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127501127869_))))
                                            (let ((_tl127504127877_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127506127872_)))
                                                  (_hd127505127875_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127506127872_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127504127877_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127498127861_))
                                                      (let ((_e127509127880_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127498127861_))))
                (let ((_tl127507127885_
                       (let () (declare (not safe)) (##cdr _e127509127880_)))
                      (_hd127508127883_
                       (let () (declare (not safe)) (##car _e127509127880_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127508127883_))
                      (let ((_e127512127888_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127508127883_))))
                        (let ((_tl127510127893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127512127888_)))
                              (_hd127511127891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127512127888_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127511127891_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127511127891_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127510127893_))
                                      (let ((_e127515127896_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127510127893_))))
                                        (let ((_tl127513127901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127515127896_)))
                                              (_hd127514127899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127515127896_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127513127901_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127507127885_))
                                                  (let ((_e127518127904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127507127885_))))
                                                    (let ((_tl127516127909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127518127904_)))
                                                          (_hd127517127907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127518127904_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127517127907_))
                                                          (let ((_e127521127912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127517127907_))))
                    (let ((_tl127519127917_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127521127912_)))
                          (_hd127520127915_
                           (let ()
                             (declare (not safe))
                             (##car _e127521127912_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127520127915_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127520127915_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127519127917_))
                                  (let ((_e127524127920_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127519127917_))))
                                    (let ((_tl127522127925_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127524127920_)))
                                          (_hd127523127923_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127524127920_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127522127925_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127516127909_))
                                              (___match128751128752_
                                               _e127479127800_
                                               _hd127478127803_
                                               _tl127477127805_
                                               _e127482127808_
                                               _hd127481127811_
                                               _tl127480127813_
                                               _e127485127816_
                                               _hd127484127819_
                                               _tl127483127821_
                                               _e127488127824_
                                               _hd127487127827_
                                               _tl127486127829_
                                               _e127491127832_
                                               _hd127490127835_
                                               _tl127489127837_
                                               _e127494127840_
                                               _hd127493127843_
                                               _tl127492127845_
                                               _e127497127848_
                                               _hd127496127851_
                                               _tl127495127853_
                                               _e127500127856_
                                               _hd127499127859_
                                               _tl127498127861_
                                               _e127503127864_
                                               _hd127502127867_
                                               _tl127501127869_
                                               _e127506127872_
                                               _hd127505127875_
                                               _tl127504127877_
                                               _e127509127880_
                                               _hd127508127883_
                                               _tl127507127885_
                                               _e127512127888_
                                               _hd127511127891_
                                               _tl127510127893_
                                               _e127515127896_
                                               _hd127514127899_
                                               _tl127513127901_
                                               _e127518127904_
                                               _hd127517127907_
                                               _tl127516127909_
                                               _e127521127912_
                                               _hd127520127915_
                                               _tl127519127917_
                                               _e127524127920_
                                               _hd127523127923_
                                               _tl127522127925_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127477127805_))
                                                  (let ((___splice128622128623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127477127805_
                                                            '0))))
                                                    (let ((_tl127574127600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '1)))
                                                          (_target127572127598_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127574127600_))
                                                          (___match128871128872_
                                                           _e127479127800_
                                                           _hd127478127803_
                                                           _tl127477127805_
                                                           ___splice128622128623_
                                                           _target127572127598_
                                                           _tl127574127600_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127470127585_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127470127585_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127477127805_))
                                              (let ((___splice128622128623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127477127805_
                                                        '0))))
                                                (let ((_tl127574127600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '1)))
                                                      (_target127572127598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127574127600_))
                                                      (___match128871128872_
                                                       _e127479127800_
                                                       _hd127478127803_
                                                       _tl127477127805_
                                                       ___splice128622128623_
                                                       _target127572127598_
                                                       _tl127574127600_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127470127585_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127477127805_))
                                      (let ((___splice128622128623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127477127805_
                                                '0))))
                                        (let ((_tl127574127600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '1)))
                                              (_target127572127598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127574127600_))
                                              (___match128871128872_
                                               _e127479127800_
                                               _hd127478127803_
                                               _tl127477127805_
                                               ___splice128622128623_
                                               _target127572127598_
                                               _tl127574127600_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127470127585_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127477127805_))
                                  (let ((___splice128622128623_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127477127805_
                                            '0))))
                                    (let ((_tl127574127600_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128622128623_
                                              '1)))
                                          (_target127572127598_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128622128623_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127574127600_))
                                          (___match128871128872_
                                           _e127479127800_
                                           _hd127478127803_
                                           _tl127477127805_
                                           ___splice128622128623_
                                           _target127572127598_
                                           _tl127574127600_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127470127585_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127470127585_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127477127805_))
                              (let ((___splice128622128623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127477127805_
                                        '0))))
                                (let ((_tl127574127600_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128622128623_
                                          '1)))
                                      (_target127572127598_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128622128623_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127574127600_))
                                      (___match128871128872_
                                       _e127479127800_
                                       _hd127478127803_
                                       _tl127477127805_
                                       ___splice128622128623_
                                       _target127572127598_
                                       _tl127574127600_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127470127585_)))))
                              (let ()
                                (declare (not safe))
                                (_g127470127585_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127477127805_))
                      (let ((___splice128622128623_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127477127805_ '0))))
                        (let ((_tl127574127600_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '1)))
                              (_target127572127598_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127574127600_))
                              (___match128871128872_
                               _e127479127800_
                               _hd127478127803_
                               _tl127477127805_
                               ___splice128622128623_
                               _target127572127598_
                               _tl127574127600_)
                              (let ()
                                (declare (not safe))
                                (_g127470127585_)))))
                      (let () (declare (not safe)) (_g127470127585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127507127885_))
                                                      (if (let ((__tmp130636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130636 'bind-method!))
                  (let ((_L127756_ _hd127514127899_)
                        (_L127757_ _hd127505127875_)
                        (_L127758_ _hd127496127851_)
                        (_L127759_ _hd127487127827_))
                    (___kont128618128619_
                     _L127756_
                     _L127757_
                     _L127758_
                     _L127759_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127477127805_))
                      (let ((___splice128622128623_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127477127805_ '0))))
                        (let ((_tl127574127600_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '1)))
                              (_target127572127598_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127574127600_))
                              (___match128871128872_
                               _e127479127800_
                               _hd127478127803_
                               _tl127477127805_
                               ___splice128622128623_
                               _target127572127598_
                               _tl127574127600_)
                              (let ()
                                (declare (not safe))
                                (_g127470127585_)))))
                      (let () (declare (not safe)) (_g127470127585_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127477127805_))
                  (let ((___splice128622128623_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127477127805_ '0))))
                    (let ((_tl127574127600_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128622128623_ '1)))
                          (_target127572127598_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128622128623_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127574127600_))
                          (___match128871128872_
                           _e127479127800_
                           _hd127478127803_
                           _tl127477127805_
                           ___splice128622128623_
                           _target127572127598_
                           _tl127574127600_)
                          (let () (declare (not safe)) (_g127470127585_)))))
                  (let () (declare (not safe)) (_g127470127585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127477127805_))
                                                  (let ((___splice128622128623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127477127805_
                                                            '0))))
                                                    (let ((_tl127574127600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '1)))
                                                          (_target127572127598_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127574127600_))
                                                          (___match128871128872_
                                                           _e127479127800_
                                                           _hd127478127803_
                                                           _tl127477127805_
                                                           ___splice128622128623_
                                                           _target127572127598_
                                                           _tl127574127600_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127470127585_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127470127585_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127477127805_))
                                          (let ((___splice128622128623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127477127805_
                                                    '0))))
                                            (let ((_tl127574127600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128622128623_
                                                      '1)))
                                                  (_target127572127598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128622128623_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127574127600_))
                                                  (___match128871128872_
                                                   _e127479127800_
                                                   _hd127478127803_
                                                   _tl127477127805_
                                                   ___splice128622128623_
                                                   _target127572127598_
                                                   _tl127574127600_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127470127585_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127470127585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127477127805_))
                                      (let ((___splice128622128623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127477127805_
                                                '0))))
                                        (let ((_tl127574127600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '1)))
                                              (_target127572127598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127574127600_))
                                              (___match128871128872_
                                               _e127479127800_
                                               _hd127478127803_
                                               _tl127477127805_
                                               ___splice128622128623_
                                               _target127572127598_
                                               _tl127574127600_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127470127585_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127477127805_))
                                  (let ((___splice128622128623_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127477127805_
                                            '0))))
                                    (let ((_tl127574127600_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128622128623_
                                              '1)))
                                          (_target127572127598_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128622128623_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127574127600_))
                                          (___match128871128872_
                                           _e127479127800_
                                           _hd127478127803_
                                           _tl127477127805_
                                           ___splice128622128623_
                                           _target127572127598_
                                           _tl127574127600_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127470127585_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127470127585_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127477127805_))
                          (let ((___splice128622128623_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127477127805_
                                    '0))))
                            (let ((_tl127574127600_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128622128623_ '1)))
                                  (_target127572127598_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128622128623_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127574127600_))
                                  (___match128871128872_
                                   _e127479127800_
                                   _hd127478127803_
                                   _tl127477127805_
                                   ___splice128622128623_
                                   _target127572127598_
                                   _tl127574127600_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127470127585_)))))
                          (let () (declare (not safe)) (_g127470127585_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127477127805_))
                  (let ((___splice128622128623_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127477127805_ '0))))
                    (let ((_tl127574127600_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128622128623_ '1)))
                          (_target127572127598_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128622128623_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127574127600_))
                          (___match128871128872_
                           _e127479127800_
                           _hd127478127803_
                           _tl127477127805_
                           ___splice128622128623_
                           _target127572127598_
                           _tl127574127600_)
                          (let () (declare (not safe)) (_g127470127585_)))))
                  (let () (declare (not safe)) (_g127470127585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127477127805_))
                                                      (let ((___splice128622128623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127477127805_ '0))))
                (let ((_tl127574127600_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128622128623_ '1)))
                      (_target127572127598_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128622128623_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127574127600_))
                      (___match128871128872_
                       _e127479127800_
                       _hd127478127803_
                       _tl127477127805_
                       ___splice128622128623_
                       _target127572127598_
                       _tl127574127600_)
                      (let () (declare (not safe)) (_g127470127585_)))))
              (let () (declare (not safe)) (_g127470127585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127477127805_))
                                              (let ((___splice128622128623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127477127805_
                                                        '0))))
                                                (let ((_tl127574127600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '1)))
                                                      (_target127572127598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127574127600_))
                                                      (___match128871128872_
                                                       _e127479127800_
                                                       _hd127478127803_
                                                       _tl127477127805_
                                                       ___splice128622128623_
                                                       _target127572127598_
                                                       _tl127574127600_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127470127585_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127477127805_))
                                          (let ((___splice128622128623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127477127805_
                                                    '0))))
                                            (let ((_tl127574127600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128622128623_
                                                      '1)))
                                                  (_target127572127598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128622128623_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127574127600_))
                                                  (___match128871128872_
                                                   _e127479127800_
                                                   _hd127478127803_
                                                   _tl127477127805_
                                                   ___splice128622128623_
                                                   _target127572127598_
                                                   _tl127574127600_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127470127585_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127470127585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127477127805_))
                                      (let ((___splice128622128623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127477127805_
                                                '0))))
                                        (let ((_tl127574127600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '1)))
                                              (_target127572127598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127574127600_))
                                              (___match128871128872_
                                               _e127479127800_
                                               _hd127478127803_
                                               _tl127477127805_
                                               ___splice128622128623_
                                               _target127572127598_
                                               _tl127574127600_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127470127585_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127477127805_))
                              (let ((___splice128622128623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127477127805_
                                        '0))))
                                (let ((_tl127574127600_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128622128623_
                                          '1)))
                                      (_target127572127598_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128622128623_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127574127600_))
                                      (___match128871128872_
                                       _e127479127800_
                                       _hd127478127803_
                                       _tl127477127805_
                                       ___splice128622128623_
                                       _target127572127598_
                                       _tl127574127600_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127470127585_)))))
                              (let ()
                                (declare (not safe))
                                (_g127470127585_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127477127805_))
                      (let ((___splice128622128623_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127477127805_ '0))))
                        (let ((_tl127574127600_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '1)))
                              (_target127572127598_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127574127600_))
                              (___match128871128872_
                               _e127479127800_
                               _hd127478127803_
                               _tl127477127805_
                               ___splice128622128623_
                               _target127572127598_
                               _tl127574127600_)
                              (let ()
                                (declare (not safe))
                                (_g127470127585_)))))
                      (let () (declare (not safe)) (_g127470127585_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127477127805_))
                  (let ((___splice128622128623_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127477127805_ '0))))
                    (let ((_tl127574127600_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128622128623_ '1)))
                          (_target127572127598_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128622128623_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127574127600_))
                          (___match128871128872_
                           _e127479127800_
                           _hd127478127803_
                           _tl127477127805_
                           ___splice128622128623_
                           _target127572127598_
                           _tl127574127600_)
                          (let () (declare (not safe)) (_g127470127585_)))))
                  (let () (declare (not safe)) (_g127470127585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127477127805_))
                                                  (let ((___splice128622128623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127477127805_
                                                            '0))))
                                                    (let ((_tl127574127600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '1)))
                                                          (_target127572127598_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127574127600_))
                                                          (___match128871128872_
                                                           _e127479127800_
                                                           _hd127478127803_
                                                           _tl127477127805_
                                                           ___splice128622128623_
                                                           _target127572127598_
                                                           _tl127574127600_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127470127585_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127470127585_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127477127805_))
                                              (let ((___splice128622128623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127477127805_
                                                        '0))))
                                                (let ((_tl127574127600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '1)))
                                                      (_target127572127598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127574127600_))
                                                      (___match128871128872_
                                                       _e127479127800_
                                                       _hd127478127803_
                                                       _tl127477127805_
                                                       ___splice128622128623_
                                                       _target127572127598_
                                                       _tl127574127600_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127470127585_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127477127805_))
                                          (let ((___splice128622128623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127477127805_
                                                    '0))))
                                            (let ((_tl127574127600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128622128623_
                                                      '1)))
                                                  (_target127572127598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128622128623_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127574127600_))
                                                  (___match128871128872_
                                                   _e127479127800_
                                                   _hd127478127803_
                                                   _tl127477127805_
                                                   ___splice128622128623_
                                                   _target127572127598_
                                                   _tl127574127600_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127470127585_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127470127585_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127477127805_))
                                  (let ((___splice128622128623_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127477127805_
                                            '0))))
                                    (let ((_tl127574127600_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128622128623_
                                              '1)))
                                          (_target127572127598_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128622128623_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127574127600_))
                                          (___match128871128872_
                                           _e127479127800_
                                           _hd127478127803_
                                           _tl127477127805_
                                           ___splice128622128623_
                                           _target127572127598_
                                           _tl127574127600_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127470127585_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127470127585_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127477127805_))
                          (let ((___splice128622128623_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127477127805_
                                    '0))))
                            (let ((_tl127574127600_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128622128623_ '1)))
                                  (_target127572127598_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128622128623_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127574127600_))
                                  (___match128871128872_
                                   _e127479127800_
                                   _hd127478127803_
                                   _tl127477127805_
                                   ___splice128622128623_
                                   _target127572127598_
                                   _tl127574127600_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127470127585_)))))
                          (let () (declare (not safe)) (_g127470127585_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127477127805_))
                      (let ((___splice128622128623_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127477127805_ '0))))
                        (let ((_tl127574127600_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '1)))
                              (_target127572127598_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128622128623_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127574127600_))
                              (___match128871128872_
                               _e127479127800_
                               _hd127478127803_
                               _tl127477127805_
                               ___splice128622128623_
                               _target127572127598_
                               _tl127574127600_)
                              (let ()
                                (declare (not safe))
                                (_g127470127585_)))))
                      (let () (declare (not safe)) (_g127470127585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127477127805_))
                                                      (let ((___splice128622128623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127477127805_ '0))))
                (let ((_tl127574127600_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128622128623_ '1)))
                      (_target127572127598_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128622128623_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127574127600_))
                      (___match128871128872_
                       _e127479127800_
                       _hd127478127803_
                       _tl127477127805_
                       ___splice128622128623_
                       _target127572127598_
                       _tl127574127600_)
                      (let () (declare (not safe)) (_g127470127585_)))))
              (let () (declare (not safe)) (_g127470127585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127477127805_))
                                                  (let ((___splice128622128623_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127477127805_
                                                            '0))))
                                                    (let ((_tl127574127600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '1)))
                                                          (_target127572127598_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128622128623_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127574127600_))
                                                          (___match128871128872_
                                                           _e127479127800_
                                                           _hd127478127803_
                                                           _tl127477127805_
                                                           ___splice128622128623_
                                                           _target127572127598_
                                                           _tl127574127600_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127470127585_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127470127585_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127477127805_))
                                              (let ((___splice128622128623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127477127805_
                                                        '0))))
                                                (let ((_tl127574127600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '1)))
                                                      (_target127572127598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128622128623_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127574127600_))
                                                      (___match128871128872_
                                                       _e127479127800_
                                                       _hd127478127803_
                                                       _tl127477127805_
                                                       ___splice128622128623_
                                                       _target127572127598_
                                                       _tl127574127600_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127470127585_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127477127805_))
                                      (let ((___splice128622128623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127477127805_
                                                '0))))
                                        (let ((_tl127574127600_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '1)))
                                              (_target127572127598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128622128623_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127574127600_))
                                              (___match128871128872_
                                               _e127479127800_
                                               _hd127478127803_
                                               _tl127477127805_
                                               ___splice128622128623_
                                               _target127572127598_
                                               _tl127574127600_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127470127585_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127470127585_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127477127805_))
                              (let ((___splice128622128623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127477127805_
                                        '0))))
                                (let ((_tl127574127600_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128622128623_
                                          '1)))
                                      (_target127572127598_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128622128623_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127574127600_))
                                      (___match128871128872_
                                       _e127479127800_
                                       _hd127478127803_
                                       _tl127477127805_
                                       ___splice128622128623_
                                       _target127572127598_
                                       _tl127574127600_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127470127585_)))))
                              (let ()
                                (declare (not safe))
                                (_g127470127585_))))))
                  (let () (declare (not safe)) (_g127470127585_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127404_ _stx127405_)
        (let* ((___stx128874128875_ _stx127405_)
               (_g127408127421_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128874128875_)))))
          (let ((___kont128876128877_
                 (lambda (_L127449_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127404_ _L127449_))))
                (___kont128878128879_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128874128875_))
                (let ((_e127413127433_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128874128875_))))
                  (let ((_tl127411127438_
                         (let () (declare (not safe)) (##cdr _e127413127433_)))
                        (_hd127412127436_
                         (let ()
                           (declare (not safe))
                           (##car _e127413127433_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127411127438_))
                        (let ((_e127416127441_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127411127438_))))
                          (let ((_tl127414127446_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127416127441_)))
                                (_hd127415127444_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127416127441_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127414127446_))
                                (___kont128876128877_ _hd127415127444_)
                                (___kont128878128879_))))
                        (___kont128878128879_))))
                (___kont128878128879_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self127283_ _stx127284_)
        (let* ((_g127286127303_
                (lambda (_g127287127300_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127287127300_))))
               (_g127285127401_
                (lambda (_g127287127306_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127287127306_))
                      (let ((_e127292127308_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127287127306_))))
                        (let ((_hd127291127311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127292127308_)))
                              (_tl127290127313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127292127308_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127290127313_))
                              (let ((_e127295127316_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127290127313_))))
                                (let ((_hd127294127319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127295127316_)))
                                      (_tl127293127321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127295127316_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127293127321_))
                                      (let ((_e127298127324_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127293127321_))))
                                        (let ((_hd127297127327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127298127324_)))
                                              (_tl127296127329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127298127324_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127296127329_))
                                              ((lambda (_L127332_ _L127333_)
                                                 (let* ((___stx128896128897_
                                                         _L127333_)
                                                        (_g127349127360_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128896128897_)))))
                                                   (let ((___kont128898128899_
                                                          (lambda (_L127380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127381_)
                    (let ((_$e127393_
                           (let ((__tmp130637
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127381_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130637))))
                      (if _$e127393_
                          ((lambda (_type-e127396_)
                             (_type-e127396_ _stx127284_ _L127333_))
                           _$e127393_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self127283_ _L127332_))))))
                 (___kont128900128901_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self127283_ _L127332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128907128908_
                                                            (lambda (_e127355127372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127354127375_
                             _tl127353127377_)
                      (let ((_L127380_ _tl127353127377_)
                            (_L127381_ _hd127354127375_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127381_))
                            (___kont128898128899_ _L127380_ _L127381_)
                            (___kont128900128901_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128896128897_))
                   (let ((_e127355127372_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128896128897_))))
                     (let ((_tl127353127377_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127355127372_)))
                           (_hd127354127375_
                            (let ()
                              (declare (not safe))
                              (##car _e127355127372_))))
                       (___match128907128908_
                        _e127355127372_
                        _hd127354127375_
                        _tl127353127377_)))
                   (___kont128900128901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127297127327_
                                               _hd127294127319_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127286127303_
                                                 _g127287127306_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127286127303_ _g127287127306_)))))
                              (let ()
                                (declare (not safe))
                                (_g127286127303_ _g127287127306_)))))
                      (let ()
                        (declare (not safe))
                        (_g127286127303_ _g127287127306_))))))
          (declare (not safe))
          (_g127285127401_ _stx127284_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx127127_ _ann127128_)
        (let* ((_g127130127167_
                (lambda (_g127131127164_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127131127164_))))
               (_g127129127280_
                (lambda (_g127131127170_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127131127170_))
                      (let ((_e127141127172_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127131127170_))))
                        (let ((_hd127140127175_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127141127172_)))
                              (_tl127139127177_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127141127172_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127139127177_))
                              (let ((_e127144127180_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127139127177_))))
                                (let ((_hd127143127183_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127144127180_)))
                                      (_tl127142127185_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127144127180_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127142127185_))
                                      (let ((_e127147127188_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127142127185_))))
                                        (let ((_hd127146127191_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127147127188_)))
                                              (_tl127145127193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127147127188_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127145127193_))
                                              (let ((_e127150127196_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127145127193_))))
                                                (let ((_hd127149127199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127150127196_)))
                                                      (_tl127148127201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127150127196_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127148127201_))
                                                      (let ((_e127153127204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127148127201_))))
                (let ((_hd127152127207_
                       (let () (declare (not safe)) (##car _e127153127204_)))
                      (_tl127151127209_
                       (let () (declare (not safe)) (##cdr _e127153127204_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl127151127209_))
                      (let ((_e127156127212_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127151127209_))))
                        (let ((_hd127155127215_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127156127212_)))
                              (_tl127154127217_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127156127212_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127154127217_))
                              (let ((_e127159127220_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127154127217_))))
                                (let ((_hd127158127223_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127159127220_)))
                                      (_tl127157127225_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127159127220_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127157127225_))
                                      (let ((_e127162127228_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127157127225_))))
                                        (let ((_hd127161127231_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127162127228_)))
                                              (_tl127160127233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127162127228_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127160127233_))
                                              ((lambda (_L127236_
                                                        _L127237_
                                                        _L127238_
                                                        _L127239_
                                                        _L127240_
                                                        _L127241_
                                                        _L127242_)
                                                 (let ((_type-id127272_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127242_)))
                                                       (_super127273_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127241_)))
                                                       (_slots127274_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L127240_)))
                                                       (_ctor-method127275_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127239_)))
                                                       (_struct?127276_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127238_)))
                                                       (_final?127277_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127237_)))
                                                       (_metaclass127278_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L127236_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L127236_))
                                                            '#f)))
                                                   (let ((__obj130589
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
                                                      __obj130589
                                                      _type-id127272_
                                                      _super127273_
                                                      _slots127274_
                                                      _ctor-method127275_
                                                      _struct?127276_
                                                      _final?127277_
                                                      '#f
                                                      _metaclass127278_)
                                                     __obj130589)))
                                               _hd127161127231_
                                               _hd127158127223_
                                               _hd127155127215_
                                               _hd127152127207_
                                               _hd127149127199_
                                               _hd127146127191_
                                               _hd127143127183_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127130127167_
                                                 _g127131127170_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127130127167_ _g127131127170_)))))
                              (let ()
                                (declare (not safe))
                                (_g127130127167_ _g127131127170_)))))
                      (let ()
                        (declare (not safe))
                        (_g127130127167_ _g127131127170_)))))
              (let ()
                (declare (not safe))
                (_g127130127167_ _g127131127170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g127130127167_
                                                 _g127131127170_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127130127167_ _g127131127170_)))))
                              (let ()
                                (declare (not safe))
                                (_g127130127167_ _g127131127170_)))))
                      (let ()
                        (declare (not safe))
                        (_g127130127167_ _g127131127170_))))))
          (declare (not safe))
          (_g127129127280_ _ann127128_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx127056_ _ann127057_)
        (let* ((_g127059127076_
                (lambda (_g127060127073_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127060127073_))))
               (_g127058127124_
                (lambda (_g127060127079_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127060127079_))
                      (let ((_e127065127081_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127060127079_))))
                        (let ((_hd127064127084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127065127081_)))
                              (_tl127063127086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127065127081_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127063127086_))
                              (let ((_e127068127089_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127063127086_))))
                                (let ((_hd127067127092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127068127089_)))
                                      (_tl127066127094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127068127089_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127066127094_))
                                      (let ((_e127071127097_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127066127094_))))
                                        (let ((_hd127070127100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127071127097_)))
                                              (_tl127069127102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127071127097_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127069127102_))
                                              ((lambda (_L127105_ _L127106_)
                                                 (let ((_type-id127121_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127106_)))
                                                       (_super127122_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127105_))))
                                                   (let ((__obj130590
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
                                                      __obj130590
                                                      _type-id127121_
                                                      _super127122_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130590)))
                                               _hd127070127100_
                                               _hd127067127092_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127059127076_
                                                 _g127060127079_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127059127076_ _g127060127079_)))))
                              (let ()
                                (declare (not safe))
                                (_g127059127076_ _g127060127079_)))))
                      (let ()
                        (declare (not safe))
                        (_g127059127076_ _g127060127079_))))))
          (declare (not safe))
          (_g127058127124_ _ann127057_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
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
                                         (let ((__tmp130638
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127041_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130638)))
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
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx126952_ _ann126953_)
        (let* ((_g126955126968_
                (lambda (_g126956126965_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126956126965_))))
               (_g126954127001_
                (lambda (_g126956126971_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126956126971_))
                      (let ((_e126960126973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126956126971_))))
                        (let ((_hd126959126976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126960126973_)))
                              (_tl126958126978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126960126973_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126958126978_))
                              (let ((_e126963126981_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126958126978_))))
                                (let ((_hd126962126984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126963126981_)))
                                      (_tl126961126986_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126963126981_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126961126986_))
                                      ((lambda (_L126989_)
                                         (let ((__tmp130639
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L126989_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130639)))
                                       _hd126962126984_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126955126968_ _g126956126971_)))))
                              (let ()
                                (declare (not safe))
                                (_g126955126968_ _g126956126971_)))))
                      (let ()
                        (declare (not safe))
                        (_g126955126968_ _g126956126971_))))))
          (declare (not safe))
          (_g126954127001_ _ann126953_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126868_ _ann126869_)
        (let* ((_g126871126892_
                (lambda (_g126872126889_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126872126889_))))
               (_g126870126949_
                (lambda (_g126872126895_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126872126895_))
                      (let ((_e126878126897_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126872126895_))))
                        (let ((_hd126877126900_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126878126897_)))
                              (_tl126876126902_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126878126897_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126876126902_))
                              (let ((_e126881126905_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126876126902_))))
                                (let ((_hd126880126908_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126881126905_)))
                                      (_tl126879126910_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126881126905_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126879126910_))
                                      (let ((_e126884126913_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126879126910_))))
                                        (let ((_hd126883126916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126884126913_)))
                                              (_tl126882126918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126884126913_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126882126918_))
                                              (let ((_e126887126921_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126882126918_))))
                                                (let ((_hd126886126924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126887126921_)))
                                                      (_tl126885126926_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126887126921_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126885126926_))
                                                      ((lambda (_L126929_
                                                                _L126930_
                                                                _L126931_)
                                                         (let ((__tmp130642
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126931_)))
                       (__tmp130641
                        (let () (declare (not safe)) (gx#stx-e _L126930_)))
                       (__tmp130640
                        (let () (declare (not safe)) (gx#stx-e _L126929_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130642
                    __tmp130641
                    __tmp130640)))
               _hd126886126924_
               _hd126883126916_
               _hd126880126908_)
              (let ()
                (declare (not safe))
                (_g126871126892_ _g126872126895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126871126892_
                                                 _g126872126895_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126871126892_ _g126872126895_)))))
                              (let ()
                                (declare (not safe))
                                (_g126871126892_ _g126872126895_)))))
                      (let ()
                        (declare (not safe))
                        (_g126871126892_ _g126872126895_))))))
          (declare (not safe))
          (_g126870126949_ _ann126869_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126784_ _ann126785_)
        (let* ((_g126787126808_
                (lambda (_g126788126805_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126788126805_))))
               (_g126786126865_
                (lambda (_g126788126811_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126788126811_))
                      (let ((_e126794126813_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126788126811_))))
                        (let ((_hd126793126816_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126794126813_)))
                              (_tl126792126818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126794126813_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126792126818_))
                              (let ((_e126797126821_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126792126818_))))
                                (let ((_hd126796126824_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126797126821_)))
                                      (_tl126795126826_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126797126821_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126795126826_))
                                      (let ((_e126800126829_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126795126826_))))
                                        (let ((_hd126799126832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126800126829_)))
                                              (_tl126798126834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126800126829_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126798126834_))
                                              (let ((_e126803126837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126798126834_))))
                                                (let ((_hd126802126840_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126803126837_)))
                                                      (_tl126801126842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126803126837_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126801126842_))
                                                      ((lambda (_L126845_
                                                                _L126846_
                                                                _L126847_)
                                                         (let ((__tmp130645
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126847_)))
                       (__tmp130644
                        (let () (declare (not safe)) (gx#stx-e _L126846_)))
                       (__tmp130643
                        (let () (declare (not safe)) (gx#stx-e _L126845_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130645
                    __tmp130644
                    __tmp130643)))
               _hd126802126840_
               _hd126799126832_
               _hd126796126824_)
              (let ()
                (declare (not safe))
                (_g126787126808_ _g126788126811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126787126808_
                                                 _g126788126811_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126787126808_ _g126788126811_)))))
                              (let ()
                                (declare (not safe))
                                (_g126787126808_ _g126788126811_)))))
                      (let ()
                        (declare (not safe))
                        (_g126787126808_ _g126788126811_))))))
          (declare (not safe))
          (_g126786126865_ _ann126785_))))
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
      (lambda (_self125903_ _stx125904_)
        (let* ((___stx128910128911_ _stx125904_)
               (_g125910126106_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128910128911_)))))
          (let ((___kont128912128913_
                 (lambda (_L126772_)
                   (let ((__obj130591
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130591
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126772_))
                      '#f)
                     __obj130591)))
                (___kont128914128915_
                 (lambda (_L126699_
                          _L126700_
                          _L126701_
                          _L126702_
                          _L126703_
                          _L126704_)
                   (let* ((_tab126754_
                           (let () (declare (not safe)) (gx#stx-e _L126701_)))
                          (_keys126756_
                           (if _tab126754_
                               (filter values (vector->list _tab126754_))
                               '#f)))
                     (let ((__tmp130646
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126700_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126756_
                        __tmp130646)))))
                (___kont128916128917_
                 (lambda (_L126432_
                          _L126433_
                          _L126434_
                          _L126435_
                          _L126436_
                          _L126437_
                          _L126438_
                          _L126439_
                          _L126440_
                          _L126441_)
                   (let ((__tmp130648
                          (map gx#stx-e
                               (let ((__tmp130649
                                      (lambda (_g126534126537_ _g126535126539_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126534126537_
                                                _g126535126539_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130649 '() _L126434_))))
                         (__tmp130647
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126438_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130648
                      __tmp130647))))
                (___kont128920128921_
                 (lambda (_L126142_)
                   (let ((__obj130592
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130592
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126142_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L126142_)))
                     __obj130592)))
                (___kont128922128923_
                 (lambda (_L126119_)
                   (let ((__obj130593
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130593
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126119_))
                      '#f)
                     __obj130593))))
            (let* ((___match129229129230_
                    (lambda (_e126097126134_ _hd126096126137_ _tl126095126139_)
                      (let ((_L126142_ _tl126095126139_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L126142_))
                            (___kont128920128921_ _L126142_)
                            (___kont128922128923_ _tl126095126139_)))))
                   (___match129223129224_
                    (lambda (_e125991126156_
                             _hd125990126159_
                             _tl125989126161_
                             _e125994126164_
                             _hd125993126167_
                             _tl125992126169_
                             _e125997126172_
                             _hd125996126175_
                             _tl125995126177_
                             _e126000126180_
                             _hd125999126183_
                             _tl125998126185_
                             _e126003126188_
                             _hd126002126191_
                             _tl126001126193_
                             _e126006126196_
                             _hd126005126199_
                             _tl126004126201_
                             _e126009126204_
                             _hd126008126207_
                             _tl126007126209_
                             _e126012126212_
                             _hd126011126215_
                             _tl126010126217_
                             _e126015126220_
                             _hd126014126223_
                             _tl126013126225_
                             _e126018126228_
                             _hd126017126231_
                             _tl126016126233_
                             _e126021126236_
                             _hd126020126239_
                             _tl126019126241_
                             _e126024126244_
                             _hd126023126247_
                             _tl126022126249_
                             _e126027126252_
                             _hd126026126255_
                             _tl126025126257_
                             _e126030126260_
                             _hd126029126263_
                             _tl126028126265_
                             ___splice128918128919_
                             _target126031126268_
                             _tl126033126270_
                             _e126048126273_
                             _hd126047126276_
                             _tl126046126278_
                             _e126051126281_
                             _hd126050126284_
                             _tl126049126286_
                             _e126054126289_
                             _hd126053126292_
                             _tl126052126294_)
                      (letrec ((_loop126034126297_
                                (lambda (_hd126032126300_
                                         _-absent-value126038126302_
                                         _key126039126304_
                                         _-xkwvar126040126306_
                                         _-hash-ref126041126308_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126032126300_))
                                      (let ((_e126035126311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126032126300_))))
                                        (let ((_lp-tl126037126316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126035126311_)))
                                              (_lp-hd126036126314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126035126311_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd126036126314_))
                                              (let ((_e126057126319_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd126036126314_))))
                                                (let ((_tl126055126324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126057126319_)))
                                                      (_hd126056126322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126057126319_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd126056126322_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd126056126322_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126055126324_))
                      (let ((_e126060126327_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126055126324_))))
                        (let ((_tl126058126332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126060126327_)))
                              (_hd126059126330_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126060126327_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126059126330_))
                              (let ((_e126063126335_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126059126330_))))
                                (let ((_tl126061126340_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126063126335_)))
                                      (_hd126062126338_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126063126335_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126062126338_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126062126338_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126061126340_))
                                              (let ((_e126066126343_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126061126340_))))
                                                (let ((_tl126064126348_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126066126343_)))
                                                      (_hd126065126346_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126066126343_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126064126348_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126058126332_))
                                                          (let ((_e126069126351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126058126332_))))
                    (let ((_tl126067126356_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126069126351_)))
                          (_hd126068126354_
                           (let ()
                             (declare (not safe))
                             (##car _e126069126351_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126068126354_))
                          (let ((_e126072126359_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126068126354_))))
                            (let ((_tl126070126364_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126072126359_)))
                                  (_hd126071126362_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126072126359_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126071126362_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126071126362_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126070126364_))
                                          (let ((_e126075126367_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126070126364_))))
                                            (let ((_tl126073126372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126075126367_)))
                                                  (_hd126074126370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126075126367_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126073126372_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126067126356_))
                                                      (let ((_e126078126375_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126067126356_))))
                (let ((_tl126076126380_
                       (let () (declare (not safe)) (##cdr _e126078126375_)))
                      (_hd126077126378_
                       (let () (declare (not safe)) (##car _e126078126375_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126077126378_))
                      (let ((_e126081126383_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126077126378_))))
                        (let ((_tl126079126388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126081126383_)))
                              (_hd126080126386_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126081126383_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126080126386_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd126080126386_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126079126388_))
                                      (let ((_e126084126391_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126079126388_))))
                                        (let ((_tl126082126396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126084126391_)))
                                              (_hd126083126394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126084126391_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126082126396_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126076126380_))
                                                  (let ((_e126087126399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126076126380_))))
                                                    (let ((_tl126085126404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126087126399_)))
                                                          (_hd126086126402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126087126399_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126086126402_))
                                                          (let ((_e126090126407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126086126402_))))
                    (let ((_tl126088126412_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126090126407_)))
                          (_hd126089126410_
                           (let ()
                             (declare (not safe))
                             (##car _e126090126407_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126089126410_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126089126410_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126088126412_))
                                  (let ((_e126093126415_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126088126412_))))
                                    (let ((_tl126091126420_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126093126415_)))
                                          (_hd126092126418_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126093126415_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126091126420_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126085126404_))
                                              (let ((__tmp130664
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126092126418_
                                                             _-absent-value126038126302_)))
                                                    (__tmp130663
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126083126394_
                                                             _key126039126304_)))
                                                    (__tmp130662
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126074126370_
                                                             _-xkwvar126040126306_)))
                                                    (__tmp130661
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126065126346_
                                                             _-hash-ref126041126308_))))
                                                (declare (not safe))
                                                (_loop126034126297_
                                                 _lp-tl126037126316_
                                                 __tmp130664
                                                 __tmp130663
                                                 __tmp130662
                                                 __tmp130661))
                                              (___match129229129230_
                                               _e125991126156_
                                               _hd125990126159_
                                               _tl125989126161_))
                                          (___match129229129230_
                                           _e125991126156_
                                           _hd125990126159_
                                           _tl125989126161_))))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))
                              (___match129229129230_
                               _e125991126156_
                               _hd125990126159_
                               _tl125989126161_))
                          (___match129229129230_
                           _e125991126156_
                           _hd125990126159_
                           _tl125989126161_))))
                  (___match129229129230_
                   _e125991126156_
                   _hd125990126159_
                   _tl125989126161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_))
                                              (___match129229129230_
                                               _e125991126156_
                                               _hd125990126159_
                                               _tl125989126161_))))
                                      (___match129229129230_
                                       _e125991126156_
                                       _hd125990126159_
                                       _tl125989126161_))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))
                              (___match129229129230_
                               _e125991126156_
                               _hd125990126159_
                               _tl125989126161_))))
                      (___match129229129230_
                       _e125991126156_
                       _hd125990126159_
                       _tl125989126161_))))
              (___match129229129230_
               _e125991126156_
               _hd125990126159_
               _tl125989126161_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_))))
                                          (___match129229129230_
                                           _e125991126156_
                                           _hd125990126159_
                                           _tl125989126161_))
                                      (___match129229129230_
                                       _e125991126156_
                                       _hd125990126159_
                                       _tl125989126161_))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))))
                          (___match129229129230_
                           _e125991126156_
                           _hd125990126159_
                           _tl125989126161_))))
                  (___match129229129230_
                   _e125991126156_
                   _hd125990126159_
                   _tl125989126161_))
              (___match129229129230_
               _e125991126156_
               _hd125990126159_
               _tl125989126161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129229129230_
                                               _e125991126156_
                                               _hd125990126159_
                                               _tl125989126161_))
                                          (___match129229129230_
                                           _e125991126156_
                                           _hd125990126159_
                                           _tl125989126161_))
                                      (___match129229129230_
                                       _e125991126156_
                                       _hd125990126159_
                                       _tl125989126161_))))
                              (___match129229129230_
                               _e125991126156_
                               _hd125990126159_
                               _tl125989126161_))))
                      (___match129229129230_
                       _e125991126156_
                       _hd125990126159_
                       _tl125989126161_))
                  (___match129229129230_
                   _e125991126156_
                   _hd125990126159_
                   _tl125989126161_))
              (___match129229129230_
               _e125991126156_
               _hd125990126159_
               _tl125989126161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129229129230_
                                               _e125991126156_
                                               _hd125990126159_
                                               _tl125989126161_))))
                                      (let ((_-hash-ref126045126429_
                                             (reverse _-hash-ref126041126308_))
                                            (_-xkwvar126044126427_
                                             (reverse _-xkwvar126040126306_))
                                            (_key126043126425_
                                             (reverse _key126039126304_))
                                            (_-absent-value126042126423_
                                             (reverse _-absent-value126038126302_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl125998126185_))
                                            (let ((_L126432_ _hd126053126292_)
                                                  (_L126433_
                                                   _-absent-value126042126423_)
                                                  (_L126434_ _key126043126425_)
                                                  (_L126435_
                                                   _-xkwvar126044126427_)
                                                  (_L126436_
                                                   _-hash-ref126045126429_)
                                                  (_L126437_ _hd126029126263_)
                                                  (_L126438_ _hd126020126239_)
                                                  (_L126439_ _hd126011126215_)
                                                  (_L126440_ _tl125995126177_)
                                                  (_L126441_ _hd125996126175_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126441_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126440_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126439_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126441_
                                                          _L126437_))
                                                       (let ((__tmp130659
                                                              (let ((__tmp130660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126494126497_ _g126495126499_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126494126497_ _g126495126499_)))))
                        (declare (not safe))
                        (foldr1 __tmp130660 '() _L126434_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130659))
               (let ((__tmp130658
                      (lambda (_g126501126503_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126501126503_
                           'hash-ref))))
                     (__tmp130656
                      (let ((__tmp130657
                             (lambda (_g126505126508_ _g126506126510_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126505126508_ _g126506126510_)))))
                        (declare (not safe))
                        (foldr1 __tmp130657 '() _L126436_))))
                 (declare (not safe))
                 (andmap1 __tmp130658 __tmp130656))
               (let ((__tmp130655
                      (lambda (_g126512126514_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126512126514_
                           'absent-value))))
                     (__tmp130653
                      (let ((__tmp130654
                             (lambda (_g126516126519_ _g126517126521_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126516126519_ _g126517126521_)))))
                        (declare (not safe))
                        (foldr1 __tmp130654 '() _L126433_))))
                 (declare (not safe))
                 (andmap1 __tmp130655 __tmp130653))
               (let ((__tmp130652
                      (lambda (_g126523126525_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126523126525_ _L126441_))))
                     (__tmp130650
                      (let ((__tmp130651
                             (lambda (_g126527126530_ _g126528126532_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126527126530_ _g126528126532_)))))
                        (declare (not safe))
                        (foldr1 __tmp130651 '() _L126435_))))
                 (declare (not safe))
                 (andmap1 __tmp130652 __tmp130650)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128916128917_
                                                   _L126432_
                                                   _L126433_
                                                   _L126434_
                                                   _L126435_
                                                   _L126436_
                                                   _L126437_
                                                   _L126438_
                                                   _L126439_
                                                   _L126440_
                                                   _L126441_)
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_)))
                                            (___match129229129230_
                                             _e125991126156_
                                             _hd125990126159_
                                             _tl125989126161_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop126034126297_
                           _target126031126268_
                           '()
                           '()
                           '()
                           '())))))
                   (___match129095129096_
                    (lambda (_e125991126156_
                             _hd125990126159_
                             _tl125989126161_
                             _e125994126164_
                             _hd125993126167_
                             _tl125992126169_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125993126167_))
                          (let ((_e125997126172_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125993126167_))))
                            (let ((_tl125995126177_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125997126172_)))
                                  (_hd125996126175_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125997126172_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125992126169_))
                                  (let ((_e126000126180_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125992126169_))))
                                    (let ((_tl125998126185_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126000126180_)))
                                          (_hd125999126183_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126000126180_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125999126183_))
                                          (let ((_e126003126188_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125999126183_))))
                                            (let ((_tl126001126193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126003126188_)))
                                                  (_hd126002126191_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126003126188_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd126002126191_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd126002126191_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126001126193_))
                                                          (let ((_e126006126196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126001126193_))))
                    (let ((_tl126004126201_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126006126196_)))
                          (_hd126005126199_
                           (let ()
                             (declare (not safe))
                             (##car _e126006126196_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126005126199_))
                          (let ((_e126009126204_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126005126199_))))
                            (let ((_tl126007126209_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126009126204_)))
                                  (_hd126008126207_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126009126204_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126008126207_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126008126207_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126007126209_))
                                          (let ((_e126012126212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126007126209_))))
                                            (let ((_tl126010126217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126012126212_)))
                                                  (_hd126011126215_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126012126212_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126010126217_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126004126201_))
                                                      (let ((_e126015126220_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126004126201_))))
                (let ((_tl126013126225_
                       (let () (declare (not safe)) (##cdr _e126015126220_)))
                      (_hd126014126223_
                       (let () (declare (not safe)) (##car _e126015126220_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126014126223_))
                      (let ((_e126018126228_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126014126223_))))
                        (let ((_tl126016126233_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126018126228_)))
                              (_hd126017126231_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126018126228_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126017126231_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126017126231_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126016126233_))
                                      (let ((_e126021126236_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126016126233_))))
                                        (let ((_tl126019126241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126021126236_)))
                                              (_hd126020126239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126021126236_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126019126241_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126013126225_))
                                                  (let ((_e126024126244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126013126225_))))
                                                    (let ((_tl126022126249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126024126244_)))
                                                          (_hd126023126247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126024126244_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126023126247_))
                                                          (let ((_e126027126252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126023126247_))))
                    (let ((_tl126025126257_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126027126252_)))
                          (_hd126026126255_
                           (let ()
                             (declare (not safe))
                             (##car _e126027126252_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126026126255_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126026126255_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126025126257_))
                                  (let ((_e126030126260_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126025126257_))))
                                    (let ((_tl126028126265_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126030126260_)))
                                          (_hd126029126263_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126030126260_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126028126265_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126022126249_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl126022126249_))
                                                        '1)
                                                  (let ((___splice128918128919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126022126249_
                                                            '1))))
                                                    (let ((_tl126033126270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128918128919_
                                                              '1)))
                                                          (_target126031126268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128918128919_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126033126270_))
                                                          (let ((_e126048126273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126033126270_))))
                    (let ((_tl126046126278_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126048126273_)))
                          (_hd126047126276_
                           (let ()
                             (declare (not safe))
                             (##car _e126048126273_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126047126276_))
                          (let ((_e126051126281_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126047126276_))))
                            (let ((_tl126049126286_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126051126281_)))
                                  (_hd126050126284_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126051126281_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126050126284_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126050126284_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126049126286_))
                                          (let ((_e126054126289_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126049126286_))))
                                            (let ((_tl126052126294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126054126289_)))
                                                  (_hd126053126292_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126054126289_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126052126294_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126046126278_))
                                                      (___match129223129224_
                                                       _e125991126156_
                                                       _hd125990126159_
                                                       _tl125989126161_
                                                       _e125994126164_
                                                       _hd125993126167_
                                                       _tl125992126169_
                                                       _e125997126172_
                                                       _hd125996126175_
                                                       _tl125995126177_
                                                       _e126000126180_
                                                       _hd125999126183_
                                                       _tl125998126185_
                                                       _e126003126188_
                                                       _hd126002126191_
                                                       _tl126001126193_
                                                       _e126006126196_
                                                       _hd126005126199_
                                                       _tl126004126201_
                                                       _e126009126204_
                                                       _hd126008126207_
                                                       _tl126007126209_
                                                       _e126012126212_
                                                       _hd126011126215_
                                                       _tl126010126217_
                                                       _e126015126220_
                                                       _hd126014126223_
                                                       _tl126013126225_
                                                       _e126018126228_
                                                       _hd126017126231_
                                                       _tl126016126233_
                                                       _e126021126236_
                                                       _hd126020126239_
                                                       _tl126019126241_
                                                       _e126024126244_
                                                       _hd126023126247_
                                                       _tl126022126249_
                                                       _e126027126252_
                                                       _hd126026126255_
                                                       _tl126025126257_
                                                       _e126030126260_
                                                       _hd126029126263_
                                                       _tl126028126265_
                                                       ___splice128918128919_
                                                       _target126031126268_
                                                       _tl126033126270_
                                                       _e126048126273_
                                                       _hd126047126276_
                                                       _tl126046126278_
                                                       _e126051126281_
                                                       _hd126050126284_
                                                       _tl126049126286_
                                                       _e126054126289_
                                                       _hd126053126292_
                                                       _tl126052126294_)
                                                      (___match129229129230_
                                                       _e125991126156_
                                                       _hd125990126159_
                                                       _tl125989126161_))
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_))))
                                          (___match129229129230_
                                           _e125991126156_
                                           _hd125990126159_
                                           _tl125989126161_))
                                      (___match129229129230_
                                       _e125991126156_
                                       _hd125990126159_
                                       _tl125989126161_))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))))
                          (___match129229129230_
                           _e125991126156_
                           _hd125990126159_
                           _tl125989126161_))))
                  (___match129229129230_
                   _e125991126156_
                   _hd125990126159_
                   _tl125989126161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_))
                                              (___match129229129230_
                                               _e125991126156_
                                               _hd125990126159_
                                               _tl125989126161_))
                                          (___match129229129230_
                                           _e125991126156_
                                           _hd125990126159_
                                           _tl125989126161_))))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))
                              (___match129229129230_
                               _e125991126156_
                               _hd125990126159_
                               _tl125989126161_))
                          (___match129229129230_
                           _e125991126156_
                           _hd125990126159_
                           _tl125989126161_))))
                  (___match129229129230_
                   _e125991126156_
                   _hd125990126159_
                   _tl125989126161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_))
                                              (___match129229129230_
                                               _e125991126156_
                                               _hd125990126159_
                                               _tl125989126161_))))
                                      (___match129229129230_
                                       _e125991126156_
                                       _hd125990126159_
                                       _tl125989126161_))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))
                              (___match129229129230_
                               _e125991126156_
                               _hd125990126159_
                               _tl125989126161_))))
                      (___match129229129230_
                       _e125991126156_
                       _hd125990126159_
                       _tl125989126161_))))
              (___match129229129230_
               _e125991126156_
               _hd125990126159_
               _tl125989126161_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_))))
                                          (___match129229129230_
                                           _e125991126156_
                                           _hd125990126159_
                                           _tl125989126161_))
                                      (___match129229129230_
                                       _e125991126156_
                                       _hd125990126159_
                                       _tl125989126161_))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))))
                          (___match129229129230_
                           _e125991126156_
                           _hd125990126159_
                           _tl125989126161_))))
                  (___match129229129230_
                   _e125991126156_
                   _hd125990126159_
                   _tl125989126161_))
              (___match129229129230_
               _e125991126156_
               _hd125990126159_
               _tl125989126161_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129229129230_
                                                   _e125991126156_
                                                   _hd125990126159_
                                                   _tl125989126161_))))
                                          (___match129229129230_
                                           _e125991126156_
                                           _hd125990126159_
                                           _tl125989126161_))))
                                  (___match129229129230_
                                   _e125991126156_
                                   _hd125990126159_
                                   _tl125989126161_))))
                          (___match129229129230_
                           _e125991126156_
                           _hd125990126159_
                           _tl125989126161_))))
                   (___match129083129084_
                    (lambda (_e125924126547_
                             _hd125923126550_
                             _tl125922126552_
                             _e125927126555_
                             _hd125926126558_
                             _tl125925126560_
                             _e125930126563_
                             _hd125929126566_
                             _tl125928126568_
                             _e125933126571_
                             _hd125932126574_
                             _tl125931126576_
                             _e125936126579_
                             _hd125935126582_
                             _tl125934126584_
                             _e125939126587_
                             _hd125938126590_
                             _tl125937126592_
                             _e125942126595_
                             _hd125941126598_
                             _tl125940126600_
                             _e125945126603_
                             _hd125944126606_
                             _tl125943126608_
                             _e125948126611_
                             _hd125947126614_
                             _tl125946126616_
                             _e125951126619_
                             _hd125950126622_
                             _tl125949126624_
                             _e125954126627_
                             _hd125953126630_
                             _tl125952126632_
                             _e125957126635_
                             _hd125956126638_
                             _tl125955126640_
                             _e125960126643_
                             _hd125959126646_
                             _tl125958126648_
                             _e125963126651_
                             _hd125962126654_
                             _tl125961126656_
                             _e125966126659_
                             _hd125965126662_
                             _tl125964126664_
                             _e125969126667_
                             _hd125968126670_
                             _tl125967126672_
                             _e125972126675_
                             _hd125971126678_
                             _tl125970126680_
                             _e125975126683_
                             _hd125974126686_
                             _tl125973126688_
                             _e125978126691_
                             _hd125977126694_
                             _tl125976126696_)
                      (let ((_L126699_ _hd125977126694_)
                            (_L126700_ _hd125968126670_)
                            (_L126701_ _hd125959126646_)
                            (_L126702_ _hd125950126622_)
                            (_L126703_ _hd125941126598_)
                            (_L126704_ _hd125926126558_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126704_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126703_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126702_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126704_ _L126699_)))
                            (___kont128914128915_
                             _L126699_
                             _L126700_
                             _L126701_
                             _L126702_
                             _L126703_
                             _L126704_)
                            (___match129095129096_
                             _e125924126547_
                             _hd125923126550_
                             _tl125922126552_
                             _e125927126555_
                             _hd125926126558_
                             _tl125925126560_)))))
                   (___match128937128938_
                    (lambda (_e125924126547_ _hd125923126550_ _tl125922126552_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125922126552_))
                          (let ((_e125927126555_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125922126552_))))
                            (let ((_tl125925126560_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125927126555_)))
                                  (_hd125926126558_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125927126555_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125925126560_))
                                  (let ((_e125930126563_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125925126560_))))
                                    (let ((_tl125928126568_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125930126563_)))
                                          (_hd125929126566_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125930126563_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125929126566_))
                                          (let ((_e125933126571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125929126566_))))
                                            (let ((_tl125931126576_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125933126571_)))
                                                  (_hd125932126574_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125933126571_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125932126574_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125932126574_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125931126576_))
                                                          (let ((_e125936126579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125931126576_))))
                    (let ((_tl125934126584_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125936126579_)))
                          (_hd125935126582_
                           (let ()
                             (declare (not safe))
                             (##car _e125936126579_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125935126582_))
                          (let ((_e125939126587_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125935126582_))))
                            (let ((_tl125937126592_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125939126587_)))
                                  (_hd125938126590_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125939126587_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125938126590_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125938126590_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125937126592_))
                                          (let ((_e125942126595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125937126592_))))
                                            (let ((_tl125940126600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125942126595_)))
                                                  (_hd125941126598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125942126595_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125940126600_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125934126584_))
                                                      (let ((_e125945126603_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125934126584_))))
                (let ((_tl125943126608_
                       (let () (declare (not safe)) (##cdr _e125945126603_)))
                      (_hd125944126606_
                       (let () (declare (not safe)) (##car _e125945126603_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125944126606_))
                      (let ((_e125948126611_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125944126606_))))
                        (let ((_tl125946126616_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125948126611_)))
                              (_hd125947126614_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125948126611_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125947126614_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125947126614_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125946126616_))
                                      (let ((_e125951126619_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125946126616_))))
                                        (let ((_tl125949126624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125951126619_)))
                                              (_hd125950126622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125951126619_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125949126624_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125943126608_))
                                                  (let ((_e125954126627_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125943126608_))))
                                                    (let ((_tl125952126632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125954126627_)))
                                                          (_hd125953126630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125954126627_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125953126630_))
                                                          (let ((_e125957126635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125953126630_))))
                    (let ((_tl125955126640_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125957126635_)))
                          (_hd125956126638_
                           (let ()
                             (declare (not safe))
                             (##car _e125957126635_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125956126638_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125956126638_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125955126640_))
                                  (let ((_e125960126643_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125955126640_))))
                                    (let ((_tl125958126648_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125960126643_)))
                                          (_hd125959126646_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125960126643_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125958126648_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125952126632_))
                                              (let ((_e125963126651_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125952126632_))))
                                                (let ((_tl125961126656_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125963126651_)))
                                                      (_hd125962126654_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125963126651_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125962126654_))
                                                      (let ((_e125966126659_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125962126654_))))
                (let ((_tl125964126664_
                       (let () (declare (not safe)) (##cdr _e125966126659_)))
                      (_hd125965126662_
                       (let () (declare (not safe)) (##car _e125966126659_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125965126662_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125965126662_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125964126664_))
                              (let ((_e125969126667_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125964126664_))))
                                (let ((_tl125967126672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125969126667_)))
                                      (_hd125968126670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125969126667_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125967126672_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125961126656_))
                                          (let ((_e125972126675_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125961126656_))))
                                            (let ((_tl125970126680_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125972126675_)))
                                                  (_hd125971126678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125972126675_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd125971126678_))
                                                  (let ((_e125975126683_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd125971126678_))))
                                                    (let ((_tl125973126688_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125975126683_)))
                                                          (_hd125974126686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125975126683_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd125974126686_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd125974126686_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125973126688_))
                          (let ((_e125978126691_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125973126688_))))
                            (let ((_tl125976126696_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125978126691_)))
                                  (_hd125977126694_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125978126691_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125976126696_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125970126680_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125928126568_))
                                          (___match129083129084_
                                           _e125924126547_
                                           _hd125923126550_
                                           _tl125922126552_
                                           _e125927126555_
                                           _hd125926126558_
                                           _tl125925126560_
                                           _e125930126563_
                                           _hd125929126566_
                                           _tl125928126568_
                                           _e125933126571_
                                           _hd125932126574_
                                           _tl125931126576_
                                           _e125936126579_
                                           _hd125935126582_
                                           _tl125934126584_
                                           _e125939126587_
                                           _hd125938126590_
                                           _tl125937126592_
                                           _e125942126595_
                                           _hd125941126598_
                                           _tl125940126600_
                                           _e125945126603_
                                           _hd125944126606_
                                           _tl125943126608_
                                           _e125948126611_
                                           _hd125947126614_
                                           _tl125946126616_
                                           _e125951126619_
                                           _hd125950126622_
                                           _tl125949126624_
                                           _e125954126627_
                                           _hd125953126630_
                                           _tl125952126632_
                                           _e125957126635_
                                           _hd125956126638_
                                           _tl125955126640_
                                           _e125960126643_
                                           _hd125959126646_
                                           _tl125958126648_
                                           _e125963126651_
                                           _hd125962126654_
                                           _tl125961126656_
                                           _e125966126659_
                                           _hd125965126662_
                                           _tl125964126664_
                                           _e125969126667_
                                           _hd125968126670_
                                           _tl125967126672_
                                           _e125972126675_
                                           _hd125971126678_
                                           _tl125970126680_
                                           _e125975126683_
                                           _hd125974126686_
                                           _tl125973126688_
                                           _e125978126691_
                                           _hd125977126694_
                                           _tl125976126696_)
                                          (___match129095129096_
                                           _e125924126547_
                                           _hd125923126550_
                                           _tl125922126552_
                                           _e125927126555_
                                           _hd125926126558_
                                           _tl125925126560_))
                                      (___match129095129096_
                                       _e125924126547_
                                       _hd125923126550_
                                       _tl125922126552_
                                       _e125927126555_
                                       _hd125926126558_
                                       _tl125925126560_))
                                  (___match129095129096_
                                   _e125924126547_
                                   _hd125923126550_
                                   _tl125922126552_
                                   _e125927126555_
                                   _hd125926126558_
                                   _tl125925126560_))))
                          (___match129095129096_
                           _e125924126547_
                           _hd125923126550_
                           _tl125922126552_
                           _e125927126555_
                           _hd125926126558_
                           _tl125925126560_))
                      (___match129095129096_
                       _e125924126547_
                       _hd125923126550_
                       _tl125922126552_
                       _e125927126555_
                       _hd125926126558_
                       _tl125925126560_))
                  (___match129095129096_
                   _e125924126547_
                   _hd125923126550_
                   _tl125922126552_
                   _e125927126555_
                   _hd125926126558_
                   _tl125925126560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129095129096_
                                                   _e125924126547_
                                                   _hd125923126550_
                                                   _tl125922126552_
                                                   _e125927126555_
                                                   _hd125926126558_
                                                   _tl125925126560_))))
                                          (___match129095129096_
                                           _e125924126547_
                                           _hd125923126550_
                                           _tl125922126552_
                                           _e125927126555_
                                           _hd125926126558_
                                           _tl125925126560_))
                                      (___match129095129096_
                                       _e125924126547_
                                       _hd125923126550_
                                       _tl125922126552_
                                       _e125927126555_
                                       _hd125926126558_
                                       _tl125925126560_))))
                              (___match129095129096_
                               _e125924126547_
                               _hd125923126550_
                               _tl125922126552_
                               _e125927126555_
                               _hd125926126558_
                               _tl125925126560_))
                          (___match129095129096_
                           _e125924126547_
                           _hd125923126550_
                           _tl125922126552_
                           _e125927126555_
                           _hd125926126558_
                           _tl125925126560_))
                      (___match129095129096_
                       _e125924126547_
                       _hd125923126550_
                       _tl125922126552_
                       _e125927126555_
                       _hd125926126558_
                       _tl125925126560_))))
              (___match129095129096_
               _e125924126547_
               _hd125923126550_
               _tl125922126552_
               _e125927126555_
               _hd125926126558_
               _tl125925126560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129095129096_
                                               _e125924126547_
                                               _hd125923126550_
                                               _tl125922126552_
                                               _e125927126555_
                                               _hd125926126558_
                                               _tl125925126560_))
                                          (___match129095129096_
                                           _e125924126547_
                                           _hd125923126550_
                                           _tl125922126552_
                                           _e125927126555_
                                           _hd125926126558_
                                           _tl125925126560_))))
                                  (___match129095129096_
                                   _e125924126547_
                                   _hd125923126550_
                                   _tl125922126552_
                                   _e125927126555_
                                   _hd125926126558_
                                   _tl125925126560_))
                              (___match129095129096_
                               _e125924126547_
                               _hd125923126550_
                               _tl125922126552_
                               _e125927126555_
                               _hd125926126558_
                               _tl125925126560_))
                          (___match129095129096_
                           _e125924126547_
                           _hd125923126550_
                           _tl125922126552_
                           _e125927126555_
                           _hd125926126558_
                           _tl125925126560_))))
                  (___match129095129096_
                   _e125924126547_
                   _hd125923126550_
                   _tl125922126552_
                   _e125927126555_
                   _hd125926126558_
                   _tl125925126560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129095129096_
                                                   _e125924126547_
                                                   _hd125923126550_
                                                   _tl125922126552_
                                                   _e125927126555_
                                                   _hd125926126558_
                                                   _tl125925126560_))
                                              (___match129095129096_
                                               _e125924126547_
                                               _hd125923126550_
                                               _tl125922126552_
                                               _e125927126555_
                                               _hd125926126558_
                                               _tl125925126560_))))
                                      (___match129095129096_
                                       _e125924126547_
                                       _hd125923126550_
                                       _tl125922126552_
                                       _e125927126555_
                                       _hd125926126558_
                                       _tl125925126560_))
                                  (___match129095129096_
                                   _e125924126547_
                                   _hd125923126550_
                                   _tl125922126552_
                                   _e125927126555_
                                   _hd125926126558_
                                   _tl125925126560_))
                              (___match129095129096_
                               _e125924126547_
                               _hd125923126550_
                               _tl125922126552_
                               _e125927126555_
                               _hd125926126558_
                               _tl125925126560_))))
                      (___match129095129096_
                       _e125924126547_
                       _hd125923126550_
                       _tl125922126552_
                       _e125927126555_
                       _hd125926126558_
                       _tl125925126560_))))
              (___match129095129096_
               _e125924126547_
               _hd125923126550_
               _tl125922126552_
               _e125927126555_
               _hd125926126558_
               _tl125925126560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129095129096_
                                                   _e125924126547_
                                                   _hd125923126550_
                                                   _tl125922126552_
                                                   _e125927126555_
                                                   _hd125926126558_
                                                   _tl125925126560_))))
                                          (___match129095129096_
                                           _e125924126547_
                                           _hd125923126550_
                                           _tl125922126552_
                                           _e125927126555_
                                           _hd125926126558_
                                           _tl125925126560_))
                                      (___match129095129096_
                                       _e125924126547_
                                       _hd125923126550_
                                       _tl125922126552_
                                       _e125927126555_
                                       _hd125926126558_
                                       _tl125925126560_))
                                  (___match129095129096_
                                   _e125924126547_
                                   _hd125923126550_
                                   _tl125922126552_
                                   _e125927126555_
                                   _hd125926126558_
                                   _tl125925126560_))))
                          (___match129095129096_
                           _e125924126547_
                           _hd125923126550_
                           _tl125922126552_
                           _e125927126555_
                           _hd125926126558_
                           _tl125925126560_))))
                  (___match129095129096_
                   _e125924126547_
                   _hd125923126550_
                   _tl125922126552_
                   _e125927126555_
                   _hd125926126558_
                   _tl125925126560_))
              (___match129095129096_
               _e125924126547_
               _hd125923126550_
               _tl125922126552_
               _e125927126555_
               _hd125926126558_
               _tl125925126560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129095129096_
                                                   _e125924126547_
                                                   _hd125923126550_
                                                   _tl125922126552_
                                                   _e125927126555_
                                                   _hd125926126558_
                                                   _tl125925126560_))))
                                          (___match129095129096_
                                           _e125924126547_
                                           _hd125923126550_
                                           _tl125922126552_
                                           _e125927126555_
                                           _hd125926126558_
                                           _tl125925126560_))))
                                  (___match129095129096_
                                   _e125924126547_
                                   _hd125923126550_
                                   _tl125922126552_
                                   _e125927126555_
                                   _hd125926126558_
                                   _tl125925126560_))))
                          (___match129229129230_
                           _e125924126547_
                           _hd125923126550_
                           _tl125922126552_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128910128911_))
                  (let ((_e125915126764_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128910128911_))))
                    (let ((_tl125913126769_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125915126764_)))
                          (_hd125914126767_
                           (let ()
                             (declare (not safe))
                             (##car _e125915126764_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126772_ _tl125913126769_))
                            (___kont128912128913_ _L126772_))
                          (___match128937128938_
                           _e125915126764_
                           _hd125914126767_
                           _tl125913126769_))))
                  (let () (declare (not safe)) (_g125910126106_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125857_ _stx125858_)
        (letrec ((_clause-e125860_
                  (lambda (_form125901_)
                    (let ((__obj130594
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
                       __obj130594
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125901_))
                       (if (let ((__tmp130665
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130665))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125901_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125901_))
                               '#f)
                           '#f))
                      __obj130594))))
          (let* ((_g125862125872_
                  (lambda (_g125863125869_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125863125869_))))
                 (_g125861125898_
                  (lambda (_g125863125875_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125863125875_))
                        (let ((_e125867125877_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125863125875_))))
                          (let ((_hd125866125880_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125867125877_)))
                                (_tl125865125882_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125867125877_))))
                            ((lambda (_L125885_)
                               (let ((_clauses125896_
                                      (map _clause-e125860_ _L125885_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125896_)))
                             _tl125865125882_)))
                        (let ()
                          (declare (not safe))
                          (_g125862125872_ _g125863125875_))))))
            (declare (not safe))
            (_g125861125898_ _stx125858_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125788_ _stx125789_)
        (let* ((_g125791125808_
                (lambda (_g125792125805_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125792125805_))))
               (_g125790125854_
                (lambda (_g125792125811_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125792125811_))
                      (let ((_e125797125813_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125792125811_))))
                        (let ((_hd125796125816_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125797125813_)))
                              (_tl125795125818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125797125813_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125795125818_))
                              (let ((_e125800125821_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125795125818_))))
                                (let ((_hd125799125824_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125800125821_)))
                                      (_tl125798125826_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125800125821_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125798125826_))
                                      (let ((_e125803125829_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125798125826_))))
                                        (let ((_hd125802125832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125803125829_)))
                                              (_tl125801125834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125803125829_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125801125834_))
                                              ((lambda (_L125837_ _L125838_)
                                                 (let ((__tmp130666
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125788_
                                                             _L125837_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130666
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125802125832_
                                               _hd125799125824_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125791125808_
                                                 _g125792125811_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125791125808_ _g125792125811_)))))
                              (let ()
                                (declare (not safe))
                                (_g125791125808_ _g125792125811_)))))
                      (let ()
                        (declare (not safe))
                        (_g125791125808_ _g125792125811_))))))
          (declare (not safe))
          (_g125790125854_ _stx125789_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125692_ _stx125693_)
        (let* ((___stx129238129239_ _stx125693_)
               (_g125696125716_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129238129239_)))))
          (let ((___kont129240129241_
                 (lambda (_L125760_ _L125761_)
                   (let ((_type-e125778125780_
                          (let ((__tmp130667
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125761_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130667))))
                     (if _type-e125778125780_
                         (let ((_type-e125783_ _type-e125778125780_))
                           (_type-e125783_ _stx125693_ _L125760_))
                         '#f))))
                (___kont129242129243_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129238129239_))
                (let ((_e125702125728_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129238129239_))))
                  (let ((_tl125700125733_
                         (let () (declare (not safe)) (##cdr _e125702125728_)))
                        (_hd125701125731_
                         (let ()
                           (declare (not safe))
                           (##car _e125702125728_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125700125733_))
                        (let ((_e125705125736_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125700125733_))))
                          (let ((_tl125703125741_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125705125736_)))
                                (_hd125704125739_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125705125736_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125704125739_))
                                (let ((_e125708125744_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125704125739_))))
                                  (let ((_tl125706125749_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125708125744_)))
                                        (_hd125707125747_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125708125744_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125707125747_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125707125747_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125706125749_))
                                                (let ((_e125711125752_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125706125749_))))
                                                  (let ((_tl125709125757_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125711125752_)))
                                                        (_hd125710125755_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125711125752_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125709125757_))
                                                        (___kont129240129241_
                                                         _tl125703125741_
                                                         _hd125710125755_)
                                                        (___kont129242129243_))))
                                                (___kont129242129243_))
                                            (___kont129242129243_))
                                        (___kont129242129243_))))
                                (___kont129242129243_))))
                        (___kont129242129243_))))
                (___kont129242129243_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125640_ _stx125641_)
        (let* ((_g125643125656_
                (lambda (_g125644125653_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125644125653_))))
               (_g125642125689_
                (lambda (_g125644125659_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125644125659_))
                      (let ((_e125648125661_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125644125659_))))
                        (let ((_hd125647125664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125648125661_)))
                              (_tl125646125666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125648125661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125646125666_))
                              (let ((_e125651125669_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125646125666_))))
                                (let ((_hd125650125672_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125651125669_)))
                                      (_tl125649125674_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125651125669_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125649125674_))
                                      ((lambda (_L125677_)
                                         (let ((__tmp130668
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125677_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130668)))
                                       _hd125650125672_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125643125656_ _g125644125659_)))))
                              (let ()
                                (declare (not safe))
                                (_g125643125656_ _g125644125659_)))))
                      (let ()
                        (declare (not safe))
                        (_g125643125656_ _g125644125659_))))))
          (declare (not safe))
          (_g125642125689_ _stx125641_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124874_)
        (let* ((___stx129276129277_ _form124874_)
               (_g124879125036_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129276129277_)))))
          (let ((___kont129278129279_
                 (lambda (_L125560_ _L125561_ _L125562_) '#t))
                (___kont129284129285_
                 (lambda (_L125348_
                          _L125349_
                          _L125350_
                          _L125351_
                          _L125352_
                          _L125353_)
                   '#t))
                (___kont129290129291_
                 (lambda (_L125144_ _L125145_ _L125146_ _L125147_) '#t))
                (___kont129292129293_ (lambda () '#f)))
            (let* ((___match129417129418_
                    (lambda (_e124998125048_
                             _hd124997125051_
                             _tl124996125053_
                             _e125001125056_
                             _hd125000125059_
                             _tl124999125061_
                             _e125004125064_
                             _hd125003125067_
                             _tl125002125069_
                             _e125007125072_
                             _hd125006125075_
                             _tl125005125077_
                             _e125010125080_
                             _hd125009125083_
                             _tl125008125085_
                             _e125013125088_
                             _hd125012125091_
                             _tl125011125093_
                             _e125016125096_
                             _hd125015125099_
                             _tl125014125101_
                             _e125019125104_
                             _hd125018125107_
                             _tl125017125109_
                             _e125022125112_
                             _hd125021125115_
                             _tl125020125117_
                             _e125025125120_
                             _hd125024125123_
                             _tl125023125125_
                             _e125028125128_
                             _hd125027125131_
                             _tl125026125133_
                             _e125031125136_
                             _hd125030125139_
                             _tl125029125141_)
                      (let ((_L125144_ _hd125030125139_)
                            (_L125145_ _hd125021125115_)
                            (_L125146_ _hd125012125091_)
                            (_L125147_ _hd124997125051_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125147_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125146_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125147_ _L125144_))
                                 (let ((__tmp130669
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L125145_
                                           _L125147_))))
                                   (declare (not safe))
                                   (not __tmp130669)))
                            (___kont129290129291_
                             _L125144_
                             _L125145_
                             _L125146_
                             _L125147_)
                            (___kont129292129293_)))))
                   (___match129389129390_
                    (lambda (_e124998125048_
                             _hd124997125051_
                             _tl124996125053_
                             _e125001125056_
                             _hd125000125059_
                             _tl124999125061_
                             _e125004125064_
                             _hd125003125067_
                             _tl125002125069_
                             _e125007125072_
                             _hd125006125075_
                             _tl125005125077_
                             _e125010125080_
                             _hd125009125083_
                             _tl125008125085_
                             _e125013125088_
                             _hd125012125091_
                             _tl125011125093_
                             _e125016125096_
                             _hd125015125099_
                             _tl125014125101_
                             _e125019125104_
                             _hd125018125107_
                             _tl125017125109_
                             _e125022125112_
                             _hd125021125115_
                             _tl125020125117_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125014125101_))
                          (let ((_e125025125120_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125014125101_))))
                            (let ((_tl125023125125_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125025125120_)))
                                  (_hd125024125123_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125025125120_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125024125123_))
                                  (let ((_e125028125128_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125024125123_))))
                                    (let ((_tl125026125133_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125028125128_)))
                                          (_hd125027125131_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125028125128_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125027125131_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125027125131_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125026125133_))
                                                  (let ((_e125031125136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125026125133_))))
                                                    (let ((_tl125029125141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125031125136_)))
                                                          (_hd125030125139_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125031125136_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125029125141_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl125023125125_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124999125061_))
                          (___match129417129418_
                           _e124998125048_
                           _hd124997125051_
                           _tl124996125053_
                           _e125001125056_
                           _hd125000125059_
                           _tl124999125061_
                           _e125004125064_
                           _hd125003125067_
                           _tl125002125069_
                           _e125007125072_
                           _hd125006125075_
                           _tl125005125077_
                           _e125010125080_
                           _hd125009125083_
                           _tl125008125085_
                           _e125013125088_
                           _hd125012125091_
                           _tl125011125093_
                           _e125016125096_
                           _hd125015125099_
                           _tl125014125101_
                           _e125019125104_
                           _hd125018125107_
                           _tl125017125109_
                           _e125022125112_
                           _hd125021125115_
                           _tl125020125117_
                           _e125025125120_
                           _hd125024125123_
                           _tl125023125125_
                           _e125028125128_
                           _hd125027125131_
                           _tl125026125133_
                           _e125031125136_
                           _hd125030125139_
                           _tl125029125141_)
                          (___kont129292129293_))
                      (___kont129292129293_))
                  (___kont129292129293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129292129293_))
                                              (___kont129292129293_))
                                          (___kont129292129293_))))
                                  (___kont129292129293_))))
                          (___kont129292129293_))))
                   (___match129319129320_
                    (lambda (_e124934125188_
                             _hd124933125191_
                             _tl124932125193_
                             ___splice129286129287_
                             _target124935125196_
                             _tl124937125198_)
                      (letrec ((_loop124938125201_
                                (lambda (_hd124936125204_ _arg124942125206_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124936125204_))
                                      (let ((_e124939125209_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124936125204_))))
                                        (let ((_lp-tl124941125214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124939125209_)))
                                              (_lp-hd124940125212_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124939125209_))))
                                          (let ((__tmp130684
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124940125212_
                                                         _arg124942125206_))))
                                            (declare (not safe))
                                            (_loop124938125201_
                                             _lp-tl124941125214_
                                             __tmp130684))))
                                      (let ((_arg124943125217_
                                             (reverse _arg124942125206_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124932125193_))
                                            (let ((_e124946125220_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124932125193_))))
                                              (let ((_tl124944125225_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124946125220_)))
                                                    (_hd124945125223_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124946125220_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124945125223_))
                                                    (let ((_e124949125228_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124945125223_))))
                                                      (let ((_tl124947125233_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124949125228_)))
                    (_hd124948125231_
                     (let () (declare (not safe)) (##car _e124949125228_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124948125231_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124948125231_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124947125233_))
                            (let ((_e124952125236_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124947125233_))))
                              (let ((_tl124950125241_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124952125236_)))
                                    (_hd124951125239_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124952125236_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124951125239_))
                                    (let ((_e124955125244_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124951125239_))))
                                      (let ((_tl124953125249_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124955125244_)))
                                            (_hd124954125247_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124955125244_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124954125247_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124954125247_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124953125249_))
                                                    (let ((_e124958125252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124953125249_))))
                                                      (let ((_tl124956125257_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124958125252_)))
                    (_hd124957125255_
                     (let () (declare (not safe)) (##car _e124958125252_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124956125257_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124950125241_))
                        (let ((_e124961125260_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124950125241_))))
                          (let ((_tl124959125265_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124961125260_)))
                                (_hd124960125263_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124961125260_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124960125263_))
                                (let ((_e124964125268_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124960125263_))))
                                  (let ((_tl124962125273_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124964125268_)))
                                        (_hd124963125271_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124964125268_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124963125271_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124963125271_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124962125273_))
                                                (let ((_e124967125276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124962125273_))))
                                                  (let ((_tl124965125281_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124967125276_)))
                                                        (_hd124966125279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124967125276_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124965125281_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl124959125265_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl124959125265_))
                              '1)
                        (let ((___splice129288129289_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124959125265_
                                  '1))))
                          (let ((_tl124970125286_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129288129289_ '1)))
                                (_target124968125284_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129288129289_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124970125286_))
                                (let ((_e124979125289_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124970125286_))))
                                  (let ((_tl124977125294_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124979125289_)))
                                        (_hd124978125292_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124979125289_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd124978125292_))
                                        (let ((_e124982125297_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd124978125292_))))
                                          (let ((_tl124980125302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e124982125297_)))
                                                (_hd124981125300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e124982125297_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd124981125300_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd124981125300_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl124980125302_))
                                                        (let ((_e124985125305_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl124980125302_))))
                  (let ((_tl124983125310_
                         (let () (declare (not safe)) (##cdr _e124985125305_)))
                        (_hd124984125308_
                         (let ()
                           (declare (not safe))
                           (##car _e124985125305_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl124983125310_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl124977125294_))
                            (letrec ((_loop124971125313_
                                      (lambda (_hd124969125316_
                                               _xarg124975125318_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd124969125316_))
                                            (let ((_e124972125321_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd124969125316_))))
                                              (let ((_lp-tl124974125326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124972125321_)))
                                                    (_lp-hd124973125324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124972125321_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd124973125324_))
                                                    (let ((_e124988125329_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd124973125324_))))
                                                      (let ((_tl124986125334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124988125329_)))
                    (_hd124987125332_
                     (let () (declare (not safe)) (##car _e124988125329_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124987125332_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd124987125332_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124986125334_))
                            (let ((_e124991125337_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124986125334_))))
                              (let ((_tl124989125342_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124991125337_)))
                                    (_hd124990125340_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124991125337_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl124989125342_))
                                    (let ((__tmp130683
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd124990125340_
                                                   _xarg124975125318_))))
                                      (declare (not safe))
                                      (_loop124971125313_
                                       _lp-tl124974125326_
                                       __tmp130683))
                                    (___match129389129390_
                                     _e124934125188_
                                     _hd124933125191_
                                     _tl124932125193_
                                     _e124946125220_
                                     _hd124945125223_
                                     _tl124944125225_
                                     _e124949125228_
                                     _hd124948125231_
                                     _tl124947125233_
                                     _e124952125236_
                                     _hd124951125239_
                                     _tl124950125241_
                                     _e124955125244_
                                     _hd124954125247_
                                     _tl124953125249_
                                     _e124958125252_
                                     _hd124957125255_
                                     _tl124956125257_
                                     _e124961125260_
                                     _hd124960125263_
                                     _tl124959125265_
                                     _e124964125268_
                                     _hd124963125271_
                                     _tl124962125273_
                                     _e124967125276_
                                     _hd124966125279_
                                     _tl124965125281_))))
                            (___match129389129390_
                             _e124934125188_
                             _hd124933125191_
                             _tl124932125193_
                             _e124946125220_
                             _hd124945125223_
                             _tl124944125225_
                             _e124949125228_
                             _hd124948125231_
                             _tl124947125233_
                             _e124952125236_
                             _hd124951125239_
                             _tl124950125241_
                             _e124955125244_
                             _hd124954125247_
                             _tl124953125249_
                             _e124958125252_
                             _hd124957125255_
                             _tl124956125257_
                             _e124961125260_
                             _hd124960125263_
                             _tl124959125265_
                             _e124964125268_
                             _hd124963125271_
                             _tl124962125273_
                             _e124967125276_
                             _hd124966125279_
                             _tl124965125281_))
                        (___match129389129390_
                         _e124934125188_
                         _hd124933125191_
                         _tl124932125193_
                         _e124946125220_
                         _hd124945125223_
                         _tl124944125225_
                         _e124949125228_
                         _hd124948125231_
                         _tl124947125233_
                         _e124952125236_
                         _hd124951125239_
                         _tl124950125241_
                         _e124955125244_
                         _hd124954125247_
                         _tl124953125249_
                         _e124958125252_
                         _hd124957125255_
                         _tl124956125257_
                         _e124961125260_
                         _hd124960125263_
                         _tl124959125265_
                         _e124964125268_
                         _hd124963125271_
                         _tl124962125273_
                         _e124967125276_
                         _hd124966125279_
                         _tl124965125281_))
                    (___match129389129390_
                     _e124934125188_
                     _hd124933125191_
                     _tl124932125193_
                     _e124946125220_
                     _hd124945125223_
                     _tl124944125225_
                     _e124949125228_
                     _hd124948125231_
                     _tl124947125233_
                     _e124952125236_
                     _hd124951125239_
                     _tl124950125241_
                     _e124955125244_
                     _hd124954125247_
                     _tl124953125249_
                     _e124958125252_
                     _hd124957125255_
                     _tl124956125257_
                     _e124961125260_
                     _hd124960125263_
                     _tl124959125265_
                     _e124964125268_
                     _hd124963125271_
                     _tl124962125273_
                     _e124967125276_
                     _hd124966125279_
                     _tl124965125281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129389129390_
                                                     _e124934125188_
                                                     _hd124933125191_
                                                     _tl124932125193_
                                                     _e124946125220_
                                                     _hd124945125223_
                                                     _tl124944125225_
                                                     _e124949125228_
                                                     _hd124948125231_
                                                     _tl124947125233_
                                                     _e124952125236_
                                                     _hd124951125239_
                                                     _tl124950125241_
                                                     _e124955125244_
                                                     _hd124954125247_
                                                     _tl124953125249_
                                                     _e124958125252_
                                                     _hd124957125255_
                                                     _tl124956125257_
                                                     _e124961125260_
                                                     _hd124960125263_
                                                     _tl124959125265_
                                                     _e124964125268_
                                                     _hd124963125271_
                                                     _tl124962125273_
                                                     _e124967125276_
                                                     _hd124966125279_
                                                     _tl124965125281_))))
                                            (let ((_xarg124976125345_
                                                   (reverse _xarg124975125318_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124944125225_))
                                                  (let ((_L125348_
                                                         _hd124984125308_)
                                                        (_L125349_
                                                         _xarg124976125345_)
                                                        (_L125350_
                                                         _hd124966125279_)
                                                        (_L125351_
                                                         _hd124957125255_)
                                                        (_L125352_
                                                         _tl124937125198_)
                                                        (_L125353_
                                                         _arg124943125217_))
                                                    (if (and (let ((__tmp130681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130682
                                   (lambda (_g125396125399_ _g125397125401_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125396125399_
                                             _g125397125401_)))))
                              (declare (not safe))
                              (foldr1 __tmp130682 '() _L125353_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130681))
                     (let () (declare (not safe)) (gx#identifier? _L125352_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125351_ 'apply))
                     (fx= (length (let ((__tmp130679
                                         (lambda (_g125403125406_
                                                  _g125404125408_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125403125406_
                                                   _g125404125408_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130679 '() _L125353_)))
                          (length (let ((__tmp130680
                                         (lambda (_g125410125413_
                                                  _g125411125415_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125410125413_
                                                   _g125411125415_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130680 '() _L125349_))))
                     (let ((__tmp130677
                            (let ((__tmp130678
                                   (lambda (_g125417125420_ _g125418125422_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125417125420_
                                             _g125418125422_)))))
                              (declare (not safe))
                              (foldr1 __tmp130678 '() _L125353_)))
                           (__tmp130675
                            (let ((__tmp130676
                                   (lambda (_g125424125427_ _g125425125429_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125424125427_
                                             _g125425125429_)))))
                              (declare (not safe))
                              (foldr1 __tmp130676 '() _L125349_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130677 __tmp130675))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125352_ _L125348_))
                     (let ((__tmp130670
                            (let ((__tmp130674
                                   (lambda (_g125431125433_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125431125433_
                                        _L125350_))))
                                  (__tmp130671
                                   (let ((__tmp130673
                                          (lambda (_g125435125438_
                                                   _g125436125440_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125435125438_
                                                    _g125436125440_))))
                                         (__tmp130672
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125352_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130673
                                             __tmp130672
                                             _L125353_))))
                              (declare (not safe))
                              (find __tmp130674 __tmp130671))))
                       (declare (not safe))
                       (not __tmp130670)))
                (___kont129284129285_
                 _L125348_
                 _L125349_
                 _L125350_
                 _L125351_
                 _L125352_
                 _L125353_)
                (___match129389129390_
                 _e124934125188_
                 _hd124933125191_
                 _tl124932125193_
                 _e124946125220_
                 _hd124945125223_
                 _tl124944125225_
                 _e124949125228_
                 _hd124948125231_
                 _tl124947125233_
                 _e124952125236_
                 _hd124951125239_
                 _tl124950125241_
                 _e124955125244_
                 _hd124954125247_
                 _tl124953125249_
                 _e124958125252_
                 _hd124957125255_
                 _tl124956125257_
                 _e124961125260_
                 _hd124960125263_
                 _tl124959125265_
                 _e124964125268_
                 _hd124963125271_
                 _tl124962125273_
                 _e124967125276_
                 _hd124966125279_
                 _tl124965125281_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129389129390_
                                                   _e124934125188_
                                                   _hd124933125191_
                                                   _tl124932125193_
                                                   _e124946125220_
                                                   _hd124945125223_
                                                   _tl124944125225_
                                                   _e124949125228_
                                                   _hd124948125231_
                                                   _tl124947125233_
                                                   _e124952125236_
                                                   _hd124951125239_
                                                   _tl124950125241_
                                                   _e124955125244_
                                                   _hd124954125247_
                                                   _tl124953125249_
                                                   _e124958125252_
                                                   _hd124957125255_
                                                   _tl124956125257_
                                                   _e124961125260_
                                                   _hd124960125263_
                                                   _tl124959125265_
                                                   _e124964125268_
                                                   _hd124963125271_
                                                   _tl124962125273_
                                                   _e124967125276_
                                                   _hd124966125279_
                                                   _tl124965125281_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop124971125313_ _target124968125284_ '())))
                            (___match129389129390_
                             _e124934125188_
                             _hd124933125191_
                             _tl124932125193_
                             _e124946125220_
                             _hd124945125223_
                             _tl124944125225_
                             _e124949125228_
                             _hd124948125231_
                             _tl124947125233_
                             _e124952125236_
                             _hd124951125239_
                             _tl124950125241_
                             _e124955125244_
                             _hd124954125247_
                             _tl124953125249_
                             _e124958125252_
                             _hd124957125255_
                             _tl124956125257_
                             _e124961125260_
                             _hd124960125263_
                             _tl124959125265_
                             _e124964125268_
                             _hd124963125271_
                             _tl124962125273_
                             _e124967125276_
                             _hd124966125279_
                             _tl124965125281_))
                        (___match129389129390_
                         _e124934125188_
                         _hd124933125191_
                         _tl124932125193_
                         _e124946125220_
                         _hd124945125223_
                         _tl124944125225_
                         _e124949125228_
                         _hd124948125231_
                         _tl124947125233_
                         _e124952125236_
                         _hd124951125239_
                         _tl124950125241_
                         _e124955125244_
                         _hd124954125247_
                         _tl124953125249_
                         _e124958125252_
                         _hd124957125255_
                         _tl124956125257_
                         _e124961125260_
                         _hd124960125263_
                         _tl124959125265_
                         _e124964125268_
                         _hd124963125271_
                         _tl124962125273_
                         _e124967125276_
                         _hd124966125279_
                         _tl124965125281_))))
                (___match129389129390_
                 _e124934125188_
                 _hd124933125191_
                 _tl124932125193_
                 _e124946125220_
                 _hd124945125223_
                 _tl124944125225_
                 _e124949125228_
                 _hd124948125231_
                 _tl124947125233_
                 _e124952125236_
                 _hd124951125239_
                 _tl124950125241_
                 _e124955125244_
                 _hd124954125247_
                 _tl124953125249_
                 _e124958125252_
                 _hd124957125255_
                 _tl124956125257_
                 _e124961125260_
                 _hd124960125263_
                 _tl124959125265_
                 _e124964125268_
                 _hd124963125271_
                 _tl124962125273_
                 _e124967125276_
                 _hd124966125279_
                 _tl124965125281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129389129390_
                                                     _e124934125188_
                                                     _hd124933125191_
                                                     _tl124932125193_
                                                     _e124946125220_
                                                     _hd124945125223_
                                                     _tl124944125225_
                                                     _e124949125228_
                                                     _hd124948125231_
                                                     _tl124947125233_
                                                     _e124952125236_
                                                     _hd124951125239_
                                                     _tl124950125241_
                                                     _e124955125244_
                                                     _hd124954125247_
                                                     _tl124953125249_
                                                     _e124958125252_
                                                     _hd124957125255_
                                                     _tl124956125257_
                                                     _e124961125260_
                                                     _hd124960125263_
                                                     _tl124959125265_
                                                     _e124964125268_
                                                     _hd124963125271_
                                                     _tl124962125273_
                                                     _e124967125276_
                                                     _hd124966125279_
                                                     _tl124965125281_))
                                                (___match129389129390_
                                                 _e124934125188_
                                                 _hd124933125191_
                                                 _tl124932125193_
                                                 _e124946125220_
                                                 _hd124945125223_
                                                 _tl124944125225_
                                                 _e124949125228_
                                                 _hd124948125231_
                                                 _tl124947125233_
                                                 _e124952125236_
                                                 _hd124951125239_
                                                 _tl124950125241_
                                                 _e124955125244_
                                                 _hd124954125247_
                                                 _tl124953125249_
                                                 _e124958125252_
                                                 _hd124957125255_
                                                 _tl124956125257_
                                                 _e124961125260_
                                                 _hd124960125263_
                                                 _tl124959125265_
                                                 _e124964125268_
                                                 _hd124963125271_
                                                 _tl124962125273_
                                                 _e124967125276_
                                                 _hd124966125279_
                                                 _tl124965125281_))))
                                        (___match129389129390_
                                         _e124934125188_
                                         _hd124933125191_
                                         _tl124932125193_
                                         _e124946125220_
                                         _hd124945125223_
                                         _tl124944125225_
                                         _e124949125228_
                                         _hd124948125231_
                                         _tl124947125233_
                                         _e124952125236_
                                         _hd124951125239_
                                         _tl124950125241_
                                         _e124955125244_
                                         _hd124954125247_
                                         _tl124953125249_
                                         _e124958125252_
                                         _hd124957125255_
                                         _tl124956125257_
                                         _e124961125260_
                                         _hd124960125263_
                                         _tl124959125265_
                                         _e124964125268_
                                         _hd124963125271_
                                         _tl124962125273_
                                         _e124967125276_
                                         _hd124966125279_
                                         _tl124965125281_))))
                                (___match129389129390_
                                 _e124934125188_
                                 _hd124933125191_
                                 _tl124932125193_
                                 _e124946125220_
                                 _hd124945125223_
                                 _tl124944125225_
                                 _e124949125228_
                                 _hd124948125231_
                                 _tl124947125233_
                                 _e124952125236_
                                 _hd124951125239_
                                 _tl124950125241_
                                 _e124955125244_
                                 _hd124954125247_
                                 _tl124953125249_
                                 _e124958125252_
                                 _hd124957125255_
                                 _tl124956125257_
                                 _e124961125260_
                                 _hd124960125263_
                                 _tl124959125265_
                                 _e124964125268_
                                 _hd124963125271_
                                 _tl124962125273_
                                 _e124967125276_
                                 _hd124966125279_
                                 _tl124965125281_))))
                        (___match129389129390_
                         _e124934125188_
                         _hd124933125191_
                         _tl124932125193_
                         _e124946125220_
                         _hd124945125223_
                         _tl124944125225_
                         _e124949125228_
                         _hd124948125231_
                         _tl124947125233_
                         _e124952125236_
                         _hd124951125239_
                         _tl124950125241_
                         _e124955125244_
                         _hd124954125247_
                         _tl124953125249_
                         _e124958125252_
                         _hd124957125255_
                         _tl124956125257_
                         _e124961125260_
                         _hd124960125263_
                         _tl124959125265_
                         _e124964125268_
                         _hd124963125271_
                         _tl124962125273_
                         _e124967125276_
                         _hd124966125279_
                         _tl124965125281_))
                    (___match129389129390_
                     _e124934125188_
                     _hd124933125191_
                     _tl124932125193_
                     _e124946125220_
                     _hd124945125223_
                     _tl124944125225_
                     _e124949125228_
                     _hd124948125231_
                     _tl124947125233_
                     _e124952125236_
                     _hd124951125239_
                     _tl124950125241_
                     _e124955125244_
                     _hd124954125247_
                     _tl124953125249_
                     _e124958125252_
                     _hd124957125255_
                     _tl124956125257_
                     _e124961125260_
                     _hd124960125263_
                     _tl124959125265_
                     _e124964125268_
                     _hd124963125271_
                     _tl124962125273_
                     _e124967125276_
                     _hd124966125279_
                     _tl124965125281_))
                (___kont129292129293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129292129293_))
                                            (___kont129292129293_))
                                        (___kont129292129293_))))
                                (___kont129292129293_))))
                        (___kont129292129293_))
                    (___kont129292129293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129292129293_))
                                                (___kont129292129293_))
                                            (___kont129292129293_))))
                                    (___kont129292129293_))))
                            (___kont129292129293_))
                        (___kont129292129293_))
                    (___kont129292129293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129292129293_))))
                                            (___kont129292129293_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124938125201_ _target124935125196_ '())))))
                   (___match129307129308_
                    (lambda (_e124886125448_
                             _hd124885125451_
                             _tl124884125453_
                             ___splice129280129281_
                             _target124887125456_
                             _tl124889125458_)
                      (letrec ((_loop124890125461_
                                (lambda (_hd124888125464_ _arg124894125466_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124888125464_))
                                      (let ((_e124891125469_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124888125464_))))
                                        (let ((_lp-tl124893125474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124891125469_)))
                                              (_lp-hd124892125472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124891125469_))))
                                          (let ((__tmp130698
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124892125472_
                                                         _arg124894125466_))))
                                            (declare (not safe))
                                            (_loop124890125461_
                                             _lp-tl124893125474_
                                             __tmp130698))))
                                      (let ((_arg124895125477_
                                             (reverse _arg124894125466_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124884125453_))
                                            (let ((_e124898125480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124884125453_))))
                                              (let ((_tl124896125485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124898125480_)))
                                                    (_hd124897125483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124898125480_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124897125483_))
                                                    (let ((_e124901125488_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124897125483_))))
                                                      (let ((_tl124899125493_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124901125488_)))
                    (_hd124900125491_
                     (let () (declare (not safe)) (##car _e124901125488_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124900125491_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124900125491_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124899125493_))
                            (let ((_e124904125496_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124899125493_))))
                              (let ((_tl124902125501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124904125496_)))
                                    (_hd124903125499_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124904125496_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124903125499_))
                                    (let ((_e124907125504_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124903125499_))))
                                      (let ((_tl124905125509_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124907125504_)))
                                            (_hd124906125507_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124907125504_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124906125507_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124906125507_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124905125509_))
                                                    (let ((_e124910125512_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124905125509_))))
                                                      (let ((_tl124908125517_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124910125512_)))
                    (_hd124909125515_
                     (let () (declare (not safe)) (##car _e124910125512_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124908125517_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124902125501_))
                        (let ((___splice129282129283_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124902125501_
                                  '0))))
                          (let ((_tl124913125522_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129282129283_ '1)))
                                (_target124911125520_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129282129283_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124913125522_))
                                (letrec ((_loop124914125525_
                                          (lambda (_hd124912125528_
                                                   _xarg124918125530_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124912125528_))
                                                (let ((_e124915125533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124912125528_))))
                                                  (let ((_lp-tl124917125538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124915125533_)))
                                                        (_lp-hd124916125536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124915125533_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124916125536_))
                                                        (let ((_e124922125541_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124916125536_))))
                  (let ((_tl124920125546_
                         (let () (declare (not safe)) (##cdr _e124922125541_)))
                        (_hd124921125544_
                         (let ()
                           (declare (not safe))
                           (##car _e124922125541_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124921125544_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124921125544_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124920125546_))
                                (let ((_e124925125549_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124920125546_))))
                                  (let ((_tl124923125554_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124925125549_)))
                                        (_hd124924125552_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124925125549_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124923125554_))
                                        (let ((__tmp130697
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124924125552_
                                                       _xarg124918125530_))))
                                          (declare (not safe))
                                          (_loop124914125525_
                                           _lp-tl124917125538_
                                           __tmp130697))
                                        (___match129319129320_
                                         _e124886125448_
                                         _hd124885125451_
                                         _tl124884125453_
                                         ___splice129280129281_
                                         _target124887125456_
                                         _tl124889125458_))))
                                (___match129319129320_
                                 _e124886125448_
                                 _hd124885125451_
                                 _tl124884125453_
                                 ___splice129280129281_
                                 _target124887125456_
                                 _tl124889125458_))
                            (___match129319129320_
                             _e124886125448_
                             _hd124885125451_
                             _tl124884125453_
                             ___splice129280129281_
                             _target124887125456_
                             _tl124889125458_))
                        (___match129319129320_
                         _e124886125448_
                         _hd124885125451_
                         _tl124884125453_
                         ___splice129280129281_
                         _target124887125456_
                         _tl124889125458_))))
                (___match129319129320_
                 _e124886125448_
                 _hd124885125451_
                 _tl124884125453_
                 ___splice129280129281_
                 _target124887125456_
                 _tl124889125458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124919125557_
                                                       (reverse _xarg124918125530_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124896125485_))
                                                      (let ((_L125560_
                                                             _xarg124919125557_)
                                                            (_L125561_
                                                             _hd124909125515_)
                                                            (_L125562_
                                                             _arg124895125477_))
                                                        (if (and (let ((__tmp130695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130696
                                       (lambda (_g125590125593_
                                                _g125591125595_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125590125593_
                                                 _g125591125595_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130696 '() _L125562_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130695))
                         (fx= (length (let ((__tmp130693
                                             (lambda (_g125597125600_
                                                      _g125598125602_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125597125600_
                                                       _g125598125602_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130693 '() _L125562_)))
                              (length (let ((__tmp130694
                                             (lambda (_g125604125607_
                                                      _g125605125609_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125604125607_
                                                       _g125605125609_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130694 '() _L125560_))))
                         (let ((__tmp130691
                                (let ((__tmp130692
                                       (lambda (_g125611125614_
                                                _g125612125616_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125611125614_
                                                 _g125612125616_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130692 '() _L125562_)))
                               (__tmp130689
                                (let ((__tmp130690
                                       (lambda (_g125618125621_
                                                _g125619125623_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125618125621_
                                                 _g125619125623_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130690 '() _L125560_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130691
                                    __tmp130689))
                         (let ((__tmp130685
                                (let ((__tmp130688
                                       (lambda (_g125625125627_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125625125627_
                                            _L125561_))))
                                      (__tmp130686
                                       (let ((__tmp130687
                                              (lambda (_g125629125632_
                                                       _g125630125634_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125629125632_
                                                        _g125630125634_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130687 '() _L125562_))))
                                  (declare (not safe))
                                  (find __tmp130688 __tmp130686))))
                           (declare (not safe))
                           (not __tmp130685)))
                    (___kont129278129279_ _L125560_ _L125561_ _L125562_)
                    (___match129319129320_
                     _e124886125448_
                     _hd124885125451_
                     _tl124884125453_
                     ___splice129280129281_
                     _target124887125456_
                     _tl124889125458_)))
              (___match129319129320_
               _e124886125448_
               _hd124885125451_
               _tl124884125453_
               ___splice129280129281_
               _target124887125456_
               _tl124889125458_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124914125525_
                                     _target124911125520_
                                     '())))
                                (___match129319129320_
                                 _e124886125448_
                                 _hd124885125451_
                                 _tl124884125453_
                                 ___splice129280129281_
                                 _target124887125456_
                                 _tl124889125458_))))
                        (___match129319129320_
                         _e124886125448_
                         _hd124885125451_
                         _tl124884125453_
                         ___splice129280129281_
                         _target124887125456_
                         _tl124889125458_))
                    (___match129319129320_
                     _e124886125448_
                     _hd124885125451_
                     _tl124884125453_
                     ___splice129280129281_
                     _target124887125456_
                     _tl124889125458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129319129320_
                                                     _e124886125448_
                                                     _hd124885125451_
                                                     _tl124884125453_
                                                     ___splice129280129281_
                                                     _target124887125456_
                                                     _tl124889125458_))
                                                (___match129319129320_
                                                 _e124886125448_
                                                 _hd124885125451_
                                                 _tl124884125453_
                                                 ___splice129280129281_
                                                 _target124887125456_
                                                 _tl124889125458_))
                                            (___match129319129320_
                                             _e124886125448_
                                             _hd124885125451_
                                             _tl124884125453_
                                             ___splice129280129281_
                                             _target124887125456_
                                             _tl124889125458_))))
                                    (___match129319129320_
                                     _e124886125448_
                                     _hd124885125451_
                                     _tl124884125453_
                                     ___splice129280129281_
                                     _target124887125456_
                                     _tl124889125458_))))
                            (___match129319129320_
                             _e124886125448_
                             _hd124885125451_
                             _tl124884125453_
                             ___splice129280129281_
                             _target124887125456_
                             _tl124889125458_))
                        (___match129319129320_
                         _e124886125448_
                         _hd124885125451_
                         _tl124884125453_
                         ___splice129280129281_
                         _target124887125456_
                         _tl124889125458_))
                    (___match129319129320_
                     _e124886125448_
                     _hd124885125451_
                     _tl124884125453_
                     ___splice129280129281_
                     _target124887125456_
                     _tl124889125458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129319129320_
                                                     _e124886125448_
                                                     _hd124885125451_
                                                     _tl124884125453_
                                                     ___splice129280129281_
                                                     _target124887125456_
                                                     _tl124889125458_))))
                                            (___match129319129320_
                                             _e124886125448_
                                             _hd124885125451_
                                             _tl124884125453_
                                             ___splice129280129281_
                                             _target124887125456_
                                             _tl124889125458_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124890125461_ _target124887125456_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129276129277_))
                  (let ((_e124886125448_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129276129277_))))
                    (let ((_tl124884125453_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124886125448_)))
                          (_hd124885125451_
                           (let ()
                             (declare (not safe))
                             (##car _e124886125448_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124885125451_))
                          (let ((___splice129280129281_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124885125451_
                                    '0))))
                            (let ((_tl124889125458_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129280129281_ '1)))
                                  (_target124887125456_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129280129281_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124889125458_))
                                  (___match129307129308_
                                   _e124886125448_
                                   _hd124885125451_
                                   _tl124884125453_
                                   ___splice129280129281_
                                   _target124887125456_
                                   _tl124889125458_)
                                  (___match129319129320_
                                   _e124886125448_
                                   _hd124885125451_
                                   _tl124884125453_
                                   ___splice129280129281_
                                   _target124887125456_
                                   _tl124889125458_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124884125453_))
                              (let ((_e125001125056_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124884125453_))))
                                (let ((_tl124999125061_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125001125056_)))
                                      (_hd125000125059_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125001125056_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125000125059_))
                                      (let ((_e125004125064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125000125059_))))
                                        (let ((_tl125002125069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125004125064_)))
                                              (_hd125003125067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125004125064_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd125003125067_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd125003125067_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125002125069_))
                                                      (let ((_e125007125072_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125002125069_))))
                (let ((_tl125005125077_
                       (let () (declare (not safe)) (##cdr _e125007125072_)))
                      (_hd125006125075_
                       (let () (declare (not safe)) (##car _e125007125072_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125006125075_))
                      (let ((_e125010125080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125006125075_))))
                        (let ((_tl125008125085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125010125080_)))
                              (_hd125009125083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125010125080_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125009125083_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125009125083_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125008125085_))
                                      (let ((_e125013125088_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125008125085_))))
                                        (let ((_tl125011125093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125013125088_)))
                                              (_hd125012125091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125013125088_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125011125093_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125005125077_))
                                                  (let ((_e125016125096_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125005125077_))))
                                                    (let ((_tl125014125101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125016125096_)))
                                                          (_hd125015125099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125016125096_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125015125099_))
                                                          (let ((_e125019125104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125015125099_))))
                    (let ((_tl125017125109_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125019125104_)))
                          (_hd125018125107_
                           (let ()
                             (declare (not safe))
                             (##car _e125019125104_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125018125107_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125018125107_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125017125109_))
                                  (let ((_e125022125112_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125017125109_))))
                                    (let ((_tl125020125117_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125022125112_)))
                                          (_hd125021125115_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125022125112_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125020125117_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125014125101_))
                                              (let ((_e125025125120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125014125101_))))
                                                (let ((_tl125023125125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125025125120_)))
                                                      (_hd125024125123_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125025125120_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125024125123_))
                                                      (let ((_e125028125128_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125024125123_))))
                (let ((_tl125026125133_
                       (let () (declare (not safe)) (##cdr _e125028125128_)))
                      (_hd125027125131_
                       (let () (declare (not safe)) (##car _e125028125128_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125027125131_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125027125131_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125026125133_))
                              (let ((_e125031125136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125026125133_))))
                                (let ((_tl125029125141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125031125136_)))
                                      (_hd125030125139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125031125136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125029125141_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125023125125_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124999125061_))
                                              (___match129417129418_
                                               _e124886125448_
                                               _hd124885125451_
                                               _tl124884125453_
                                               _e125001125056_
                                               _hd125000125059_
                                               _tl124999125061_
                                               _e125004125064_
                                               _hd125003125067_
                                               _tl125002125069_
                                               _e125007125072_
                                               _hd125006125075_
                                               _tl125005125077_
                                               _e125010125080_
                                               _hd125009125083_
                                               _tl125008125085_
                                               _e125013125088_
                                               _hd125012125091_
                                               _tl125011125093_
                                               _e125016125096_
                                               _hd125015125099_
                                               _tl125014125101_
                                               _e125019125104_
                                               _hd125018125107_
                                               _tl125017125109_
                                               _e125022125112_
                                               _hd125021125115_
                                               _tl125020125117_
                                               _e125025125120_
                                               _hd125024125123_
                                               _tl125023125125_
                                               _e125028125128_
                                               _hd125027125131_
                                               _tl125026125133_
                                               _e125031125136_
                                               _hd125030125139_
                                               _tl125029125141_)
                                              (___kont129292129293_))
                                          (___kont129292129293_))
                                      (___kont129292129293_))))
                              (___kont129292129293_))
                          (___kont129292129293_))
                      (___kont129292129293_))))
              (___kont129292129293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129292129293_))
                                          (___kont129292129293_))))
                                  (___kont129292129293_))
                              (___kont129292129293_))
                          (___kont129292129293_))))
                  (___kont129292129293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129292129293_))
                                              (___kont129292129293_))))
                                      (___kont129292129293_))
                                  (___kont129292129293_))
                              (___kont129292129293_))))
                      (___kont129292129293_))))
              (___kont129292129293_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129292129293_))
                                              (___kont129292129293_))))
                                      (___kont129292129293_))))
                              (___kont129292129293_)))))
                  (___kont129292129293_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124342_)
        (let* ((___stx129420129421_ _form124342_)
               (_g124346124470_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129420129421_)))))
          (let ((___kont129422129423_
                 (lambda (_L124840_ _L124841_ _L124842_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124841_))))
                (___kont129428129429_
                 (lambda (_L124688_ _L124689_ _L124690_ _L124691_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124688_))))
                (___kont129432129433_
                 (lambda (_L124555_ _L124556_ _L124557_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124555_)))))
            (let* ((___match129529129530_
                    (lambda (_e124438124475_
                             _hd124437124478_
                             _tl124436124480_
                             _e124441124483_
                             _hd124440124486_
                             _tl124439124488_
                             _e124444124491_
                             _hd124443124494_
                             _tl124442124496_
                             _e124447124499_
                             _hd124446124502_
                             _tl124445124504_
                             _e124450124507_
                             _hd124449124510_
                             _tl124448124512_
                             _e124453124515_
                             _hd124452124518_
                             _tl124451124520_
                             _e124456124523_
                             _hd124455124526_
                             _tl124454124528_
                             _e124459124531_
                             _hd124458124534_
                             _tl124457124536_
                             _e124462124539_
                             _hd124461124542_
                             _tl124460124544_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124454124528_))
                          (let ((_e124465124547_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124454124528_))))
                            (let ((_tl124463124552_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124465124547_)))
                                  (_hd124464124550_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124465124547_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124463124552_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124439124488_))
                                      (___kont129432129433_
                                       _hd124461124542_
                                       _hd124452124518_
                                       _hd124437124478_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124346124470_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124346124470_)))))
                          (let () (declare (not safe)) (_g124346124470_)))))
                   (___match129459129460_
                    (lambda (_e124399124592_
                             _hd124398124595_
                             _tl124397124597_
                             ___splice129430129431_
                             _target124400124600_
                             _tl124402124602_)
                      (letrec ((_loop124403124605_
                                (lambda (_hd124401124608_ _arg124407124610_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124401124608_))
                                      (let ((_e124404124613_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124401124608_))))
                                        (let ((_lp-tl124406124618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124404124613_)))
                                              (_lp-hd124405124616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124404124613_))))
                                          (let ((__tmp130699
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124405124616_
                                                         _arg124407124610_))))
                                            (declare (not safe))
                                            (_loop124403124605_
                                             _lp-tl124406124618_
                                             __tmp130699))))
                                      (let ((_arg124408124621_
                                             (reverse _arg124407124610_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124397124597_))
                                            (let ((_e124411124624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124397124597_))))
                                              (let ((_tl124409124629_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124411124624_)))
                                                    (_hd124410124627_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124411124624_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124410124627_))
                                                    (let ((_e124414124632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124410124627_))))
                                                      (let ((_tl124412124637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124414124632_)))
                    (_hd124413124635_
                     (let () (declare (not safe)) (##car _e124414124632_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124413124635_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124413124635_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124412124637_))
                            (let ((_e124417124640_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124412124637_))))
                              (let ((_tl124415124645_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124417124640_)))
                                    (_hd124416124643_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124417124640_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124416124643_))
                                    (let ((_e124420124648_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124416124643_))))
                                      (let ((_tl124418124653_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124420124648_)))
                                            (_hd124419124651_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124420124648_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124419124651_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124419124651_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124418124653_))
                                                    (let ((_e124423124656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124418124653_))))
                                                      (let ((_tl124421124661_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124423124656_)))
                    (_hd124422124659_
                     (let () (declare (not safe)) (##car _e124423124656_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124421124661_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124415124645_))
                        (let ((_e124426124664_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124415124645_))))
                          (let ((_tl124424124669_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124426124664_)))
                                (_hd124425124667_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124426124664_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124425124667_))
                                (let ((_e124429124672_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124425124667_))))
                                  (let ((_tl124427124677_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124429124672_)))
                                        (_hd124428124675_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124429124672_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124428124675_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124428124675_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124427124677_))
                                                (let ((_e124432124680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124427124677_))))
                                                  (let ((_tl124430124685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124432124680_)))
                                                        (_hd124431124683_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124432124680_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124430124685_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124409124629_))
                                                            (___kont129428129429_
                                                             _hd124431124683_
                                                             _hd124422124659_
                                                             _tl124402124602_
                                                             _arg124408124621_)
                                                            (___match129529129530_
                                                             _e124399124592_
                                                             _hd124398124595_
                                                             _tl124397124597_
                                                             _e124411124624_
                                                             _hd124410124627_
                                                             _tl124409124629_
                                                             _e124414124632_
                                                             _hd124413124635_
                                                             _tl124412124637_
                                                             _e124417124640_
                                                             _hd124416124643_
                                                             _tl124415124645_
                                                             _e124420124648_
                                                             _hd124419124651_
                                                             _tl124418124653_
                                                             _e124423124656_
                                                             _hd124422124659_
                                                             _tl124421124661_
                                                             _e124426124664_
                                                             _hd124425124667_
                                                             _tl124424124669_
                                                             _e124429124672_
                                                             _hd124428124675_
                                                             _tl124427124677_
                                                             _e124432124680_
                                                             _hd124431124683_
                                                             _tl124430124685_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124346124470_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124346124470_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124346124470_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124346124470_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124346124470_)))))
                        (let () (declare (not safe)) (_g124346124470_)))
                    (let () (declare (not safe)) (_g124346124470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124346124470_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124346124470_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124346124470_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124346124470_)))))
                            (let () (declare (not safe)) (_g124346124470_)))
                        (let () (declare (not safe)) (_g124346124470_)))
                    (let () (declare (not safe)) (_g124346124470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124346124470_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124346124470_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124403124605_ _target124400124600_ '())))))
                   (___match129447129448_
                    (lambda (_e124353124728_
                             _hd124352124731_
                             _tl124351124733_
                             ___splice129424129425_
                             _target124354124736_
                             _tl124356124738_)
                      (letrec ((_loop124357124741_
                                (lambda (_hd124355124744_ _arg124361124746_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124355124744_))
                                      (let ((_e124358124749_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124355124744_))))
                                        (let ((_lp-tl124360124754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124358124749_)))
                                              (_lp-hd124359124752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124358124749_))))
                                          (let ((__tmp130701
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124359124752_
                                                         _arg124361124746_))))
                                            (declare (not safe))
                                            (_loop124357124741_
                                             _lp-tl124360124754_
                                             __tmp130701))))
                                      (let ((_arg124362124757_
                                             (reverse _arg124361124746_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124351124733_))
                                            (let ((_e124365124760_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124351124733_))))
                                              (let ((_tl124363124765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124365124760_)))
                                                    (_hd124364124763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124365124760_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124364124763_))
                                                    (let ((_e124368124768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124364124763_))))
                                                      (let ((_tl124366124773_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124368124768_)))
                    (_hd124367124771_
                     (let () (declare (not safe)) (##car _e124368124768_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124367124771_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124367124771_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124366124773_))
                            (let ((_e124371124776_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124366124773_))))
                              (let ((_tl124369124781_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124371124776_)))
                                    (_hd124370124779_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124371124776_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124370124779_))
                                    (let ((_e124374124784_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124370124779_))))
                                      (let ((_tl124372124789_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124374124784_)))
                                            (_hd124373124787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124374124784_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124373124787_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124373124787_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124372124789_))
                                                    (let ((_e124377124792_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124372124789_))))
                                                      (let ((_tl124375124797_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124377124792_)))
                    (_hd124376124795_
                     (let () (declare (not safe)) (##car _e124377124792_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124375124797_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124369124781_))
                        (let ((___splice129426129427_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124369124781_
                                  '0))))
                          (let ((_tl124380124802_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129426129427_ '1)))
                                (_target124378124800_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129426129427_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124380124802_))
                                (letrec ((_loop124381124805_
                                          (lambda (_hd124379124808_
                                                   _xarg124385124810_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124379124808_))
                                                (let ((_e124382124813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124379124808_))))
                                                  (let ((_lp-tl124384124818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124382124813_)))
                                                        (_lp-hd124383124816_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124382124813_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124383124816_))
                                                        (let ((_e124389124821_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124383124816_))))
                  (let ((_tl124387124826_
                         (let () (declare (not safe)) (##cdr _e124389124821_)))
                        (_hd124388124824_
                         (let ()
                           (declare (not safe))
                           (##car _e124389124821_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124388124824_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124388124824_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124387124826_))
                                (let ((_e124392124829_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124387124826_))))
                                  (let ((_tl124390124834_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124392124829_)))
                                        (_hd124391124832_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124392124829_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124390124834_))
                                        (let ((__tmp130700
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124391124832_
                                                       _xarg124385124810_))))
                                          (declare (not safe))
                                          (_loop124381124805_
                                           _lp-tl124384124818_
                                           __tmp130700))
                                        (___match129459129460_
                                         _e124353124728_
                                         _hd124352124731_
                                         _tl124351124733_
                                         ___splice129424129425_
                                         _target124354124736_
                                         _tl124356124738_))))
                                (___match129459129460_
                                 _e124353124728_
                                 _hd124352124731_
                                 _tl124351124733_
                                 ___splice129424129425_
                                 _target124354124736_
                                 _tl124356124738_))
                            (___match129459129460_
                             _e124353124728_
                             _hd124352124731_
                             _tl124351124733_
                             ___splice129424129425_
                             _target124354124736_
                             _tl124356124738_))
                        (___match129459129460_
                         _e124353124728_
                         _hd124352124731_
                         _tl124351124733_
                         ___splice129424129425_
                         _target124354124736_
                         _tl124356124738_))))
                (___match129459129460_
                 _e124353124728_
                 _hd124352124731_
                 _tl124351124733_
                 ___splice129424129425_
                 _target124354124736_
                 _tl124356124738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124386124837_
                                                       (reverse _xarg124385124810_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124363124765_))
                                                      (___kont129422129423_
                                                       _xarg124386124837_
                                                       _hd124376124795_
                                                       _arg124362124757_)
                                                      (___match129459129460_
                                                       _e124353124728_
                                                       _hd124352124731_
                                                       _tl124351124733_
                                                       ___splice129424129425_
                                                       _target124354124736_
                                                       _tl124356124738_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124381124805_
                                     _target124378124800_
                                     '())))
                                (___match129459129460_
                                 _e124353124728_
                                 _hd124352124731_
                                 _tl124351124733_
                                 ___splice129424129425_
                                 _target124354124736_
                                 _tl124356124738_))))
                        (___match129459129460_
                         _e124353124728_
                         _hd124352124731_
                         _tl124351124733_
                         ___splice129424129425_
                         _target124354124736_
                         _tl124356124738_))
                    (___match129459129460_
                     _e124353124728_
                     _hd124352124731_
                     _tl124351124733_
                     ___splice129424129425_
                     _target124354124736_
                     _tl124356124738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129459129460_
                                                     _e124353124728_
                                                     _hd124352124731_
                                                     _tl124351124733_
                                                     ___splice129424129425_
                                                     _target124354124736_
                                                     _tl124356124738_))
                                                (___match129459129460_
                                                 _e124353124728_
                                                 _hd124352124731_
                                                 _tl124351124733_
                                                 ___splice129424129425_
                                                 _target124354124736_
                                                 _tl124356124738_))
                                            (___match129459129460_
                                             _e124353124728_
                                             _hd124352124731_
                                             _tl124351124733_
                                             ___splice129424129425_
                                             _target124354124736_
                                             _tl124356124738_))))
                                    (___match129459129460_
                                     _e124353124728_
                                     _hd124352124731_
                                     _tl124351124733_
                                     ___splice129424129425_
                                     _target124354124736_
                                     _tl124356124738_))))
                            (___match129459129460_
                             _e124353124728_
                             _hd124352124731_
                             _tl124351124733_
                             ___splice129424129425_
                             _target124354124736_
                             _tl124356124738_))
                        (___match129459129460_
                         _e124353124728_
                         _hd124352124731_
                         _tl124351124733_
                         ___splice129424129425_
                         _target124354124736_
                         _tl124356124738_))
                    (___match129459129460_
                     _e124353124728_
                     _hd124352124731_
                     _tl124351124733_
                     ___splice129424129425_
                     _target124354124736_
                     _tl124356124738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129459129460_
                                                     _e124353124728_
                                                     _hd124352124731_
                                                     _tl124351124733_
                                                     ___splice129424129425_
                                                     _target124354124736_
                                                     _tl124356124738_))))
                                            (___match129459129460_
                                             _e124353124728_
                                             _hd124352124731_
                                             _tl124351124733_
                                             ___splice129424129425_
                                             _target124354124736_
                                             _tl124356124738_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124357124741_ _target124354124736_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129420129421_))
                  (let ((_e124353124728_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129420129421_))))
                    (let ((_tl124351124733_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124353124728_)))
                          (_hd124352124731_
                           (let ()
                             (declare (not safe))
                             (##car _e124353124728_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124352124731_))
                          (let ((___splice129424129425_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124352124731_
                                    '0))))
                            (let ((_tl124356124738_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129424129425_ '1)))
                                  (_target124354124736_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129424129425_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124356124738_))
                                  (___match129447129448_
                                   _e124353124728_
                                   _hd124352124731_
                                   _tl124351124733_
                                   ___splice129424129425_
                                   _target124354124736_
                                   _tl124356124738_)
                                  (___match129459129460_
                                   _e124353124728_
                                   _hd124352124731_
                                   _tl124351124733_
                                   ___splice129424129425_
                                   _target124354124736_
                                   _tl124356124738_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124351124733_))
                              (let ((_e124441124483_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124351124733_))))
                                (let ((_tl124439124488_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124441124483_)))
                                      (_hd124440124486_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124441124483_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124440124486_))
                                      (let ((_e124444124491_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124440124486_))))
                                        (let ((_tl124442124496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124444124491_)))
                                              (_hd124443124494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124444124491_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124443124494_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124443124494_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124442124496_))
                                                      (let ((_e124447124499_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124442124496_))))
                (let ((_tl124445124504_
                       (let () (declare (not safe)) (##cdr _e124447124499_)))
                      (_hd124446124502_
                       (let () (declare (not safe)) (##car _e124447124499_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124446124502_))
                      (let ((_e124450124507_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124446124502_))))
                        (let ((_tl124448124512_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124450124507_)))
                              (_hd124449124510_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124450124507_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124449124510_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124449124510_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124448124512_))
                                      (let ((_e124453124515_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124448124512_))))
                                        (let ((_tl124451124520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124453124515_)))
                                              (_hd124452124518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124453124515_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124451124520_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124445124504_))
                                                  (let ((_e124456124523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124445124504_))))
                                                    (let ((_tl124454124528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124456124523_)))
                                                          (_hd124455124526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124456124523_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124455124526_))
                                                          (let ((_e124459124531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124455124526_))))
                    (let ((_tl124457124536_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124459124531_)))
                          (_hd124458124534_
                           (let ()
                             (declare (not safe))
                             (##car _e124459124531_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124458124534_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124458124534_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124457124536_))
                                  (let ((_e124462124539_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124457124536_))))
                                    (let ((_tl124460124544_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124462124539_)))
                                          (_hd124461124542_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124462124539_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124460124544_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124454124528_))
                                              (let ((_e124465124547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124454124528_))))
                                                (let ((_tl124463124552_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124465124547_)))
                                                      (_hd124464124550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124465124547_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124463124552_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124439124488_))
                                                          (___kont129432129433_
                                                           _hd124461124542_
                                                           _hd124452124518_
                                                           _hd124352124731_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124346124470_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124346124470_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124346124470_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124346124470_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124346124470_)))
                              (let () (declare (not safe)) (_g124346124470_)))
                          (let () (declare (not safe)) (_g124346124470_)))))
                  (let () (declare (not safe)) (_g124346124470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124346124470_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124346124470_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124346124470_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124346124470_)))
                              (let ()
                                (declare (not safe))
                                (_g124346124470_)))))
                      (let () (declare (not safe)) (_g124346124470_)))))
              (let () (declare (not safe)) (_g124346124470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124346124470_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124346124470_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124346124470_)))))
                              (let ()
                                (declare (not safe))
                                (_g124346124470_))))))
                  (let () (declare (not safe)) (_g124346124470_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form124146_)
        (let* ((_g124148124162_
                (lambda (_g124149124159_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124149124159_))))
               (_g124147124339_
                (lambda (_g124149124165_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124149124165_))
                      (let ((_e124154124167_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124149124165_))))
                        (let ((_hd124153124170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124154124167_)))
                              (_tl124152124172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124154124167_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124152124172_))
                              (let ((_e124157124175_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124152124172_))))
                                (let ((_hd124156124178_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124157124175_)))
                                      (_tl124155124180_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124157124175_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124155124180_))
                                      ((lambda (_L124183_ _L124184_)
                                         (let* ((___stx129542129543_ _L124184_)
                                                (_g124199124227_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129542129543_)))))
                                           (let ((___kont129544129545_
                                                  (lambda (_L124318_)
                                                    (length (let ((__tmp130702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124328124331_ _g124329124333_)
                             (let ()
                               (declare (not safe))
                               (cons _g124328124331_ _g124329124333_)))))
                      (declare (not safe))
                      (foldr1 __tmp130702 '() _L124318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129548129549_
                                                  (lambda (_L124269_ _L124270_)
                                                    (let ((__tmp130703
                                                           (length (let ((__tmp130704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124281124284_ _g124282124286_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g124281124284_
                                            _g124282124286_)))))
                             (declare (not safe))
                             (foldr1 __tmp130704 '() _L124270_)))))
              (declare (not safe))
              (cons __tmp130703 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129552129553_
                                                  (lambda (_L124232_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129567129568_
                                                     (lambda (___splice129550129551_
                                                              _target124213124245_
                                                              _tl124215124247_)
                                                       (letrec ((_loop124216124250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124214124253_ _arg124220124255_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124214124253_))
                               (let ((_e124217124258_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124214124253_))))
                                 (let ((_lp-tl124219124263_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124217124258_)))
                                       (_lp-hd124218124261_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124217124258_))))
                                   (let ((__tmp130705
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124218124261_
                                                  _arg124220124255_))))
                                     (declare (not safe))
                                     (_loop124216124250_
                                      _lp-tl124219124263_
                                      __tmp130705))))
                               (let ((_arg124221124266_
                                      (reverse _arg124220124255_)))
                                 (___kont129548129549_
                                  _tl124215124247_
                                  _arg124221124266_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124216124250_ _target124213124245_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129561129562_
                                                     (lambda (___splice129546129547_
                                                              _target124202124294_
                                                              _tl124204124296_)
                                                       (letrec ((_loop124205124299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124203124302_ _arg124209124304_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124203124302_))
                               (let ((_e124206124307_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124203124302_))))
                                 (let ((_lp-tl124208124312_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124206124307_)))
                                       (_lp-hd124207124310_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124206124307_))))
                                   (let ((__tmp130706
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124207124310_
                                                  _arg124209124304_))))
                                     (declare (not safe))
                                     (_loop124205124299_
                                      _lp-tl124208124312_
                                      __tmp130706))))
                               (let ((_arg124210124315_
                                      (reverse _arg124209124304_)))
                                 (___kont129544129545_ _arg124210124315_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124205124299_ _target124202124294_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129542129543_))
                                                   (let ((___splice129546129547_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129542129543_
                                                             '0))))
                                                     (let ((_tl124204124296_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129546129547_
                                                               '1)))
                                                           (_target124202124294_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129546129547_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl124204124296_))
                                                           (___match129561129562_
                                                            ___splice129546129547_
                                                            _target124202124294_
                                                            _tl124204124296_)
                                                           (___match129567129568_
                                                            ___splice129546129547_
                                                            _target124202124294_
                                                            _tl124204124296_))))
                                                   (___kont129552129553_
                                                    ___stx129542129543_))))))
                                       _hd124156124178_
                                       _hd124153124170_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124148124162_ _g124149124165_)))))
                              (let ()
                                (declare (not safe))
                                (_g124148124162_ _g124149124165_)))))
                      (let ()
                        (declare (not safe))
                        (_g124148124162_ _g124149124165_))))))
          (declare (not safe))
          (_g124147124339_ _form124146_))))
    (define gxc#lambda-expr?
      (lambda (_expr124099_)
        (let* ((___stx129570129571_ _expr124099_)
               (_g124102124112_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129570129571_)))))
          (let ((___kont129572129573_ (lambda (_L124132_) '#t))
                (___kont129574129575_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129570129571_))
                (let ((_e124107124124_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129570129571_))))
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
                              (gx#stx-eq? '%#lambda _hd124106124127_))
                            (___kont129572129573_ _tl124105124129_)
                            (___kont129574129575_))
                        (___kont129574129575_))))
                (___kont129574129575_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr124052_)
        (let* ((___stx129588129589_ _expr124052_)
               (_g124055124065_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129588129589_)))))
          (let ((___kont129590129591_ (lambda (_L124085_) '#t))
                (___kont129592129593_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129588129589_))
                (let ((_e124060124077_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129588129589_))))
                  (let ((_tl124058124082_
                         (let () (declare (not safe)) (##cdr _e124060124077_)))
                        (_hd124059124080_
                         (let ()
                           (declare (not safe))
                           (##car _e124060124077_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124059124080_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd124059124080_))
                            (___kont129590129591_ _tl124058124082_)
                            (___kont129592129593_))
                        (___kont129592129593_))))
                (___kont129592129593_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123921_)
        (let* ((___stx129606129607_ _expr123921_)
               (_g123924123954_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129606129607_)))))
          (let ((___kont129608129609_
                 (lambda (_L124022_ _L124023_ _L124024_)
                   (if (let () (declare (not safe)) (gx#identifier? _L124024_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L124023_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L124022_))
                           '#f)
                       '#f)))
                (___kont129610129611_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129606129607_))
                (let ((_e123931123966_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129606129607_))))
                  (let ((_tl123929123971_
                         (let () (declare (not safe)) (##cdr _e123931123966_)))
                        (_hd123930123969_
                         (let ()
                           (declare (not safe))
                           (##car _e123931123966_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123930123969_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123930123969_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123929123971_))
                                (let ((_e123934123974_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123929123971_))))
                                  (let ((_tl123932123979_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123934123974_)))
                                        (_hd123933123977_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123934123974_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123933123977_))
                                        (let ((_e123937123982_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123933123977_))))
                                          (let ((_tl123935123987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123937123982_)))
                                                (_hd123936123985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123937123982_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123936123985_))
                                                (let ((_e123940123990_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123936123985_))))
                                                  (let ((_tl123938123995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123940123990_)))
                                                        (_hd123939123993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123940123990_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123939123993_))
                                                        (let ((_e123943123998_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123939123993_))))
                  (let ((_tl123941124003_
                         (let () (declare (not safe)) (##cdr _e123943123998_)))
                        (_hd123942124001_
                         (let ()
                           (declare (not safe))
                           (##car _e123943123998_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123941124003_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123938123995_))
                            (let ((_e123946124006_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123938123995_))))
                              (let ((_tl123944124011_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123946124006_)))
                                    (_hd123945124009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123946124006_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123944124011_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123935123987_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123932123979_))
                                            (let ((_e123949124014_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123932123979_))))
                                              (let ((_tl123947124019_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123949124014_)))
                                                    (_hd123948124017_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123949124014_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123947124019_))
                                                    (___kont129608129609_
                                                     _hd123948124017_
                                                     _hd123945124009_
                                                     _hd123942124001_)
                                                    (___kont129610129611_))))
                                            (___kont129610129611_))
                                        (___kont129610129611_))
                                    (___kont129610129611_))))
                            (___kont129610129611_))
                        (___kont129610129611_))))
                (___kont129610129611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129610129611_))))
                                        (___kont129610129611_))))
                                (___kont129610129611_))
                            (___kont129610129611_))
                        (___kont129610129611_))))
                (___kont129610129611_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr123246_)
        (let* ((___stx129668129669_ _expr123246_)
               (_g123249123407_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129668129669_)))))
          (let ((___kont129670129671_
                 (lambda (_L123795_
                          _L123796_
                          _L123797_
                          _L123798_
                          _L123799_
                          _L123800_
                          _L123801_
                          _L123802_
                          _L123803_
                          _L123804_
                          _L123805_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123802_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123798_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123797_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123805_
                                      _L123796_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123804_
                                          _L123801_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123799_
                                              _L123795_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123803_
                                              _L123800_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129672129673_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129668129669_))
                (let ((_e123264123419_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129668129669_))))
                  (let ((_tl123262123424_
                         (let () (declare (not safe)) (##cdr _e123264123419_)))
                        (_hd123263123422_
                         (let ()
                           (declare (not safe))
                           (##car _e123264123419_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123263123422_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123263123422_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123262123424_))
                                (let ((_e123267123427_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123262123424_))))
                                  (let ((_tl123265123432_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123267123427_)))
                                        (_hd123266123430_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123267123427_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123266123430_))
                                        (let ((_e123270123435_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123266123430_))))
                                          (let ((_tl123268123440_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123270123435_)))
                                                (_hd123269123438_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123270123435_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123269123438_))
                                                (let ((_e123273123443_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123269123438_))))
                                                  (let ((_tl123271123448_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123273123443_)))
                                                        (_hd123272123446_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123273123443_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123272123446_))
                                                        (let ((_e123276123451_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123272123446_))))
                  (let ((_tl123274123456_
                         (let () (declare (not safe)) (##cdr _e123276123451_)))
                        (_hd123275123454_
                         (let ()
                           (declare (not safe))
                           (##car _e123276123451_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123274123456_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123271123448_))
                            (let ((_e123279123459_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123271123448_))))
                              (let ((_tl123277123464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123279123459_)))
                                    (_hd123278123462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123279123459_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123278123462_))
                                    (let ((_e123282123467_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123278123462_))))
                                      (let ((_tl123280123472_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123282123467_)))
                                            (_hd123281123470_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123282123467_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123281123470_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd123281123470_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123280123472_))
                                                    (let ((_e123285123475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123280123472_))))
                                                      (let ((_tl123283123480_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123285123475_)))
                    (_hd123284123478_
                     (let () (declare (not safe)) (##car _e123285123475_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123284123478_))
                    (let ((_e123288123483_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123284123478_))))
                      (let ((_tl123286123488_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123288123483_)))
                            (_hd123287123486_
                             (let ()
                               (declare (not safe))
                               (##car _e123288123483_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123287123486_))
                            (let ((_e123291123491_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123287123486_))))
                              (let ((_tl123289123496_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123291123491_)))
                                    (_hd123290123494_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123291123491_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123290123494_))
                                    (let ((_e123294123499_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123290123494_))))
                                      (let ((_tl123292123504_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123294123499_)))
                                            (_hd123293123502_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123294123499_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123292123504_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123289123496_))
                                                (let ((_e123297123507_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123289123496_))))
                                                  (let ((_tl123295123512_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123297123507_)))
                                                        (_hd123296123510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123297123507_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123295123512_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123286123488_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123283123480_))
                        (let ((_e123300123515_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123283123480_))))
                          (let ((_tl123298123520_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123300123515_)))
                                (_hd123299123518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123300123515_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123299123518_))
                                (let ((_e123303123523_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123299123518_))))
                                  (let ((_tl123301123528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123303123523_)))
                                        (_hd123302123526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123303123523_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123302123526_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123302123526_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123301123528_))
                                                (let ((_e123306123531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123301123528_))))
                                                  (let ((_tl123304123536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123306123531_)))
                                                        (_hd123305123534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123306123531_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123305123534_))
                                                        (let ((_e123309123539_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123305123534_))))
                  (let ((_tl123307123544_
                         (let () (declare (not safe)) (##cdr _e123309123539_)))
                        (_hd123308123542_
                         (let ()
                           (declare (not safe))
                           (##car _e123309123539_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123304123536_))
                        (let ((_e123312123547_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123304123536_))))
                          (let ((_tl123310123552_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123312123547_)))
                                (_hd123311123550_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123312123547_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123311123550_))
                                (let ((_e123315123555_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123311123550_))))
                                  (let ((_tl123313123560_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123315123555_)))
                                        (_hd123314123558_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123315123555_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123314123558_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123314123558_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123313123560_))
                                                (let ((_e123318123563_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123313123560_))))
                                                  (let ((_tl123316123568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123318123563_)))
                                                        (_hd123317123566_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123318123563_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123317123566_))
                                                        (let ((_e123321123571_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123317123566_))))
                  (let ((_tl123319123576_
                         (let () (declare (not safe)) (##cdr _e123321123571_)))
                        (_hd123320123574_
                         (let ()
                           (declare (not safe))
                           (##car _e123321123571_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123320123574_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123320123574_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123319123576_))
                                (let ((_e123324123579_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123319123576_))))
                                  (let ((_tl123322123584_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123324123579_)))
                                        (_hd123323123582_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123324123579_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123322123584_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123316123568_))
                                            (let ((_e123327123587_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123316123568_))))
                                              (let ((_tl123325123592_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123327123587_)))
                                                    (_hd123326123590_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123327123587_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123326123590_))
                                                    (let ((_e123330123595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123326123590_))))
                                                      (let ((_tl123328123600_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123330123595_)))
                    (_hd123329123598_
                     (let () (declare (not safe)) (##car _e123330123595_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123329123598_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123329123598_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123328123600_))
                            (let ((_e123333123603_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123328123600_))))
                              (let ((_tl123331123608_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123333123603_)))
                                    (_hd123332123606_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123333123603_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123331123608_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123325123592_))
                                        (let ((_e123336123611_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123325123592_))))
                                          (let ((_tl123334123616_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123336123611_)))
                                                (_hd123335123614_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123336123611_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123335123614_))
                                                (let ((_e123339123619_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123335123614_))))
                                                  (let ((_tl123337123624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123339123619_)))
                                                        (_hd123338123622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123339123619_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123338123622_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123338123622_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123337123624_))
                        (let ((_e123342123627_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123337123624_))))
                          (let ((_tl123340123632_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123342123627_)))
                                (_hd123341123630_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123342123627_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123340123632_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123310123552_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123298123520_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123277123464_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123268123440_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123265123432_))
                                                    (let ((_e123345123635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123265123432_))))
                                                      (let ((_tl123343123640_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123345123635_)))
                    (_hd123344123638_
                     (let () (declare (not safe)) (##car _e123345123635_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123344123638_))
                    (let ((_e123348123643_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123344123638_))))
                      (let ((_tl123346123648_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123348123643_)))
                            (_hd123347123646_
                             (let ()
                               (declare (not safe))
                               (##car _e123348123643_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123347123646_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123347123646_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123346123648_))
                                    (let ((_e123351123651_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123346123648_))))
                                      (let ((_tl123349123656_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123351123651_)))
                                            (_hd123350123654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123351123651_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123349123656_))
                                            (let ((_e123354123659_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123349123656_))))
                                              (let ((_tl123352123664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123354123659_)))
                                                    (_hd123353123662_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123354123659_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123353123662_))
                                                    (let ((_e123357123667_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123353123662_))))
                                                      (let ((_tl123355123672_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123357123667_)))
                    (_hd123356123670_
                     (let () (declare (not safe)) (##car _e123357123667_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123356123670_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123356123670_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123355123672_))
                            (let ((_e123360123675_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123355123672_))))
                              (let ((_tl123358123680_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123360123675_)))
                                    (_hd123359123678_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123360123675_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123359123678_))
                                    (let ((_e123363123683_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123359123678_))))
                                      (let ((_tl123361123688_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123363123683_)))
                                            (_hd123362123686_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123363123683_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123362123686_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123362123686_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123361123688_))
                                                    (let ((_e123366123691_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123361123688_))))
                                                      (let ((_tl123364123696_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123366123691_)))
                    (_hd123365123694_
                     (let () (declare (not safe)) (##car _e123366123691_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123364123696_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123358123680_))
                        (let ((_e123369123699_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123358123680_))))
                          (let ((_tl123367123704_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123369123699_)))
                                (_hd123368123702_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123369123699_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123368123702_))
                                (let ((_e123372123707_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123368123702_))))
                                  (let ((_tl123370123712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123372123707_)))
                                        (_hd123371123710_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123372123707_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123371123710_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123371123710_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123370123712_))
                                                (let ((_e123375123715_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123370123712_))))
                                                  (let ((_tl123373123720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123375123715_)))
                                                        (_hd123374123718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123375123715_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123373123720_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123367123704_))
                                                            (let ((_e123378123723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123367123704_))))
                      (let ((_tl123376123728_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123378123723_)))
                            (_hd123377123726_
                             (let ()
                               (declare (not safe))
                               (##car _e123378123723_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123377123726_))
                            (let ((_e123381123731_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123377123726_))))
                              (let ((_tl123379123736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123381123731_)))
                                    (_hd123380123734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123381123731_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123380123734_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123380123734_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123379123736_))
                                            (let ((_e123384123739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123379123736_))))
                                              (let ((_tl123382123744_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123384123739_)))
                                                    (_hd123383123742_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123384123739_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123382123744_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123376123728_))
                                                        (let ((_e123387123747_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123376123728_))))
                  (let ((_tl123385123752_
                         (let () (declare (not safe)) (##cdr _e123387123747_)))
                        (_hd123386123750_
                         (let ()
                           (declare (not safe))
                           (##car _e123387123747_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123386123750_))
                        (let ((_e123390123755_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123386123750_))))
                          (let ((_tl123388123760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123390123755_)))
                                (_hd123389123758_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123390123755_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123389123758_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123389123758_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123388123760_))
                                        (let ((_e123393123763_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123388123760_))))
                                          (let ((_tl123391123768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123393123763_)))
                                                (_hd123392123766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123393123763_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123391123768_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123385123752_))
                                                    (let ((_e123396123771_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123385123752_))))
                                                      (let ((_tl123394123776_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123396123771_)))
                    (_hd123395123774_
                     (let () (declare (not safe)) (##car _e123396123771_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123395123774_))
                    (let ((_e123399123779_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123395123774_))))
                      (let ((_tl123397123784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123399123779_)))
                            (_hd123398123782_
                             (let ()
                               (declare (not safe))
                               (##car _e123399123779_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123398123782_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123398123782_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123397123784_))
                                    (let ((_e123402123787_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123397123784_))))
                                      (let ((_tl123400123792_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123402123787_)))
                                            (_hd123401123790_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123402123787_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123400123792_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123394123776_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123352123664_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123343123640_))
                                                        (___kont129670129671_
                                                         _hd123401123790_
                                                         _hd123392123766_
                                                         _hd123374123718_
                                                         _hd123365123694_
                                                         _hd123350123654_
                                                         _hd123341123630_
                                                         _hd123332123606_
                                                         _hd123323123582_
                                                         _hd123308123542_
                                                         _hd123293123502_
                                                         _hd123275123454_)
                                                        (___kont129672129673_))
                                                    (___kont129672129673_))
                                                (___kont129672129673_))
                                            (___kont129672129673_))))
                                    (___kont129672129673_))
                                (___kont129672129673_))
                            (___kont129672129673_))))
                    (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129672129673_))
                                                (___kont129672129673_))))
                                        (___kont129672129673_))
                                    (___kont129672129673_))
                                (___kont129672129673_))))
                        (___kont129672129673_))))
                (___kont129672129673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129672129673_))))
                                            (___kont129672129673_))
                                        (___kont129672129673_))
                                    (___kont129672129673_))))
                            (___kont129672129673_))))
                    (___kont129672129673_))
                (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129672129673_))
                                            (___kont129672129673_))
                                        (___kont129672129673_))))
                                (___kont129672129673_))))
                        (___kont129672129673_))
                    (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129672129673_))
                                                (___kont129672129673_))
                                            (___kont129672129673_))))
                                    (___kont129672129673_))))
                            (___kont129672129673_))
                        (___kont129672129673_))
                    (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129672129673_))))
                                            (___kont129672129673_))))
                                    (___kont129672129673_))
                                (___kont129672129673_))
                            (___kont129672129673_))))
                    (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129672129673_))
                                                (___kont129672129673_))
                                            (___kont129672129673_))
                                        (___kont129672129673_))
                                    (___kont129672129673_))
                                (___kont129672129673_))))
                        (___kont129672129673_))
                    (___kont129672129673_))
                (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129672129673_))))
                                        (___kont129672129673_))
                                    (___kont129672129673_))))
                            (___kont129672129673_))
                        (___kont129672129673_))
                    (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129672129673_))))
                                            (___kont129672129673_))
                                        (___kont129672129673_))))
                                (___kont129672129673_))
                            (___kont129672129673_))
                        (___kont129672129673_))))
                (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129672129673_))
                                            (___kont129672129673_))
                                        (___kont129672129673_))))
                                (___kont129672129673_))))
                        (___kont129672129673_))))
                (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129672129673_))
                                            (___kont129672129673_))
                                        (___kont129672129673_))))
                                (___kont129672129673_))))
                        (___kont129672129673_))
                    (___kont129672129673_))
                (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129672129673_))
                                            (___kont129672129673_))))
                                    (___kont129672129673_))))
                            (___kont129672129673_))))
                    (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129672129673_))
                                                (___kont129672129673_))
                                            (___kont129672129673_))))
                                    (___kont129672129673_))))
                            (___kont129672129673_))
                        (___kont129672129673_))))
                (___kont129672129673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129672129673_))))
                                        (___kont129672129673_))))
                                (___kont129672129673_))
                            (___kont129672129673_))
                        (___kont129672129673_))))
                (___kont129672129673_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx122988_ _id122989_ _clauses122990_ _gensym?122991_)
        (let _lp122993_ ((_rest122995_ _clauses122990_)
                         (_ids122996_ '())
                         (_impls122997_ '())
                         (_clauses122998_ '()))
          (let* ((_rest122999123007_ _rest122995_)
                 (_else123001123015_
                  (lambda ()
                    (values (reverse _ids122996_)
                            (reverse _impls122997_)
                            (reverse _clauses122998_))))
                 (_K123003123220_
                  (lambda (_rest123018_ _clause123019_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause123019_))
                        (let ((__tmp130762
                               (let ()
                                 (declare (not safe))
                                 (cons _clause123019_ _clauses122998_))))
                          (declare (not safe))
                          (_lp122993_
                           _rest123018_
                           _ids122996_
                           _impls122997_
                           __tmp130762))
                        (let* ((_g123021123032_
                                (lambda (_g123022123029_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g123022123029_))))
                               (_g123020123217_
                                (lambda (_g123022123035_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g123022123035_))
                                      (let ((_e123027123037_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g123022123035_))))
                                        (let ((_hd123026123040_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123027123037_)))
                                              (_tl123025123042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123027123037_))))
                                          ((lambda (_L123045_ _L123046_)
                                             (let* ((_id123063_
                                                     (let ((__tmp130709
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id122989_)))
                                                           (__tmp130708
                                                            (length _clauses122998_))
                                                           (__tmp130707
                                                            (if _gensym?122991_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130709
                                                        '"__"
                                                        __tmp130708
                                                        __tmp130707)))
                                                    (_id123065_
                                                     (let ((__tmp130710
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx122988_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id123063_
                                                        __tmp130710)))
                                                    (_impl123067_
                                                     (let ((__tmp130711
                                                            (let ((__tmp130713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130712
                           (let ()
                             (declare (not safe))
                             (cons _L123046_ _L123045_))))
                      (declare (not safe))
                      (cons __tmp130713 __tmp130712))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130711 _stx122988_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause123214_
                                                     (let* ((___stx130052130053_
                                                             _L123046_)
                                                            (_g123071123099_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx130052130053_)))))
               (let ((___kont130054130055_
                      (lambda (_L123193_)
                        (let ((__tmp130714
                               (let ((__tmp130715
                                      (let ((__tmp130716
                                             (let ((__tmp130717
                                                    (let ((__tmp130723
                                                           (let ((__tmp130724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id123065_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130724)))
                  (__tmp130718
                   (let ((__tmp130719
                          (lambda (_g123203123206_ _g123204123208_)
                            (let ((__tmp130720
                                   (let ((__tmp130722
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130721
                                          (let ()
                                            (declare (not safe))
                                            (cons _g123203123206_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130722 __tmp130721))))
                              (declare (not safe))
                              (cons __tmp130720 _g123204123208_)))))
                     (declare (not safe))
                     (foldr1 __tmp130719 '() _L123193_))))
              (declare (not safe))
              (cons __tmp130723 __tmp130718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130717))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130716
                                         _stx122988_))))
                                 (declare (not safe))
                                 (cons __tmp130715 '()))))
                          (declare (not safe))
                          (cons _L123046_ __tmp130714))))
                     (___kont130058130059_
                      (lambda (_L123144_ _L123145_)
                        (let ((__tmp130725
                               (let ((__tmp130726
                                      (let ((__tmp130727
                                             (let ((__tmp130728
                                                    (let ((__tmp130742
                                                           (let ((__tmp130743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130743)))
                  (__tmp130729
                   (let ((__tmp130740
                          (let ((__tmp130741
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123065_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130741)))
                         (__tmp130730
                          (let ((__tmp130736
                                 (let ((__tmp130737
                                        (let ((__tmp130739
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130738
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L123144_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130739 __tmp130738))))
                                   (declare (not safe))
                                   (cons __tmp130737 '())))
                                (__tmp130731
                                 (let ((__tmp130732
                                        (lambda (_g123156123159_
                                                 _g123157123161_)
                                          (let ((__tmp130733
                                                 (let ((__tmp130735
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130734
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g123156123159_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130735
                                                         __tmp130734))))
                                            (declare (not safe))
                                            (cons __tmp130733
                                                  _g123157123161_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130732 '() _L123145_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130736 __tmp130731))))
                     (declare (not safe))
                     (cons __tmp130740 __tmp130730))))
              (declare (not safe))
              (cons __tmp130742 __tmp130729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130728))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130727
                                         _stx122988_))))
                                 (declare (not safe))
                                 (cons __tmp130726 '()))))
                          (declare (not safe))
                          (cons _L123046_ __tmp130725))))
                     (___kont130062130063_
                      (lambda (_L123104_)
                        (let ((__tmp130744
                               (let ((__tmp130745
                                      (let ((__tmp130746
                                             (let ((__tmp130747
                                                    (let ((__tmp130755
                                                           (let ((__tmp130756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130756)))
                  (__tmp130748
                   (let ((__tmp130753
                          (let ((__tmp130754
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123065_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130754)))
                         (__tmp130749
                          (let ((__tmp130750
                                 (let ((__tmp130752
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130751
                                        (let ()
                                          (declare (not safe))
                                          (cons _L123104_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130752 __tmp130751))))
                            (declare (not safe))
                            (cons __tmp130750 '()))))
                     (declare (not safe))
                     (cons __tmp130753 __tmp130749))))
              (declare (not safe))
              (cons __tmp130755 __tmp130748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130747))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130746
                                         _stx122988_))))
                                 (declare (not safe))
                                 (cons __tmp130745 '()))))
                          (declare (not safe))
                          (cons _L123046_ __tmp130744)))))
                 (let* ((___match130077130078_
                         (lambda (___splice130060130061_
                                  _target123085123120_
                                  _tl123087123122_)
                           (letrec ((_loop123088123125_
                                     (lambda (_hd123086123128_
                                              _arg123092123130_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123086123128_))
                                           (let ((_e123089123133_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123086123128_))))
                                             (let ((_lp-tl123091123138_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123089123133_)))
                                                   (_lp-hd123090123136_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123089123133_))))
                                               (let ((__tmp130757
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123090123136_
                                                              _arg123092123130_))))
                                                 (declare (not safe))
                                                 (_loop123088123125_
                                                  _lp-tl123091123138_
                                                  __tmp130757))))
                                           (let ((_arg123093123141_
                                                  (reverse _arg123092123130_)))
                                             (___kont130058130059_
                                              _tl123087123122_
                                              _arg123093123141_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123088123125_
                                _target123085123120_
                                '())))))
                        (___match130071130072_
                         (lambda (___splice130056130057_
                                  _target123074123169_
                                  _tl123076123171_)
                           (letrec ((_loop123077123174_
                                     (lambda (_hd123075123177_
                                              _arg123081123179_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123075123177_))
                                           (let ((_e123078123182_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123075123177_))))
                                             (let ((_lp-tl123080123187_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123078123182_)))
                                                   (_lp-hd123079123185_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123078123182_))))
                                               (let ((__tmp130758
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123079123185_
                                                              _arg123081123179_))))
                                                 (declare (not safe))
                                                 (_loop123077123174_
                                                  _lp-tl123080123187_
                                                  __tmp130758))))
                                           (let ((_arg123082123190_
                                                  (reverse _arg123081123179_)))
                                             (___kont130054130055_
                                              _arg123082123190_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123077123174_
                                _target123074123169_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx130052130053_))
                       (let ((___splice130056130057_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx130052130053_
                                 '0))))
                         (let ((_tl123076123171_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130056130057_ '1)))
                               (_target123074123169_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130056130057_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl123076123171_))
                               (___match130071130072_
                                ___splice130056130057_
                                _target123074123169_
                                _tl123076123171_)
                               (___match130077130078_
                                ___splice130056130057_
                                _target123074123169_
                                _tl123076123171_))))
                       (___kont130062130063_ ___stx130052130053_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130761
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id123065_
                                                              _ids122996_)))
                                                     (__tmp130760
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl123067_
                                                              _impls122997_)))
                                                     (__tmp130759
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause123214_
                                                              _clauses122998_))))
                                                 (declare (not safe))
                                                 (_lp122993_
                                                  _rest123018_
                                                  __tmp130761
                                                  __tmp130760
                                                  __tmp130759))))
                                           _tl123025123042_
                                           _hd123026123040_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g123021123032_ _g123022123035_))))))
                          (declare (not safe))
                          (_g123020123217_ _clause123019_))))))
            (if (let () (declare (not safe)) (##pair? _rest122999123007_))
                (let ((_hd123004123223_
                       (let ()
                         (declare (not safe))
                         (##car _rest122999123007_)))
                      (_tl123005123225_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest122999123007_))))
                  (let* ((_clause123228_ _hd123004123223_)
                         (_rest123230_ _tl123005123225_))
                    (declare (not safe))
                    (_K123003123220_ _rest123230_ _clause123228_)))
                (let () (declare (not safe)) (_else123001123015_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx123235_ _id123236_ _clauses123237_)
        (let ((_gensym?123239_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx123235_
           _id123236_
           _clauses123237_
           _gensym?123239_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130764_
        (let ((_g130763_ (let () (declare (not safe)) (##length _g130764_))))
          (cond ((let () (declare (not safe)) (##fx= _g130763_ 3))
                 (apply (lambda (_stx123235_ _id123236_ _clauses123237_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx123235_
                             _id123236_
                             _clauses123237_)))
                        _g130764_))
                ((let () (declare (not safe)) (##fx= _g130763_ 4))
                 (apply (lambda (_stx123241_
                                 _id123242_
                                 _clauses123243_
                                 _gensym?123244_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx123241_
                             _id123242_
                             _clauses123243_
                             _gensym?123244_)))
                        _g130764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130764_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self122264_ _stx122265_)
        (letrec ((_case-lambda-clause-def122267_
                  (lambda (_id122984_ _impl122985_)
                    (let ((__tmp130765
                           (let ((__tmp130766
                                  (let ((__tmp130769
                                         (let ()
                                           (declare (not safe))
                                           (cons _id122984_ '())))
                                        (__tmp130767
                                         (let ((__tmp130768
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self122264_
                                                   _impl122985_))))
                                           (declare (not safe))
                                           (cons __tmp130768 '()))))
                                    (declare (not safe))
                                    (cons __tmp130769 __tmp130767))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130766))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130765 _stx122265_))))
                 (_opt-lambda-dispatch-name122268_
                  (lambda (_id122980_)
                    (if (uninterned-symbol? _id122980_)
                        (let ((_str122982_ (symbol->string _id122980_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str122982_))
                              '"%"
                              _id122980_))
                        _id122980_)))
                 (_kw-lambda-dispatch-name122269_
                  (lambda (_id122975_ _name122976_)
                    (if (uninterned-symbol? _id122975_)
                        (let ((_str122978_ (symbol->string _id122975_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str122978_))
                              _name122976_
                              _id122975_))
                        _id122975_))))
          (let* ((___stx130100130101_ _stx122265_)
                 (_g122274122333_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130100130101_)))))
            (let ((___kont130102130103_
                   (lambda (_L122884_ _L122885_)
                     (let* ((___stx130080130081_ _L122884_)
                            (_g122902122916_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130080130081_)))))
                       (let ((___kont130082130083_
                              (lambda (_L122960_) _stx122265_))
                             (___kont130084130085_
                              (lambda (_L122929_)
                                (let ((_g130770_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx122265_
                                          _L122885_
                                          _L122929_))))
                                  (begin
                                    (let ((_g130771_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130770_)
                                                 (##vector-length _g130770_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130771_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130771_)))
                                    (let ((_ids122939_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130770_ 0)))
                                          (_impls122940_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130770_ 1)))
                                          (_clauses122941_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130770_ 2))))
                                      (let* ((_g130772_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122939_))
                                             (_defs122944_
                                              (map _case-lambda-clause-def122267_
                                                   _ids122939_
                                                   _impls122940_)))
                                        (let ((__tmp130774
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122885_)))
                                              (__tmp130773
                                               (map gxc#identifier-symbol
                                                    _ids122939_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130774
                                           '" => "
                                           __tmp130773))
                                        (let ((__tmp130775
                                               (let ((__tmp130776
                                                      (let ((__tmp130777
                                                             (let ((__tmp130778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130779
                                   (let ((__tmp130780
                                          (let ((__tmp130785
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122885_ '())))
                                                (__tmp130781
                                                 (let ((__tmp130782
                                                        (let ((__tmp130784
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122941_)))
                      (__tmp130783
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130784 __tmp130783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130782 '()))))
                                            (declare (not safe))
                                            (cons __tmp130785 __tmp130781))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130780))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130779
                               _stx122265_))))
                       (declare (not safe))
                       (cons __tmp130778 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130777 _defs122944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130776))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130775
                                           _stx122265_)))))))))
                         (let ((___match130091130092_
                                (lambda (_e122907122952_
                                         _hd122906122955_
                                         _tl122905122957_)
                                  (let ((_L122960_ _tl122905122957_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L122960_))
                                        (___kont130082130083_ _L122960_)
                                        (___kont130084130085_
                                         _tl122905122957_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx130080130081_))
                               (let ((_e122907122952_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx130080130081_))))
                                 (let ((_tl122905122957_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122907122952_)))
                                       (_hd122906122955_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122907122952_))))
                                   (___match130091130092_
                                    _e122907122952_
                                    _hd122906122955_
                                    _tl122905122957_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122902122916_))))))))
                  (___kont130104130105_
                   (lambda (_L122702_ _L122703_)
                     (let* ((_g122719122749_
                             (lambda (_g122720122746_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122720122746_))))
                            (_g122718122844_
                             (lambda (_g122720122752_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122720122752_))
                                   (let ((_e122726122754_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122720122752_))))
                                     (let ((_hd122725122757_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122726122754_)))
                                           (_tl122724122759_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122726122754_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122724122759_))
                                           (let ((_e122729122762_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122724122759_))))
                                             (let ((_hd122728122765_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122729122762_)))
                                                   (_tl122727122767_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122729122762_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122728122765_))
                                                   (let ((_e122732122770_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122728122765_))))
                                                     (let ((_hd122731122773_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122732122770_)))
                                                           (_tl122730122775_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122732122770_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122731122773_))
                                                           (let ((_e122735122778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122731122773_))))
                     (let ((_hd122734122781_
                            (let ()
                              (declare (not safe))
                              (##car _e122735122778_)))
                           (_tl122733122783_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122735122778_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122734122781_))
                           (let ((_e122738122786_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122734122781_))))
                             (let ((_hd122737122789_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122738122786_)))
                                   (_tl122736122791_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122738122786_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122736122791_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122733122783_))
                                       (let ((_e122741122794_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122733122783_))))
                                         (let ((_hd122740122797_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122741122794_)))
                                               (_tl122739122799_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122741122794_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122739122799_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122730122775_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122727122767_))
                                                       (let ((_e122744122802_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122727122767_))))
                 (let ((_hd122743122805_
                        (let () (declare (not safe)) (##car _e122744122802_)))
                       (_tl122742122807_
                        (let () (declare (not safe)) (##cdr _e122744122802_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122742122807_))
                       ((lambda (_L122810_ _L122811_ _L122812_)
                          (let* ((_lambda-id122836_
                                  (let ((__tmp130788
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122703_)))
                                        (__tmp130786
                                         (let ((__tmp130787
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122812_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name122268_
                                            __tmp130787))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130788
                                     '"__"
                                     __tmp130786)))
                                 (_lambda-id122838_
                                  (let ((__tmp130789
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx122265_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122836_
                                     __tmp130789)))
                                 (_g130790_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122838_)))
                                 (_new-case-lambda-expr122841_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122810_
                                     'id:
                                     _L122812_
                                     'new-id:
                                     _lambda-id122838_))))
                            (let ((__tmp130792
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122703_)))
                                  (__tmp130791
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122838_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130792
                               '" => "
                               __tmp130791))
                            (let ((__tmp130793
                                   (let ((__tmp130794
                                          (let ((__tmp130802
                                                 (let ((__tmp130803
                                                        (let ((__tmp130804
                                                               (let ((__tmp130807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122838_ '())))
                             (__tmp130805
                              (let ((__tmp130806
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self122264_
                                        _L122811_))))
                                (declare (not safe))
                                (cons __tmp130806 '()))))
                         (declare (not safe))
                         (cons __tmp130807 __tmp130805))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130803
                                                    _stx122265_)))
                                                (__tmp130795
                                                 (let ((__tmp130796
                                                        (let ((__tmp130797
                                                               (let ((__tmp130798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130799
                                     (let ((__tmp130801
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122703_ '())))
                                           (__tmp130800
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122841_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130801 __tmp130800))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130799))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130798 _stx122265_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self122264_
                   __tmp130797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130796 '()))))
                                            (declare (not safe))
                                            (cons __tmp130802 __tmp130795))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130794))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130793
                               _stx122265_))))
                        _hd122743122805_
                        _hd122740122797_
                        _hd122737122789_)
                       (let ()
                         (declare (not safe))
                         (_g122719122749_ _g122720122752_)))))
               (let () (declare (not safe)) (_g122719122749_ _g122720122752_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122719122749_
                                                      _g122720122752_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122719122749_
                                                  _g122720122752_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122719122749_ _g122720122752_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122719122749_ _g122720122752_)))))
                           (let ()
                             (declare (not safe))
                             (_g122719122749_ _g122720122752_)))))
                   (let ()
                     (declare (not safe))
                     (_g122719122749_ _g122720122752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122719122749_
                                                      _g122720122752_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122719122749_
                                              _g122720122752_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122719122749_ _g122720122752_))))))
                       (declare (not safe))
                       (_g122718122844_ _L122702_))))
                  (___kont130106130107_
                   (lambda (_L122416_ _L122417_)
                     (let* ((_g122433122486_
                             (lambda (_g122434122483_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122434122483_))))
                            (_g122432122662_
                             (lambda (_g122434122489_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122434122489_))
                                   (let ((_e122442122491_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122434122489_))))
                                     (let ((_hd122441122494_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122442122491_)))
                                           (_tl122440122496_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122442122491_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122440122496_))
                                           (let ((_e122445122499_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122440122496_))))
                                             (let ((_hd122444122502_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122445122499_)))
                                                   (_tl122443122504_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122445122499_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122444122502_))
                                                   (let ((_e122448122507_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122444122502_))))
                                                     (let ((_hd122447122510_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122448122507_)))
                                                           (_tl122446122512_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122448122507_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122447122510_))
                                                           (let ((_e122451122515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122447122510_))))
                     (let ((_hd122450122518_
                            (let ()
                              (declare (not safe))
                              (##car _e122451122515_)))
                           (_tl122449122520_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122451122515_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122450122518_))
                           (let ((_e122454122523_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122450122518_))))
                             (let ((_hd122453122526_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122454122523_)))
                                   (_tl122452122528_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122454122523_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122452122528_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122449122520_))
                                       (let ((_e122457122531_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122449122520_))))
                                         (let ((_hd122456122534_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122457122531_)))
                                               (_tl122455122536_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122457122531_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122456122534_))
                                               (let ((_e122460122539_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122456122534_))))
                                                 (let ((_hd122459122542_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122460122539_)))
                                                       (_tl122458122544_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122460122539_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122458122544_))
                                                       (let ((_e122463122547_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122458122544_))))
                 (let ((_hd122462122550_
                        (let () (declare (not safe)) (##car _e122463122547_)))
                       (_tl122461122552_
                        (let () (declare (not safe)) (##cdr _e122463122547_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122462122550_))
                       (let ((_e122466122555_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122462122550_))))
                         (let ((_hd122465122558_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122466122555_)))
                               (_tl122464122560_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122466122555_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122465122558_))
                               (let ((_e122469122563_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122465122558_))))
                                 (let ((_hd122468122566_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122469122563_)))
                                       (_tl122467122568_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122469122563_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122468122566_))
                                       (let ((_e122472122571_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122468122566_))))
                                         (let ((_hd122471122574_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122472122571_)))
                                               (_tl122470122576_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122472122571_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122470122576_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122467122568_))
                                                   (let ((_e122475122579_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122467122568_))))
                                                     (let ((_hd122474122582_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122475122579_)))
                                                           (_tl122473122584_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122475122579_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122473122584_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122464122560_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122461122552_))
                           (let ((_e122478122587_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122461122552_))))
                             (let ((_hd122477122590_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122478122587_)))
                                   (_tl122476122592_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122478122587_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122476122592_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122455122536_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122446122512_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122443122504_))
                                               (let ((_e122481122595_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122443122504_))))
                                                 (let ((_hd122480122598_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122481122595_)))
                                                       (_tl122479122600_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122481122595_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122479122600_))
                                                       ((lambda (_L122603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122604_
                         _L122605_
                         _L122606_
                         _L122607_)
                  (let* ((_get-kws-id122647_
                          (let ((__tmp130810
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122417_)))
                                (__tmp130808
                                 (let ((__tmp130809
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122607_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122269_
                                    __tmp130809
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130810 '"__" __tmp130808)))
                         (_get-kws-id122649_
                          (let ((__tmp130811
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122265_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122647_
                             __tmp130811)))
                         (_main-id122651_
                          (let ((__tmp130814
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122417_)))
                                (__tmp130812
                                 (let ((__tmp130813
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122606_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122269_
                                    __tmp130813
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130814 '"__" __tmp130812)))
                         (_main-id122653_
                          (let ((__tmp130815
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122265_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122651_
                             __tmp130815)))
                         (_g130816_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122649_)))
                         (_g130817_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122653_)))
                         (_new-kw-dispatch122657_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122603_
                             'id:
                             _L122607_
                             'new-id:
                             _get-kws-id122649_)))
                         (_new-get-kws122659_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122604_
                             'id:
                             _L122606_
                             'new-id:
                             _main-id122653_))))
                    (let ((__tmp130820
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122417_)))
                          (__tmp130819
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122649_)))
                          (__tmp130818
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122653_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130820
                       '" => "
                       __tmp130819
                       '" => "
                       __tmp130818))
                    (let ((__tmp130821
                           (let ((__tmp130822
                                  (let ((__tmp130835
                                         (let ((__tmp130836
                                                (let ((__tmp130837
                                                       (let ((__tmp130838
                                                              (let ((__tmp130840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122653_ '())))
                            (__tmp130839
                             (let ()
                               (declare (not safe))
                               (cons _L122605_ '()))))
                        (declare (not safe))
                        (cons __tmp130840 __tmp130839))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130837
                                                   _stx122265_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self122264_
                                            __tmp130836)))
                                        (__tmp130823
                                         (let ((__tmp130830
                                                (let ((__tmp130831
                                                       (let ((__tmp130832
                                                              (let ((__tmp130834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122649_ '())))
                            (__tmp130833
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122659_ '()))))
                        (declare (not safe))
                        (cons __tmp130834 __tmp130833))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130831
                                                   _stx122265_)))
                                               (__tmp130824
                                                (let ((__tmp130825
                                                       (let ((__tmp130826
                                                              (let ((__tmp130827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130829
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122417_ '())))
                                   (__tmp130828
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122657_ '()))))
                               (declare (not safe))
                               (cons __tmp130829 __tmp130828))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130827))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130826 _stx122265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130825 '()))))
                                           (declare (not safe))
                                           (cons __tmp130830 __tmp130824))))
                                    (declare (not safe))
                                    (cons __tmp130835 __tmp130823))))
                             (declare (not safe))
                             (cons '%#begin __tmp130822))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130821 _stx122265_))))
                _hd122480122598_
                _hd122477122590_
                _hd122474122582_
                _hd122471122574_
                _hd122453122526_)
               (let ()
                 (declare (not safe))
                 (_g122433122486_ _g122434122489_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122433122486_
                                                  _g122434122489_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122433122486_
                                              _g122434122489_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122433122486_ _g122434122489_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122433122486_ _g122434122489_)))))
                           (let ()
                             (declare (not safe))
                             (_g122433122486_ _g122434122489_)))
                       (let ()
                         (declare (not safe))
                         (_g122433122486_ _g122434122489_)))
                   (let ()
                     (declare (not safe))
                     (_g122433122486_ _g122434122489_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122433122486_
                                                      _g122434122489_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122433122486_
                                                  _g122434122489_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122433122486_ _g122434122489_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122433122486_ _g122434122489_)))))
                       (let ()
                         (declare (not safe))
                         (_g122433122486_ _g122434122489_)))))
               (let ()
                 (declare (not safe))
                 (_g122433122486_ _g122434122489_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122433122486_
                                                  _g122434122489_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122433122486_ _g122434122489_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122433122486_ _g122434122489_)))))
                           (let ()
                             (declare (not safe))
                             (_g122433122486_ _g122434122489_)))))
                   (let ()
                     (declare (not safe))
                     (_g122433122486_ _g122434122489_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122433122486_
                                                      _g122434122489_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122433122486_
                                              _g122434122489_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122433122486_ _g122434122489_))))))
                       (declare (not safe))
                       (_g122432122662_ _L122416_))))
                  (___kont130108130109_
                   (lambda (_L122362_ _L122363_)
                     (let ((__tmp130841
                            (let ((__tmp130842
                                   (let ((__tmp130843
                                          (let ((__tmp130844
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self122264_
                                                    _L122362_))))
                                            (declare (not safe))
                                            (cons __tmp130844 '()))))
                                     (declare (not safe))
                                     (cons _L122363_ __tmp130843))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130842))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130841 _stx122265_)))))
              (let* ((___match130193130194_
                      (lambda (_e122308122384_
                               _hd122307122387_
                               _tl122306122389_
                               _e122311122392_
                               _hd122310122395_
                               _tl122309122397_
                               _e122314122400_
                               _hd122313122403_
                               _tl122312122405_
                               _e122317122408_
                               _hd122316122411_
                               _tl122315122413_)
                        (let ((_L122416_ _hd122316122411_)
                              (_L122417_ _hd122313122403_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122417_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122416_)))
                              (___kont130106130107_ _L122416_ _L122417_)
                              (___kont130108130109_
                               _hd122316122411_
                               _hd122310122395_)))))
                     (___match130165130166_
                      (lambda (_e122294122670_
                               _hd122293122673_
                               _tl122292122675_
                               _e122297122678_
                               _hd122296122681_
                               _tl122295122683_
                               _e122300122686_
                               _hd122299122689_
                               _tl122298122691_
                               _e122303122694_
                               _hd122302122697_
                               _tl122301122699_)
                        (let ((_L122702_ _hd122302122697_)
                              (_L122703_ _hd122299122689_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122703_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122702_)))
                              (___kont130104130105_ _L122702_ _L122703_)
                              (___match130193130194_
                               _e122294122670_
                               _hd122293122673_
                               _tl122292122675_
                               _e122297122678_
                               _hd122296122681_
                               _tl122295122683_
                               _e122300122686_
                               _hd122299122689_
                               _tl122298122691_
                               _e122303122694_
                               _hd122302122697_
                               _tl122301122699_)))))
                     (___match130137130138_
                      (lambda (_e122280122852_
                               _hd122279122855_
                               _tl122278122857_
                               _e122283122860_
                               _hd122282122863_
                               _tl122281122865_
                               _e122286122868_
                               _hd122285122871_
                               _tl122284122873_
                               _e122289122876_
                               _hd122288122879_
                               _tl122287122881_)
                        (let ((_L122884_ _hd122288122879_)
                              (_L122885_ _hd122285122871_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122885_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122884_)))
                              (___kont130102130103_ _L122884_ _L122885_)
                              (___match130165130166_
                               _e122280122852_
                               _hd122279122855_
                               _tl122278122857_
                               _e122283122860_
                               _hd122282122863_
                               _tl122281122865_
                               _e122286122868_
                               _hd122285122871_
                               _tl122284122873_
                               _e122289122876_
                               _hd122288122879_
                               _tl122287122881_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130100130101_))
                    (let ((_e122280122852_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130100130101_))))
                      (let ((_tl122278122857_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122280122852_)))
                            (_hd122279122855_
                             (let ()
                               (declare (not safe))
                               (##car _e122280122852_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122278122857_))
                            (let ((_e122283122860_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122278122857_))))
                              (let ((_tl122281122865_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122283122860_)))
                                    (_hd122282122863_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122283122860_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122282122863_))
                                    (let ((_e122286122868_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122282122863_))))
                                      (let ((_tl122284122873_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122286122868_)))
                                            (_hd122285122871_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122286122868_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122284122873_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122281122865_))
                                                (let ((_e122289122876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122281122865_))))
                                                  (let ((_tl122287122881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122289122876_)))
                                                        (_hd122288122879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122289122876_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122287122881_))
                                                        (___match130137130138_
                                                         _e122280122852_
                                                         _hd122279122855_
                                                         _tl122278122857_
                                                         _e122283122860_
                                                         _hd122282122863_
                                                         _tl122281122865_
                                                         _e122286122868_
                                                         _hd122285122871_
                                                         _tl122284122873_
                                                         _e122289122876_
                                                         _hd122288122879_
                                                         _tl122287122881_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122274122333_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122274122333_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122281122865_))
                                                (let ((_e122328122354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122281122865_))))
                                                  (let ((_tl122326122359_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122328122354_)))
                                                        (_hd122327122357_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122328122354_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122326122359_))
                                                        (___kont130108130109_
                                                         _hd122327122357_
                                                         _hd122282122863_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122274122333_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122274122333_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122281122865_))
                                        (let ((_e122328122354_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122281122865_))))
                                          (let ((_tl122326122359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122328122354_)))
                                                (_hd122327122357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122328122354_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122326122359_))
                                                (___kont130108130109_
                                                 _hd122327122357_
                                                 _hd122282122863_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122274122333_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122274122333_))))))
                            (let () (declare (not safe)) (_g122274122333_)))))
                    (let () (declare (not safe)) (_g122274122333_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self121195_ _stx121196_)
        (letrec* ((_bind-e__128496128497_
                   (lambda (_id122248_ _expr122249_ _compile?122250_)
                     (let ((__tmp130847
                            (let ()
                              (declare (not safe))
                              (cons _id122248_ '())))
                           (__tmp130845
                            (let ((__tmp130846
                                   (if _compile?122250_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self121195_
                                          _expr122249_))
                                       _expr122249_)))
                              (declare (not safe))
                              (cons __tmp130846 '()))))
                       (declare (not safe))
                       (cons __tmp130847 __tmp130845))))
                  (_bind-e__0__128498128499_
                   (lambda (_id122255_ _expr122256_)
                     (let ((_compile?122258_ '#t))
                       (declare (not safe))
                       (_bind-e__128496128497_
                        _id122255_
                        _expr122256_
                        _compile?122258_))))
                  (_bind-e121198_
                   (lambda _g130849_
                     (let ((_g130848_
                            (let ()
                              (declare (not safe))
                              (##length _g130849_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130848_ 2))
                              (apply (lambda (_id122255_ _expr122256_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128498128499_
                                          _id122255_
                                          _expr122256_)))
                                     _g130849_))
                             ((let () (declare (not safe)) (##fx= _g130848_ 3))
                              (apply (lambda (_id122260_
                                              _expr122261_
                                              _compile?122262_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128496128497_
                                          _id122260_
                                          _expr122261_
                                          _compile?122262_)))
                                     _g130849_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130849_))))))
                  (_compile-bindings121199_
                   (lambda (_bindings121832_)
                     (let _lp121834_ ((_rest121836_ _bindings121832_)
                                      (_lift1121837_ '())
                                      (_lift2121838_ '())
                                      (_bind121839_ '()))
                       (let* ((_rest121840121848_ _rest121836_)
                              (_else121842121856_
                               (lambda ()
                                 (values (reverse _lift1121837_)
                                         (reverse _lift2121838_)
                                         (reverse _bind121839_))))
                              (_K121844122235_
                               (lambda (_rest121859_ _hd121860_)
                                 (let* ((___stx130236130237_ _hd121860_)
                                        (_g121864121900_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130236130237_)))))
                                   (let ((___kont130238130239_
                                          (lambda (_L122142_ _L122143_)
                                            (let* ((___stx130216130217_
                                                    _L122142_)
                                                   (_g122158122172_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130216130217_)))))
                                              (let ((___kont130218130219_
                                                     (lambda (_L122220_)
                                                       (let ((__tmp130850
                                                              (let ((__tmp130851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128496128497_
                                _L122143_
                                _L122142_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130851 _bind121839_))))
                 (declare (not safe))
                 (_lp121834_
                  _rest121859_
                  _lift1121837_
                  _lift2121838_
                  __tmp130850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130220130221_
                                                     (lambda (_L122185_)
                                                       (let ((_g130852_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx121196_
                         _L122143_
                         _L122185_
                         '#t))))
                 (begin
                   (let ((_g130853_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130852_)
                                (##vector-length _g130852_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130853_ 3)))
                         (error "Context expects 3 values" _g130853_)))
                   (let ((_ids122195_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130852_ 0)))
                         (_impls122196_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130852_ 1)))
                         (_clauses122197_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130852_ 2))))
                     (let* ((_g130854_
                             (for-each gx#core-bind-runtime! _ids122195_))
                            (_xbind122200_
                             (map _bind-e121198_ _ids122195_ _impls122196_))
                            (_expr*122202_
                             (let ((__tmp130856
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses122197_)))
                                   (__tmp130855
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130856
                                __tmp130855)))
                            (_bind*122204_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128496128497_
                                _L122143_
                                _expr*122202_
                                '#f))))
                       (let ((__tmp130858
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L122143_)))
                             (__tmp130857
                              (map gxc#identifier-symbol _ids122195_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130858
                          '" => "
                          __tmp130857))
                       (let ((__tmp130860
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121838_ _xbind122200_)))
                             (__tmp130859
                              (let ()
                                (declare (not safe))
                                (cons _bind*122204_ _bind121839_))))
                         (declare (not safe))
                         (_lp121834_
                          _rest121859_
                          _lift1121837_
                          __tmp130860
                          __tmp130859)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130227130228_
                                                       (lambda (_e122163122212_
                                                                _hd122162122215_
                                                                _tl122161122217_)
                                                         (let ((_L122220_
                                                                _tl122161122217_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L122220_))
                       (___kont130218130219_ _L122220_)
                       (___kont130220130221_ _tl122161122217_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130216130217_))
                                                      (let ((_e122163122212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130216130217_))))
                (let ((_tl122161122217_
                       (let () (declare (not safe)) (##cdr _e122163122212_)))
                      (_hd122162122215_
                       (let () (declare (not safe)) (##car _e122163122212_))))
                  (___match130227130228_
                   _e122163122212_
                   _hd122162122215_
                   _tl122161122217_)))
              (let () (declare (not safe)) (_g122158122172_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130240130241_
                                          (lambda (_L121970_ _L121971_)
                                            (let* ((_g121985122015_
                                                    (lambda (_g121986122012_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121986122012_))))
                                                   (_g121984122110_
                                                    (lambda (_g121986122018_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121986122018_))
                                                          (let ((_e121992122020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121986122018_))))
                    (let ((_hd121991122023_
                           (let ()
                             (declare (not safe))
                             (##car _e121992122020_)))
                          (_tl121990122025_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121992122020_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121990122025_))
                          (let ((_e121995122028_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121990122025_))))
                            (let ((_hd121994122031_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121995122028_)))
                                  (_tl121993122033_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121995122028_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121994122031_))
                                  (let ((_e121998122036_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121994122031_))))
                                    (let ((_hd121997122039_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121998122036_)))
                                          (_tl121996122041_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121998122036_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121997122039_))
                                          (let ((_e122001122044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121997122039_))))
                                            (let ((_hd122000122047_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122001122044_)))
                                                  (_tl121999122049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122001122044_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd122000122047_))
                                                  (let ((_e122004122052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd122000122047_))))
                                                    (let ((_hd122003122055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122004122052_)))
                                                          (_tl122002122057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122004122052_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122002122057_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121999122049_))
                      (let ((_e122007122060_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121999122049_))))
                        (let ((_hd122006122063_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122007122060_)))
                              (_tl122005122065_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122007122060_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122005122065_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121996122041_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121993122033_))
                                      (let ((_e122010122068_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121993122033_))))
                                        (let ((_hd122009122071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122010122068_)))
                                              (_tl122008122073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122010122068_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122008122073_))
                                              ((lambda (_L122076_
                                                        _L122077_
                                                        _L122078_)
                                                 (let* ((_lambda-id122102_
                                                         (let ((__tmp130862
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L121971_)))
                       (__tmp130861 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130862 __tmp130861)))
                (_lambda-id122104_
                 (let ((__tmp130863
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx121196_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id122102_ __tmp130863)))
                (_g130864_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id122104_)))
                (_new-case-lambda-expr122107_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L122076_
                    'id:
                    _L122078_
                    'new-id:
                    _lambda-id122104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130866
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L121971_)))
                                                         (__tmp130865
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id122104_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130866
                                                      '" => "
                                                      __tmp130865))
                                                   (let ((__tmp130869
                                                          (let ((__tmp130870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128496128497_
                            _L121971_
                            _new-case-lambda-expr122107_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130870 _rest121859_)))
                 (__tmp130867
                  (let ((__tmp130868
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128498128499_
                            _lambda-id122104_
                            _L122077_))))
                    (declare (not safe))
                    (cons __tmp130868 _lift1121837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121834_
                                                      __tmp130869
                                                      __tmp130867
                                                      _lift2121838_
                                                      _bind121839_))))
                                               _hd122009122071_
                                               _hd122006122063_
                                               _hd122003122055_)
                                              (let ()
                                                (declare (not safe))
                                                (_g121985122015_
                                                 _g121986122018_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121985122015_ _g121986122018_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121985122015_ _g121986122018_)))
                              (let ()
                                (declare (not safe))
                                (_g121985122015_ _g121986122018_)))))
                      (let ()
                        (declare (not safe))
                        (_g121985122015_ _g121986122018_)))
                  (let ()
                    (declare (not safe))
                    (_g121985122015_ _g121986122018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121985122015_
                                                     _g121986122018_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121985122015_
                                             _g121986122018_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121985122015_ _g121986122018_)))))
                          (let ()
                            (declare (not safe))
                            (_g121985122015_ _g121986122018_)))))
                  (let ()
                    (declare (not safe))
                    (_g121985122015_ _g121986122018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121984122110_ _L121970_))))
                                         (___kont130242130243_
                                          (lambda (_L121921_ _L121922_)
                                            (let ((__tmp130871
                                                   (let ((__tmp130872
                                                          (let ((__tmp130873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130874
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self121195_ _L121921_))))
                           (declare (not safe))
                           (cons __tmp130874 '()))))
                    (declare (not safe))
                    (cons _L121922_ __tmp130873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130872
                                                           _bind121839_))))
                                              (declare (not safe))
                                              (_lp121834_
                                               _rest121859_
                                               _lift1121837_
                                               _lift2121838_
                                               __tmp130871)))))
                                     (let* ((___match130287130288_
                                             (lambda (_e121881121946_
                                                      _hd121880121949_
                                                      _tl121879121951_
                                                      _e121884121954_
                                                      _hd121883121957_
                                                      _tl121882121959_
                                                      _e121887121962_
                                                      _hd121886121965_
                                                      _tl121885121967_)
                                               (let ((_L121970_
                                                      _hd121886121965_)
                                                     (_L121971_
                                                      _hd121883121957_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121971_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L121970_)))
                                                     (___kont130240130241_
                                                      _L121970_
                                                      _L121971_)
                                                     (___kont130242130243_
                                                      _hd121886121965_
                                                      _hd121880121949_)))))
                                            (___match130265130266_
                                             (lambda (_e121870122118_
                                                      _hd121869122121_
                                                      _tl121868122123_
                                                      _e121873122126_
                                                      _hd121872122129_
                                                      _tl121871122131_
                                                      _e121876122134_
                                                      _hd121875122137_
                                                      _tl121874122139_)
                                               (let ((_L122142_
                                                      _hd121875122137_)
                                                     (_L122143_
                                                      _hd121872122129_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122143_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L122142_)))
                                                     (___kont130238130239_
                                                      _L122142_
                                                      _L122143_)
                                                     (___match130287130288_
                                                      _e121870122118_
                                                      _hd121869122121_
                                                      _tl121868122123_
                                                      _e121873122126_
                                                      _hd121872122129_
                                                      _tl121871122131_
                                                      _e121876122134_
                                                      _hd121875122137_
                                                      _tl121874122139_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130236130237_))
                                           (let ((_e121870122118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130236130237_))))
                                             (let ((_tl121868122123_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121870122118_)))
                                                   (_hd121869122121_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121870122118_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121869122121_))
                                                   (let ((_e121873122126_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121869122121_))))
                                                     (let ((_tl121871122131_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121873122126_)))
                                                           (_hd121872122129_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121873122126_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121871122131_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121868122123_))
                       (let ((_e121876122134_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121868122123_))))
                         (let ((_tl121874122139_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121876122134_)))
                               (_hd121875122137_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121876122134_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121874122139_))
                               (___match130265130266_
                                _e121870122118_
                                _hd121869122121_
                                _tl121868122123_
                                _e121873122126_
                                _hd121872122129_
                                _tl121871122131_
                                _e121876122134_
                                _hd121875122137_
                                _tl121874122139_)
                               (let ()
                                 (declare (not safe))
                                 (_g121864121900_)))))
                       (let () (declare (not safe)) (_g121864121900_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121868122123_))
                       (let ((_e121895121913_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121868122123_))))
                         (let ((_tl121893121918_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121895121913_)))
                               (_hd121894121916_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121895121913_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121893121918_))
                               (___kont130242130243_
                                _hd121894121916_
                                _hd121869122121_)
                               (let ()
                                 (declare (not safe))
                                 (_g121864121900_)))))
                       (let () (declare (not safe)) (_g121864121900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121868122123_))
                                                       (let ((_e121895121913_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121868122123_))))
                 (let ((_tl121893121918_
                        (let () (declare (not safe)) (##cdr _e121895121913_)))
                       (_hd121894121916_
                        (let () (declare (not safe)) (##car _e121895121913_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121893121918_))
                       (___kont130242130243_ _hd121894121916_ _hd121869122121_)
                       (let () (declare (not safe)) (_g121864121900_)))))
               (let () (declare (not safe)) (_g121864121900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121864121900_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121840121848_))
                             (let ((_hd121845122238_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121840121848_)))
                                   (_tl121846122240_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121840121848_))))
                               (let* ((_hd122243_ _hd121845122238_)
                                      (_rest122245_ _tl121846122240_))
                                 (declare (not safe))
                                 (_K121844122235_ _rest122245_ _hd122243_)))
                             (let ()
                               (declare (not safe))
                               (_else121842121856_)))))))
                  (_lift-kw-lambda?121200_
                   (lambda (_bind121756_)
                     (let* ((___stx130304130305_ _bind121756_)
                            (_g121759121776_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130304130305_)))))
                       (let ((___kont130306130307_
                              (lambda (_L121812_ _L121813_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121813_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121812_))
                                    '#f)))
                             (___kont130308130309_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130304130305_))
                             (let ((_e121765121788_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130304130305_))))
                               (let ((_tl121763121793_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121765121788_)))
                                     (_hd121764121791_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121765121788_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121764121791_))
                                     (let ((_e121768121796_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121764121791_))))
                                       (let ((_tl121766121801_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121768121796_)))
                                             (_hd121767121799_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121768121796_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121766121801_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121763121793_))
                                                 (let ((_e121771121804_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121763121793_))))
                                                   (let ((_tl121769121809_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121771121804_)))
                                                         (_hd121770121807_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121771121804_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121769121809_))
                                                         (___kont130306130307_
                                                          _hd121770121807_
                                                          _hd121767121799_)
                                                         (___kont130308130309_))))
                                                 (___kont130308130309_))
                                             (___kont130308130309_))))
                                     (___kont130308130309_))))
                             (___kont130308130309_))))))
                  (_lift-kw-lambda-bindings121201_
                   (lambda (_bindings121368_)
                     (let _lp121370_ ((_rest121372_ _bindings121368_)
                                      (_lift1121373_ '())
                                      (_lift2121374_ '())
                                      (_bind121375_ '()))
                       (let* ((_rest121376121384_ _rest121372_)
                              (_else121378121392_
                               (lambda ()
                                 (values (reverse _lift1121373_)
                                         (reverse _lift2121374_)
                                         (reverse _bind121375_))))
                              (_K121380121744_
                               (lambda (_rest121395_ _hd121396_)
                                 (let* ((___stx130334130335_ _hd121396_)
                                        (_g121399121424_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130334130335_)))))
                                   (let ((___kont130336130337_
                                          (lambda (_L121494_ _L121495_)
                                            (let* ((_g121509121562_
                                                    (lambda (_g121510121559_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121510121559_))))
                                                   (_g121508121738_
                                                    (lambda (_g121510121565_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121510121565_))
                                                          (let ((_e121518121567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121510121565_))))
                    (let ((_hd121517121570_
                           (let ()
                             (declare (not safe))
                             (##car _e121518121567_)))
                          (_tl121516121572_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121518121567_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121516121572_))
                          (let ((_e121521121575_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121516121572_))))
                            (let ((_hd121520121578_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121521121575_)))
                                  (_tl121519121580_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121521121575_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121520121578_))
                                  (let ((_e121524121583_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121520121578_))))
                                    (let ((_hd121523121586_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121524121583_)))
                                          (_tl121522121588_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121524121583_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121523121586_))
                                          (let ((_e121527121591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121523121586_))))
                                            (let ((_hd121526121594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121527121591_)))
                                                  (_tl121525121596_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121527121591_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121526121594_))
                                                  (let ((_e121530121599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121526121594_))))
                                                    (let ((_hd121529121602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121530121599_)))
                                                          (_tl121528121604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121530121599_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121528121604_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121525121596_))
                      (let ((_e121533121607_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121525121596_))))
                        (let ((_hd121532121610_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121533121607_)))
                              (_tl121531121612_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121533121607_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121532121610_))
                              (let ((_e121536121615_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121532121610_))))
                                (let ((_hd121535121618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121536121615_)))
                                      (_tl121534121620_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121536121615_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121534121620_))
                                      (let ((_e121539121623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121534121620_))))
                                        (let ((_hd121538121626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121539121623_)))
                                              (_tl121537121628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121539121623_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121538121626_))
                                              (let ((_e121542121631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121538121626_))))
                                                (let ((_hd121541121634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121542121631_)))
                                                      (_tl121540121636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121542121631_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121541121634_))
                                                      (let ((_e121545121639_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121541121634_))))
                (let ((_hd121544121642_
                       (let () (declare (not safe)) (##car _e121545121639_)))
                      (_tl121543121644_
                       (let () (declare (not safe)) (##cdr _e121545121639_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121544121642_))
                      (let ((_e121548121647_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121544121642_))))
                        (let ((_hd121547121650_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121548121647_)))
                              (_tl121546121652_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121548121647_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121546121652_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121543121644_))
                                  (let ((_e121551121655_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121543121644_))))
                                    (let ((_hd121550121658_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121551121655_)))
                                          (_tl121549121660_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121551121655_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121549121660_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121540121636_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121537121628_))
                                                  (let ((_e121554121663_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121537121628_))))
                                                    (let ((_hd121553121666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121554121663_)))
                                                          (_tl121552121668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121554121663_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121552121668_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121531121612_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121522121588_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121519121580_))
                              (let ((_e121557121671_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121519121580_))))
                                (let ((_hd121556121674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121557121671_)))
                                      (_tl121555121676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121557121671_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121555121676_))
                                      ((lambda (_L121679_
                                                _L121680_
                                                _L121681_
                                                _L121682_
                                                _L121683_)
                                         (let* ((_get-kws-id121723_
                                                 (let ((__tmp130876
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121495_)))
                                                       (__tmp130875
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130876
                                                    __tmp130875)))
                                                (_get-kws-id121725_
                                                 (let ((__tmp130877
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121196_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121723_
                                                    __tmp130877)))
                                                (_main-id121727_
                                                 (let ((__tmp130879
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121495_)))
                                                       (__tmp130878
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130879
                                                    __tmp130878)))
                                                (_main-id121729_
                                                 (let ((__tmp130880
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121196_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121727_
                                                    __tmp130880)))
                                                (_g130881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121725_)))
                                                (_g130882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121729_)))
                                                (_new-kw-dispatch121733_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121679_
                                                    'id:
                                                    _L121683_
                                                    'new-id:
                                                    _get-kws-id121725_)))
                                                (_new-get-kws121735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121680_
                                                    'id:
                                                    _L121682_
                                                    'new-id:
                                                    _main-id121729_))))
                                           (let ((__tmp130885
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121495_)))
                                                 (__tmp130884
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121725_)))
                                                 (__tmp130883
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121729_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130885
                                              '" => "
                                              __tmp130884
                                              '" => "
                                              __tmp130883))
                                           (let ((__tmp130890
                                                  (let ((__tmp130891
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128496128497_
                                                            _main-id121729_
                                                            _L121681_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130891
                                                          _lift1121373_)))
                                                 (__tmp130888
                                                  (let ((__tmp130889
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128496128497_
                                                            _get-kws-id121725_
                                                            _new-get-kws121735_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130889
                                                          _lift2121374_)))
                                                 (__tmp130886
                                                  (let ((__tmp130887
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128496128497_
                                                            _L121495_
                                                            _new-kw-dispatch121733_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130887
                                                          _bind121375_))))
                                             (declare (not safe))
                                             (_lp121370_
                                              _rest121395_
                                              __tmp130890
                                              __tmp130888
                                              __tmp130886))))
                                       _hd121556121674_
                                       _hd121553121666_
                                       _hd121550121658_
                                       _hd121547121650_
                                       _hd121529121602_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121509121562_ _g121510121565_)))))
                              (let ()
                                (declare (not safe))
                                (_g121509121562_ _g121510121565_)))
                          (let ()
                            (declare (not safe))
                            (_g121509121562_ _g121510121565_)))
                      (let ()
                        (declare (not safe))
                        (_g121509121562_ _g121510121565_)))
                  (let ()
                    (declare (not safe))
                    (_g121509121562_ _g121510121565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121509121562_
                                                     _g121510121565_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121509121562_
                                                 _g121510121565_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121509121562_
                                             _g121510121565_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121509121562_ _g121510121565_)))
                              (let ()
                                (declare (not safe))
                                (_g121509121562_ _g121510121565_)))))
                      (let ()
                        (declare (not safe))
                        (_g121509121562_ _g121510121565_)))))
              (let ()
                (declare (not safe))
                (_g121509121562_ _g121510121565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121509121562_
                                                 _g121510121565_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121509121562_ _g121510121565_)))))
                              (let ()
                                (declare (not safe))
                                (_g121509121562_ _g121510121565_)))))
                      (let ()
                        (declare (not safe))
                        (_g121509121562_ _g121510121565_)))
                  (let ()
                    (declare (not safe))
                    (_g121509121562_ _g121510121565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121509121562_
                                                     _g121510121565_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121509121562_
                                             _g121510121565_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121509121562_ _g121510121565_)))))
                          (let ()
                            (declare (not safe))
                            (_g121509121562_ _g121510121565_)))))
                  (let ()
                    (declare (not safe))
                    (_g121509121562_ _g121510121565_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121508121738_ _L121494_))))
                                         (___kont130338130339_
                                          (lambda (_L121445_ _L121446_)
                                            (let ((__tmp130892
                                                   (let ((__tmp130893
                                                          (let ((__tmp130894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121445_ '()))))
                    (declare (not safe))
                    (cons _L121446_ __tmp130894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130893
                                                           _bind121375_))))
                                              (declare (not safe))
                                              (_lp121370_
                                               _rest121395_
                                               _lift1121373_
                                               _lift2121374_
                                               __tmp130892)))))
                                     (let ((___match130361130362_
                                            (lambda (_e121405121470_
                                                     _hd121404121473_
                                                     _tl121403121475_
                                                     _e121408121478_
                                                     _hd121407121481_
                                                     _tl121406121483_
                                                     _e121411121486_
                                                     _hd121410121489_
                                                     _tl121409121491_)
                                              (let ((_L121494_
                                                     _hd121410121489_)
                                                    (_L121495_
                                                     _hd121407121481_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121495_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121494_)))
                                                    (___kont130336130337_
                                                     _L121494_
                                                     _L121495_)
                                                    (___kont130338130339_
                                                     _hd121410121489_
                                                     _hd121404121473_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130334130335_))
                                           (let ((_e121405121470_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130334130335_))))
                                             (let ((_tl121403121475_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121405121470_)))
                                                   (_hd121404121473_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121405121470_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121404121473_))
                                                   (let ((_e121408121478_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121404121473_))))
                                                     (let ((_tl121406121483_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121408121478_)))
                                                           (_hd121407121481_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121408121478_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121406121483_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121403121475_))
                       (let ((_e121411121486_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121403121475_))))
                         (let ((_tl121409121491_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121411121486_)))
                               (_hd121410121489_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121411121486_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121409121491_))
                               (___match130361130362_
                                _e121405121470_
                                _hd121404121473_
                                _tl121403121475_
                                _e121408121478_
                                _hd121407121481_
                                _tl121406121483_
                                _e121411121486_
                                _hd121410121489_
                                _tl121409121491_)
                               (let ()
                                 (declare (not safe))
                                 (_g121399121424_)))))
                       (let () (declare (not safe)) (_g121399121424_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121403121475_))
                       (let ((_e121419121437_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121403121475_))))
                         (let ((_tl121417121442_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121419121437_)))
                               (_hd121418121440_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121419121437_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121417121442_))
                               (___kont130338130339_
                                _hd121418121440_
                                _hd121404121473_)
                               (let ()
                                 (declare (not safe))
                                 (_g121399121424_)))))
                       (let () (declare (not safe)) (_g121399121424_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121403121475_))
                                                       (let ((_e121419121437_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121403121475_))))
                 (let ((_tl121417121442_
                        (let () (declare (not safe)) (##cdr _e121419121437_)))
                       (_hd121418121440_
                        (let () (declare (not safe)) (##car _e121419121437_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121417121442_))
                       (___kont130338130339_ _hd121418121440_ _hd121404121473_)
                       (let () (declare (not safe)) (_g121399121424_)))))
               (let () (declare (not safe)) (_g121399121424_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121399121424_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121376121384_))
                             (let ((_hd121381121747_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121376121384_)))
                                   (_tl121382121749_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121376121384_))))
                               (let* ((_hd121752_ _hd121381121747_)
                                      (_rest121754_ _tl121382121749_))
                                 (declare (not safe))
                                 (_K121380121744_ _rest121754_ _hd121752_)))
                             (let ()
                               (declare (not safe))
                               (_else121378121392_))))))))
          (let* ((___stx130378130379_ _stx121196_)
                 (_g121204121230_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130378130379_)))))
            (let ((___kont130380130381_
                   (lambda (_L121290_ _L121291_)
                     (let ((__tmp130896
                            (lambda ()
                              (if (let ((__tmp130923
                                         (let ((__tmp130924
                                                (lambda (_g121319121322_
                                                         _g121320121324_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121319121322_
                                                          _g121320121324_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130924
                                                   '()
                                                   _L121291_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?121200_
                                            __tmp130923))
                                  (let ((_g130910_
                                         (let ((__tmp130912
                                                (let ((__tmp130913
                                                       (lambda (_g121326121329_
                                                                _g121327121331_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121326121329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121327121331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130913
                                                          '()
                                                          _L121291_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings121201_
                                            __tmp130912))))
                                    (begin
                                      (let ((_g130911_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130910_)
                                                   (##vector-length _g130910_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130911_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130911_)))
                                      (let ((_lift1121334_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130910_ 0)))
                                            (_lift2121335_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130910_ 1)))
                                            (_hd121336_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130910_ 2))))
                                        (let* ((_expr121338_
                                                (let ((__tmp130914
                                                       (let ((__tmp130915
                                                              (let ((__tmp130916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121290_ '()))))
                        (declare (not safe))
                        (cons _hd121336_ __tmp130916))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130914
                                                   _stx121196_)))
                                               (_expr121340_
                                                (let ((__tmp130917
                                                       (let ((__tmp130918
                                                              (let ((__tmp130919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121338_ '()))))
                        (declare (not safe))
                        (cons _lift2121335_ __tmp130919))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130917
                                                   _stx121196_)))
                                               (_expr121342_
                                                (let ((__tmp130920
                                                       (let ((__tmp130921
                                                              (let ((__tmp130922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121340_ '()))))
                        (declare (not safe))
                        (cons _lift1121334_ __tmp130922))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130920
                                                   _stx121196_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self121195_
                                             _expr121342_))))))
                                  (let ((_g130897_
                                         (let ((__tmp130899
                                                (let ((__tmp130900
                                                       (lambda (_g121344121347_
                                                                _g121345121349_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121344121347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121345121349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130900
                                                          '()
                                                          _L121291_))))
                                           (declare (not safe))
                                           (_compile-bindings121199_
                                            __tmp130899))))
                                    (begin
                                      (let ((_g130898_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130897_)
                                                   (##vector-length _g130897_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130898_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130898_)))
                                      (let ((_lift1121352_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130897_ 0)))
                                            (_lift2121353_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130897_ 1)))
                                            (_hd121354_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130897_ 2))))
                                        (let* ((_body121356_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121195_
                                                   _L121290_)))
                                               (_expr121358_
                                                (let ((__tmp130901
                                                       (let ((__tmp130902
                                                              (let ((__tmp130903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121356_ '()))))
                        (declare (not safe))
                        (cons _hd121354_ __tmp130903))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130901
                                                   _stx121196_)))
                                               (_expr121360_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121353_))
                                                    _expr121358_
                                                    (let ((__tmp130904
                                                           (let ((__tmp130905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130906
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121358_ '()))))
                            (declare (not safe))
                            (cons _lift2121353_ __tmp130906))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130905))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130904 _stx121196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121362_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121352_))
                                                    _expr121360_
                                                    (let ((__tmp130907
                                                           (let ((__tmp130908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130909
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121360_ '()))))
                            (declare (not safe))
                            (cons _lift1121352_ __tmp130909))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130908))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130907 _stx121196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121362_)))))))
                           (__tmp130895
                            (let ((__obj130595
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130595)
                              __obj130595)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130896
                        gx#current-expander-context
                        __tmp130895))))
                  (___kont130384130385_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self121195_ _stx121196_)))))
              (let ((___match130405130406_
                     (lambda (_e121210121242_
                              _hd121209121245_
                              _tl121208121247_
                              _e121213121250_
                              _hd121212121253_
                              _tl121211121255_
                              ___splice130382130383_
                              _target121214121258_
                              _tl121216121260_)
                       (letrec ((_loop121217121263_
                                 (lambda (_hd121215121266_ _bind121221121268_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121215121266_))
                                       (let ((_e121218121271_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121215121266_))))
                                         (let ((_lp-tl121220121276_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121218121271_)))
                                               (_lp-hd121219121274_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121218121271_))))
                                           (let ((__tmp130927
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd121219121274_
                                                          _bind121221121268_))))
                                             (declare (not safe))
                                             (_loop121217121263_
                                              _lp-tl121220121276_
                                              __tmp130927))))
                                       (let ((_bind121222121279_
                                              (reverse _bind121221121268_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl121211121255_))
                                             (let ((_e121225121282_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl121211121255_))))
                                               (let ((_tl121223121287_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e121225121282_)))
                                                     (_hd121224121285_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e121225121282_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl121223121287_))
                                                     (let ((_L121290_
                                                            _hd121224121285_)
                                                           (_L121291_
                                                            _bind121222121279_))
                                                       (if (let ((__tmp130925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130926
                                 (lambda (_g121311121314_ _g121312121316_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121311121314_ _g121312121316_)))))
                            (declare (not safe))
                            (foldr1 __tmp130926 '() _L121291_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130925))
                   (___kont130380130381_ _L121290_ _L121291_)
                   (___kont130384130385_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130384130385_))))
                                             (___kont130384130385_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop121217121263_ _target121214121258_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130378130379_))
                    (let ((_e121210121242_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130378130379_))))
                      (let ((_tl121208121247_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121210121242_)))
                            (_hd121209121245_
                             (let ()
                               (declare (not safe))
                               (##car _e121210121242_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121208121247_))
                            (let ((_e121213121250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121208121247_))))
                              (let ((_tl121211121255_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121213121250_)))
                                    (_hd121212121253_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121213121250_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd121212121253_))
                                    (let ((___splice130382130383_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd121212121253_
                                              '0))))
                                      (let ((_tl121216121260_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130382130383_
                                                '1)))
                                            (_target121214121258_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130382130383_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121216121260_))
                                            (___match130405130406_
                                             _e121210121242_
                                             _hd121209121245_
                                             _tl121208121247_
                                             _e121213121250_
                                             _hd121212121253_
                                             _tl121211121255_
                                             ___splice130382130383_
                                             _target121214121258_
                                             _tl121216121260_)
                                            (___kont130384130385_))))
                                    (___kont130384130385_))))
                            (___kont130384130385_))))
                    (___kont130384130385_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120338_ _stx120339_)
        (letrec* ((_bind-e__128501128502_
                   (lambda (_id121179_ _expr121180_ _compile?121181_)
                     (let ((__tmp130930
                            (let ()
                              (declare (not safe))
                              (cons _id121179_ '())))
                           (__tmp130928
                            (let ((__tmp130929
                                   (if _compile?121181_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120338_
                                          _expr121180_))
                                       _expr121180_)))
                              (declare (not safe))
                              (cons __tmp130929 '()))))
                       (declare (not safe))
                       (cons __tmp130930 __tmp130928))))
                  (_bind-e__0__128503128504_
                   (lambda (_id121186_ _expr121187_)
                     (let ((_compile?121189_ '#t))
                       (declare (not safe))
                       (_bind-e__128501128502_
                        _id121186_
                        _expr121187_
                        _compile?121189_))))
                  (_bind-e120341_
                   (lambda _g130932_
                     (let ((_g130931_
                            (let ()
                              (declare (not safe))
                              (##length _g130932_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130931_ 2))
                              (apply (lambda (_id121186_ _expr121187_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128503128504_
                                          _id121186_
                                          _expr121187_)))
                                     _g130932_))
                             ((let () (declare (not safe)) (##fx= _g130931_ 3))
                              (apply (lambda (_id121191_
                                              _expr121192_
                                              _compile?121193_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128501128502_
                                          _id121191_
                                          _expr121192_
                                          _compile?121193_)))
                                     _g130932_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130932_))))))
                  (_compile-bindings120342_
                   (lambda (_rest120477_)
                     (let _lp120479_ ((_rest120481_ _rest120477_)
                                      (_bind120482_ '()))
                       (let* ((_rest120483120491_ _rest120481_)
                              (_else120485120499_
                               (lambda () (reverse _bind120482_)))
                              (_K120487121166_
                               (lambda (_rest120502_ _hd120503_)
                                 (let* ((___stx130428130429_ _hd120503_)
                                        (_g120508120555_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130428130429_)))))
                                   (let ((___kont130430130431_
                                          (lambda (_L121073_ _L121074_)
                                            (let* ((___stx130408130409_
                                                    _L121073_)
                                                   (_g121089121103_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130408130409_)))))
                                              (let ((___kont130410130411_
                                                     (lambda (_L121151_)
                                                       (let ((__tmp130933
                                                              (let ((__tmp130934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128501128502_
                                _L121074_
                                _L121073_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130934 _bind120482_))))
                 (declare (not safe))
                 (_lp120479_ _rest120502_ __tmp130933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130412130413_
                                                     (lambda (_L121116_)
                                                       (let ((_g130935_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120339_
                         _L121074_
                         _L121116_
                         '#t))))
                 (begin
                   (let ((_g130936_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130935_)
                                (##vector-length _g130935_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130936_ 3)))
                         (error "Context expects 3 values" _g130936_)))
                   (let ((_ids121126_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130935_ 0)))
                         (_impls121127_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130935_ 1)))
                         (_clauses121128_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130935_ 2))))
                     (let* ((_g130937_
                             (for-each gx#core-bind-runtime! _ids121126_))
                            (_xbind121131_
                             (map _bind-e120341_ _ids121126_ _impls121127_))
                            (_expr*121133_
                             (let ((__tmp130939
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121128_)))
                                   (__tmp130938
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130939
                                __tmp130938)))
                            (_bind*121135_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128501128502_
                                _L121074_
                                _expr*121133_
                                '#f))))
                       (let ((__tmp130941
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121074_)))
                             (__tmp130940
                              (map gxc#identifier-symbol _ids121126_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130941
                          '" => "
                          __tmp130940))
                       (let ((__tmp130942
                              (let ((__tmp130943
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120482_
                                               _xbind121131_))))
                                (declare (not safe))
                                (cons _bind*121135_ __tmp130943))))
                         (declare (not safe))
                         (_lp120479_ _rest120502_ __tmp130942)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130419130420_
                                                       (lambda (_e121094121143_
                                                                _hd121093121146_
                                                                _tl121092121148_)
                                                         (let ((_L121151_
                                                                _tl121092121148_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121151_))
                       (___kont130410130411_ _L121151_)
                       (___kont130412130413_ _tl121092121148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130408130409_))
                                                      (let ((_e121094121143_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130408130409_))))
                (let ((_tl121092121148_
                       (let () (declare (not safe)) (##cdr _e121094121143_)))
                      (_hd121093121146_
                       (let () (declare (not safe)) (##car _e121094121143_))))
                  (___match130419130420_
                   _e121094121143_
                   _hd121093121146_
                   _tl121092121148_)))
              (let () (declare (not safe)) (_g121089121103_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130432130433_
                                          (lambda (_L120901_ _L120902_)
                                            (let* ((_g120916120946_
                                                    (lambda (_g120917120943_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120917120943_))))
                                                   (_g120915121041_
                                                    (lambda (_g120917120949_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120917120949_))
                                                          (let ((_e120923120951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120917120949_))))
                    (let ((_hd120922120954_
                           (let ()
                             (declare (not safe))
                             (##car _e120923120951_)))
                          (_tl120921120956_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120923120951_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120921120956_))
                          (let ((_e120926120959_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120921120956_))))
                            (let ((_hd120925120962_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120926120959_)))
                                  (_tl120924120964_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120926120959_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120925120962_))
                                  (let ((_e120929120967_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120925120962_))))
                                    (let ((_hd120928120970_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120929120967_)))
                                          (_tl120927120972_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120929120967_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120928120970_))
                                          (let ((_e120932120975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120928120970_))))
                                            (let ((_hd120931120978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120932120975_)))
                                                  (_tl120930120980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120932120975_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120931120978_))
                                                  (let ((_e120935120983_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120931120978_))))
                                                    (let ((_hd120934120986_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120935120983_)))
                                                          (_tl120933120988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120935120983_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120933120988_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120930120980_))
                      (let ((_e120938120991_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120930120980_))))
                        (let ((_hd120937120994_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120938120991_)))
                              (_tl120936120996_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120938120991_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120936120996_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120927120972_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120924120964_))
                                      (let ((_e120941120999_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120924120964_))))
                                        (let ((_hd120940121002_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120941120999_)))
                                              (_tl120939121004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120941120999_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120939121004_))
                                              ((lambda (_L121007_
                                                        _L121008_
                                                        _L121009_)
                                                 (let* ((_lambda-id121033_
                                                         (let ((__tmp130945
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120902_)))
                       (__tmp130944 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130945 __tmp130944)))
                (_lambda-id121035_
                 (let ((__tmp130946
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120339_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121033_ __tmp130946)))
                (_g130947_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121035_)))
                (_new-case-lambda-expr121038_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121007_
                    'id:
                    _L121009_
                    'new-id:
                    _lambda-id121035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130949
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120902_)))
                                                         (__tmp130948
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121035_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130949
                                                      '" => "
                                                      __tmp130948))
                                                   (let ((__tmp130952
                                                          (let ((__tmp130953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128501128502_
                            _L120902_
                            _new-case-lambda-expr121038_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130953 _rest120502_)))
                 (__tmp130950
                  (let ((__tmp130951
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128503128504_
                            _lambda-id121035_
                            _L121008_))))
                    (declare (not safe))
                    (cons __tmp130951 _bind120482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120479_
                                                      __tmp130952
                                                      __tmp130950))))
                                               _hd120940121002_
                                               _hd120937120994_
                                               _hd120934120986_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120916120946_
                                                 _g120917120949_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120916120946_ _g120917120949_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120916120946_ _g120917120949_)))
                              (let ()
                                (declare (not safe))
                                (_g120916120946_ _g120917120949_)))))
                      (let ()
                        (declare (not safe))
                        (_g120916120946_ _g120917120949_)))
                  (let ()
                    (declare (not safe))
                    (_g120916120946_ _g120917120949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120916120946_
                                                     _g120917120949_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120916120946_
                                             _g120917120949_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120916120946_ _g120917120949_)))))
                          (let ()
                            (declare (not safe))
                            (_g120916120946_ _g120917120949_)))))
                  (let ()
                    (declare (not safe))
                    (_g120916120946_ _g120917120949_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120915121041_ _L120901_))))
                                         (___kont130434130435_
                                          (lambda (_L120625_ _L120626_)
                                            (let* ((_g120640120693_
                                                    (lambda (_g120641120690_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120641120690_))))
                                                   (_g120639120869_
                                                    (lambda (_g120641120696_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120641120696_))
                                                          (let ((_e120649120698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120641120696_))))
                    (let ((_hd120648120701_
                           (let ()
                             (declare (not safe))
                             (##car _e120649120698_)))
                          (_tl120647120703_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120649120698_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120647120703_))
                          (let ((_e120652120706_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120647120703_))))
                            (let ((_hd120651120709_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120652120706_)))
                                  (_tl120650120711_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120652120706_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120651120709_))
                                  (let ((_e120655120714_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120651120709_))))
                                    (let ((_hd120654120717_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120655120714_)))
                                          (_tl120653120719_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120655120714_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120654120717_))
                                          (let ((_e120658120722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120654120717_))))
                                            (let ((_hd120657120725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120658120722_)))
                                                  (_tl120656120727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120658120722_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120657120725_))
                                                  (let ((_e120661120730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120657120725_))))
                                                    (let ((_hd120660120733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120661120730_)))
                                                          (_tl120659120735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120661120730_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120659120735_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120656120727_))
                      (let ((_e120664120738_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120656120727_))))
                        (let ((_hd120663120741_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120664120738_)))
                              (_tl120662120743_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120664120738_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120663120741_))
                              (let ((_e120667120746_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120663120741_))))
                                (let ((_hd120666120749_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120667120746_)))
                                      (_tl120665120751_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120667120746_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120665120751_))
                                      (let ((_e120670120754_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120665120751_))))
                                        (let ((_hd120669120757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120670120754_)))
                                              (_tl120668120759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120670120754_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120669120757_))
                                              (let ((_e120673120762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120669120757_))))
                                                (let ((_hd120672120765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120673120762_)))
                                                      (_tl120671120767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120673120762_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120672120765_))
                                                      (let ((_e120676120770_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120672120765_))))
                (let ((_hd120675120773_
                       (let () (declare (not safe)) (##car _e120676120770_)))
                      (_tl120674120775_
                       (let () (declare (not safe)) (##cdr _e120676120770_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120675120773_))
                      (let ((_e120679120778_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120675120773_))))
                        (let ((_hd120678120781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120679120778_)))
                              (_tl120677120783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120679120778_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120677120783_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120674120775_))
                                  (let ((_e120682120786_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120674120775_))))
                                    (let ((_hd120681120789_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120682120786_)))
                                          (_tl120680120791_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120682120786_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120680120791_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120671120767_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120668120759_))
                                                  (let ((_e120685120794_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120668120759_))))
                                                    (let ((_hd120684120797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120685120794_)))
                                                          (_tl120683120799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120685120794_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120683120799_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120662120743_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120653120719_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120650120711_))
                              (let ((_e120688120802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120650120711_))))
                                (let ((_hd120687120805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120688120802_)))
                                      (_tl120686120807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120688120802_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120686120807_))
                                      ((lambda (_L120810_
                                                _L120811_
                                                _L120812_
                                                _L120813_
                                                _L120814_)
                                         (let* ((_get-kws-id120854_
                                                 (let ((__tmp130955
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120626_)))
                                                       (__tmp130954
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130955
                                                    __tmp130954)))
                                                (_get-kws-id120856_
                                                 (let ((__tmp130956
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120339_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120854_
                                                    __tmp130956)))
                                                (_main-id120858_
                                                 (let ((__tmp130958
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120626_)))
                                                       (__tmp130957
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130958
                                                    __tmp130957)))
                                                (_main-id120860_
                                                 (let ((__tmp130959
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120339_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120858_
                                                    __tmp130959)))
                                                (_g130960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120856_)))
                                                (_g130961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120860_)))
                                                (_new-kw-dispatch120864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120810_
                                                    'id:
                                                    _L120814_
                                                    'new-id:
                                                    _get-kws-id120856_)))
                                                (_new-get-kws120866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120811_
                                                    'id:
                                                    _L120813_
                                                    'new-id:
                                                    _main-id120860_))))
                                           (let ((__tmp130964
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120626_)))
                                                 (__tmp130963
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120856_)))
                                                 (__tmp130962
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120860_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130964
                                              '" => "
                                              __tmp130963
                                              '" => "
                                              __tmp130962))
                                           (let ((__tmp130965
                                                  (let ((__tmp130970
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128501128502_
                                                            _main-id120860_
                                                            _L120812_
                                                            '#f)))
                                                        (__tmp130966
                                                         (let ((__tmp130969
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128501128502_
                           _get-kws-id120856_
                           _new-get-kws120866_
                           '#f)))
                       (__tmp130967
                        (let ((__tmp130968
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128501128502_
                                  _L120626_
                                  _new-kw-dispatch120864_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp130968 _rest120502_))))
                   (declare (not safe))
                   (cons __tmp130969 __tmp130967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp130970
                                                          __tmp130966))))
                                             (declare (not safe))
                                             (_lp120479_
                                              __tmp130965
                                              _bind120482_))))
                                       _hd120687120805_
                                       _hd120684120797_
                                       _hd120681120789_
                                       _hd120678120781_
                                       _hd120660120733_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120640120693_ _g120641120696_)))))
                              (let ()
                                (declare (not safe))
                                (_g120640120693_ _g120641120696_)))
                          (let ()
                            (declare (not safe))
                            (_g120640120693_ _g120641120696_)))
                      (let ()
                        (declare (not safe))
                        (_g120640120693_ _g120641120696_)))
                  (let ()
                    (declare (not safe))
                    (_g120640120693_ _g120641120696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120640120693_
                                                     _g120641120696_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120640120693_
                                                 _g120641120696_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120640120693_
                                             _g120641120696_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120640120693_ _g120641120696_)))
                              (let ()
                                (declare (not safe))
                                (_g120640120693_ _g120641120696_)))))
                      (let ()
                        (declare (not safe))
                        (_g120640120693_ _g120641120696_)))))
              (let ()
                (declare (not safe))
                (_g120640120693_ _g120641120696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120640120693_
                                                 _g120641120696_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120640120693_ _g120641120696_)))))
                              (let ()
                                (declare (not safe))
                                (_g120640120693_ _g120641120696_)))))
                      (let ()
                        (declare (not safe))
                        (_g120640120693_ _g120641120696_)))
                  (let ()
                    (declare (not safe))
                    (_g120640120693_ _g120641120696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120640120693_
                                                     _g120641120696_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120640120693_
                                             _g120641120696_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120640120693_ _g120641120696_)))))
                          (let ()
                            (declare (not safe))
                            (_g120640120693_ _g120641120696_)))))
                  (let ()
                    (declare (not safe))
                    (_g120640120693_ _g120641120696_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120639120869_ _L120625_))))
                                         (___kont130436130437_
                                          (lambda (_L120576_ _L120577_)
                                            (let ((__tmp130971
                                                   (let ((__tmp130972
                                                          (let ((__tmp130973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130974
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120338_ _L120576_))))
                           (declare (not safe))
                           (cons __tmp130974 '()))))
                    (declare (not safe))
                    (cons _L120577_ __tmp130973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130972
                                                           _bind120482_))))
                                              (declare (not safe))
                                              (_lp120479_
                                               _rest120502_
                                               __tmp130971)))))
                                     (let* ((___match130503130504_
                                             (lambda (_e120536120601_
                                                      _hd120535120604_
                                                      _tl120534120606_
                                                      _e120539120609_
                                                      _hd120538120612_
                                                      _tl120537120614_
                                                      _e120542120617_
                                                      _hd120541120620_
                                                      _tl120540120622_)
                                               (let ((_L120625_
                                                      _hd120541120620_)
                                                     (_L120626_
                                                      _hd120538120612_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120626_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120625_)))
                                                     (___kont130434130435_
                                                      _L120625_
                                                      _L120626_)
                                                     (___kont130436130437_
                                                      _hd120541120620_
                                                      _hd120535120604_)))))
                                            (___match130481130482_
                                             (lambda (_e120525120877_
                                                      _hd120524120880_
                                                      _tl120523120882_
                                                      _e120528120885_
                                                      _hd120527120888_
                                                      _tl120526120890_
                                                      _e120531120893_
                                                      _hd120530120896_
                                                      _tl120529120898_)
                                               (let ((_L120901_
                                                      _hd120530120896_)
                                                     (_L120902_
                                                      _hd120527120888_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120902_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120901_)))
                                                     (___kont130432130433_
                                                      _L120901_
                                                      _L120902_)
                                                     (___match130503130504_
                                                      _e120525120877_
                                                      _hd120524120880_
                                                      _tl120523120882_
                                                      _e120528120885_
                                                      _hd120527120888_
                                                      _tl120526120890_
                                                      _e120531120893_
                                                      _hd120530120896_
                                                      _tl120529120898_)))))
                                            (___match130459130460_
                                             (lambda (_e120514121049_
                                                      _hd120513121052_
                                                      _tl120512121054_
                                                      _e120517121057_
                                                      _hd120516121060_
                                                      _tl120515121062_
                                                      _e120520121065_
                                                      _hd120519121068_
                                                      _tl120518121070_)
                                               (let ((_L121073_
                                                      _hd120519121068_)
                                                     (_L121074_
                                                      _hd120516121060_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121074_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121073_)))
                                                     (___kont130430130431_
                                                      _L121073_
                                                      _L121074_)
                                                     (___match130481130482_
                                                      _e120514121049_
                                                      _hd120513121052_
                                                      _tl120512121054_
                                                      _e120517121057_
                                                      _hd120516121060_
                                                      _tl120515121062_
                                                      _e120520121065_
                                                      _hd120519121068_
                                                      _tl120518121070_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130428130429_))
                                           (let ((_e120514121049_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130428130429_))))
                                             (let ((_tl120512121054_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120514121049_)))
                                                   (_hd120513121052_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120514121049_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120513121052_))
                                                   (let ((_e120517121057_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120513121052_))))
                                                     (let ((_tl120515121062_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120517121057_)))
                                                           (_hd120516121060_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120517121057_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120515121062_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120512121054_))
                       (let ((_e120520121065_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120512121054_))))
                         (let ((_tl120518121070_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120520121065_)))
                               (_hd120519121068_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120520121065_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120518121070_))
                               (___match130459130460_
                                _e120514121049_
                                _hd120513121052_
                                _tl120512121054_
                                _e120517121057_
                                _hd120516121060_
                                _tl120515121062_
                                _e120520121065_
                                _hd120519121068_
                                _tl120518121070_)
                               (let ()
                                 (declare (not safe))
                                 (_g120508120555_)))))
                       (let () (declare (not safe)) (_g120508120555_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120512121054_))
                       (let ((_e120550120568_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120512121054_))))
                         (let ((_tl120548120573_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120550120568_)))
                               (_hd120549120571_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120550120568_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120548120573_))
                               (___kont130436130437_
                                _hd120549120571_
                                _hd120513121052_)
                               (let ()
                                 (declare (not safe))
                                 (_g120508120555_)))))
                       (let () (declare (not safe)) (_g120508120555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120512121054_))
                                                       (let ((_e120550120568_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120512121054_))))
                 (let ((_tl120548120573_
                        (let () (declare (not safe)) (##cdr _e120550120568_)))
                       (_hd120549120571_
                        (let () (declare (not safe)) (##car _e120550120568_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120548120573_))
                       (___kont130436130437_ _hd120549120571_ _hd120513121052_)
                       (let () (declare (not safe)) (_g120508120555_)))))
               (let () (declare (not safe)) (_g120508120555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120508120555_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120483120491_))
                             (let ((_hd120488121169_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120483120491_)))
                                   (_tl120489121171_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120483120491_))))
                               (let* ((_hd121174_ _hd120488121169_)
                                      (_rest121176_ _tl120489121171_))
                                 (declare (not safe))
                                 (_K120487121166_ _rest121176_ _hd121174_)))
                             (let ()
                               (declare (not safe))
                               (_else120485120499_))))))))
          (let* ((___stx130520130521_ _stx120339_)
                 (_g120345120372_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130520130521_)))))
            (let ((___kont130522130523_
                   (lambda (_L120432_ _L120433_ _L120434_)
                     (let ((__tmp130976
                            (lambda ()
                              (let ((_hd120471_
                                     (let ((__tmp130977
                                            (let ((__tmp130978
                                                   (lambda (_g120463120466_
                                                            _g120464120468_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120463120466_
                                                             _g120464120468_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130978
                                                      '()
                                                      _L120433_))))
                                       (declare (not safe))
                                       (_compile-bindings120342_ __tmp130977)))
                                    (_body120472_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120338_
                                        _L120432_))))
                                (let ((__tmp130979
                                       (let ((__tmp130980
                                              (let ((__tmp130981
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120472_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120471_
                                                      __tmp130981))))
                                         (declare (not safe))
                                         (cons _L120434_ __tmp130980))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp130979
                                   _stx120339_)))))
                           (__tmp130975
                            (let ((__obj130596
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130596)
                              __obj130596)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130976
                        gx#current-expander-context
                        __tmp130975))))
                  (___kont130526130527_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120338_ _stx120339_)))))
              (let ((___match130547130548_
                     (lambda (_e120352120384_
                              _hd120351120387_
                              _tl120350120389_
                              _e120355120392_
                              _hd120354120395_
                              _tl120353120397_
                              ___splice130524130525_
                              _target120356120400_
                              _tl120358120402_)
                       (letrec ((_loop120359120405_
                                 (lambda (_hd120357120408_ _bind120363120410_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120357120408_))
                                       (let ((_e120360120413_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120357120408_))))
                                         (let ((_lp-tl120362120418_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120360120413_)))
                                               (_lp-hd120361120416_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120360120413_))))
                                           (let ((__tmp130984
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120361120416_
                                                          _bind120363120410_))))
                                             (declare (not safe))
                                             (_loop120359120405_
                                              _lp-tl120362120418_
                                              __tmp130984))))
                                       (let ((_bind120364120421_
                                              (reverse _bind120363120410_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120353120397_))
                                             (let ((_e120367120424_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120353120397_))))
                                               (let ((_tl120365120429_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120367120424_)))
                                                     (_hd120366120427_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120367120424_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120365120429_))
                                                     (let ((_L120432_
                                                            _hd120366120427_)
                                                           (_L120433_
                                                            _bind120364120421_)
                                                           (_L120434_
                                                            _hd120351120387_))
                                                       (if (let ((__tmp130982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130983
                                 (lambda (_g120455120458_ _g120456120460_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120455120458_ _g120456120460_)))))
                            (declare (not safe))
                            (foldr1 __tmp130983 '() _L120433_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130982))
                   (___kont130522130523_ _L120432_ _L120433_ _L120434_)
                   (___kont130526130527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130526130527_))))
                                             (___kont130526130527_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120359120405_ _target120356120400_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130520130521_))
                    (let ((_e120352120384_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130520130521_))))
                      (let ((_tl120350120389_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120352120384_)))
                            (_hd120351120387_
                             (let ()
                               (declare (not safe))
                               (##car _e120352120384_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120350120389_))
                            (let ((_e120355120392_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120350120389_))))
                              (let ((_tl120353120397_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120355120392_)))
                                    (_hd120354120395_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120355120392_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120354120395_))
                                    (let ((___splice130524130525_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120354120395_
                                              '0))))
                                      (let ((_tl120358120402_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130524130525_
                                                '1)))
                                            (_target120356120400_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130524130525_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120358120402_))
                                            (___match130547130548_
                                             _e120352120384_
                                             _hd120351120387_
                                             _tl120350120389_
                                             _e120355120392_
                                             _hd120354120395_
                                             _tl120353120397_
                                             ___splice130524130525_
                                             _target120356120400_
                                             _tl120358120402_)
                                            (___kont130526130527_))))
                                    (___kont130526130527_))))
                            (___kont130526130527_))))
                    (___kont130526130527_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind120256_)
        (let* ((___stx130550130551_ _bind120256_)
               (_g120259120276_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130550130551_)))))
          (let ((___kont130552130553_
                 (lambda (_L120312_ _L120313_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120313_))
                       (let ((_$e120329_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120312_))))
                         (if _$e120329_
                             _$e120329_
                             (let ((_$e120332_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120312_))))
                               (if _$e120332_
                                   _$e120332_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120312_))))))
                       '#f)))
                (___kont130554130555_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130550130551_))
                (let ((_e120265120288_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130550130551_))))
                  (let ((_tl120263120293_
                         (let () (declare (not safe)) (##cdr _e120265120288_)))
                        (_hd120264120291_
                         (let ()
                           (declare (not safe))
                           (##car _e120265120288_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120264120291_))
                        (let ((_e120268120296_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120264120291_))))
                          (let ((_tl120266120301_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120268120296_)))
                                (_hd120267120299_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120268120296_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120266120301_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120263120293_))
                                    (let ((_e120271120304_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120263120293_))))
                                      (let ((_tl120269120309_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120271120304_)))
                                            (_hd120270120307_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120271120304_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120269120309_))
                                            (___kont130552130553_
                                             _hd120270120307_
                                             _hd120267120299_)
                                            (___kont130554130555_))))
                                    (___kont130554130555_))
                                (___kont130554130555_))))
                        (___kont130554130555_))))
                (___kont130554130555_))))))))
