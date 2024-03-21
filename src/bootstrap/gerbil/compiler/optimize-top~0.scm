(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710954838)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130632 (list gxc#::void::t))
            (__tmp130630
             (let ((__tmp130631
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130631 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130632
         '()
         __tmp130630
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128526_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128526_)))
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
      (lambda (_stx128518_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128521_
                (let ((__obj130613
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130613))
               (__tmp130633
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128521_ _stx128518_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130633
           gxc#current-compile-method
           _self128521_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130636 (list gxc#::false::t))
            (__tmp130634
             (let ((__tmp130635
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130635 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130636
         '()
         __tmp130634
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128515_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128515_)))
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
      (lambda (_stx128507_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128510_
                (let ((__obj130615
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130615))
               (__tmp130637
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128510_ _stx128507_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130637
           gxc#current-compile-method
           _self128510_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130640 (list gxc#::void::t))
            (__tmp130638
             (let ((__tmp130639
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130639 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130640
         '()
         __tmp130638
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128504_
        (apply make-instance gxc#::collect-type-info::t _$args128504_)))
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
      (lambda (_stx128496_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128499_
                (let ((__obj130617
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130617))
               (__tmp130641
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128499_ _stx128496_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130641
           gxc#current-compile-method
           _self128499_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130644 (list gxc#::false::t))
            (__tmp130642
             (let ((__tmp130643
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130643 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130644
         '()
         __tmp130642
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128493_
        (apply make-instance gxc#::basic-expression-type::t _$args128493_)))
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
      (lambda (_stx128485_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128488_
                (let ((__obj130619
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130619))
               (__tmp130645
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128488_ _stx128485_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130645
           gxc#current-compile-method
           _self128488_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130648 (list gxc#::basic-xform::t))
            (__tmp130646
             (let ((__tmp130647
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130647 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130648
         '()
         __tmp130646
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128482_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128482_)))
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
      (lambda (_stx128474_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128477_
                (let ((__obj130621
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130621))
               (__tmp130649
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128477_ _stx128474_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130649
           gxc#current-compile-method
           _self128477_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128376_ _stx128377_)
        (let* ((___stx128539128540_ _stx128377_)
               (_g128380128400_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128539128540_)))))
          (let ((___kont128541128542_
                 (lambda (_L128444_ _L128445_)
                   (let ((_sym128463_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128445_))))
                     (if (let ((__tmp130650 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130650 _sym128463_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128463_))
                         (let ((_type128464128466_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128444_))))
                           (if _type128464128466_
                               (let ((_type128469_ _type128464128466_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128463_
                                  _type128469_))
                               '#f))))))
                (___kont128543128544_ (lambda () '#!void)))
            (let ((___match128572128573_
                   (lambda (_e128386128412_
                            _hd128385128415_
                            _tl128384128417_
                            _e128389128420_
                            _hd128388128423_
                            _tl128387128425_
                            _e128392128428_
                            _hd128391128431_
                            _tl128390128433_
                            _e128395128436_
                            _hd128394128439_
                            _tl128393128441_)
                     (let ((_L128444_ _hd128394128439_)
                           (_L128445_ _hd128391128431_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128445_))
                           (___kont128541128542_ _L128444_ _L128445_)
                           (___kont128543128544_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128539128540_))
                  (let ((_e128386128412_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128539128540_))))
                    (let ((_tl128384128417_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128386128412_)))
                          (_hd128385128415_
                           (let ()
                             (declare (not safe))
                             (##car _e128386128412_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128384128417_))
                          (let ((_e128389128420_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128384128417_))))
                            (let ((_tl128387128425_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128389128420_)))
                                  (_hd128388128423_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128389128420_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128388128423_))
                                  (let ((_e128392128428_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128388128423_))))
                                    (let ((_tl128390128433_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128392128428_)))
                                          (_hd128391128431_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128392128428_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128390128433_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128387128425_))
                                              (let ((_e128395128436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128387128425_))))
                                                (let ((_tl128393128441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128395128436_)))
                                                      (_hd128394128439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128395128436_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128393128441_))
                                                      (___match128572128573_
                                                       _e128386128412_
                                                       _hd128385128415_
                                                       _tl128384128417_
                                                       _e128389128420_
                                                       _hd128388128423_
                                                       _tl128387128425_
                                                       _e128392128428_
                                                       _hd128391128431_
                                                       _tl128390128433_
                                                       _e128395128436_
                                                       _hd128394128439_
                                                       _tl128393128441_)
                                                      (___kont128543128544_))))
                                              (___kont128543128544_))
                                          (___kont128543128544_))))
                                  (___kont128543128544_))))
                          (___kont128543128544_))))
                  (___kont128543128544_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self128231_ _stx128232_)
        (let* ((___stx128575128576_ _stx128232_)
               (_g128235128266_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128575128576_)))))
          (let ((___kont128577128578_
                 (lambda (_L128348_ _L128349_)
                   (let ((_sym128365_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128349_))))
                     (if (let ((__tmp130651 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130651 _sym128365_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128365_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128365_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128365_))
                             (let ((_type128366128368_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128348_))))
                               (if _type128366128368_
                                   (let ((_type128371_ _type128366128368_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128365_
                                      _type128371_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self128231_ _L128348_)))))
                (___kont128579128580_
                 (lambda (_L128295_ _L128296_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self128231_ _L128295_)))))
            (let ((___match128608128609_
                   (lambda (_e128241128316_
                            _hd128240128319_
                            _tl128239128321_
                            _e128244128324_
                            _hd128243128327_
                            _tl128242128329_
                            _e128247128332_
                            _hd128246128335_
                            _tl128245128337_
                            _e128250128340_
                            _hd128249128343_
                            _tl128248128345_)
                     (let ((_L128348_ _hd128249128343_)
                           (_L128349_ _hd128246128335_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128349_))
                           (___kont128577128578_ _L128348_ _L128349_)
                           (___kont128579128580_
                            _hd128249128343_
                            _hd128243128327_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128575128576_))
                  (let ((_e128241128316_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128575128576_))))
                    (let ((_tl128239128321_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128241128316_)))
                          (_hd128240128319_
                           (let ()
                             (declare (not safe))
                             (##car _e128241128316_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128239128321_))
                          (let ((_e128244128324_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128239128321_))))
                            (let ((_tl128242128329_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128244128324_)))
                                  (_hd128243128327_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128244128324_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128243128327_))
                                  (let ((_e128247128332_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128243128327_))))
                                    (let ((_tl128245128337_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128247128332_)))
                                          (_hd128246128335_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128247128332_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128245128337_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128242128329_))
                                              (let ((_e128250128340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128242128329_))))
                                                (let ((_tl128248128345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128250128340_)))
                                                      (_hd128249128343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128250128340_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128248128345_))
                                                      (___match128608128609_
                                                       _e128241128316_
                                                       _hd128240128319_
                                                       _tl128239128321_
                                                       _e128244128324_
                                                       _hd128243128327_
                                                       _tl128242128329_
                                                       _e128247128332_
                                                       _hd128246128335_
                                                       _tl128245128337_
                                                       _e128250128340_
                                                       _hd128249128343_
                                                       _tl128248128345_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128235128266_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128235128266_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128242128329_))
                                              (let ((_e128261128287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128242128329_))))
                                                (let ((_tl128259128292_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128261128287_)))
                                                      (_hd128260128290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128261128287_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128259128292_))
                                                      (___kont128579128580_
                                                       _hd128260128290_
                                                       _hd128243128327_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128235128266_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128235128266_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl128242128329_))
                                      (let ((_e128261128287_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl128242128329_))))
                                        (let ((_tl128259128292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e128261128287_)))
                                              (_hd128260128290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e128261128287_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl128259128292_))
                                              (___kont128579128580_
                                               _hd128260128290_
                                               _hd128243128327_)
                                              (let ()
                                                (declare (not safe))
                                                (_g128235128266_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g128235128266_))))))
                          (let () (declare (not safe)) (_g128235128266_)))))
                  (let () (declare (not safe)) (_g128235128266_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self128011_ _stx128012_)
        (letrec ((_collect-e128014_
                  (lambda (_hd128175_ _expr128176_)
                    (let* ((___stx128631128632_ _hd128175_)
                           (_g128179128189_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128631128632_)))))
                      (let ((___kont128633128634_
                             (lambda (_L128209_)
                               (let ((_sym128220_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L128209_))))
                                 (if (let ((__tmp130652
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130652 _sym128220_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym128220_))
                                     (let ((_type128221128223_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr128176_))))
                                       (if _type128221128223_
                                           (let ((_type128226_
                                                  _type128221128223_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym128220_
                                              _type128226_
                                              '#t))
                                           '#f))))))
                            (___kont128635128636_ (lambda () '#!void)))
                        (let ((___match128644128645_
                               (lambda (_e128184128201_
                                        _hd128183128204_
                                        _tl128182128206_)
                                 (let ((_L128209_ _hd128183128204_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L128209_))
                                       (___kont128633128634_ _L128209_)
                                       (___kont128635128636_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128631128632_))
                              (let ((_e128184128201_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128631128632_))))
                                (let ((_tl128182128206_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128184128201_)))
                                      (_hd128183128204_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128184128201_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl128182128206_))
                                      (___match128644128645_
                                       _e128184128201_
                                       _hd128183128204_
                                       _tl128182128206_)
                                      (___kont128635128636_))))
                              (___kont128635128636_))))))))
          (let* ((_g128016128051_
                  (lambda (_g128017128048_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g128017128048_))))
                 (_g128015128172_
                  (lambda (_g128017128054_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g128017128054_))
                        (let ((_e128023128056_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g128017128054_))))
                          (let ((_hd128022128059_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128023128056_)))
                                (_tl128021128061_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128023128056_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128021128061_))
                                (let ((_e128026128064_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128021128061_))))
                                  (let ((_hd128025128067_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128026128064_)))
                                        (_tl128024128069_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128026128064_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd128025128067_))
                                        (let ((_g130653_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd128025128067_
                                                  '0))))
                                          (begin
                                            (let ((_g130654_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130653_)
                                                         (##vector-length
                                                          _g130653_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130654_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130654_)))
                                            (let ((_target128027128072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130653_
                                                      0)))
                                                  (_tl128029128074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130653_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128029128074_))
                                                  (letrec ((_loop128030128077_
                                                            (lambda (_hd128028128080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr128034128082_
                             _hd128035128084_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd128028128080_))
                          (let ((_e128031128087_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd128028128080_))))
                            (let ((_lp-hd128032128090_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128031128087_)))
                                  (_lp-tl128033128092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128031128087_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd128032128090_))
                                  (let ((_e128040128095_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd128032128090_))))
                                    (let ((_hd128039128098_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128040128095_)))
                                          (_tl128038128100_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128040128095_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl128038128100_))
                                          (let ((_e128043128103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl128038128100_))))
                                            (let ((_hd128042128106_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128043128103_)))
                                                  (_tl128041128108_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128043128103_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128041128108_))
                                                  (let ((__tmp130659
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd128042128106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr128034128082_)))
                (__tmp130658
                 (let ()
                   (declare (not safe))
                   (cons _hd128039128098_ _hd128035128084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop128030128077_
                                                     _lp-tl128033128092_
                                                     __tmp130659
                                                     __tmp130658))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128016128051_
                                                     _g128017128054_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g128016128051_
                                             _g128017128054_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g128016128051_ _g128017128054_)))))
                          (let ((_expr128036128111_
                                 (reverse _expr128034128082_))
                                (_hd128037128113_ (reverse _hd128035128084_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128024128069_))
                                (let ((_e128046128116_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128024128069_))))
                                  (let ((_hd128045128119_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128046128116_)))
                                        (_tl128044128121_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128046128116_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128044128121_))
                                        ((lambda (_L128124_
                                                  _L128125_
                                                  _L128126_)
                                           (for-each
                                            _collect-e128014_
                                            (let ((__tmp130655
                                                   (lambda (_g128146128149_
                                                            _g128147128151_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128146128149_
                                                             _g128147128151_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130655
                                                      '()
                                                      _L128126_))
                                            (let ((__tmp130656
                                                   (lambda (_g128153128156_
                                                            _g128154128158_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128153128156_
                                                             _g128154128158_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130656
                                                      '()
                                                      _L128125_)))
                                           (for-each
                                            (lambda (_g128160128162_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self128011_
                                                 _g128160128162_)))
                                            (let ((__tmp130657
                                                   (lambda (_g128164128167_
                                                            _g128165128169_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128164128167_
                                                             _g128165128169_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130657
                                                      '()
                                                      _L128125_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self128011_
                                              _L128124_)))
                                         _hd128045128119_
                                         _expr128036128111_
                                         _hd128037128113_)
                                        (let ()
                                          (declare (not safe))
                                          (_g128016128051_ _g128017128054_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128016128051_ _g128017128054_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop128030128077_
                                                       _target128027128072_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128016128051_
                                                     _g128017128054_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g128016128051_ _g128017128054_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128016128051_ _g128017128054_)))))
                        (let ()
                          (declare (not safe))
                          (_g128016128051_ _g128017128054_))))))
            (declare (not safe))
            (_g128015128172_ _stx128012_)))))
    (define gxc#collect-type-call%
      (lambda (_self127498_ _stx127499_)
        (let* ((___stx128647128648_ _stx127499_)
               (_g127503127618_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128647128648_)))))
          (let ((___kont128649128650_
                 (lambda (_L127961_ _L127962_ _L127963_ _L127964_ _L127965_)
                   (let ((__tmp130663
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127964_)))
                         (__tmp130662
                          (let () (declare (not safe)) (gx#stx-e _L127963_)))
                         (__tmp130661
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127962_)))
                         (__tmp130660
                          (let () (declare (not safe)) (gx#stx-e _L127961_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130663
                      __tmp130662
                      __tmp130661
                      __tmp130660))))
                (___kont128651128652_
                 (lambda (_L127789_ _L127790_ _L127791_ _L127792_)
                   (let ((__tmp130666
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127791_)))
                         (__tmp130665
                          (let () (declare (not safe)) (gx#stx-e _L127790_)))
                         (__tmp130664
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127789_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130666
                      __tmp130665
                      __tmp130664
                      '#f))))
                (___kont128653128654_
                 (lambda (_L127655_)
                   (for-each
                    (lambda (_g127668127670_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127498_ _g127668127670_)))
                    (let ((__tmp130667
                           (lambda (_g127672127675_ _g127673127677_)
                             (let ()
                               (declare (not safe))
                               (cons _g127672127675_ _g127673127677_)))))
                      (declare (not safe))
                      (foldr1 __tmp130667 '() _L127655_))))))
            (let* ((___match128904128905_
                    (lambda (_e127604127623_
                             _hd127603127626_
                             _tl127602127628_
                             ___splice128655128656_
                             _target127605127631_
                             _tl127607127633_)
                      (letrec ((_loop127608127636_
                                (lambda (_hd127606127639_ _expr127612127641_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127606127639_))
                                      (let ((_e127609127644_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127606127639_))))
                                        (let ((_lp-tl127611127649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127609127644_)))
                                              (_lp-hd127610127647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127609127644_))))
                                          (let ((__tmp130668
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127610127647_
                                                         _expr127612127641_))))
                                            (declare (not safe))
                                            (_loop127608127636_
                                             _lp-tl127611127649_
                                             __tmp130668))))
                                      (let ((_expr127613127652_
                                             (reverse _expr127612127641_)))
                                        (___kont128653128654_
                                         _expr127613127652_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127608127636_ _target127605127631_ '())))))
                   (___match128784128785_
                    (lambda (_e127512127833_
                             _hd127511127836_
                             _tl127510127838_
                             _e127515127841_
                             _hd127514127844_
                             _tl127513127846_
                             _e127518127849_
                             _hd127517127852_
                             _tl127516127854_
                             _e127521127857_
                             _hd127520127860_
                             _tl127519127862_
                             _e127524127865_
                             _hd127523127868_
                             _tl127522127870_
                             _e127527127873_
                             _hd127526127876_
                             _tl127525127878_
                             _e127530127881_
                             _hd127529127884_
                             _tl127528127886_
                             _e127533127889_
                             _hd127532127892_
                             _tl127531127894_
                             _e127536127897_
                             _hd127535127900_
                             _tl127534127902_
                             _e127539127905_
                             _hd127538127908_
                             _tl127537127910_
                             _e127542127913_
                             _hd127541127916_
                             _tl127540127918_
                             _e127545127921_
                             _hd127544127924_
                             _tl127543127926_
                             _e127548127929_
                             _hd127547127932_
                             _tl127546127934_
                             _e127551127937_
                             _hd127550127940_
                             _tl127549127942_
                             _e127554127945_
                             _hd127553127948_
                             _tl127552127950_
                             _e127557127953_
                             _hd127556127956_
                             _tl127555127958_)
                      (let ((_L127961_ _hd127556127956_)
                            (_L127962_ _hd127547127932_)
                            (_L127963_ _hd127538127908_)
                            (_L127964_ _hd127529127884_)
                            (_L127965_ _hd127520127860_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127965_
                               'bind-method!))
                            (___kont128649128650_
                             _L127961_
                             _L127962_
                             _L127963_
                             _L127964_
                             _L127965_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127510127838_))
                                (let ((___splice128655128656_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127510127838_
                                          '0))))
                                  (let ((_tl127607127633_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128655128656_
                                            '1)))
                                        (_target127605127631_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128655128656_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127607127633_))
                                        (___match128904128905_
                                         _e127512127833_
                                         _hd127511127836_
                                         _tl127510127838_
                                         ___splice128655128656_
                                         _target127605127631_
                                         _tl127607127633_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127503127618_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127503127618_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128647128648_))
                  (let ((_e127512127833_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128647128648_))))
                    (let ((_tl127510127838_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127512127833_)))
                          (_hd127511127836_
                           (let ()
                             (declare (not safe))
                             (##car _e127512127833_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127510127838_))
                          (let ((_e127515127841_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127510127838_))))
                            (let ((_tl127513127846_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127515127841_)))
                                  (_hd127514127844_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127515127841_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127514127844_))
                                  (let ((_e127518127849_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127514127844_))))
                                    (let ((_tl127516127854_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127518127849_)))
                                          (_hd127517127852_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127518127849_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127517127852_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127517127852_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127516127854_))
                                                  (let ((_e127521127857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127516127854_))))
                                                    (let ((_tl127519127862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127521127857_)))
                                                          (_hd127520127860_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127521127857_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127519127862_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127513127846_))
                      (let ((_e127524127865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127513127846_))))
                        (let ((_tl127522127870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127524127865_)))
                              (_hd127523127868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127524127865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127523127868_))
                              (let ((_e127527127873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127523127868_))))
                                (let ((_tl127525127878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127527127873_)))
                                      (_hd127526127876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127527127873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127526127876_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127526127876_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127525127878_))
                                              (let ((_e127530127881_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127525127878_))))
                                                (let ((_tl127528127886_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127530127881_)))
                                                      (_hd127529127884_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127530127881_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127528127886_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127522127870_))
                                                          (let ((_e127533127889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127522127870_))))
                    (let ((_tl127531127894_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127533127889_)))
                          (_hd127532127892_
                           (let ()
                             (declare (not safe))
                             (##car _e127533127889_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127532127892_))
                          (let ((_e127536127897_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127532127892_))))
                            (let ((_tl127534127902_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127536127897_)))
                                  (_hd127535127900_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127536127897_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127535127900_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127535127900_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127534127902_))
                                          (let ((_e127539127905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127534127902_))))
                                            (let ((_tl127537127910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127539127905_)))
                                                  (_hd127538127908_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127539127905_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127537127910_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127531127894_))
                                                      (let ((_e127542127913_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127531127894_))))
                (let ((_tl127540127918_
                       (let () (declare (not safe)) (##cdr _e127542127913_)))
                      (_hd127541127916_
                       (let () (declare (not safe)) (##car _e127542127913_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127541127916_))
                      (let ((_e127545127921_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127541127916_))))
                        (let ((_tl127543127926_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127545127921_)))
                              (_hd127544127924_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127545127921_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127544127924_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127544127924_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127543127926_))
                                      (let ((_e127548127929_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127543127926_))))
                                        (let ((_tl127546127934_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127548127929_)))
                                              (_hd127547127932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127548127929_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127546127934_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127540127918_))
                                                  (let ((_e127551127937_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127540127918_))))
                                                    (let ((_tl127549127942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127551127937_)))
                                                          (_hd127550127940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127551127937_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127550127940_))
                                                          (let ((_e127554127945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127550127940_))))
                    (let ((_tl127552127950_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127554127945_)))
                          (_hd127553127948_
                           (let ()
                             (declare (not safe))
                             (##car _e127554127945_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127553127948_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127553127948_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127552127950_))
                                  (let ((_e127557127953_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127552127950_))))
                                    (let ((_tl127555127958_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127557127953_)))
                                          (_hd127556127956_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127557127953_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127555127958_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127549127942_))
                                              (___match128784128785_
                                               _e127512127833_
                                               _hd127511127836_
                                               _tl127510127838_
                                               _e127515127841_
                                               _hd127514127844_
                                               _tl127513127846_
                                               _e127518127849_
                                               _hd127517127852_
                                               _tl127516127854_
                                               _e127521127857_
                                               _hd127520127860_
                                               _tl127519127862_
                                               _e127524127865_
                                               _hd127523127868_
                                               _tl127522127870_
                                               _e127527127873_
                                               _hd127526127876_
                                               _tl127525127878_
                                               _e127530127881_
                                               _hd127529127884_
                                               _tl127528127886_
                                               _e127533127889_
                                               _hd127532127892_
                                               _tl127531127894_
                                               _e127536127897_
                                               _hd127535127900_
                                               _tl127534127902_
                                               _e127539127905_
                                               _hd127538127908_
                                               _tl127537127910_
                                               _e127542127913_
                                               _hd127541127916_
                                               _tl127540127918_
                                               _e127545127921_
                                               _hd127544127924_
                                               _tl127543127926_
                                               _e127548127929_
                                               _hd127547127932_
                                               _tl127546127934_
                                               _e127551127937_
                                               _hd127550127940_
                                               _tl127549127942_
                                               _e127554127945_
                                               _hd127553127948_
                                               _tl127552127950_
                                               _e127557127953_
                                               _hd127556127956_
                                               _tl127555127958_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127510127838_))
                                                  (let ((___splice128655128656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127510127838_
                                                            '0))))
                                                    (let ((_tl127607127633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '1)))
                                                          (_target127605127631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127607127633_))
                                                          (___match128904128905_
                                                           _e127512127833_
                                                           _hd127511127836_
                                                           _tl127510127838_
                                                           ___splice128655128656_
                                                           _target127605127631_
                                                           _tl127607127633_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127503127618_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127503127618_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127510127838_))
                                              (let ((___splice128655128656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127510127838_
                                                        '0))))
                                                (let ((_tl127607127633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '1)))
                                                      (_target127605127631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127607127633_))
                                                      (___match128904128905_
                                                       _e127512127833_
                                                       _hd127511127836_
                                                       _tl127510127838_
                                                       ___splice128655128656_
                                                       _target127605127631_
                                                       _tl127607127633_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127503127618_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127510127838_))
                                      (let ((___splice128655128656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127510127838_
                                                '0))))
                                        (let ((_tl127607127633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '1)))
                                              (_target127605127631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127607127633_))
                                              (___match128904128905_
                                               _e127512127833_
                                               _hd127511127836_
                                               _tl127510127838_
                                               ___splice128655128656_
                                               _target127605127631_
                                               _tl127607127633_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127503127618_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127510127838_))
                                  (let ((___splice128655128656_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127510127838_
                                            '0))))
                                    (let ((_tl127607127633_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128655128656_
                                              '1)))
                                          (_target127605127631_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128655128656_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127607127633_))
                                          (___match128904128905_
                                           _e127512127833_
                                           _hd127511127836_
                                           _tl127510127838_
                                           ___splice128655128656_
                                           _target127605127631_
                                           _tl127607127633_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127503127618_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127503127618_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127510127838_))
                              (let ((___splice128655128656_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127510127838_
                                        '0))))
                                (let ((_tl127607127633_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128655128656_
                                          '1)))
                                      (_target127605127631_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128655128656_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127607127633_))
                                      (___match128904128905_
                                       _e127512127833_
                                       _hd127511127836_
                                       _tl127510127838_
                                       ___splice128655128656_
                                       _target127605127631_
                                       _tl127607127633_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127503127618_)))))
                              (let ()
                                (declare (not safe))
                                (_g127503127618_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127510127838_))
                      (let ((___splice128655128656_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127510127838_ '0))))
                        (let ((_tl127607127633_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '1)))
                              (_target127605127631_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127607127633_))
                              (___match128904128905_
                               _e127512127833_
                               _hd127511127836_
                               _tl127510127838_
                               ___splice128655128656_
                               _target127605127631_
                               _tl127607127633_)
                              (let ()
                                (declare (not safe))
                                (_g127503127618_)))))
                      (let () (declare (not safe)) (_g127503127618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127540127918_))
                                                      (if (let ((__tmp130669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130669 'bind-method!))
                  (let ((_L127789_ _hd127547127932_)
                        (_L127790_ _hd127538127908_)
                        (_L127791_ _hd127529127884_)
                        (_L127792_ _hd127520127860_))
                    (___kont128651128652_
                     _L127789_
                     _L127790_
                     _L127791_
                     _L127792_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127510127838_))
                      (let ((___splice128655128656_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127510127838_ '0))))
                        (let ((_tl127607127633_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '1)))
                              (_target127605127631_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127607127633_))
                              (___match128904128905_
                               _e127512127833_
                               _hd127511127836_
                               _tl127510127838_
                               ___splice128655128656_
                               _target127605127631_
                               _tl127607127633_)
                              (let ()
                                (declare (not safe))
                                (_g127503127618_)))))
                      (let () (declare (not safe)) (_g127503127618_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127510127838_))
                  (let ((___splice128655128656_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127510127838_ '0))))
                    (let ((_tl127607127633_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128655128656_ '1)))
                          (_target127605127631_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128655128656_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127607127633_))
                          (___match128904128905_
                           _e127512127833_
                           _hd127511127836_
                           _tl127510127838_
                           ___splice128655128656_
                           _target127605127631_
                           _tl127607127633_)
                          (let () (declare (not safe)) (_g127503127618_)))))
                  (let () (declare (not safe)) (_g127503127618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127510127838_))
                                                  (let ((___splice128655128656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127510127838_
                                                            '0))))
                                                    (let ((_tl127607127633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '1)))
                                                          (_target127605127631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127607127633_))
                                                          (___match128904128905_
                                                           _e127512127833_
                                                           _hd127511127836_
                                                           _tl127510127838_
                                                           ___splice128655128656_
                                                           _target127605127631_
                                                           _tl127607127633_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127503127618_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127503127618_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127510127838_))
                                          (let ((___splice128655128656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127510127838_
                                                    '0))))
                                            (let ((_tl127607127633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128655128656_
                                                      '1)))
                                                  (_target127605127631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128655128656_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127607127633_))
                                                  (___match128904128905_
                                                   _e127512127833_
                                                   _hd127511127836_
                                                   _tl127510127838_
                                                   ___splice128655128656_
                                                   _target127605127631_
                                                   _tl127607127633_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127503127618_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127503127618_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127510127838_))
                                      (let ((___splice128655128656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127510127838_
                                                '0))))
                                        (let ((_tl127607127633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '1)))
                                              (_target127605127631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127607127633_))
                                              (___match128904128905_
                                               _e127512127833_
                                               _hd127511127836_
                                               _tl127510127838_
                                               ___splice128655128656_
                                               _target127605127631_
                                               _tl127607127633_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127503127618_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127510127838_))
                                  (let ((___splice128655128656_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127510127838_
                                            '0))))
                                    (let ((_tl127607127633_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128655128656_
                                              '1)))
                                          (_target127605127631_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128655128656_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127607127633_))
                                          (___match128904128905_
                                           _e127512127833_
                                           _hd127511127836_
                                           _tl127510127838_
                                           ___splice128655128656_
                                           _target127605127631_
                                           _tl127607127633_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127503127618_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127503127618_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127510127838_))
                          (let ((___splice128655128656_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127510127838_
                                    '0))))
                            (let ((_tl127607127633_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128655128656_ '1)))
                                  (_target127605127631_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128655128656_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127607127633_))
                                  (___match128904128905_
                                   _e127512127833_
                                   _hd127511127836_
                                   _tl127510127838_
                                   ___splice128655128656_
                                   _target127605127631_
                                   _tl127607127633_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127503127618_)))))
                          (let () (declare (not safe)) (_g127503127618_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127510127838_))
                  (let ((___splice128655128656_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127510127838_ '0))))
                    (let ((_tl127607127633_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128655128656_ '1)))
                          (_target127605127631_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128655128656_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127607127633_))
                          (___match128904128905_
                           _e127512127833_
                           _hd127511127836_
                           _tl127510127838_
                           ___splice128655128656_
                           _target127605127631_
                           _tl127607127633_)
                          (let () (declare (not safe)) (_g127503127618_)))))
                  (let () (declare (not safe)) (_g127503127618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127510127838_))
                                                      (let ((___splice128655128656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127510127838_ '0))))
                (let ((_tl127607127633_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128655128656_ '1)))
                      (_target127605127631_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128655128656_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127607127633_))
                      (___match128904128905_
                       _e127512127833_
                       _hd127511127836_
                       _tl127510127838_
                       ___splice128655128656_
                       _target127605127631_
                       _tl127607127633_)
                      (let () (declare (not safe)) (_g127503127618_)))))
              (let () (declare (not safe)) (_g127503127618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127510127838_))
                                              (let ((___splice128655128656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127510127838_
                                                        '0))))
                                                (let ((_tl127607127633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '1)))
                                                      (_target127605127631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127607127633_))
                                                      (___match128904128905_
                                                       _e127512127833_
                                                       _hd127511127836_
                                                       _tl127510127838_
                                                       ___splice128655128656_
                                                       _target127605127631_
                                                       _tl127607127633_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127503127618_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127510127838_))
                                          (let ((___splice128655128656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127510127838_
                                                    '0))))
                                            (let ((_tl127607127633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128655128656_
                                                      '1)))
                                                  (_target127605127631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128655128656_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127607127633_))
                                                  (___match128904128905_
                                                   _e127512127833_
                                                   _hd127511127836_
                                                   _tl127510127838_
                                                   ___splice128655128656_
                                                   _target127605127631_
                                                   _tl127607127633_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127503127618_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127503127618_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127510127838_))
                                      (let ((___splice128655128656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127510127838_
                                                '0))))
                                        (let ((_tl127607127633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '1)))
                                              (_target127605127631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127607127633_))
                                              (___match128904128905_
                                               _e127512127833_
                                               _hd127511127836_
                                               _tl127510127838_
                                               ___splice128655128656_
                                               _target127605127631_
                                               _tl127607127633_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127503127618_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127510127838_))
                              (let ((___splice128655128656_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127510127838_
                                        '0))))
                                (let ((_tl127607127633_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128655128656_
                                          '1)))
                                      (_target127605127631_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128655128656_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127607127633_))
                                      (___match128904128905_
                                       _e127512127833_
                                       _hd127511127836_
                                       _tl127510127838_
                                       ___splice128655128656_
                                       _target127605127631_
                                       _tl127607127633_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127503127618_)))))
                              (let ()
                                (declare (not safe))
                                (_g127503127618_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127510127838_))
                      (let ((___splice128655128656_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127510127838_ '0))))
                        (let ((_tl127607127633_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '1)))
                              (_target127605127631_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127607127633_))
                              (___match128904128905_
                               _e127512127833_
                               _hd127511127836_
                               _tl127510127838_
                               ___splice128655128656_
                               _target127605127631_
                               _tl127607127633_)
                              (let ()
                                (declare (not safe))
                                (_g127503127618_)))))
                      (let () (declare (not safe)) (_g127503127618_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127510127838_))
                  (let ((___splice128655128656_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127510127838_ '0))))
                    (let ((_tl127607127633_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128655128656_ '1)))
                          (_target127605127631_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128655128656_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127607127633_))
                          (___match128904128905_
                           _e127512127833_
                           _hd127511127836_
                           _tl127510127838_
                           ___splice128655128656_
                           _target127605127631_
                           _tl127607127633_)
                          (let () (declare (not safe)) (_g127503127618_)))))
                  (let () (declare (not safe)) (_g127503127618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127510127838_))
                                                  (let ((___splice128655128656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127510127838_
                                                            '0))))
                                                    (let ((_tl127607127633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '1)))
                                                          (_target127605127631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127607127633_))
                                                          (___match128904128905_
                                                           _e127512127833_
                                                           _hd127511127836_
                                                           _tl127510127838_
                                                           ___splice128655128656_
                                                           _target127605127631_
                                                           _tl127607127633_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127503127618_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127503127618_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127510127838_))
                                              (let ((___splice128655128656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127510127838_
                                                        '0))))
                                                (let ((_tl127607127633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '1)))
                                                      (_target127605127631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127607127633_))
                                                      (___match128904128905_
                                                       _e127512127833_
                                                       _hd127511127836_
                                                       _tl127510127838_
                                                       ___splice128655128656_
                                                       _target127605127631_
                                                       _tl127607127633_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127503127618_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127510127838_))
                                          (let ((___splice128655128656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127510127838_
                                                    '0))))
                                            (let ((_tl127607127633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128655128656_
                                                      '1)))
                                                  (_target127605127631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128655128656_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127607127633_))
                                                  (___match128904128905_
                                                   _e127512127833_
                                                   _hd127511127836_
                                                   _tl127510127838_
                                                   ___splice128655128656_
                                                   _target127605127631_
                                                   _tl127607127633_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127503127618_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127503127618_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127510127838_))
                                  (let ((___splice128655128656_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127510127838_
                                            '0))))
                                    (let ((_tl127607127633_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128655128656_
                                              '1)))
                                          (_target127605127631_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128655128656_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127607127633_))
                                          (___match128904128905_
                                           _e127512127833_
                                           _hd127511127836_
                                           _tl127510127838_
                                           ___splice128655128656_
                                           _target127605127631_
                                           _tl127607127633_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127503127618_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127503127618_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127510127838_))
                          (let ((___splice128655128656_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127510127838_
                                    '0))))
                            (let ((_tl127607127633_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128655128656_ '1)))
                                  (_target127605127631_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128655128656_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127607127633_))
                                  (___match128904128905_
                                   _e127512127833_
                                   _hd127511127836_
                                   _tl127510127838_
                                   ___splice128655128656_
                                   _target127605127631_
                                   _tl127607127633_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127503127618_)))))
                          (let () (declare (not safe)) (_g127503127618_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127510127838_))
                      (let ((___splice128655128656_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127510127838_ '0))))
                        (let ((_tl127607127633_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '1)))
                              (_target127605127631_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128655128656_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127607127633_))
                              (___match128904128905_
                               _e127512127833_
                               _hd127511127836_
                               _tl127510127838_
                               ___splice128655128656_
                               _target127605127631_
                               _tl127607127633_)
                              (let ()
                                (declare (not safe))
                                (_g127503127618_)))))
                      (let () (declare (not safe)) (_g127503127618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127510127838_))
                                                      (let ((___splice128655128656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127510127838_ '0))))
                (let ((_tl127607127633_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128655128656_ '1)))
                      (_target127605127631_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128655128656_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127607127633_))
                      (___match128904128905_
                       _e127512127833_
                       _hd127511127836_
                       _tl127510127838_
                       ___splice128655128656_
                       _target127605127631_
                       _tl127607127633_)
                      (let () (declare (not safe)) (_g127503127618_)))))
              (let () (declare (not safe)) (_g127503127618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127510127838_))
                                                  (let ((___splice128655128656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127510127838_
                                                            '0))))
                                                    (let ((_tl127607127633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '1)))
                                                          (_target127605127631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128655128656_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127607127633_))
                                                          (___match128904128905_
                                                           _e127512127833_
                                                           _hd127511127836_
                                                           _tl127510127838_
                                                           ___splice128655128656_
                                                           _target127605127631_
                                                           _tl127607127633_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127503127618_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127503127618_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127510127838_))
                                              (let ((___splice128655128656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127510127838_
                                                        '0))))
                                                (let ((_tl127607127633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '1)))
                                                      (_target127605127631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128655128656_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127607127633_))
                                                      (___match128904128905_
                                                       _e127512127833_
                                                       _hd127511127836_
                                                       _tl127510127838_
                                                       ___splice128655128656_
                                                       _target127605127631_
                                                       _tl127607127633_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127503127618_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127510127838_))
                                      (let ((___splice128655128656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127510127838_
                                                '0))))
                                        (let ((_tl127607127633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '1)))
                                              (_target127605127631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128655128656_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127607127633_))
                                              (___match128904128905_
                                               _e127512127833_
                                               _hd127511127836_
                                               _tl127510127838_
                                               ___splice128655128656_
                                               _target127605127631_
                                               _tl127607127633_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127503127618_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127503127618_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127510127838_))
                              (let ((___splice128655128656_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127510127838_
                                        '0))))
                                (let ((_tl127607127633_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128655128656_
                                          '1)))
                                      (_target127605127631_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128655128656_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127607127633_))
                                      (___match128904128905_
                                       _e127512127833_
                                       _hd127511127836_
                                       _tl127510127838_
                                       ___splice128655128656_
                                       _target127605127631_
                                       _tl127607127633_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127503127618_)))))
                              (let ()
                                (declare (not safe))
                                (_g127503127618_))))))
                  (let () (declare (not safe)) (_g127503127618_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127437_ _stx127438_)
        (let* ((___stx128907128908_ _stx127438_)
               (_g127441127454_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128907128908_)))))
          (let ((___kont128909128910_
                 (lambda (_L127482_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127437_ _L127482_))))
                (___kont128911128912_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128907128908_))
                (let ((_e127446127466_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128907128908_))))
                  (let ((_tl127444127471_
                         (let () (declare (not safe)) (##cdr _e127446127466_)))
                        (_hd127445127469_
                         (let ()
                           (declare (not safe))
                           (##car _e127446127466_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127444127471_))
                        (let ((_e127449127474_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127444127471_))))
                          (let ((_tl127447127479_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127449127474_)))
                                (_hd127448127477_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127449127474_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127447127479_))
                                (___kont128909128910_ _hd127448127477_)
                                (___kont128911128912_))))
                        (___kont128911128912_))))
                (___kont128911128912_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self127316_ _stx127317_)
        (let* ((_g127319127336_
                (lambda (_g127320127333_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127320127333_))))
               (_g127318127434_
                (lambda (_g127320127339_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127320127339_))
                      (let ((_e127325127341_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127320127339_))))
                        (let ((_hd127324127344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127325127341_)))
                              (_tl127323127346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127325127341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127323127346_))
                              (let ((_e127328127349_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127323127346_))))
                                (let ((_hd127327127352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127328127349_)))
                                      (_tl127326127354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127328127349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127326127354_))
                                      (let ((_e127331127357_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127326127354_))))
                                        (let ((_hd127330127360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127331127357_)))
                                              (_tl127329127362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127331127357_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127329127362_))
                                              ((lambda (_L127365_ _L127366_)
                                                 (let* ((___stx128929128930_
                                                         _L127366_)
                                                        (_g127382127393_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128929128930_)))))
                                                   (let ((___kont128931128932_
                                                          (lambda (_L127413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127414_)
                    (let ((_$e127426_
                           (let ((__tmp130670
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127414_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130670))))
                      (if _$e127426_
                          ((lambda (_type-e127429_)
                             (_type-e127429_ _stx127317_ _L127366_))
                           _$e127426_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self127316_ _L127365_))))))
                 (___kont128933128934_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self127316_ _L127365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128940128941_
                                                            (lambda (_e127388127405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127387127408_
                             _tl127386127410_)
                      (let ((_L127413_ _tl127386127410_)
                            (_L127414_ _hd127387127408_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127414_))
                            (___kont128931128932_ _L127413_ _L127414_)
                            (___kont128933128934_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128929128930_))
                   (let ((_e127388127405_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128929128930_))))
                     (let ((_tl127386127410_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127388127405_)))
                           (_hd127387127408_
                            (let ()
                              (declare (not safe))
                              (##car _e127388127405_))))
                       (___match128940128941_
                        _e127388127405_
                        _hd127387127408_
                        _tl127386127410_)))
                   (___kont128933128934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127330127360_
                                               _hd127327127352_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127319127336_
                                                 _g127320127339_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127319127336_ _g127320127339_)))))
                              (let ()
                                (declare (not safe))
                                (_g127319127336_ _g127320127339_)))))
                      (let ()
                        (declare (not safe))
                        (_g127319127336_ _g127320127339_))))))
          (declare (not safe))
          (_g127318127434_ _stx127317_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx127160_ _ann127161_)
        (let* ((_g127163127200_
                (lambda (_g127164127197_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127164127197_))))
               (_g127162127313_
                (lambda (_g127164127203_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127164127203_))
                      (let ((_e127174127205_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127164127203_))))
                        (let ((_hd127173127208_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127174127205_)))
                              (_tl127172127210_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127174127205_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127172127210_))
                              (let ((_e127177127213_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127172127210_))))
                                (let ((_hd127176127216_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127177127213_)))
                                      (_tl127175127218_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127177127213_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127175127218_))
                                      (let ((_e127180127221_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127175127218_))))
                                        (let ((_hd127179127224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127180127221_)))
                                              (_tl127178127226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127180127221_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127178127226_))
                                              (let ((_e127183127229_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127178127226_))))
                                                (let ((_hd127182127232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127183127229_)))
                                                      (_tl127181127234_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127183127229_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127181127234_))
                                                      (let ((_e127186127237_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127181127234_))))
                (let ((_hd127185127240_
                       (let () (declare (not safe)) (##car _e127186127237_)))
                      (_tl127184127242_
                       (let () (declare (not safe)) (##cdr _e127186127237_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl127184127242_))
                      (let ((_e127189127245_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127184127242_))))
                        (let ((_hd127188127248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127189127245_)))
                              (_tl127187127250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127189127245_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127187127250_))
                              (let ((_e127192127253_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127187127250_))))
                                (let ((_hd127191127256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127192127253_)))
                                      (_tl127190127258_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127192127253_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127190127258_))
                                      (let ((_e127195127261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127190127258_))))
                                        (let ((_hd127194127264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127195127261_)))
                                              (_tl127193127266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127195127261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127193127266_))
                                              ((lambda (_L127269_
                                                        _L127270_
                                                        _L127271_
                                                        _L127272_
                                                        _L127273_
                                                        _L127274_
                                                        _L127275_)
                                                 (let ((_type-id127305_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127275_)))
                                                       (_super127306_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127274_)))
                                                       (_slots127307_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L127273_)))
                                                       (_ctor-method127308_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127272_)))
                                                       (_struct?127309_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127271_)))
                                                       (_final?127310_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127270_)))
                                                       (_metaclass127311_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L127269_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L127269_))
                                                            '#f)))
                                                   (let ((__obj130622
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
                                                      __obj130622
                                                      _type-id127305_
                                                      _super127306_
                                                      _slots127307_
                                                      _ctor-method127308_
                                                      _struct?127309_
                                                      _final?127310_
                                                      '#f
                                                      _metaclass127311_)
                                                     __obj130622)))
                                               _hd127194127264_
                                               _hd127191127256_
                                               _hd127188127248_
                                               _hd127185127240_
                                               _hd127182127232_
                                               _hd127179127224_
                                               _hd127176127216_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127163127200_
                                                 _g127164127203_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127163127200_ _g127164127203_)))))
                              (let ()
                                (declare (not safe))
                                (_g127163127200_ _g127164127203_)))))
                      (let ()
                        (declare (not safe))
                        (_g127163127200_ _g127164127203_)))))
              (let ()
                (declare (not safe))
                (_g127163127200_ _g127164127203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g127163127200_
                                                 _g127164127203_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127163127200_ _g127164127203_)))))
                              (let ()
                                (declare (not safe))
                                (_g127163127200_ _g127164127203_)))))
                      (let ()
                        (declare (not safe))
                        (_g127163127200_ _g127164127203_))))))
          (declare (not safe))
          (_g127162127313_ _ann127161_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx127089_ _ann127090_)
        (let* ((_g127092127109_
                (lambda (_g127093127106_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127093127106_))))
               (_g127091127157_
                (lambda (_g127093127112_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127093127112_))
                      (let ((_e127098127114_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127093127112_))))
                        (let ((_hd127097127117_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127098127114_)))
                              (_tl127096127119_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127098127114_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127096127119_))
                              (let ((_e127101127122_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127096127119_))))
                                (let ((_hd127100127125_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127101127122_)))
                                      (_tl127099127127_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127101127122_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127099127127_))
                                      (let ((_e127104127130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127099127127_))))
                                        (let ((_hd127103127133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127104127130_)))
                                              (_tl127102127135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127104127130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127102127135_))
                                              ((lambda (_L127138_ _L127139_)
                                                 (let ((_type-id127154_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127139_)))
                                                       (_super127155_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127138_))))
                                                   (let ((__obj130623
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
                                                      __obj130623
                                                      _type-id127154_
                                                      _super127155_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130623)))
                                               _hd127103127133_
                                               _hd127100127125_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127092127109_
                                                 _g127093127112_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127092127109_ _g127093127112_)))))
                              (let ()
                                (declare (not safe))
                                (_g127092127109_ _g127093127112_)))))
                      (let ()
                        (declare (not safe))
                        (_g127092127109_ _g127093127112_))))))
          (declare (not safe))
          (_g127091127157_ _ann127090_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx127037_ _ann127038_)
        (let* ((_g127040127053_
                (lambda (_g127041127050_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127041127050_))))
               (_g127039127086_
                (lambda (_g127041127056_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127041127056_))
                      (let ((_e127045127058_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127041127056_))))
                        (let ((_hd127044127061_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127045127058_)))
                              (_tl127043127063_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127045127058_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127043127063_))
                              (let ((_e127048127066_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127043127063_))))
                                (let ((_hd127047127069_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127048127066_)))
                                      (_tl127046127071_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127048127066_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127046127071_))
                                      ((lambda (_L127074_)
                                         (let ((__tmp130671
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127074_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130671)))
                                       _hd127047127069_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127040127053_ _g127041127056_)))))
                              (let ()
                                (declare (not safe))
                                (_g127040127053_ _g127041127056_)))))
                      (let ()
                        (declare (not safe))
                        (_g127040127053_ _g127041127056_))))))
          (declare (not safe))
          (_g127039127086_ _ann127038_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx126985_ _ann126986_)
        (let* ((_g126988127001_
                (lambda (_g126989126998_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126989126998_))))
               (_g126987127034_
                (lambda (_g126989127004_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126989127004_))
                      (let ((_e126993127006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126989127004_))))
                        (let ((_hd126992127009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126993127006_)))
                              (_tl126991127011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126993127006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126991127011_))
                              (let ((_e126996127014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126991127011_))))
                                (let ((_hd126995127017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126996127014_)))
                                      (_tl126994127019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126996127014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126994127019_))
                                      ((lambda (_L127022_)
                                         (let ((__tmp130672
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127022_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130672)))
                                       _hd126995127017_)
                                      (let ()
                                        (declare (not safe))
                                        (_g126988127001_ _g126989127004_)))))
                              (let ()
                                (declare (not safe))
                                (_g126988127001_ _g126989127004_)))))
                      (let ()
                        (declare (not safe))
                        (_g126988127001_ _g126989127004_))))))
          (declare (not safe))
          (_g126987127034_ _ann126986_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126901_ _ann126902_)
        (let* ((_g126904126925_
                (lambda (_g126905126922_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126905126922_))))
               (_g126903126982_
                (lambda (_g126905126928_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126905126928_))
                      (let ((_e126911126930_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126905126928_))))
                        (let ((_hd126910126933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126911126930_)))
                              (_tl126909126935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126911126930_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126909126935_))
                              (let ((_e126914126938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126909126935_))))
                                (let ((_hd126913126941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126914126938_)))
                                      (_tl126912126943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126914126938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126912126943_))
                                      (let ((_e126917126946_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126912126943_))))
                                        (let ((_hd126916126949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126917126946_)))
                                              (_tl126915126951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126917126946_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126915126951_))
                                              (let ((_e126920126954_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126915126951_))))
                                                (let ((_hd126919126957_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126920126954_)))
                                                      (_tl126918126959_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126920126954_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126918126959_))
                                                      ((lambda (_L126962_
                                                                _L126963_
                                                                _L126964_)
                                                         (let ((__tmp130675
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126964_)))
                       (__tmp130674
                        (let () (declare (not safe)) (gx#stx-e _L126963_)))
                       (__tmp130673
                        (let () (declare (not safe)) (gx#stx-e _L126962_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130675
                    __tmp130674
                    __tmp130673)))
               _hd126919126957_
               _hd126916126949_
               _hd126913126941_)
              (let ()
                (declare (not safe))
                (_g126904126925_ _g126905126928_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126904126925_
                                                 _g126905126928_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126904126925_ _g126905126928_)))))
                              (let ()
                                (declare (not safe))
                                (_g126904126925_ _g126905126928_)))))
                      (let ()
                        (declare (not safe))
                        (_g126904126925_ _g126905126928_))))))
          (declare (not safe))
          (_g126903126982_ _ann126902_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126817_ _ann126818_)
        (let* ((_g126820126841_
                (lambda (_g126821126838_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126821126838_))))
               (_g126819126898_
                (lambda (_g126821126844_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126821126844_))
                      (let ((_e126827126846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126821126844_))))
                        (let ((_hd126826126849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126827126846_)))
                              (_tl126825126851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126827126846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126825126851_))
                              (let ((_e126830126854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126825126851_))))
                                (let ((_hd126829126857_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126830126854_)))
                                      (_tl126828126859_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126830126854_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126828126859_))
                                      (let ((_e126833126862_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126828126859_))))
                                        (let ((_hd126832126865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126833126862_)))
                                              (_tl126831126867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126833126862_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126831126867_))
                                              (let ((_e126836126870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126831126867_))))
                                                (let ((_hd126835126873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126836126870_)))
                                                      (_tl126834126875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126836126870_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126834126875_))
                                                      ((lambda (_L126878_
                                                                _L126879_
                                                                _L126880_)
                                                         (let ((__tmp130678
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126880_)))
                       (__tmp130677
                        (let () (declare (not safe)) (gx#stx-e _L126879_)))
                       (__tmp130676
                        (let () (declare (not safe)) (gx#stx-e _L126878_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130678
                    __tmp130677
                    __tmp130676)))
               _hd126835126873_
               _hd126832126865_
               _hd126829126857_)
              (let ()
                (declare (not safe))
                (_g126820126841_ _g126821126844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126820126841_
                                                 _g126821126844_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126820126841_ _g126821126844_)))))
                              (let ()
                                (declare (not safe))
                                (_g126820126841_ _g126821126844_)))))
                      (let ()
                        (declare (not safe))
                        (_g126820126841_ _g126821126844_))))))
          (declare (not safe))
          (_g126819126898_ _ann126818_))))
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
      (lambda (_self125936_ _stx125937_)
        (let* ((___stx128943128944_ _stx125937_)
               (_g125943126139_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128943128944_)))))
          (let ((___kont128945128946_
                 (lambda (_L126805_)
                   (let ((__obj130624
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130624
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126805_))
                      '#f)
                     __obj130624)))
                (___kont128947128948_
                 (lambda (_L126732_
                          _L126733_
                          _L126734_
                          _L126735_
                          _L126736_
                          _L126737_)
                   (let* ((_tab126787_
                           (let () (declare (not safe)) (gx#stx-e _L126734_)))
                          (_keys126789_
                           (if _tab126787_
                               (filter values (vector->list _tab126787_))
                               '#f)))
                     (let ((__tmp130679
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126733_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126789_
                        __tmp130679)))))
                (___kont128949128950_
                 (lambda (_L126465_
                          _L126466_
                          _L126467_
                          _L126468_
                          _L126469_
                          _L126470_
                          _L126471_
                          _L126472_
                          _L126473_
                          _L126474_)
                   (let ((__tmp130681
                          (map gx#stx-e
                               (let ((__tmp130682
                                      (lambda (_g126567126570_ _g126568126572_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126567126570_
                                                _g126568126572_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130682 '() _L126467_))))
                         (__tmp130680
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126471_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130681
                      __tmp130680))))
                (___kont128953128954_
                 (lambda (_L126175_)
                   (let ((__obj130625
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130625
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126175_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L126175_)))
                     __obj130625)))
                (___kont128955128956_
                 (lambda (_L126152_)
                   (let ((__obj130626
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130626
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126152_))
                      '#f)
                     __obj130626))))
            (let* ((___match129262129263_
                    (lambda (_e126130126167_ _hd126129126170_ _tl126128126172_)
                      (let ((_L126175_ _tl126128126172_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L126175_))
                            (___kont128953128954_ _L126175_)
                            (___kont128955128956_ _tl126128126172_)))))
                   (___match129256129257_
                    (lambda (_e126024126189_
                             _hd126023126192_
                             _tl126022126194_
                             _e126027126197_
                             _hd126026126200_
                             _tl126025126202_
                             _e126030126205_
                             _hd126029126208_
                             _tl126028126210_
                             _e126033126213_
                             _hd126032126216_
                             _tl126031126218_
                             _e126036126221_
                             _hd126035126224_
                             _tl126034126226_
                             _e126039126229_
                             _hd126038126232_
                             _tl126037126234_
                             _e126042126237_
                             _hd126041126240_
                             _tl126040126242_
                             _e126045126245_
                             _hd126044126248_
                             _tl126043126250_
                             _e126048126253_
                             _hd126047126256_
                             _tl126046126258_
                             _e126051126261_
                             _hd126050126264_
                             _tl126049126266_
                             _e126054126269_
                             _hd126053126272_
                             _tl126052126274_
                             _e126057126277_
                             _hd126056126280_
                             _tl126055126282_
                             _e126060126285_
                             _hd126059126288_
                             _tl126058126290_
                             _e126063126293_
                             _hd126062126296_
                             _tl126061126298_
                             ___splice128951128952_
                             _target126064126301_
                             _tl126066126303_
                             _e126081126306_
                             _hd126080126309_
                             _tl126079126311_
                             _e126084126314_
                             _hd126083126317_
                             _tl126082126319_
                             _e126087126322_
                             _hd126086126325_
                             _tl126085126327_)
                      (letrec ((_loop126067126330_
                                (lambda (_hd126065126333_
                                         _-absent-value126071126335_
                                         _key126072126337_
                                         _-xkwvar126073126339_
                                         _-hash-ref126074126341_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126065126333_))
                                      (let ((_e126068126344_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126065126333_))))
                                        (let ((_lp-tl126070126349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126068126344_)))
                                              (_lp-hd126069126347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126068126344_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd126069126347_))
                                              (let ((_e126090126352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd126069126347_))))
                                                (let ((_tl126088126357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126090126352_)))
                                                      (_hd126089126355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126090126352_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd126089126355_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd126089126355_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126088126357_))
                      (let ((_e126093126360_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126088126357_))))
                        (let ((_tl126091126365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126093126360_)))
                              (_hd126092126363_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126093126360_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126092126363_))
                              (let ((_e126096126368_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126092126363_))))
                                (let ((_tl126094126373_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126096126368_)))
                                      (_hd126095126371_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126096126368_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126095126371_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126095126371_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126094126373_))
                                              (let ((_e126099126376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126094126373_))))
                                                (let ((_tl126097126381_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126099126376_)))
                                                      (_hd126098126379_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126099126376_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126097126381_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126091126365_))
                                                          (let ((_e126102126384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126091126365_))))
                    (let ((_tl126100126389_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126102126384_)))
                          (_hd126101126387_
                           (let ()
                             (declare (not safe))
                             (##car _e126102126384_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126101126387_))
                          (let ((_e126105126392_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126101126387_))))
                            (let ((_tl126103126397_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126105126392_)))
                                  (_hd126104126395_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126105126392_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126104126395_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126104126395_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126103126397_))
                                          (let ((_e126108126400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126103126397_))))
                                            (let ((_tl126106126405_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126108126400_)))
                                                  (_hd126107126403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126108126400_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126106126405_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126100126389_))
                                                      (let ((_e126111126408_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126100126389_))))
                (let ((_tl126109126413_
                       (let () (declare (not safe)) (##cdr _e126111126408_)))
                      (_hd126110126411_
                       (let () (declare (not safe)) (##car _e126111126408_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126110126411_))
                      (let ((_e126114126416_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126110126411_))))
                        (let ((_tl126112126421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126114126416_)))
                              (_hd126113126419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126114126416_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126113126419_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd126113126419_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126112126421_))
                                      (let ((_e126117126424_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126112126421_))))
                                        (let ((_tl126115126429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126117126424_)))
                                              (_hd126116126427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126117126424_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126115126429_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126109126413_))
                                                  (let ((_e126120126432_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126109126413_))))
                                                    (let ((_tl126118126437_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126120126432_)))
                                                          (_hd126119126435_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126120126432_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126119126435_))
                                                          (let ((_e126123126440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126119126435_))))
                    (let ((_tl126121126445_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126123126440_)))
                          (_hd126122126443_
                           (let ()
                             (declare (not safe))
                             (##car _e126123126440_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126122126443_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126122126443_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126121126445_))
                                  (let ((_e126126126448_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126121126445_))))
                                    (let ((_tl126124126453_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126126126448_)))
                                          (_hd126125126451_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126126126448_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126124126453_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126118126437_))
                                              (let ((__tmp130697
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126125126451_
                                                             _-absent-value126071126335_)))
                                                    (__tmp130696
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126116126427_
                                                             _key126072126337_)))
                                                    (__tmp130695
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126107126403_
                                                             _-xkwvar126073126339_)))
                                                    (__tmp130694
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126098126379_
                                                             _-hash-ref126074126341_))))
                                                (declare (not safe))
                                                (_loop126067126330_
                                                 _lp-tl126070126349_
                                                 __tmp130697
                                                 __tmp130696
                                                 __tmp130695
                                                 __tmp130694))
                                              (___match129262129263_
                                               _e126024126189_
                                               _hd126023126192_
                                               _tl126022126194_))
                                          (___match129262129263_
                                           _e126024126189_
                                           _hd126023126192_
                                           _tl126022126194_))))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))
                              (___match129262129263_
                               _e126024126189_
                               _hd126023126192_
                               _tl126022126194_))
                          (___match129262129263_
                           _e126024126189_
                           _hd126023126192_
                           _tl126022126194_))))
                  (___match129262129263_
                   _e126024126189_
                   _hd126023126192_
                   _tl126022126194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_))
                                              (___match129262129263_
                                               _e126024126189_
                                               _hd126023126192_
                                               _tl126022126194_))))
                                      (___match129262129263_
                                       _e126024126189_
                                       _hd126023126192_
                                       _tl126022126194_))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))
                              (___match129262129263_
                               _e126024126189_
                               _hd126023126192_
                               _tl126022126194_))))
                      (___match129262129263_
                       _e126024126189_
                       _hd126023126192_
                       _tl126022126194_))))
              (___match129262129263_
               _e126024126189_
               _hd126023126192_
               _tl126022126194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_))))
                                          (___match129262129263_
                                           _e126024126189_
                                           _hd126023126192_
                                           _tl126022126194_))
                                      (___match129262129263_
                                       _e126024126189_
                                       _hd126023126192_
                                       _tl126022126194_))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))))
                          (___match129262129263_
                           _e126024126189_
                           _hd126023126192_
                           _tl126022126194_))))
                  (___match129262129263_
                   _e126024126189_
                   _hd126023126192_
                   _tl126022126194_))
              (___match129262129263_
               _e126024126189_
               _hd126023126192_
               _tl126022126194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129262129263_
                                               _e126024126189_
                                               _hd126023126192_
                                               _tl126022126194_))
                                          (___match129262129263_
                                           _e126024126189_
                                           _hd126023126192_
                                           _tl126022126194_))
                                      (___match129262129263_
                                       _e126024126189_
                                       _hd126023126192_
                                       _tl126022126194_))))
                              (___match129262129263_
                               _e126024126189_
                               _hd126023126192_
                               _tl126022126194_))))
                      (___match129262129263_
                       _e126024126189_
                       _hd126023126192_
                       _tl126022126194_))
                  (___match129262129263_
                   _e126024126189_
                   _hd126023126192_
                   _tl126022126194_))
              (___match129262129263_
               _e126024126189_
               _hd126023126192_
               _tl126022126194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129262129263_
                                               _e126024126189_
                                               _hd126023126192_
                                               _tl126022126194_))))
                                      (let ((_-hash-ref126078126462_
                                             (reverse _-hash-ref126074126341_))
                                            (_-xkwvar126077126460_
                                             (reverse _-xkwvar126073126339_))
                                            (_key126076126458_
                                             (reverse _key126072126337_))
                                            (_-absent-value126075126456_
                                             (reverse _-absent-value126071126335_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl126031126218_))
                                            (let ((_L126465_ _hd126086126325_)
                                                  (_L126466_
                                                   _-absent-value126075126456_)
                                                  (_L126467_ _key126076126458_)
                                                  (_L126468_
                                                   _-xkwvar126077126460_)
                                                  (_L126469_
                                                   _-hash-ref126078126462_)
                                                  (_L126470_ _hd126062126296_)
                                                  (_L126471_ _hd126053126272_)
                                                  (_L126472_ _hd126044126248_)
                                                  (_L126473_ _tl126028126210_)
                                                  (_L126474_ _hd126029126208_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126474_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126473_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126472_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126474_
                                                          _L126470_))
                                                       (let ((__tmp130692
                                                              (let ((__tmp130693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126527126530_ _g126528126532_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126527126530_ _g126528126532_)))))
                        (declare (not safe))
                        (foldr1 __tmp130693 '() _L126467_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130692))
               (let ((__tmp130691
                      (lambda (_g126534126536_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126534126536_
                           'hash-ref))))
                     (__tmp130689
                      (let ((__tmp130690
                             (lambda (_g126538126541_ _g126539126543_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126538126541_ _g126539126543_)))))
                        (declare (not safe))
                        (foldr1 __tmp130690 '() _L126469_))))
                 (declare (not safe))
                 (andmap1 __tmp130691 __tmp130689))
               (let ((__tmp130688
                      (lambda (_g126545126547_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126545126547_
                           'absent-value))))
                     (__tmp130686
                      (let ((__tmp130687
                             (lambda (_g126549126552_ _g126550126554_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126549126552_ _g126550126554_)))))
                        (declare (not safe))
                        (foldr1 __tmp130687 '() _L126466_))))
                 (declare (not safe))
                 (andmap1 __tmp130688 __tmp130686))
               (let ((__tmp130685
                      (lambda (_g126556126558_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126556126558_ _L126474_))))
                     (__tmp130683
                      (let ((__tmp130684
                             (lambda (_g126560126563_ _g126561126565_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126560126563_ _g126561126565_)))))
                        (declare (not safe))
                        (foldr1 __tmp130684 '() _L126468_))))
                 (declare (not safe))
                 (andmap1 __tmp130685 __tmp130683)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128949128950_
                                                   _L126465_
                                                   _L126466_
                                                   _L126467_
                                                   _L126468_
                                                   _L126469_
                                                   _L126470_
                                                   _L126471_
                                                   _L126472_
                                                   _L126473_
                                                   _L126474_)
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_)))
                                            (___match129262129263_
                                             _e126024126189_
                                             _hd126023126192_
                                             _tl126022126194_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop126067126330_
                           _target126064126301_
                           '()
                           '()
                           '()
                           '())))))
                   (___match129128129129_
                    (lambda (_e126024126189_
                             _hd126023126192_
                             _tl126022126194_
                             _e126027126197_
                             _hd126026126200_
                             _tl126025126202_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126026126200_))
                          (let ((_e126030126205_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126026126200_))))
                            (let ((_tl126028126210_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126030126205_)))
                                  (_hd126029126208_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126030126205_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126025126202_))
                                  (let ((_e126033126213_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126025126202_))))
                                    (let ((_tl126031126218_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126033126213_)))
                                          (_hd126032126216_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126033126213_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd126032126216_))
                                          (let ((_e126036126221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd126032126216_))))
                                            (let ((_tl126034126226_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126036126221_)))
                                                  (_hd126035126224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126036126221_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd126035126224_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd126035126224_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126034126226_))
                                                          (let ((_e126039126229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126034126226_))))
                    (let ((_tl126037126234_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126039126229_)))
                          (_hd126038126232_
                           (let ()
                             (declare (not safe))
                             (##car _e126039126229_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126038126232_))
                          (let ((_e126042126237_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126038126232_))))
                            (let ((_tl126040126242_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126042126237_)))
                                  (_hd126041126240_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126042126237_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126041126240_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126041126240_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126040126242_))
                                          (let ((_e126045126245_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126040126242_))))
                                            (let ((_tl126043126250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126045126245_)))
                                                  (_hd126044126248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126045126245_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126043126250_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126037126234_))
                                                      (let ((_e126048126253_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126037126234_))))
                (let ((_tl126046126258_
                       (let () (declare (not safe)) (##cdr _e126048126253_)))
                      (_hd126047126256_
                       (let () (declare (not safe)) (##car _e126048126253_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126047126256_))
                      (let ((_e126051126261_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126047126256_))))
                        (let ((_tl126049126266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126051126261_)))
                              (_hd126050126264_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126051126261_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126050126264_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126050126264_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126049126266_))
                                      (let ((_e126054126269_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126049126266_))))
                                        (let ((_tl126052126274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126054126269_)))
                                              (_hd126053126272_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126054126269_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126052126274_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126046126258_))
                                                  (let ((_e126057126277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126046126258_))))
                                                    (let ((_tl126055126282_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126057126277_)))
                                                          (_hd126056126280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126057126277_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126056126280_))
                                                          (let ((_e126060126285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126056126280_))))
                    (let ((_tl126058126290_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126060126285_)))
                          (_hd126059126288_
                           (let ()
                             (declare (not safe))
                             (##car _e126060126285_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126059126288_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126059126288_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126058126290_))
                                  (let ((_e126063126293_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126058126290_))))
                                    (let ((_tl126061126298_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126063126293_)))
                                          (_hd126062126296_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126063126293_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126061126298_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126055126282_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl126055126282_))
                                                        '1)
                                                  (let ((___splice128951128952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126055126282_
                                                            '1))))
                                                    (let ((_tl126066126303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128951128952_
                                                              '1)))
                                                          (_target126064126301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128951128952_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126066126303_))
                                                          (let ((_e126081126306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126066126303_))))
                    (let ((_tl126079126311_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126081126306_)))
                          (_hd126080126309_
                           (let ()
                             (declare (not safe))
                             (##car _e126081126306_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126080126309_))
                          (let ((_e126084126314_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126080126309_))))
                            (let ((_tl126082126319_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126084126314_)))
                                  (_hd126083126317_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126084126314_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126083126317_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126083126317_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126082126319_))
                                          (let ((_e126087126322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126082126319_))))
                                            (let ((_tl126085126327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126087126322_)))
                                                  (_hd126086126325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126087126322_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126085126327_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126079126311_))
                                                      (___match129256129257_
                                                       _e126024126189_
                                                       _hd126023126192_
                                                       _tl126022126194_
                                                       _e126027126197_
                                                       _hd126026126200_
                                                       _tl126025126202_
                                                       _e126030126205_
                                                       _hd126029126208_
                                                       _tl126028126210_
                                                       _e126033126213_
                                                       _hd126032126216_
                                                       _tl126031126218_
                                                       _e126036126221_
                                                       _hd126035126224_
                                                       _tl126034126226_
                                                       _e126039126229_
                                                       _hd126038126232_
                                                       _tl126037126234_
                                                       _e126042126237_
                                                       _hd126041126240_
                                                       _tl126040126242_
                                                       _e126045126245_
                                                       _hd126044126248_
                                                       _tl126043126250_
                                                       _e126048126253_
                                                       _hd126047126256_
                                                       _tl126046126258_
                                                       _e126051126261_
                                                       _hd126050126264_
                                                       _tl126049126266_
                                                       _e126054126269_
                                                       _hd126053126272_
                                                       _tl126052126274_
                                                       _e126057126277_
                                                       _hd126056126280_
                                                       _tl126055126282_
                                                       _e126060126285_
                                                       _hd126059126288_
                                                       _tl126058126290_
                                                       _e126063126293_
                                                       _hd126062126296_
                                                       _tl126061126298_
                                                       ___splice128951128952_
                                                       _target126064126301_
                                                       _tl126066126303_
                                                       _e126081126306_
                                                       _hd126080126309_
                                                       _tl126079126311_
                                                       _e126084126314_
                                                       _hd126083126317_
                                                       _tl126082126319_
                                                       _e126087126322_
                                                       _hd126086126325_
                                                       _tl126085126327_)
                                                      (___match129262129263_
                                                       _e126024126189_
                                                       _hd126023126192_
                                                       _tl126022126194_))
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_))))
                                          (___match129262129263_
                                           _e126024126189_
                                           _hd126023126192_
                                           _tl126022126194_))
                                      (___match129262129263_
                                       _e126024126189_
                                       _hd126023126192_
                                       _tl126022126194_))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))))
                          (___match129262129263_
                           _e126024126189_
                           _hd126023126192_
                           _tl126022126194_))))
                  (___match129262129263_
                   _e126024126189_
                   _hd126023126192_
                   _tl126022126194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_))
                                              (___match129262129263_
                                               _e126024126189_
                                               _hd126023126192_
                                               _tl126022126194_))
                                          (___match129262129263_
                                           _e126024126189_
                                           _hd126023126192_
                                           _tl126022126194_))))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))
                              (___match129262129263_
                               _e126024126189_
                               _hd126023126192_
                               _tl126022126194_))
                          (___match129262129263_
                           _e126024126189_
                           _hd126023126192_
                           _tl126022126194_))))
                  (___match129262129263_
                   _e126024126189_
                   _hd126023126192_
                   _tl126022126194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_))
                                              (___match129262129263_
                                               _e126024126189_
                                               _hd126023126192_
                                               _tl126022126194_))))
                                      (___match129262129263_
                                       _e126024126189_
                                       _hd126023126192_
                                       _tl126022126194_))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))
                              (___match129262129263_
                               _e126024126189_
                               _hd126023126192_
                               _tl126022126194_))))
                      (___match129262129263_
                       _e126024126189_
                       _hd126023126192_
                       _tl126022126194_))))
              (___match129262129263_
               _e126024126189_
               _hd126023126192_
               _tl126022126194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_))))
                                          (___match129262129263_
                                           _e126024126189_
                                           _hd126023126192_
                                           _tl126022126194_))
                                      (___match129262129263_
                                       _e126024126189_
                                       _hd126023126192_
                                       _tl126022126194_))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))))
                          (___match129262129263_
                           _e126024126189_
                           _hd126023126192_
                           _tl126022126194_))))
                  (___match129262129263_
                   _e126024126189_
                   _hd126023126192_
                   _tl126022126194_))
              (___match129262129263_
               _e126024126189_
               _hd126023126192_
               _tl126022126194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129262129263_
                                                   _e126024126189_
                                                   _hd126023126192_
                                                   _tl126022126194_))))
                                          (___match129262129263_
                                           _e126024126189_
                                           _hd126023126192_
                                           _tl126022126194_))))
                                  (___match129262129263_
                                   _e126024126189_
                                   _hd126023126192_
                                   _tl126022126194_))))
                          (___match129262129263_
                           _e126024126189_
                           _hd126023126192_
                           _tl126022126194_))))
                   (___match129116129117_
                    (lambda (_e125957126580_
                             _hd125956126583_
                             _tl125955126585_
                             _e125960126588_
                             _hd125959126591_
                             _tl125958126593_
                             _e125963126596_
                             _hd125962126599_
                             _tl125961126601_
                             _e125966126604_
                             _hd125965126607_
                             _tl125964126609_
                             _e125969126612_
                             _hd125968126615_
                             _tl125967126617_
                             _e125972126620_
                             _hd125971126623_
                             _tl125970126625_
                             _e125975126628_
                             _hd125974126631_
                             _tl125973126633_
                             _e125978126636_
                             _hd125977126639_
                             _tl125976126641_
                             _e125981126644_
                             _hd125980126647_
                             _tl125979126649_
                             _e125984126652_
                             _hd125983126655_
                             _tl125982126657_
                             _e125987126660_
                             _hd125986126663_
                             _tl125985126665_
                             _e125990126668_
                             _hd125989126671_
                             _tl125988126673_
                             _e125993126676_
                             _hd125992126679_
                             _tl125991126681_
                             _e125996126684_
                             _hd125995126687_
                             _tl125994126689_
                             _e125999126692_
                             _hd125998126695_
                             _tl125997126697_
                             _e126002126700_
                             _hd126001126703_
                             _tl126000126705_
                             _e126005126708_
                             _hd126004126711_
                             _tl126003126713_
                             _e126008126716_
                             _hd126007126719_
                             _tl126006126721_
                             _e126011126724_
                             _hd126010126727_
                             _tl126009126729_)
                      (let ((_L126732_ _hd126010126727_)
                            (_L126733_ _hd126001126703_)
                            (_L126734_ _hd125992126679_)
                            (_L126735_ _hd125983126655_)
                            (_L126736_ _hd125974126631_)
                            (_L126737_ _hd125959126591_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126737_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126736_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126735_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126737_ _L126732_)))
                            (___kont128947128948_
                             _L126732_
                             _L126733_
                             _L126734_
                             _L126735_
                             _L126736_
                             _L126737_)
                            (___match129128129129_
                             _e125957126580_
                             _hd125956126583_
                             _tl125955126585_
                             _e125960126588_
                             _hd125959126591_
                             _tl125958126593_)))))
                   (___match128970128971_
                    (lambda (_e125957126580_ _hd125956126583_ _tl125955126585_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125955126585_))
                          (let ((_e125960126588_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125955126585_))))
                            (let ((_tl125958126593_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125960126588_)))
                                  (_hd125959126591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125960126588_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125958126593_))
                                  (let ((_e125963126596_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125958126593_))))
                                    (let ((_tl125961126601_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125963126596_)))
                                          (_hd125962126599_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125963126596_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125962126599_))
                                          (let ((_e125966126604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125962126599_))))
                                            (let ((_tl125964126609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125966126604_)))
                                                  (_hd125965126607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125966126604_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125965126607_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125965126607_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125964126609_))
                                                          (let ((_e125969126612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125964126609_))))
                    (let ((_tl125967126617_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125969126612_)))
                          (_hd125968126615_
                           (let ()
                             (declare (not safe))
                             (##car _e125969126612_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125968126615_))
                          (let ((_e125972126620_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125968126615_))))
                            (let ((_tl125970126625_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125972126620_)))
                                  (_hd125971126623_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125972126620_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125971126623_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125971126623_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125970126625_))
                                          (let ((_e125975126628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125970126625_))))
                                            (let ((_tl125973126633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125975126628_)))
                                                  (_hd125974126631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125975126628_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125973126633_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125967126617_))
                                                      (let ((_e125978126636_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125967126617_))))
                (let ((_tl125976126641_
                       (let () (declare (not safe)) (##cdr _e125978126636_)))
                      (_hd125977126639_
                       (let () (declare (not safe)) (##car _e125978126636_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125977126639_))
                      (let ((_e125981126644_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125977126639_))))
                        (let ((_tl125979126649_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125981126644_)))
                              (_hd125980126647_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125981126644_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125980126647_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125980126647_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125979126649_))
                                      (let ((_e125984126652_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125979126649_))))
                                        (let ((_tl125982126657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125984126652_)))
                                              (_hd125983126655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125984126652_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125982126657_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125976126641_))
                                                  (let ((_e125987126660_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125976126641_))))
                                                    (let ((_tl125985126665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125987126660_)))
                                                          (_hd125986126663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125987126660_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125986126663_))
                                                          (let ((_e125990126668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125986126663_))))
                    (let ((_tl125988126673_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125990126668_)))
                          (_hd125989126671_
                           (let ()
                             (declare (not safe))
                             (##car _e125990126668_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125989126671_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125989126671_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125988126673_))
                                  (let ((_e125993126676_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125988126673_))))
                                    (let ((_tl125991126681_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125993126676_)))
                                          (_hd125992126679_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125993126676_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125991126681_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125985126665_))
                                              (let ((_e125996126684_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125985126665_))))
                                                (let ((_tl125994126689_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125996126684_)))
                                                      (_hd125995126687_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125996126684_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125995126687_))
                                                      (let ((_e125999126692_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125995126687_))))
                (let ((_tl125997126697_
                       (let () (declare (not safe)) (##cdr _e125999126692_)))
                      (_hd125998126695_
                       (let () (declare (not safe)) (##car _e125999126692_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125998126695_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125998126695_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125997126697_))
                              (let ((_e126002126700_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125997126697_))))
                                (let ((_tl126000126705_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126002126700_)))
                                      (_hd126001126703_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126002126700_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126000126705_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125994126689_))
                                          (let ((_e126005126708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125994126689_))))
                                            (let ((_tl126003126713_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126005126708_)))
                                                  (_hd126004126711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126005126708_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd126004126711_))
                                                  (let ((_e126008126716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd126004126711_))))
                                                    (let ((_tl126006126721_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126008126716_)))
                                                          (_hd126007126719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126008126716_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd126007126719_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd126007126719_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126006126721_))
                          (let ((_e126011126724_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126006126721_))))
                            (let ((_tl126009126729_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126011126724_)))
                                  (_hd126010126727_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126011126724_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126009126729_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126003126713_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125961126601_))
                                          (___match129116129117_
                                           _e125957126580_
                                           _hd125956126583_
                                           _tl125955126585_
                                           _e125960126588_
                                           _hd125959126591_
                                           _tl125958126593_
                                           _e125963126596_
                                           _hd125962126599_
                                           _tl125961126601_
                                           _e125966126604_
                                           _hd125965126607_
                                           _tl125964126609_
                                           _e125969126612_
                                           _hd125968126615_
                                           _tl125967126617_
                                           _e125972126620_
                                           _hd125971126623_
                                           _tl125970126625_
                                           _e125975126628_
                                           _hd125974126631_
                                           _tl125973126633_
                                           _e125978126636_
                                           _hd125977126639_
                                           _tl125976126641_
                                           _e125981126644_
                                           _hd125980126647_
                                           _tl125979126649_
                                           _e125984126652_
                                           _hd125983126655_
                                           _tl125982126657_
                                           _e125987126660_
                                           _hd125986126663_
                                           _tl125985126665_
                                           _e125990126668_
                                           _hd125989126671_
                                           _tl125988126673_
                                           _e125993126676_
                                           _hd125992126679_
                                           _tl125991126681_
                                           _e125996126684_
                                           _hd125995126687_
                                           _tl125994126689_
                                           _e125999126692_
                                           _hd125998126695_
                                           _tl125997126697_
                                           _e126002126700_
                                           _hd126001126703_
                                           _tl126000126705_
                                           _e126005126708_
                                           _hd126004126711_
                                           _tl126003126713_
                                           _e126008126716_
                                           _hd126007126719_
                                           _tl126006126721_
                                           _e126011126724_
                                           _hd126010126727_
                                           _tl126009126729_)
                                          (___match129128129129_
                                           _e125957126580_
                                           _hd125956126583_
                                           _tl125955126585_
                                           _e125960126588_
                                           _hd125959126591_
                                           _tl125958126593_))
                                      (___match129128129129_
                                       _e125957126580_
                                       _hd125956126583_
                                       _tl125955126585_
                                       _e125960126588_
                                       _hd125959126591_
                                       _tl125958126593_))
                                  (___match129128129129_
                                   _e125957126580_
                                   _hd125956126583_
                                   _tl125955126585_
                                   _e125960126588_
                                   _hd125959126591_
                                   _tl125958126593_))))
                          (___match129128129129_
                           _e125957126580_
                           _hd125956126583_
                           _tl125955126585_
                           _e125960126588_
                           _hd125959126591_
                           _tl125958126593_))
                      (___match129128129129_
                       _e125957126580_
                       _hd125956126583_
                       _tl125955126585_
                       _e125960126588_
                       _hd125959126591_
                       _tl125958126593_))
                  (___match129128129129_
                   _e125957126580_
                   _hd125956126583_
                   _tl125955126585_
                   _e125960126588_
                   _hd125959126591_
                   _tl125958126593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129128129129_
                                                   _e125957126580_
                                                   _hd125956126583_
                                                   _tl125955126585_
                                                   _e125960126588_
                                                   _hd125959126591_
                                                   _tl125958126593_))))
                                          (___match129128129129_
                                           _e125957126580_
                                           _hd125956126583_
                                           _tl125955126585_
                                           _e125960126588_
                                           _hd125959126591_
                                           _tl125958126593_))
                                      (___match129128129129_
                                       _e125957126580_
                                       _hd125956126583_
                                       _tl125955126585_
                                       _e125960126588_
                                       _hd125959126591_
                                       _tl125958126593_))))
                              (___match129128129129_
                               _e125957126580_
                               _hd125956126583_
                               _tl125955126585_
                               _e125960126588_
                               _hd125959126591_
                               _tl125958126593_))
                          (___match129128129129_
                           _e125957126580_
                           _hd125956126583_
                           _tl125955126585_
                           _e125960126588_
                           _hd125959126591_
                           _tl125958126593_))
                      (___match129128129129_
                       _e125957126580_
                       _hd125956126583_
                       _tl125955126585_
                       _e125960126588_
                       _hd125959126591_
                       _tl125958126593_))))
              (___match129128129129_
               _e125957126580_
               _hd125956126583_
               _tl125955126585_
               _e125960126588_
               _hd125959126591_
               _tl125958126593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129128129129_
                                               _e125957126580_
                                               _hd125956126583_
                                               _tl125955126585_
                                               _e125960126588_
                                               _hd125959126591_
                                               _tl125958126593_))
                                          (___match129128129129_
                                           _e125957126580_
                                           _hd125956126583_
                                           _tl125955126585_
                                           _e125960126588_
                                           _hd125959126591_
                                           _tl125958126593_))))
                                  (___match129128129129_
                                   _e125957126580_
                                   _hd125956126583_
                                   _tl125955126585_
                                   _e125960126588_
                                   _hd125959126591_
                                   _tl125958126593_))
                              (___match129128129129_
                               _e125957126580_
                               _hd125956126583_
                               _tl125955126585_
                               _e125960126588_
                               _hd125959126591_
                               _tl125958126593_))
                          (___match129128129129_
                           _e125957126580_
                           _hd125956126583_
                           _tl125955126585_
                           _e125960126588_
                           _hd125959126591_
                           _tl125958126593_))))
                  (___match129128129129_
                   _e125957126580_
                   _hd125956126583_
                   _tl125955126585_
                   _e125960126588_
                   _hd125959126591_
                   _tl125958126593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129128129129_
                                                   _e125957126580_
                                                   _hd125956126583_
                                                   _tl125955126585_
                                                   _e125960126588_
                                                   _hd125959126591_
                                                   _tl125958126593_))
                                              (___match129128129129_
                                               _e125957126580_
                                               _hd125956126583_
                                               _tl125955126585_
                                               _e125960126588_
                                               _hd125959126591_
                                               _tl125958126593_))))
                                      (___match129128129129_
                                       _e125957126580_
                                       _hd125956126583_
                                       _tl125955126585_
                                       _e125960126588_
                                       _hd125959126591_
                                       _tl125958126593_))
                                  (___match129128129129_
                                   _e125957126580_
                                   _hd125956126583_
                                   _tl125955126585_
                                   _e125960126588_
                                   _hd125959126591_
                                   _tl125958126593_))
                              (___match129128129129_
                               _e125957126580_
                               _hd125956126583_
                               _tl125955126585_
                               _e125960126588_
                               _hd125959126591_
                               _tl125958126593_))))
                      (___match129128129129_
                       _e125957126580_
                       _hd125956126583_
                       _tl125955126585_
                       _e125960126588_
                       _hd125959126591_
                       _tl125958126593_))))
              (___match129128129129_
               _e125957126580_
               _hd125956126583_
               _tl125955126585_
               _e125960126588_
               _hd125959126591_
               _tl125958126593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129128129129_
                                                   _e125957126580_
                                                   _hd125956126583_
                                                   _tl125955126585_
                                                   _e125960126588_
                                                   _hd125959126591_
                                                   _tl125958126593_))))
                                          (___match129128129129_
                                           _e125957126580_
                                           _hd125956126583_
                                           _tl125955126585_
                                           _e125960126588_
                                           _hd125959126591_
                                           _tl125958126593_))
                                      (___match129128129129_
                                       _e125957126580_
                                       _hd125956126583_
                                       _tl125955126585_
                                       _e125960126588_
                                       _hd125959126591_
                                       _tl125958126593_))
                                  (___match129128129129_
                                   _e125957126580_
                                   _hd125956126583_
                                   _tl125955126585_
                                   _e125960126588_
                                   _hd125959126591_
                                   _tl125958126593_))))
                          (___match129128129129_
                           _e125957126580_
                           _hd125956126583_
                           _tl125955126585_
                           _e125960126588_
                           _hd125959126591_
                           _tl125958126593_))))
                  (___match129128129129_
                   _e125957126580_
                   _hd125956126583_
                   _tl125955126585_
                   _e125960126588_
                   _hd125959126591_
                   _tl125958126593_))
              (___match129128129129_
               _e125957126580_
               _hd125956126583_
               _tl125955126585_
               _e125960126588_
               _hd125959126591_
               _tl125958126593_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129128129129_
                                                   _e125957126580_
                                                   _hd125956126583_
                                                   _tl125955126585_
                                                   _e125960126588_
                                                   _hd125959126591_
                                                   _tl125958126593_))))
                                          (___match129128129129_
                                           _e125957126580_
                                           _hd125956126583_
                                           _tl125955126585_
                                           _e125960126588_
                                           _hd125959126591_
                                           _tl125958126593_))))
                                  (___match129128129129_
                                   _e125957126580_
                                   _hd125956126583_
                                   _tl125955126585_
                                   _e125960126588_
                                   _hd125959126591_
                                   _tl125958126593_))))
                          (___match129262129263_
                           _e125957126580_
                           _hd125956126583_
                           _tl125955126585_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128943128944_))
                  (let ((_e125948126797_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128943128944_))))
                    (let ((_tl125946126802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125948126797_)))
                          (_hd125947126800_
                           (let ()
                             (declare (not safe))
                             (##car _e125948126797_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126805_ _tl125946126802_))
                            (___kont128945128946_ _L126805_))
                          (___match128970128971_
                           _e125948126797_
                           _hd125947126800_
                           _tl125946126802_))))
                  (let () (declare (not safe)) (_g125943126139_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125890_ _stx125891_)
        (letrec ((_clause-e125893_
                  (lambda (_form125934_)
                    (let ((__obj130627
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
                       __obj130627
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125934_))
                       (if (let ((__tmp130698
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130698))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125934_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125934_))
                               '#f)
                           '#f))
                      __obj130627))))
          (let* ((_g125895125905_
                  (lambda (_g125896125902_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125896125902_))))
                 (_g125894125931_
                  (lambda (_g125896125908_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125896125908_))
                        (let ((_e125900125910_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125896125908_))))
                          (let ((_hd125899125913_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125900125910_)))
                                (_tl125898125915_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125900125910_))))
                            ((lambda (_L125918_)
                               (let ((_clauses125929_
                                      (map _clause-e125893_ _L125918_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125929_)))
                             _tl125898125915_)))
                        (let ()
                          (declare (not safe))
                          (_g125895125905_ _g125896125908_))))))
            (declare (not safe))
            (_g125894125931_ _stx125891_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125821_ _stx125822_)
        (let* ((_g125824125841_
                (lambda (_g125825125838_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125825125838_))))
               (_g125823125887_
                (lambda (_g125825125844_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125825125844_))
                      (let ((_e125830125846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125825125844_))))
                        (let ((_hd125829125849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125830125846_)))
                              (_tl125828125851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125830125846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125828125851_))
                              (let ((_e125833125854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125828125851_))))
                                (let ((_hd125832125857_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125833125854_)))
                                      (_tl125831125859_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125833125854_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125831125859_))
                                      (let ((_e125836125862_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125831125859_))))
                                        (let ((_hd125835125865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125836125862_)))
                                              (_tl125834125867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125836125862_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125834125867_))
                                              ((lambda (_L125870_ _L125871_)
                                                 (let ((__tmp130699
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125821_
                                                             _L125870_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130699
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125835125865_
                                               _hd125832125857_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125824125841_
                                                 _g125825125844_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125824125841_ _g125825125844_)))))
                              (let ()
                                (declare (not safe))
                                (_g125824125841_ _g125825125844_)))))
                      (let ()
                        (declare (not safe))
                        (_g125824125841_ _g125825125844_))))))
          (declare (not safe))
          (_g125823125887_ _stx125822_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125725_ _stx125726_)
        (let* ((___stx129271129272_ _stx125726_)
               (_g125729125749_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129271129272_)))))
          (let ((___kont129273129274_
                 (lambda (_L125793_ _L125794_)
                   (let ((_type-e125811125813_
                          (let ((__tmp130700
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125794_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130700))))
                     (if _type-e125811125813_
                         (let ((_type-e125816_ _type-e125811125813_))
                           (_type-e125816_ _stx125726_ _L125793_))
                         '#f))))
                (___kont129275129276_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129271129272_))
                (let ((_e125735125761_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129271129272_))))
                  (let ((_tl125733125766_
                         (let () (declare (not safe)) (##cdr _e125735125761_)))
                        (_hd125734125764_
                         (let ()
                           (declare (not safe))
                           (##car _e125735125761_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125733125766_))
                        (let ((_e125738125769_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125733125766_))))
                          (let ((_tl125736125774_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125738125769_)))
                                (_hd125737125772_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125738125769_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125737125772_))
                                (let ((_e125741125777_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125737125772_))))
                                  (let ((_tl125739125782_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125741125777_)))
                                        (_hd125740125780_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125741125777_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125740125780_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125740125780_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125739125782_))
                                                (let ((_e125744125785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125739125782_))))
                                                  (let ((_tl125742125790_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125744125785_)))
                                                        (_hd125743125788_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125744125785_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125742125790_))
                                                        (___kont129273129274_
                                                         _tl125736125774_
                                                         _hd125743125788_)
                                                        (___kont129275129276_))))
                                                (___kont129275129276_))
                                            (___kont129275129276_))
                                        (___kont129275129276_))))
                                (___kont129275129276_))))
                        (___kont129275129276_))))
                (___kont129275129276_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125673_ _stx125674_)
        (let* ((_g125676125689_
                (lambda (_g125677125686_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125677125686_))))
               (_g125675125722_
                (lambda (_g125677125692_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125677125692_))
                      (let ((_e125681125694_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125677125692_))))
                        (let ((_hd125680125697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125681125694_)))
                              (_tl125679125699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125681125694_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125679125699_))
                              (let ((_e125684125702_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125679125699_))))
                                (let ((_hd125683125705_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125684125702_)))
                                      (_tl125682125707_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125684125702_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125682125707_))
                                      ((lambda (_L125710_)
                                         (let ((__tmp130701
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125710_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130701)))
                                       _hd125683125705_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125676125689_ _g125677125692_)))))
                              (let ()
                                (declare (not safe))
                                (_g125676125689_ _g125677125692_)))))
                      (let ()
                        (declare (not safe))
                        (_g125676125689_ _g125677125692_))))))
          (declare (not safe))
          (_g125675125722_ _stx125674_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124907_)
        (let* ((___stx129309129310_ _form124907_)
               (_g124912125069_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129309129310_)))))
          (let ((___kont129311129312_
                 (lambda (_L125593_ _L125594_ _L125595_) '#t))
                (___kont129317129318_
                 (lambda (_L125381_
                          _L125382_
                          _L125383_
                          _L125384_
                          _L125385_
                          _L125386_)
                   '#t))
                (___kont129323129324_
                 (lambda (_L125177_ _L125178_ _L125179_ _L125180_) '#t))
                (___kont129325129326_ (lambda () '#f)))
            (let* ((___match129450129451_
                    (lambda (_e125031125081_
                             _hd125030125084_
                             _tl125029125086_
                             _e125034125089_
                             _hd125033125092_
                             _tl125032125094_
                             _e125037125097_
                             _hd125036125100_
                             _tl125035125102_
                             _e125040125105_
                             _hd125039125108_
                             _tl125038125110_
                             _e125043125113_
                             _hd125042125116_
                             _tl125041125118_
                             _e125046125121_
                             _hd125045125124_
                             _tl125044125126_
                             _e125049125129_
                             _hd125048125132_
                             _tl125047125134_
                             _e125052125137_
                             _hd125051125140_
                             _tl125050125142_
                             _e125055125145_
                             _hd125054125148_
                             _tl125053125150_
                             _e125058125153_
                             _hd125057125156_
                             _tl125056125158_
                             _e125061125161_
                             _hd125060125164_
                             _tl125059125166_
                             _e125064125169_
                             _hd125063125172_
                             _tl125062125174_)
                      (let ((_L125177_ _hd125063125172_)
                            (_L125178_ _hd125054125148_)
                            (_L125179_ _hd125045125124_)
                            (_L125180_ _hd125030125084_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125180_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125179_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125180_ _L125177_))
                                 (let ((__tmp130702
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L125178_
                                           _L125180_))))
                                   (declare (not safe))
                                   (not __tmp130702)))
                            (___kont129323129324_
                             _L125177_
                             _L125178_
                             _L125179_
                             _L125180_)
                            (___kont129325129326_)))))
                   (___match129422129423_
                    (lambda (_e125031125081_
                             _hd125030125084_
                             _tl125029125086_
                             _e125034125089_
                             _hd125033125092_
                             _tl125032125094_
                             _e125037125097_
                             _hd125036125100_
                             _tl125035125102_
                             _e125040125105_
                             _hd125039125108_
                             _tl125038125110_
                             _e125043125113_
                             _hd125042125116_
                             _tl125041125118_
                             _e125046125121_
                             _hd125045125124_
                             _tl125044125126_
                             _e125049125129_
                             _hd125048125132_
                             _tl125047125134_
                             _e125052125137_
                             _hd125051125140_
                             _tl125050125142_
                             _e125055125145_
                             _hd125054125148_
                             _tl125053125150_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125047125134_))
                          (let ((_e125058125153_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125047125134_))))
                            (let ((_tl125056125158_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125058125153_)))
                                  (_hd125057125156_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125058125153_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125057125156_))
                                  (let ((_e125061125161_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125057125156_))))
                                    (let ((_tl125059125166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125061125161_)))
                                          (_hd125060125164_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125061125161_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125060125164_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125060125164_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125059125166_))
                                                  (let ((_e125064125169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125059125166_))))
                                                    (let ((_tl125062125174_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125064125169_)))
                                                          (_hd125063125172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125064125169_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125062125174_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl125056125158_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125032125094_))
                          (___match129450129451_
                           _e125031125081_
                           _hd125030125084_
                           _tl125029125086_
                           _e125034125089_
                           _hd125033125092_
                           _tl125032125094_
                           _e125037125097_
                           _hd125036125100_
                           _tl125035125102_
                           _e125040125105_
                           _hd125039125108_
                           _tl125038125110_
                           _e125043125113_
                           _hd125042125116_
                           _tl125041125118_
                           _e125046125121_
                           _hd125045125124_
                           _tl125044125126_
                           _e125049125129_
                           _hd125048125132_
                           _tl125047125134_
                           _e125052125137_
                           _hd125051125140_
                           _tl125050125142_
                           _e125055125145_
                           _hd125054125148_
                           _tl125053125150_
                           _e125058125153_
                           _hd125057125156_
                           _tl125056125158_
                           _e125061125161_
                           _hd125060125164_
                           _tl125059125166_
                           _e125064125169_
                           _hd125063125172_
                           _tl125062125174_)
                          (___kont129325129326_))
                      (___kont129325129326_))
                  (___kont129325129326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129325129326_))
                                              (___kont129325129326_))
                                          (___kont129325129326_))))
                                  (___kont129325129326_))))
                          (___kont129325129326_))))
                   (___match129352129353_
                    (lambda (_e124967125221_
                             _hd124966125224_
                             _tl124965125226_
                             ___splice129319129320_
                             _target124968125229_
                             _tl124970125231_)
                      (letrec ((_loop124971125234_
                                (lambda (_hd124969125237_ _arg124975125239_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124969125237_))
                                      (let ((_e124972125242_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124969125237_))))
                                        (let ((_lp-tl124974125247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124972125242_)))
                                              (_lp-hd124973125245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124972125242_))))
                                          (let ((__tmp130717
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124973125245_
                                                         _arg124975125239_))))
                                            (declare (not safe))
                                            (_loop124971125234_
                                             _lp-tl124974125247_
                                             __tmp130717))))
                                      (let ((_arg124976125250_
                                             (reverse _arg124975125239_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124965125226_))
                                            (let ((_e124979125253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124965125226_))))
                                              (let ((_tl124977125258_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124979125253_)))
                                                    (_hd124978125256_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124979125253_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124978125256_))
                                                    (let ((_e124982125261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124978125256_))))
                                                      (let ((_tl124980125266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124982125261_)))
                    (_hd124981125264_
                     (let () (declare (not safe)) (##car _e124982125261_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124981125264_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124981125264_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124980125266_))
                            (let ((_e124985125269_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124980125266_))))
                              (let ((_tl124983125274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124985125269_)))
                                    (_hd124984125272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124985125269_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124984125272_))
                                    (let ((_e124988125277_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124984125272_))))
                                      (let ((_tl124986125282_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124988125277_)))
                                            (_hd124987125280_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124988125277_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124987125280_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124987125280_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124986125282_))
                                                    (let ((_e124991125285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124986125282_))))
                                                      (let ((_tl124989125290_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124991125285_)))
                    (_hd124990125288_
                     (let () (declare (not safe)) (##car _e124991125285_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124989125290_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124983125274_))
                        (let ((_e124994125293_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124983125274_))))
                          (let ((_tl124992125298_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124994125293_)))
                                (_hd124993125296_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124994125293_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124993125296_))
                                (let ((_e124997125301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124993125296_))))
                                  (let ((_tl124995125306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124997125301_)))
                                        (_hd124996125304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124997125301_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124996125304_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124996125304_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124995125306_))
                                                (let ((_e125000125309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124995125306_))))
                                                  (let ((_tl124998125314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125000125309_)))
                                                        (_hd124999125312_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125000125309_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124998125314_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl124992125298_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl124992125298_))
                              '1)
                        (let ((___splice129321129322_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124992125298_
                                  '1))))
                          (let ((_tl125003125319_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129321129322_ '1)))
                                (_target125001125317_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129321129322_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125003125319_))
                                (let ((_e125012125322_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125003125319_))))
                                  (let ((_tl125010125327_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125012125322_)))
                                        (_hd125011125325_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125012125322_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd125011125325_))
                                        (let ((_e125015125330_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd125011125325_))))
                                          (let ((_tl125013125335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125015125330_)))
                                                (_hd125014125333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125015125330_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd125014125333_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd125014125333_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl125013125335_))
                                                        (let ((_e125018125338_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl125013125335_))))
                  (let ((_tl125016125343_
                         (let () (declare (not safe)) (##cdr _e125018125338_)))
                        (_hd125017125341_
                         (let ()
                           (declare (not safe))
                           (##car _e125018125338_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl125016125343_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl125010125327_))
                            (letrec ((_loop125004125346_
                                      (lambda (_hd125002125349_
                                               _xarg125008125351_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd125002125349_))
                                            (let ((_e125005125354_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd125002125349_))))
                                              (let ((_lp-tl125007125359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e125005125354_)))
                                                    (_lp-hd125006125357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e125005125354_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd125006125357_))
                                                    (let ((_e125021125362_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd125006125357_))))
                                                      (let ((_tl125019125367_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125021125362_)))
                    (_hd125020125365_
                     (let () (declare (not safe)) (##car _e125021125362_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd125020125365_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd125020125365_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125019125367_))
                            (let ((_e125024125370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125019125367_))))
                              (let ((_tl125022125375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125024125370_)))
                                    (_hd125023125373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125024125370_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl125022125375_))
                                    (let ((__tmp130716
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd125023125373_
                                                   _xarg125008125351_))))
                                      (declare (not safe))
                                      (_loop125004125346_
                                       _lp-tl125007125359_
                                       __tmp130716))
                                    (___match129422129423_
                                     _e124967125221_
                                     _hd124966125224_
                                     _tl124965125226_
                                     _e124979125253_
                                     _hd124978125256_
                                     _tl124977125258_
                                     _e124982125261_
                                     _hd124981125264_
                                     _tl124980125266_
                                     _e124985125269_
                                     _hd124984125272_
                                     _tl124983125274_
                                     _e124988125277_
                                     _hd124987125280_
                                     _tl124986125282_
                                     _e124991125285_
                                     _hd124990125288_
                                     _tl124989125290_
                                     _e124994125293_
                                     _hd124993125296_
                                     _tl124992125298_
                                     _e124997125301_
                                     _hd124996125304_
                                     _tl124995125306_
                                     _e125000125309_
                                     _hd124999125312_
                                     _tl124998125314_))))
                            (___match129422129423_
                             _e124967125221_
                             _hd124966125224_
                             _tl124965125226_
                             _e124979125253_
                             _hd124978125256_
                             _tl124977125258_
                             _e124982125261_
                             _hd124981125264_
                             _tl124980125266_
                             _e124985125269_
                             _hd124984125272_
                             _tl124983125274_
                             _e124988125277_
                             _hd124987125280_
                             _tl124986125282_
                             _e124991125285_
                             _hd124990125288_
                             _tl124989125290_
                             _e124994125293_
                             _hd124993125296_
                             _tl124992125298_
                             _e124997125301_
                             _hd124996125304_
                             _tl124995125306_
                             _e125000125309_
                             _hd124999125312_
                             _tl124998125314_))
                        (___match129422129423_
                         _e124967125221_
                         _hd124966125224_
                         _tl124965125226_
                         _e124979125253_
                         _hd124978125256_
                         _tl124977125258_
                         _e124982125261_
                         _hd124981125264_
                         _tl124980125266_
                         _e124985125269_
                         _hd124984125272_
                         _tl124983125274_
                         _e124988125277_
                         _hd124987125280_
                         _tl124986125282_
                         _e124991125285_
                         _hd124990125288_
                         _tl124989125290_
                         _e124994125293_
                         _hd124993125296_
                         _tl124992125298_
                         _e124997125301_
                         _hd124996125304_
                         _tl124995125306_
                         _e125000125309_
                         _hd124999125312_
                         _tl124998125314_))
                    (___match129422129423_
                     _e124967125221_
                     _hd124966125224_
                     _tl124965125226_
                     _e124979125253_
                     _hd124978125256_
                     _tl124977125258_
                     _e124982125261_
                     _hd124981125264_
                     _tl124980125266_
                     _e124985125269_
                     _hd124984125272_
                     _tl124983125274_
                     _e124988125277_
                     _hd124987125280_
                     _tl124986125282_
                     _e124991125285_
                     _hd124990125288_
                     _tl124989125290_
                     _e124994125293_
                     _hd124993125296_
                     _tl124992125298_
                     _e124997125301_
                     _hd124996125304_
                     _tl124995125306_
                     _e125000125309_
                     _hd124999125312_
                     _tl124998125314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129422129423_
                                                     _e124967125221_
                                                     _hd124966125224_
                                                     _tl124965125226_
                                                     _e124979125253_
                                                     _hd124978125256_
                                                     _tl124977125258_
                                                     _e124982125261_
                                                     _hd124981125264_
                                                     _tl124980125266_
                                                     _e124985125269_
                                                     _hd124984125272_
                                                     _tl124983125274_
                                                     _e124988125277_
                                                     _hd124987125280_
                                                     _tl124986125282_
                                                     _e124991125285_
                                                     _hd124990125288_
                                                     _tl124989125290_
                                                     _e124994125293_
                                                     _hd124993125296_
                                                     _tl124992125298_
                                                     _e124997125301_
                                                     _hd124996125304_
                                                     _tl124995125306_
                                                     _e125000125309_
                                                     _hd124999125312_
                                                     _tl124998125314_))))
                                            (let ((_xarg125009125378_
                                                   (reverse _xarg125008125351_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124977125258_))
                                                  (let ((_L125381_
                                                         _hd125017125341_)
                                                        (_L125382_
                                                         _xarg125009125378_)
                                                        (_L125383_
                                                         _hd124999125312_)
                                                        (_L125384_
                                                         _hd124990125288_)
                                                        (_L125385_
                                                         _tl124970125231_)
                                                        (_L125386_
                                                         _arg124976125250_))
                                                    (if (and (let ((__tmp130714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130715
                                   (lambda (_g125429125432_ _g125430125434_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125429125432_
                                             _g125430125434_)))))
                              (declare (not safe))
                              (foldr1 __tmp130715 '() _L125386_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130714))
                     (let () (declare (not safe)) (gx#identifier? _L125385_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125384_ 'apply))
                     (fx= (length (let ((__tmp130712
                                         (lambda (_g125436125439_
                                                  _g125437125441_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125436125439_
                                                   _g125437125441_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130712 '() _L125386_)))
                          (length (let ((__tmp130713
                                         (lambda (_g125443125446_
                                                  _g125444125448_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125443125446_
                                                   _g125444125448_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130713 '() _L125382_))))
                     (let ((__tmp130710
                            (let ((__tmp130711
                                   (lambda (_g125450125453_ _g125451125455_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125450125453_
                                             _g125451125455_)))))
                              (declare (not safe))
                              (foldr1 __tmp130711 '() _L125386_)))
                           (__tmp130708
                            (let ((__tmp130709
                                   (lambda (_g125457125460_ _g125458125462_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125457125460_
                                             _g125458125462_)))))
                              (declare (not safe))
                              (foldr1 __tmp130709 '() _L125382_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130710 __tmp130708))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125385_ _L125381_))
                     (let ((__tmp130703
                            (let ((__tmp130707
                                   (lambda (_g125464125466_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125464125466_
                                        _L125383_))))
                                  (__tmp130704
                                   (let ((__tmp130706
                                          (lambda (_g125468125471_
                                                   _g125469125473_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125468125471_
                                                    _g125469125473_))))
                                         (__tmp130705
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125385_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130706
                                             __tmp130705
                                             _L125386_))))
                              (declare (not safe))
                              (find __tmp130707 __tmp130704))))
                       (declare (not safe))
                       (not __tmp130703)))
                (___kont129317129318_
                 _L125381_
                 _L125382_
                 _L125383_
                 _L125384_
                 _L125385_
                 _L125386_)
                (___match129422129423_
                 _e124967125221_
                 _hd124966125224_
                 _tl124965125226_
                 _e124979125253_
                 _hd124978125256_
                 _tl124977125258_
                 _e124982125261_
                 _hd124981125264_
                 _tl124980125266_
                 _e124985125269_
                 _hd124984125272_
                 _tl124983125274_
                 _e124988125277_
                 _hd124987125280_
                 _tl124986125282_
                 _e124991125285_
                 _hd124990125288_
                 _tl124989125290_
                 _e124994125293_
                 _hd124993125296_
                 _tl124992125298_
                 _e124997125301_
                 _hd124996125304_
                 _tl124995125306_
                 _e125000125309_
                 _hd124999125312_
                 _tl124998125314_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129422129423_
                                                   _e124967125221_
                                                   _hd124966125224_
                                                   _tl124965125226_
                                                   _e124979125253_
                                                   _hd124978125256_
                                                   _tl124977125258_
                                                   _e124982125261_
                                                   _hd124981125264_
                                                   _tl124980125266_
                                                   _e124985125269_
                                                   _hd124984125272_
                                                   _tl124983125274_
                                                   _e124988125277_
                                                   _hd124987125280_
                                                   _tl124986125282_
                                                   _e124991125285_
                                                   _hd124990125288_
                                                   _tl124989125290_
                                                   _e124994125293_
                                                   _hd124993125296_
                                                   _tl124992125298_
                                                   _e124997125301_
                                                   _hd124996125304_
                                                   _tl124995125306_
                                                   _e125000125309_
                                                   _hd124999125312_
                                                   _tl124998125314_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop125004125346_ _target125001125317_ '())))
                            (___match129422129423_
                             _e124967125221_
                             _hd124966125224_
                             _tl124965125226_
                             _e124979125253_
                             _hd124978125256_
                             _tl124977125258_
                             _e124982125261_
                             _hd124981125264_
                             _tl124980125266_
                             _e124985125269_
                             _hd124984125272_
                             _tl124983125274_
                             _e124988125277_
                             _hd124987125280_
                             _tl124986125282_
                             _e124991125285_
                             _hd124990125288_
                             _tl124989125290_
                             _e124994125293_
                             _hd124993125296_
                             _tl124992125298_
                             _e124997125301_
                             _hd124996125304_
                             _tl124995125306_
                             _e125000125309_
                             _hd124999125312_
                             _tl124998125314_))
                        (___match129422129423_
                         _e124967125221_
                         _hd124966125224_
                         _tl124965125226_
                         _e124979125253_
                         _hd124978125256_
                         _tl124977125258_
                         _e124982125261_
                         _hd124981125264_
                         _tl124980125266_
                         _e124985125269_
                         _hd124984125272_
                         _tl124983125274_
                         _e124988125277_
                         _hd124987125280_
                         _tl124986125282_
                         _e124991125285_
                         _hd124990125288_
                         _tl124989125290_
                         _e124994125293_
                         _hd124993125296_
                         _tl124992125298_
                         _e124997125301_
                         _hd124996125304_
                         _tl124995125306_
                         _e125000125309_
                         _hd124999125312_
                         _tl124998125314_))))
                (___match129422129423_
                 _e124967125221_
                 _hd124966125224_
                 _tl124965125226_
                 _e124979125253_
                 _hd124978125256_
                 _tl124977125258_
                 _e124982125261_
                 _hd124981125264_
                 _tl124980125266_
                 _e124985125269_
                 _hd124984125272_
                 _tl124983125274_
                 _e124988125277_
                 _hd124987125280_
                 _tl124986125282_
                 _e124991125285_
                 _hd124990125288_
                 _tl124989125290_
                 _e124994125293_
                 _hd124993125296_
                 _tl124992125298_
                 _e124997125301_
                 _hd124996125304_
                 _tl124995125306_
                 _e125000125309_
                 _hd124999125312_
                 _tl124998125314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129422129423_
                                                     _e124967125221_
                                                     _hd124966125224_
                                                     _tl124965125226_
                                                     _e124979125253_
                                                     _hd124978125256_
                                                     _tl124977125258_
                                                     _e124982125261_
                                                     _hd124981125264_
                                                     _tl124980125266_
                                                     _e124985125269_
                                                     _hd124984125272_
                                                     _tl124983125274_
                                                     _e124988125277_
                                                     _hd124987125280_
                                                     _tl124986125282_
                                                     _e124991125285_
                                                     _hd124990125288_
                                                     _tl124989125290_
                                                     _e124994125293_
                                                     _hd124993125296_
                                                     _tl124992125298_
                                                     _e124997125301_
                                                     _hd124996125304_
                                                     _tl124995125306_
                                                     _e125000125309_
                                                     _hd124999125312_
                                                     _tl124998125314_))
                                                (___match129422129423_
                                                 _e124967125221_
                                                 _hd124966125224_
                                                 _tl124965125226_
                                                 _e124979125253_
                                                 _hd124978125256_
                                                 _tl124977125258_
                                                 _e124982125261_
                                                 _hd124981125264_
                                                 _tl124980125266_
                                                 _e124985125269_
                                                 _hd124984125272_
                                                 _tl124983125274_
                                                 _e124988125277_
                                                 _hd124987125280_
                                                 _tl124986125282_
                                                 _e124991125285_
                                                 _hd124990125288_
                                                 _tl124989125290_
                                                 _e124994125293_
                                                 _hd124993125296_
                                                 _tl124992125298_
                                                 _e124997125301_
                                                 _hd124996125304_
                                                 _tl124995125306_
                                                 _e125000125309_
                                                 _hd124999125312_
                                                 _tl124998125314_))))
                                        (___match129422129423_
                                         _e124967125221_
                                         _hd124966125224_
                                         _tl124965125226_
                                         _e124979125253_
                                         _hd124978125256_
                                         _tl124977125258_
                                         _e124982125261_
                                         _hd124981125264_
                                         _tl124980125266_
                                         _e124985125269_
                                         _hd124984125272_
                                         _tl124983125274_
                                         _e124988125277_
                                         _hd124987125280_
                                         _tl124986125282_
                                         _e124991125285_
                                         _hd124990125288_
                                         _tl124989125290_
                                         _e124994125293_
                                         _hd124993125296_
                                         _tl124992125298_
                                         _e124997125301_
                                         _hd124996125304_
                                         _tl124995125306_
                                         _e125000125309_
                                         _hd124999125312_
                                         _tl124998125314_))))
                                (___match129422129423_
                                 _e124967125221_
                                 _hd124966125224_
                                 _tl124965125226_
                                 _e124979125253_
                                 _hd124978125256_
                                 _tl124977125258_
                                 _e124982125261_
                                 _hd124981125264_
                                 _tl124980125266_
                                 _e124985125269_
                                 _hd124984125272_
                                 _tl124983125274_
                                 _e124988125277_
                                 _hd124987125280_
                                 _tl124986125282_
                                 _e124991125285_
                                 _hd124990125288_
                                 _tl124989125290_
                                 _e124994125293_
                                 _hd124993125296_
                                 _tl124992125298_
                                 _e124997125301_
                                 _hd124996125304_
                                 _tl124995125306_
                                 _e125000125309_
                                 _hd124999125312_
                                 _tl124998125314_))))
                        (___match129422129423_
                         _e124967125221_
                         _hd124966125224_
                         _tl124965125226_
                         _e124979125253_
                         _hd124978125256_
                         _tl124977125258_
                         _e124982125261_
                         _hd124981125264_
                         _tl124980125266_
                         _e124985125269_
                         _hd124984125272_
                         _tl124983125274_
                         _e124988125277_
                         _hd124987125280_
                         _tl124986125282_
                         _e124991125285_
                         _hd124990125288_
                         _tl124989125290_
                         _e124994125293_
                         _hd124993125296_
                         _tl124992125298_
                         _e124997125301_
                         _hd124996125304_
                         _tl124995125306_
                         _e125000125309_
                         _hd124999125312_
                         _tl124998125314_))
                    (___match129422129423_
                     _e124967125221_
                     _hd124966125224_
                     _tl124965125226_
                     _e124979125253_
                     _hd124978125256_
                     _tl124977125258_
                     _e124982125261_
                     _hd124981125264_
                     _tl124980125266_
                     _e124985125269_
                     _hd124984125272_
                     _tl124983125274_
                     _e124988125277_
                     _hd124987125280_
                     _tl124986125282_
                     _e124991125285_
                     _hd124990125288_
                     _tl124989125290_
                     _e124994125293_
                     _hd124993125296_
                     _tl124992125298_
                     _e124997125301_
                     _hd124996125304_
                     _tl124995125306_
                     _e125000125309_
                     _hd124999125312_
                     _tl124998125314_))
                (___kont129325129326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129325129326_))
                                            (___kont129325129326_))
                                        (___kont129325129326_))))
                                (___kont129325129326_))))
                        (___kont129325129326_))
                    (___kont129325129326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129325129326_))
                                                (___kont129325129326_))
                                            (___kont129325129326_))))
                                    (___kont129325129326_))))
                            (___kont129325129326_))
                        (___kont129325129326_))
                    (___kont129325129326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129325129326_))))
                                            (___kont129325129326_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124971125234_ _target124968125229_ '())))))
                   (___match129340129341_
                    (lambda (_e124919125481_
                             _hd124918125484_
                             _tl124917125486_
                             ___splice129313129314_
                             _target124920125489_
                             _tl124922125491_)
                      (letrec ((_loop124923125494_
                                (lambda (_hd124921125497_ _arg124927125499_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124921125497_))
                                      (let ((_e124924125502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124921125497_))))
                                        (let ((_lp-tl124926125507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124924125502_)))
                                              (_lp-hd124925125505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124924125502_))))
                                          (let ((__tmp130731
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124925125505_
                                                         _arg124927125499_))))
                                            (declare (not safe))
                                            (_loop124923125494_
                                             _lp-tl124926125507_
                                             __tmp130731))))
                                      (let ((_arg124928125510_
                                             (reverse _arg124927125499_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124917125486_))
                                            (let ((_e124931125513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124917125486_))))
                                              (let ((_tl124929125518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124931125513_)))
                                                    (_hd124930125516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124931125513_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124930125516_))
                                                    (let ((_e124934125521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124930125516_))))
                                                      (let ((_tl124932125526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124934125521_)))
                    (_hd124933125524_
                     (let () (declare (not safe)) (##car _e124934125521_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124933125524_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124933125524_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124932125526_))
                            (let ((_e124937125529_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124932125526_))))
                              (let ((_tl124935125534_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124937125529_)))
                                    (_hd124936125532_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124937125529_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124936125532_))
                                    (let ((_e124940125537_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124936125532_))))
                                      (let ((_tl124938125542_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124940125537_)))
                                            (_hd124939125540_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124940125537_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124939125540_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124939125540_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124938125542_))
                                                    (let ((_e124943125545_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124938125542_))))
                                                      (let ((_tl124941125550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124943125545_)))
                    (_hd124942125548_
                     (let () (declare (not safe)) (##car _e124943125545_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124941125550_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124935125534_))
                        (let ((___splice129315129316_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124935125534_
                                  '0))))
                          (let ((_tl124946125555_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129315129316_ '1)))
                                (_target124944125553_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129315129316_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124946125555_))
                                (letrec ((_loop124947125558_
                                          (lambda (_hd124945125561_
                                                   _xarg124951125563_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124945125561_))
                                                (let ((_e124948125566_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124945125561_))))
                                                  (let ((_lp-tl124950125571_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124948125566_)))
                                                        (_lp-hd124949125569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124948125566_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124949125569_))
                                                        (let ((_e124955125574_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124949125569_))))
                  (let ((_tl124953125579_
                         (let () (declare (not safe)) (##cdr _e124955125574_)))
                        (_hd124954125577_
                         (let ()
                           (declare (not safe))
                           (##car _e124955125574_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124954125577_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124954125577_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124953125579_))
                                (let ((_e124958125582_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124953125579_))))
                                  (let ((_tl124956125587_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124958125582_)))
                                        (_hd124957125585_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124958125582_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124956125587_))
                                        (let ((__tmp130730
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124957125585_
                                                       _xarg124951125563_))))
                                          (declare (not safe))
                                          (_loop124947125558_
                                           _lp-tl124950125571_
                                           __tmp130730))
                                        (___match129352129353_
                                         _e124919125481_
                                         _hd124918125484_
                                         _tl124917125486_
                                         ___splice129313129314_
                                         _target124920125489_
                                         _tl124922125491_))))
                                (___match129352129353_
                                 _e124919125481_
                                 _hd124918125484_
                                 _tl124917125486_
                                 ___splice129313129314_
                                 _target124920125489_
                                 _tl124922125491_))
                            (___match129352129353_
                             _e124919125481_
                             _hd124918125484_
                             _tl124917125486_
                             ___splice129313129314_
                             _target124920125489_
                             _tl124922125491_))
                        (___match129352129353_
                         _e124919125481_
                         _hd124918125484_
                         _tl124917125486_
                         ___splice129313129314_
                         _target124920125489_
                         _tl124922125491_))))
                (___match129352129353_
                 _e124919125481_
                 _hd124918125484_
                 _tl124917125486_
                 ___splice129313129314_
                 _target124920125489_
                 _tl124922125491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124952125590_
                                                       (reverse _xarg124951125563_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124929125518_))
                                                      (let ((_L125593_
                                                             _xarg124952125590_)
                                                            (_L125594_
                                                             _hd124942125548_)
                                                            (_L125595_
                                                             _arg124928125510_))
                                                        (if (and (let ((__tmp130728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130729
                                       (lambda (_g125623125626_
                                                _g125624125628_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125623125626_
                                                 _g125624125628_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130729 '() _L125595_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130728))
                         (fx= (length (let ((__tmp130726
                                             (lambda (_g125630125633_
                                                      _g125631125635_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125630125633_
                                                       _g125631125635_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130726 '() _L125595_)))
                              (length (let ((__tmp130727
                                             (lambda (_g125637125640_
                                                      _g125638125642_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125637125640_
                                                       _g125638125642_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130727 '() _L125593_))))
                         (let ((__tmp130724
                                (let ((__tmp130725
                                       (lambda (_g125644125647_
                                                _g125645125649_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125644125647_
                                                 _g125645125649_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130725 '() _L125595_)))
                               (__tmp130722
                                (let ((__tmp130723
                                       (lambda (_g125651125654_
                                                _g125652125656_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125651125654_
                                                 _g125652125656_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130723 '() _L125593_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130724
                                    __tmp130722))
                         (let ((__tmp130718
                                (let ((__tmp130721
                                       (lambda (_g125658125660_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125658125660_
                                            _L125594_))))
                                      (__tmp130719
                                       (let ((__tmp130720
                                              (lambda (_g125662125665_
                                                       _g125663125667_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125662125665_
                                                        _g125663125667_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130720 '() _L125595_))))
                                  (declare (not safe))
                                  (find __tmp130721 __tmp130719))))
                           (declare (not safe))
                           (not __tmp130718)))
                    (___kont129311129312_ _L125593_ _L125594_ _L125595_)
                    (___match129352129353_
                     _e124919125481_
                     _hd124918125484_
                     _tl124917125486_
                     ___splice129313129314_
                     _target124920125489_
                     _tl124922125491_)))
              (___match129352129353_
               _e124919125481_
               _hd124918125484_
               _tl124917125486_
               ___splice129313129314_
               _target124920125489_
               _tl124922125491_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124947125558_
                                     _target124944125553_
                                     '())))
                                (___match129352129353_
                                 _e124919125481_
                                 _hd124918125484_
                                 _tl124917125486_
                                 ___splice129313129314_
                                 _target124920125489_
                                 _tl124922125491_))))
                        (___match129352129353_
                         _e124919125481_
                         _hd124918125484_
                         _tl124917125486_
                         ___splice129313129314_
                         _target124920125489_
                         _tl124922125491_))
                    (___match129352129353_
                     _e124919125481_
                     _hd124918125484_
                     _tl124917125486_
                     ___splice129313129314_
                     _target124920125489_
                     _tl124922125491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129352129353_
                                                     _e124919125481_
                                                     _hd124918125484_
                                                     _tl124917125486_
                                                     ___splice129313129314_
                                                     _target124920125489_
                                                     _tl124922125491_))
                                                (___match129352129353_
                                                 _e124919125481_
                                                 _hd124918125484_
                                                 _tl124917125486_
                                                 ___splice129313129314_
                                                 _target124920125489_
                                                 _tl124922125491_))
                                            (___match129352129353_
                                             _e124919125481_
                                             _hd124918125484_
                                             _tl124917125486_
                                             ___splice129313129314_
                                             _target124920125489_
                                             _tl124922125491_))))
                                    (___match129352129353_
                                     _e124919125481_
                                     _hd124918125484_
                                     _tl124917125486_
                                     ___splice129313129314_
                                     _target124920125489_
                                     _tl124922125491_))))
                            (___match129352129353_
                             _e124919125481_
                             _hd124918125484_
                             _tl124917125486_
                             ___splice129313129314_
                             _target124920125489_
                             _tl124922125491_))
                        (___match129352129353_
                         _e124919125481_
                         _hd124918125484_
                         _tl124917125486_
                         ___splice129313129314_
                         _target124920125489_
                         _tl124922125491_))
                    (___match129352129353_
                     _e124919125481_
                     _hd124918125484_
                     _tl124917125486_
                     ___splice129313129314_
                     _target124920125489_
                     _tl124922125491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129352129353_
                                                     _e124919125481_
                                                     _hd124918125484_
                                                     _tl124917125486_
                                                     ___splice129313129314_
                                                     _target124920125489_
                                                     _tl124922125491_))))
                                            (___match129352129353_
                                             _e124919125481_
                                             _hd124918125484_
                                             _tl124917125486_
                                             ___splice129313129314_
                                             _target124920125489_
                                             _tl124922125491_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124923125494_ _target124920125489_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129309129310_))
                  (let ((_e124919125481_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129309129310_))))
                    (let ((_tl124917125486_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124919125481_)))
                          (_hd124918125484_
                           (let ()
                             (declare (not safe))
                             (##car _e124919125481_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124918125484_))
                          (let ((___splice129313129314_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124918125484_
                                    '0))))
                            (let ((_tl124922125491_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129313129314_ '1)))
                                  (_target124920125489_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129313129314_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124922125491_))
                                  (___match129340129341_
                                   _e124919125481_
                                   _hd124918125484_
                                   _tl124917125486_
                                   ___splice129313129314_
                                   _target124920125489_
                                   _tl124922125491_)
                                  (___match129352129353_
                                   _e124919125481_
                                   _hd124918125484_
                                   _tl124917125486_
                                   ___splice129313129314_
                                   _target124920125489_
                                   _tl124922125491_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124917125486_))
                              (let ((_e125034125089_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124917125486_))))
                                (let ((_tl125032125094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125034125089_)))
                                      (_hd125033125092_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125034125089_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125033125092_))
                                      (let ((_e125037125097_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125033125092_))))
                                        (let ((_tl125035125102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125037125097_)))
                                              (_hd125036125100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125037125097_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd125036125100_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd125036125100_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125035125102_))
                                                      (let ((_e125040125105_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125035125102_))))
                (let ((_tl125038125110_
                       (let () (declare (not safe)) (##cdr _e125040125105_)))
                      (_hd125039125108_
                       (let () (declare (not safe)) (##car _e125040125105_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125039125108_))
                      (let ((_e125043125113_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125039125108_))))
                        (let ((_tl125041125118_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125043125113_)))
                              (_hd125042125116_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125043125113_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125042125116_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125042125116_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125041125118_))
                                      (let ((_e125046125121_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125041125118_))))
                                        (let ((_tl125044125126_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125046125121_)))
                                              (_hd125045125124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125046125121_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125044125126_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125038125110_))
                                                  (let ((_e125049125129_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125038125110_))))
                                                    (let ((_tl125047125134_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125049125129_)))
                                                          (_hd125048125132_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125049125129_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125048125132_))
                                                          (let ((_e125052125137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125048125132_))))
                    (let ((_tl125050125142_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125052125137_)))
                          (_hd125051125140_
                           (let ()
                             (declare (not safe))
                             (##car _e125052125137_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125051125140_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125051125140_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125050125142_))
                                  (let ((_e125055125145_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125050125142_))))
                                    (let ((_tl125053125150_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125055125145_)))
                                          (_hd125054125148_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125055125145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125053125150_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125047125134_))
                                              (let ((_e125058125153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125047125134_))))
                                                (let ((_tl125056125158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125058125153_)))
                                                      (_hd125057125156_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125058125153_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125057125156_))
                                                      (let ((_e125061125161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125057125156_))))
                (let ((_tl125059125166_
                       (let () (declare (not safe)) (##cdr _e125061125161_)))
                      (_hd125060125164_
                       (let () (declare (not safe)) (##car _e125061125161_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125060125164_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125060125164_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125059125166_))
                              (let ((_e125064125169_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125059125166_))))
                                (let ((_tl125062125174_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125064125169_)))
                                      (_hd125063125172_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125064125169_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125062125174_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125056125158_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125032125094_))
                                              (___match129450129451_
                                               _e124919125481_
                                               _hd124918125484_
                                               _tl124917125486_
                                               _e125034125089_
                                               _hd125033125092_
                                               _tl125032125094_
                                               _e125037125097_
                                               _hd125036125100_
                                               _tl125035125102_
                                               _e125040125105_
                                               _hd125039125108_
                                               _tl125038125110_
                                               _e125043125113_
                                               _hd125042125116_
                                               _tl125041125118_
                                               _e125046125121_
                                               _hd125045125124_
                                               _tl125044125126_
                                               _e125049125129_
                                               _hd125048125132_
                                               _tl125047125134_
                                               _e125052125137_
                                               _hd125051125140_
                                               _tl125050125142_
                                               _e125055125145_
                                               _hd125054125148_
                                               _tl125053125150_
                                               _e125058125153_
                                               _hd125057125156_
                                               _tl125056125158_
                                               _e125061125161_
                                               _hd125060125164_
                                               _tl125059125166_
                                               _e125064125169_
                                               _hd125063125172_
                                               _tl125062125174_)
                                              (___kont129325129326_))
                                          (___kont129325129326_))
                                      (___kont129325129326_))))
                              (___kont129325129326_))
                          (___kont129325129326_))
                      (___kont129325129326_))))
              (___kont129325129326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129325129326_))
                                          (___kont129325129326_))))
                                  (___kont129325129326_))
                              (___kont129325129326_))
                          (___kont129325129326_))))
                  (___kont129325129326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129325129326_))
                                              (___kont129325129326_))))
                                      (___kont129325129326_))
                                  (___kont129325129326_))
                              (___kont129325129326_))))
                      (___kont129325129326_))))
              (___kont129325129326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129325129326_))
                                              (___kont129325129326_))))
                                      (___kont129325129326_))))
                              (___kont129325129326_)))))
                  (___kont129325129326_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124375_)
        (let* ((___stx129453129454_ _form124375_)
               (_g124379124503_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129453129454_)))))
          (let ((___kont129455129456_
                 (lambda (_L124873_ _L124874_ _L124875_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124874_))))
                (___kont129461129462_
                 (lambda (_L124721_ _L124722_ _L124723_ _L124724_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124721_))))
                (___kont129465129466_
                 (lambda (_L124588_ _L124589_ _L124590_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124588_)))))
            (let* ((___match129562129563_
                    (lambda (_e124471124508_
                             _hd124470124511_
                             _tl124469124513_
                             _e124474124516_
                             _hd124473124519_
                             _tl124472124521_
                             _e124477124524_
                             _hd124476124527_
                             _tl124475124529_
                             _e124480124532_
                             _hd124479124535_
                             _tl124478124537_
                             _e124483124540_
                             _hd124482124543_
                             _tl124481124545_
                             _e124486124548_
                             _hd124485124551_
                             _tl124484124553_
                             _e124489124556_
                             _hd124488124559_
                             _tl124487124561_
                             _e124492124564_
                             _hd124491124567_
                             _tl124490124569_
                             _e124495124572_
                             _hd124494124575_
                             _tl124493124577_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124487124561_))
                          (let ((_e124498124580_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124487124561_))))
                            (let ((_tl124496124585_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124498124580_)))
                                  (_hd124497124583_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124498124580_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124496124585_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124472124521_))
                                      (___kont129465129466_
                                       _hd124494124575_
                                       _hd124485124551_
                                       _hd124470124511_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124379124503_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124379124503_)))))
                          (let () (declare (not safe)) (_g124379124503_)))))
                   (___match129492129493_
                    (lambda (_e124432124625_
                             _hd124431124628_
                             _tl124430124630_
                             ___splice129463129464_
                             _target124433124633_
                             _tl124435124635_)
                      (letrec ((_loop124436124638_
                                (lambda (_hd124434124641_ _arg124440124643_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124434124641_))
                                      (let ((_e124437124646_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124434124641_))))
                                        (let ((_lp-tl124439124651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124437124646_)))
                                              (_lp-hd124438124649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124437124646_))))
                                          (let ((__tmp130732
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124438124649_
                                                         _arg124440124643_))))
                                            (declare (not safe))
                                            (_loop124436124638_
                                             _lp-tl124439124651_
                                             __tmp130732))))
                                      (let ((_arg124441124654_
                                             (reverse _arg124440124643_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124430124630_))
                                            (let ((_e124444124657_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124430124630_))))
                                              (let ((_tl124442124662_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124444124657_)))
                                                    (_hd124443124660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124444124657_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124443124660_))
                                                    (let ((_e124447124665_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124443124660_))))
                                                      (let ((_tl124445124670_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124447124665_)))
                    (_hd124446124668_
                     (let () (declare (not safe)) (##car _e124447124665_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124446124668_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124446124668_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124445124670_))
                            (let ((_e124450124673_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124445124670_))))
                              (let ((_tl124448124678_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124450124673_)))
                                    (_hd124449124676_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124450124673_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124449124676_))
                                    (let ((_e124453124681_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124449124676_))))
                                      (let ((_tl124451124686_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124453124681_)))
                                            (_hd124452124684_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124453124681_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124452124684_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124452124684_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124451124686_))
                                                    (let ((_e124456124689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124451124686_))))
                                                      (let ((_tl124454124694_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124456124689_)))
                    (_hd124455124692_
                     (let () (declare (not safe)) (##car _e124456124689_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124454124694_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124448124678_))
                        (let ((_e124459124697_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124448124678_))))
                          (let ((_tl124457124702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124459124697_)))
                                (_hd124458124700_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124459124697_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124458124700_))
                                (let ((_e124462124705_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124458124700_))))
                                  (let ((_tl124460124710_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124462124705_)))
                                        (_hd124461124708_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124462124705_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124461124708_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124461124708_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124460124710_))
                                                (let ((_e124465124713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124460124710_))))
                                                  (let ((_tl124463124718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124465124713_)))
                                                        (_hd124464124716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124465124713_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124463124718_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124442124662_))
                                                            (___kont129461129462_
                                                             _hd124464124716_
                                                             _hd124455124692_
                                                             _tl124435124635_
                                                             _arg124441124654_)
                                                            (___match129562129563_
                                                             _e124432124625_
                                                             _hd124431124628_
                                                             _tl124430124630_
                                                             _e124444124657_
                                                             _hd124443124660_
                                                             _tl124442124662_
                                                             _e124447124665_
                                                             _hd124446124668_
                                                             _tl124445124670_
                                                             _e124450124673_
                                                             _hd124449124676_
                                                             _tl124448124678_
                                                             _e124453124681_
                                                             _hd124452124684_
                                                             _tl124451124686_
                                                             _e124456124689_
                                                             _hd124455124692_
                                                             _tl124454124694_
                                                             _e124459124697_
                                                             _hd124458124700_
                                                             _tl124457124702_
                                                             _e124462124705_
                                                             _hd124461124708_
                                                             _tl124460124710_
                                                             _e124465124713_
                                                             _hd124464124716_
                                                             _tl124463124718_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124379124503_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124379124503_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124379124503_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124379124503_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124379124503_)))))
                        (let () (declare (not safe)) (_g124379124503_)))
                    (let () (declare (not safe)) (_g124379124503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124379124503_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124379124503_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124379124503_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124379124503_)))))
                            (let () (declare (not safe)) (_g124379124503_)))
                        (let () (declare (not safe)) (_g124379124503_)))
                    (let () (declare (not safe)) (_g124379124503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124379124503_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124379124503_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124436124638_ _target124433124633_ '())))))
                   (___match129480129481_
                    (lambda (_e124386124761_
                             _hd124385124764_
                             _tl124384124766_
                             ___splice129457129458_
                             _target124387124769_
                             _tl124389124771_)
                      (letrec ((_loop124390124774_
                                (lambda (_hd124388124777_ _arg124394124779_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124388124777_))
                                      (let ((_e124391124782_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124388124777_))))
                                        (let ((_lp-tl124393124787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124391124782_)))
                                              (_lp-hd124392124785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124391124782_))))
                                          (let ((__tmp130734
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124392124785_
                                                         _arg124394124779_))))
                                            (declare (not safe))
                                            (_loop124390124774_
                                             _lp-tl124393124787_
                                             __tmp130734))))
                                      (let ((_arg124395124790_
                                             (reverse _arg124394124779_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124384124766_))
                                            (let ((_e124398124793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124384124766_))))
                                              (let ((_tl124396124798_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124398124793_)))
                                                    (_hd124397124796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124398124793_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124397124796_))
                                                    (let ((_e124401124801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124397124796_))))
                                                      (let ((_tl124399124806_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124401124801_)))
                    (_hd124400124804_
                     (let () (declare (not safe)) (##car _e124401124801_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124400124804_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124400124804_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124399124806_))
                            (let ((_e124404124809_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124399124806_))))
                              (let ((_tl124402124814_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124404124809_)))
                                    (_hd124403124812_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124404124809_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124403124812_))
                                    (let ((_e124407124817_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124403124812_))))
                                      (let ((_tl124405124822_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124407124817_)))
                                            (_hd124406124820_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124407124817_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124406124820_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124406124820_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124405124822_))
                                                    (let ((_e124410124825_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124405124822_))))
                                                      (let ((_tl124408124830_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124410124825_)))
                    (_hd124409124828_
                     (let () (declare (not safe)) (##car _e124410124825_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124408124830_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124402124814_))
                        (let ((___splice129459129460_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124402124814_
                                  '0))))
                          (let ((_tl124413124835_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129459129460_ '1)))
                                (_target124411124833_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129459129460_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124413124835_))
                                (letrec ((_loop124414124838_
                                          (lambda (_hd124412124841_
                                                   _xarg124418124843_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124412124841_))
                                                (let ((_e124415124846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124412124841_))))
                                                  (let ((_lp-tl124417124851_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124415124846_)))
                                                        (_lp-hd124416124849_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124415124846_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124416124849_))
                                                        (let ((_e124422124854_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124416124849_))))
                  (let ((_tl124420124859_
                         (let () (declare (not safe)) (##cdr _e124422124854_)))
                        (_hd124421124857_
                         (let ()
                           (declare (not safe))
                           (##car _e124422124854_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124421124857_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124421124857_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124420124859_))
                                (let ((_e124425124862_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124420124859_))))
                                  (let ((_tl124423124867_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124425124862_)))
                                        (_hd124424124865_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124425124862_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124423124867_))
                                        (let ((__tmp130733
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124424124865_
                                                       _xarg124418124843_))))
                                          (declare (not safe))
                                          (_loop124414124838_
                                           _lp-tl124417124851_
                                           __tmp130733))
                                        (___match129492129493_
                                         _e124386124761_
                                         _hd124385124764_
                                         _tl124384124766_
                                         ___splice129457129458_
                                         _target124387124769_
                                         _tl124389124771_))))
                                (___match129492129493_
                                 _e124386124761_
                                 _hd124385124764_
                                 _tl124384124766_
                                 ___splice129457129458_
                                 _target124387124769_
                                 _tl124389124771_))
                            (___match129492129493_
                             _e124386124761_
                             _hd124385124764_
                             _tl124384124766_
                             ___splice129457129458_
                             _target124387124769_
                             _tl124389124771_))
                        (___match129492129493_
                         _e124386124761_
                         _hd124385124764_
                         _tl124384124766_
                         ___splice129457129458_
                         _target124387124769_
                         _tl124389124771_))))
                (___match129492129493_
                 _e124386124761_
                 _hd124385124764_
                 _tl124384124766_
                 ___splice129457129458_
                 _target124387124769_
                 _tl124389124771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124419124870_
                                                       (reverse _xarg124418124843_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124396124798_))
                                                      (___kont129455129456_
                                                       _xarg124419124870_
                                                       _hd124409124828_
                                                       _arg124395124790_)
                                                      (___match129492129493_
                                                       _e124386124761_
                                                       _hd124385124764_
                                                       _tl124384124766_
                                                       ___splice129457129458_
                                                       _target124387124769_
                                                       _tl124389124771_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124414124838_
                                     _target124411124833_
                                     '())))
                                (___match129492129493_
                                 _e124386124761_
                                 _hd124385124764_
                                 _tl124384124766_
                                 ___splice129457129458_
                                 _target124387124769_
                                 _tl124389124771_))))
                        (___match129492129493_
                         _e124386124761_
                         _hd124385124764_
                         _tl124384124766_
                         ___splice129457129458_
                         _target124387124769_
                         _tl124389124771_))
                    (___match129492129493_
                     _e124386124761_
                     _hd124385124764_
                     _tl124384124766_
                     ___splice129457129458_
                     _target124387124769_
                     _tl124389124771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129492129493_
                                                     _e124386124761_
                                                     _hd124385124764_
                                                     _tl124384124766_
                                                     ___splice129457129458_
                                                     _target124387124769_
                                                     _tl124389124771_))
                                                (___match129492129493_
                                                 _e124386124761_
                                                 _hd124385124764_
                                                 _tl124384124766_
                                                 ___splice129457129458_
                                                 _target124387124769_
                                                 _tl124389124771_))
                                            (___match129492129493_
                                             _e124386124761_
                                             _hd124385124764_
                                             _tl124384124766_
                                             ___splice129457129458_
                                             _target124387124769_
                                             _tl124389124771_))))
                                    (___match129492129493_
                                     _e124386124761_
                                     _hd124385124764_
                                     _tl124384124766_
                                     ___splice129457129458_
                                     _target124387124769_
                                     _tl124389124771_))))
                            (___match129492129493_
                             _e124386124761_
                             _hd124385124764_
                             _tl124384124766_
                             ___splice129457129458_
                             _target124387124769_
                             _tl124389124771_))
                        (___match129492129493_
                         _e124386124761_
                         _hd124385124764_
                         _tl124384124766_
                         ___splice129457129458_
                         _target124387124769_
                         _tl124389124771_))
                    (___match129492129493_
                     _e124386124761_
                     _hd124385124764_
                     _tl124384124766_
                     ___splice129457129458_
                     _target124387124769_
                     _tl124389124771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129492129493_
                                                     _e124386124761_
                                                     _hd124385124764_
                                                     _tl124384124766_
                                                     ___splice129457129458_
                                                     _target124387124769_
                                                     _tl124389124771_))))
                                            (___match129492129493_
                                             _e124386124761_
                                             _hd124385124764_
                                             _tl124384124766_
                                             ___splice129457129458_
                                             _target124387124769_
                                             _tl124389124771_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124390124774_ _target124387124769_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129453129454_))
                  (let ((_e124386124761_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129453129454_))))
                    (let ((_tl124384124766_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124386124761_)))
                          (_hd124385124764_
                           (let ()
                             (declare (not safe))
                             (##car _e124386124761_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124385124764_))
                          (let ((___splice129457129458_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124385124764_
                                    '0))))
                            (let ((_tl124389124771_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129457129458_ '1)))
                                  (_target124387124769_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129457129458_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124389124771_))
                                  (___match129480129481_
                                   _e124386124761_
                                   _hd124385124764_
                                   _tl124384124766_
                                   ___splice129457129458_
                                   _target124387124769_
                                   _tl124389124771_)
                                  (___match129492129493_
                                   _e124386124761_
                                   _hd124385124764_
                                   _tl124384124766_
                                   ___splice129457129458_
                                   _target124387124769_
                                   _tl124389124771_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124384124766_))
                              (let ((_e124474124516_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124384124766_))))
                                (let ((_tl124472124521_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124474124516_)))
                                      (_hd124473124519_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124474124516_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124473124519_))
                                      (let ((_e124477124524_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124473124519_))))
                                        (let ((_tl124475124529_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124477124524_)))
                                              (_hd124476124527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124477124524_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124476124527_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124476124527_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124475124529_))
                                                      (let ((_e124480124532_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124475124529_))))
                (let ((_tl124478124537_
                       (let () (declare (not safe)) (##cdr _e124480124532_)))
                      (_hd124479124535_
                       (let () (declare (not safe)) (##car _e124480124532_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124479124535_))
                      (let ((_e124483124540_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124479124535_))))
                        (let ((_tl124481124545_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124483124540_)))
                              (_hd124482124543_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124483124540_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124482124543_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124482124543_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124481124545_))
                                      (let ((_e124486124548_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124481124545_))))
                                        (let ((_tl124484124553_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124486124548_)))
                                              (_hd124485124551_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124486124548_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124484124553_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124478124537_))
                                                  (let ((_e124489124556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124478124537_))))
                                                    (let ((_tl124487124561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124489124556_)))
                                                          (_hd124488124559_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124489124556_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124488124559_))
                                                          (let ((_e124492124564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124488124559_))))
                    (let ((_tl124490124569_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124492124564_)))
                          (_hd124491124567_
                           (let ()
                             (declare (not safe))
                             (##car _e124492124564_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124491124567_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124491124567_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124490124569_))
                                  (let ((_e124495124572_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124490124569_))))
                                    (let ((_tl124493124577_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124495124572_)))
                                          (_hd124494124575_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124495124572_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124493124577_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124487124561_))
                                              (let ((_e124498124580_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124487124561_))))
                                                (let ((_tl124496124585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124498124580_)))
                                                      (_hd124497124583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124498124580_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124496124585_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124472124521_))
                                                          (___kont129465129466_
                                                           _hd124494124575_
                                                           _hd124485124551_
                                                           _hd124385124764_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124379124503_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124379124503_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124379124503_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124379124503_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124379124503_)))
                              (let () (declare (not safe)) (_g124379124503_)))
                          (let () (declare (not safe)) (_g124379124503_)))))
                  (let () (declare (not safe)) (_g124379124503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124379124503_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124379124503_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124379124503_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124379124503_)))
                              (let ()
                                (declare (not safe))
                                (_g124379124503_)))))
                      (let () (declare (not safe)) (_g124379124503_)))))
              (let () (declare (not safe)) (_g124379124503_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124379124503_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124379124503_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124379124503_)))))
                              (let ()
                                (declare (not safe))
                                (_g124379124503_))))))
                  (let () (declare (not safe)) (_g124379124503_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form124179_)
        (let* ((_g124181124195_
                (lambda (_g124182124192_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124182124192_))))
               (_g124180124372_
                (lambda (_g124182124198_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124182124198_))
                      (let ((_e124187124200_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124182124198_))))
                        (let ((_hd124186124203_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124187124200_)))
                              (_tl124185124205_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124187124200_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124185124205_))
                              (let ((_e124190124208_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124185124205_))))
                                (let ((_hd124189124211_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124190124208_)))
                                      (_tl124188124213_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124190124208_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124188124213_))
                                      ((lambda (_L124216_ _L124217_)
                                         (let* ((___stx129575129576_ _L124217_)
                                                (_g124232124260_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129575129576_)))))
                                           (let ((___kont129577129578_
                                                  (lambda (_L124351_)
                                                    (length (let ((__tmp130735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124361124364_ _g124362124366_)
                             (let ()
                               (declare (not safe))
                               (cons _g124361124364_ _g124362124366_)))))
                      (declare (not safe))
                      (foldr1 __tmp130735 '() _L124351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129581129582_
                                                  (lambda (_L124302_ _L124303_)
                                                    (let ((__tmp130736
                                                           (length (let ((__tmp130737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124314124317_ _g124315124319_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g124314124317_
                                            _g124315124319_)))))
                             (declare (not safe))
                             (foldr1 __tmp130737 '() _L124303_)))))
              (declare (not safe))
              (cons __tmp130736 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129585129586_
                                                  (lambda (_L124265_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129600129601_
                                                     (lambda (___splice129583129584_
                                                              _target124246124278_
                                                              _tl124248124280_)
                                                       (letrec ((_loop124249124283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124247124286_ _arg124253124288_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124247124286_))
                               (let ((_e124250124291_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124247124286_))))
                                 (let ((_lp-tl124252124296_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124250124291_)))
                                       (_lp-hd124251124294_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124250124291_))))
                                   (let ((__tmp130738
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124251124294_
                                                  _arg124253124288_))))
                                     (declare (not safe))
                                     (_loop124249124283_
                                      _lp-tl124252124296_
                                      __tmp130738))))
                               (let ((_arg124254124299_
                                      (reverse _arg124253124288_)))
                                 (___kont129581129582_
                                  _tl124248124280_
                                  _arg124254124299_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124249124283_ _target124246124278_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129594129595_
                                                     (lambda (___splice129579129580_
                                                              _target124235124327_
                                                              _tl124237124329_)
                                                       (letrec ((_loop124238124332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124236124335_ _arg124242124337_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124236124335_))
                               (let ((_e124239124340_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124236124335_))))
                                 (let ((_lp-tl124241124345_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124239124340_)))
                                       (_lp-hd124240124343_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124239124340_))))
                                   (let ((__tmp130739
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124240124343_
                                                  _arg124242124337_))))
                                     (declare (not safe))
                                     (_loop124238124332_
                                      _lp-tl124241124345_
                                      __tmp130739))))
                               (let ((_arg124243124348_
                                      (reverse _arg124242124337_)))
                                 (___kont129577129578_ _arg124243124348_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124238124332_ _target124235124327_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129575129576_))
                                                   (let ((___splice129579129580_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129575129576_
                                                             '0))))
                                                     (let ((_tl124237124329_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129579129580_
                                                               '1)))
                                                           (_target124235124327_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129579129580_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl124237124329_))
                                                           (___match129594129595_
                                                            ___splice129579129580_
                                                            _target124235124327_
                                                            _tl124237124329_)
                                                           (___match129600129601_
                                                            ___splice129579129580_
                                                            _target124235124327_
                                                            _tl124237124329_))))
                                                   (___kont129585129586_
                                                    ___stx129575129576_))))))
                                       _hd124189124211_
                                       _hd124186124203_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124181124195_ _g124182124198_)))))
                              (let ()
                                (declare (not safe))
                                (_g124181124195_ _g124182124198_)))))
                      (let ()
                        (declare (not safe))
                        (_g124181124195_ _g124182124198_))))))
          (declare (not safe))
          (_g124180124372_ _form124179_))))
    (define gxc#lambda-expr?
      (lambda (_expr124132_)
        (let* ((___stx129603129604_ _expr124132_)
               (_g124135124145_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129603129604_)))))
          (let ((___kont129605129606_ (lambda (_L124165_) '#t))
                (___kont129607129608_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129603129604_))
                (let ((_e124140124157_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129603129604_))))
                  (let ((_tl124138124162_
                         (let () (declare (not safe)) (##cdr _e124140124157_)))
                        (_hd124139124160_
                         (let ()
                           (declare (not safe))
                           (##car _e124140124157_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124139124160_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd124139124160_))
                            (___kont129605129606_ _tl124138124162_)
                            (___kont129607129608_))
                        (___kont129607129608_))))
                (___kont129607129608_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr124085_)
        (let* ((___stx129621129622_ _expr124085_)
               (_g124088124098_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129621129622_)))))
          (let ((___kont129623129624_ (lambda (_L124118_) '#t))
                (___kont129625129626_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129621129622_))
                (let ((_e124093124110_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129621129622_))))
                  (let ((_tl124091124115_
                         (let () (declare (not safe)) (##cdr _e124093124110_)))
                        (_hd124092124113_
                         (let ()
                           (declare (not safe))
                           (##car _e124093124110_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124092124113_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd124092124113_))
                            (___kont129623129624_ _tl124091124115_)
                            (___kont129625129626_))
                        (___kont129625129626_))))
                (___kont129625129626_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123954_)
        (let* ((___stx129639129640_ _expr123954_)
               (_g123957123987_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129639129640_)))))
          (let ((___kont129641129642_
                 (lambda (_L124055_ _L124056_ _L124057_)
                   (if (let () (declare (not safe)) (gx#identifier? _L124057_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L124056_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L124055_))
                           '#f)
                       '#f)))
                (___kont129643129644_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129639129640_))
                (let ((_e123964123999_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129639129640_))))
                  (let ((_tl123962124004_
                         (let () (declare (not safe)) (##cdr _e123964123999_)))
                        (_hd123963124002_
                         (let ()
                           (declare (not safe))
                           (##car _e123964123999_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123963124002_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123963124002_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123962124004_))
                                (let ((_e123967124007_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123962124004_))))
                                  (let ((_tl123965124012_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123967124007_)))
                                        (_hd123966124010_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123967124007_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123966124010_))
                                        (let ((_e123970124015_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123966124010_))))
                                          (let ((_tl123968124020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123970124015_)))
                                                (_hd123969124018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123970124015_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123969124018_))
                                                (let ((_e123973124023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123969124018_))))
                                                  (let ((_tl123971124028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123973124023_)))
                                                        (_hd123972124026_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123973124023_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123972124026_))
                                                        (let ((_e123976124031_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123972124026_))))
                  (let ((_tl123974124036_
                         (let () (declare (not safe)) (##cdr _e123976124031_)))
                        (_hd123975124034_
                         (let ()
                           (declare (not safe))
                           (##car _e123976124031_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123974124036_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123971124028_))
                            (let ((_e123979124039_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123971124028_))))
                              (let ((_tl123977124044_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123979124039_)))
                                    (_hd123978124042_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123979124039_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123977124044_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123968124020_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123965124012_))
                                            (let ((_e123982124047_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123965124012_))))
                                              (let ((_tl123980124052_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123982124047_)))
                                                    (_hd123981124050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123982124047_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123980124052_))
                                                    (___kont129641129642_
                                                     _hd123981124050_
                                                     _hd123978124042_
                                                     _hd123975124034_)
                                                    (___kont129643129644_))))
                                            (___kont129643129644_))
                                        (___kont129643129644_))
                                    (___kont129643129644_))))
                            (___kont129643129644_))
                        (___kont129643129644_))))
                (___kont129643129644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129643129644_))))
                                        (___kont129643129644_))))
                                (___kont129643129644_))
                            (___kont129643129644_))
                        (___kont129643129644_))))
                (___kont129643129644_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr123279_)
        (let* ((___stx129701129702_ _expr123279_)
               (_g123282123440_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129701129702_)))))
          (let ((___kont129703129704_
                 (lambda (_L123828_
                          _L123829_
                          _L123830_
                          _L123831_
                          _L123832_
                          _L123833_
                          _L123834_
                          _L123835_
                          _L123836_
                          _L123837_
                          _L123838_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123835_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123831_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123830_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123838_
                                      _L123829_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123837_
                                          _L123834_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123832_
                                              _L123828_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123836_
                                              _L123833_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129705129706_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129701129702_))
                (let ((_e123297123452_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129701129702_))))
                  (let ((_tl123295123457_
                         (let () (declare (not safe)) (##cdr _e123297123452_)))
                        (_hd123296123455_
                         (let ()
                           (declare (not safe))
                           (##car _e123297123452_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123296123455_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123296123455_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123295123457_))
                                (let ((_e123300123460_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123295123457_))))
                                  (let ((_tl123298123465_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123300123460_)))
                                        (_hd123299123463_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123300123460_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123299123463_))
                                        (let ((_e123303123468_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123299123463_))))
                                          (let ((_tl123301123473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123303123468_)))
                                                (_hd123302123471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123303123468_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123302123471_))
                                                (let ((_e123306123476_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123302123471_))))
                                                  (let ((_tl123304123481_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123306123476_)))
                                                        (_hd123305123479_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123306123476_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123305123479_))
                                                        (let ((_e123309123484_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123305123479_))))
                  (let ((_tl123307123489_
                         (let () (declare (not safe)) (##cdr _e123309123484_)))
                        (_hd123308123487_
                         (let ()
                           (declare (not safe))
                           (##car _e123309123484_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123307123489_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123304123481_))
                            (let ((_e123312123492_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123304123481_))))
                              (let ((_tl123310123497_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123312123492_)))
                                    (_hd123311123495_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123312123492_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123311123495_))
                                    (let ((_e123315123500_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123311123495_))))
                                      (let ((_tl123313123505_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123315123500_)))
                                            (_hd123314123503_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123315123500_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123314123503_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd123314123503_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123313123505_))
                                                    (let ((_e123318123508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123313123505_))))
                                                      (let ((_tl123316123513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123318123508_)))
                    (_hd123317123511_
                     (let () (declare (not safe)) (##car _e123318123508_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123317123511_))
                    (let ((_e123321123516_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123317123511_))))
                      (let ((_tl123319123521_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123321123516_)))
                            (_hd123320123519_
                             (let ()
                               (declare (not safe))
                               (##car _e123321123516_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123320123519_))
                            (let ((_e123324123524_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123320123519_))))
                              (let ((_tl123322123529_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123324123524_)))
                                    (_hd123323123527_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123324123524_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123323123527_))
                                    (let ((_e123327123532_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123323123527_))))
                                      (let ((_tl123325123537_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123327123532_)))
                                            (_hd123326123535_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123327123532_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123325123537_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123322123529_))
                                                (let ((_e123330123540_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123322123529_))))
                                                  (let ((_tl123328123545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123330123540_)))
                                                        (_hd123329123543_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123330123540_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123328123545_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123319123521_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123316123513_))
                        (let ((_e123333123548_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123316123513_))))
                          (let ((_tl123331123553_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123333123548_)))
                                (_hd123332123551_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123333123548_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123332123551_))
                                (let ((_e123336123556_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123332123551_))))
                                  (let ((_tl123334123561_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123336123556_)))
                                        (_hd123335123559_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123336123556_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123335123559_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123335123559_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123334123561_))
                                                (let ((_e123339123564_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123334123561_))))
                                                  (let ((_tl123337123569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123339123564_)))
                                                        (_hd123338123567_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123339123564_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123338123567_))
                                                        (let ((_e123342123572_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123338123567_))))
                  (let ((_tl123340123577_
                         (let () (declare (not safe)) (##cdr _e123342123572_)))
                        (_hd123341123575_
                         (let ()
                           (declare (not safe))
                           (##car _e123342123572_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123337123569_))
                        (let ((_e123345123580_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123337123569_))))
                          (let ((_tl123343123585_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123345123580_)))
                                (_hd123344123583_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123345123580_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123344123583_))
                                (let ((_e123348123588_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123344123583_))))
                                  (let ((_tl123346123593_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123348123588_)))
                                        (_hd123347123591_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123348123588_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123347123591_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123347123591_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123346123593_))
                                                (let ((_e123351123596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123346123593_))))
                                                  (let ((_tl123349123601_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123351123596_)))
                                                        (_hd123350123599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123351123596_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123350123599_))
                                                        (let ((_e123354123604_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123350123599_))))
                  (let ((_tl123352123609_
                         (let () (declare (not safe)) (##cdr _e123354123604_)))
                        (_hd123353123607_
                         (let ()
                           (declare (not safe))
                           (##car _e123354123604_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123353123607_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123353123607_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123352123609_))
                                (let ((_e123357123612_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123352123609_))))
                                  (let ((_tl123355123617_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123357123612_)))
                                        (_hd123356123615_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123357123612_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123355123617_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123349123601_))
                                            (let ((_e123360123620_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123349123601_))))
                                              (let ((_tl123358123625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123360123620_)))
                                                    (_hd123359123623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123360123620_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123359123623_))
                                                    (let ((_e123363123628_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123359123623_))))
                                                      (let ((_tl123361123633_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123363123628_)))
                    (_hd123362123631_
                     (let () (declare (not safe)) (##car _e123363123628_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123362123631_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123362123631_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123361123633_))
                            (let ((_e123366123636_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123361123633_))))
                              (let ((_tl123364123641_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123366123636_)))
                                    (_hd123365123639_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123366123636_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123364123641_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123358123625_))
                                        (let ((_e123369123644_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123358123625_))))
                                          (let ((_tl123367123649_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123369123644_)))
                                                (_hd123368123647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123369123644_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123368123647_))
                                                (let ((_e123372123652_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123368123647_))))
                                                  (let ((_tl123370123657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123372123652_)))
                                                        (_hd123371123655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123372123652_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123371123655_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123371123655_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123370123657_))
                        (let ((_e123375123660_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123370123657_))))
                          (let ((_tl123373123665_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123375123660_)))
                                (_hd123374123663_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123375123660_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123373123665_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123343123585_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123331123553_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123310123497_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123301123473_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123298123465_))
                                                    (let ((_e123378123668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123298123465_))))
                                                      (let ((_tl123376123673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123378123668_)))
                    (_hd123377123671_
                     (let () (declare (not safe)) (##car _e123378123668_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123377123671_))
                    (let ((_e123381123676_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123377123671_))))
                      (let ((_tl123379123681_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123381123676_)))
                            (_hd123380123679_
                             (let ()
                               (declare (not safe))
                               (##car _e123381123676_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123380123679_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123380123679_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123379123681_))
                                    (let ((_e123384123684_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123379123681_))))
                                      (let ((_tl123382123689_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123384123684_)))
                                            (_hd123383123687_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123384123684_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123382123689_))
                                            (let ((_e123387123692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123382123689_))))
                                              (let ((_tl123385123697_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123387123692_)))
                                                    (_hd123386123695_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123387123692_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123386123695_))
                                                    (let ((_e123390123700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123386123695_))))
                                                      (let ((_tl123388123705_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123390123700_)))
                    (_hd123389123703_
                     (let () (declare (not safe)) (##car _e123390123700_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123389123703_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123389123703_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123388123705_))
                            (let ((_e123393123708_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123388123705_))))
                              (let ((_tl123391123713_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123393123708_)))
                                    (_hd123392123711_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123393123708_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123392123711_))
                                    (let ((_e123396123716_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123392123711_))))
                                      (let ((_tl123394123721_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123396123716_)))
                                            (_hd123395123719_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123396123716_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123395123719_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123395123719_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123394123721_))
                                                    (let ((_e123399123724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123394123721_))))
                                                      (let ((_tl123397123729_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123399123724_)))
                    (_hd123398123727_
                     (let () (declare (not safe)) (##car _e123399123724_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123397123729_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123391123713_))
                        (let ((_e123402123732_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123391123713_))))
                          (let ((_tl123400123737_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123402123732_)))
                                (_hd123401123735_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123402123732_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123401123735_))
                                (let ((_e123405123740_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123401123735_))))
                                  (let ((_tl123403123745_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123405123740_)))
                                        (_hd123404123743_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123405123740_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123404123743_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123404123743_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123403123745_))
                                                (let ((_e123408123748_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123403123745_))))
                                                  (let ((_tl123406123753_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123408123748_)))
                                                        (_hd123407123751_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123408123748_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123406123753_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123400123737_))
                                                            (let ((_e123411123756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123400123737_))))
                      (let ((_tl123409123761_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123411123756_)))
                            (_hd123410123759_
                             (let ()
                               (declare (not safe))
                               (##car _e123411123756_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123410123759_))
                            (let ((_e123414123764_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123410123759_))))
                              (let ((_tl123412123769_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123414123764_)))
                                    (_hd123413123767_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123414123764_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123413123767_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123413123767_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123412123769_))
                                            (let ((_e123417123772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123412123769_))))
                                              (let ((_tl123415123777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123417123772_)))
                                                    (_hd123416123775_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123417123772_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123415123777_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123409123761_))
                                                        (let ((_e123420123780_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123409123761_))))
                  (let ((_tl123418123785_
                         (let () (declare (not safe)) (##cdr _e123420123780_)))
                        (_hd123419123783_
                         (let ()
                           (declare (not safe))
                           (##car _e123420123780_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123419123783_))
                        (let ((_e123423123788_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123419123783_))))
                          (let ((_tl123421123793_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123423123788_)))
                                (_hd123422123791_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123423123788_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123422123791_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123422123791_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123421123793_))
                                        (let ((_e123426123796_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123421123793_))))
                                          (let ((_tl123424123801_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123426123796_)))
                                                (_hd123425123799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123426123796_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123424123801_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123418123785_))
                                                    (let ((_e123429123804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123418123785_))))
                                                      (let ((_tl123427123809_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123429123804_)))
                    (_hd123428123807_
                     (let () (declare (not safe)) (##car _e123429123804_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123428123807_))
                    (let ((_e123432123812_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123428123807_))))
                      (let ((_tl123430123817_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123432123812_)))
                            (_hd123431123815_
                             (let ()
                               (declare (not safe))
                               (##car _e123432123812_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123431123815_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123431123815_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123430123817_))
                                    (let ((_e123435123820_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123430123817_))))
                                      (let ((_tl123433123825_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123435123820_)))
                                            (_hd123434123823_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123435123820_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123433123825_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123427123809_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123385123697_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123376123673_))
                                                        (___kont129703129704_
                                                         _hd123434123823_
                                                         _hd123425123799_
                                                         _hd123407123751_
                                                         _hd123398123727_
                                                         _hd123383123687_
                                                         _hd123374123663_
                                                         _hd123365123639_
                                                         _hd123356123615_
                                                         _hd123341123575_
                                                         _hd123326123535_
                                                         _hd123308123487_)
                                                        (___kont129705129706_))
                                                    (___kont129705129706_))
                                                (___kont129705129706_))
                                            (___kont129705129706_))))
                                    (___kont129705129706_))
                                (___kont129705129706_))
                            (___kont129705129706_))))
                    (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129705129706_))
                                                (___kont129705129706_))))
                                        (___kont129705129706_))
                                    (___kont129705129706_))
                                (___kont129705129706_))))
                        (___kont129705129706_))))
                (___kont129705129706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129705129706_))))
                                            (___kont129705129706_))
                                        (___kont129705129706_))
                                    (___kont129705129706_))))
                            (___kont129705129706_))))
                    (___kont129705129706_))
                (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129705129706_))
                                            (___kont129705129706_))
                                        (___kont129705129706_))))
                                (___kont129705129706_))))
                        (___kont129705129706_))
                    (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129705129706_))
                                                (___kont129705129706_))
                                            (___kont129705129706_))))
                                    (___kont129705129706_))))
                            (___kont129705129706_))
                        (___kont129705129706_))
                    (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129705129706_))))
                                            (___kont129705129706_))))
                                    (___kont129705129706_))
                                (___kont129705129706_))
                            (___kont129705129706_))))
                    (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129705129706_))
                                                (___kont129705129706_))
                                            (___kont129705129706_))
                                        (___kont129705129706_))
                                    (___kont129705129706_))
                                (___kont129705129706_))))
                        (___kont129705129706_))
                    (___kont129705129706_))
                (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129705129706_))))
                                        (___kont129705129706_))
                                    (___kont129705129706_))))
                            (___kont129705129706_))
                        (___kont129705129706_))
                    (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129705129706_))))
                                            (___kont129705129706_))
                                        (___kont129705129706_))))
                                (___kont129705129706_))
                            (___kont129705129706_))
                        (___kont129705129706_))))
                (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129705129706_))
                                            (___kont129705129706_))
                                        (___kont129705129706_))))
                                (___kont129705129706_))))
                        (___kont129705129706_))))
                (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129705129706_))
                                            (___kont129705129706_))
                                        (___kont129705129706_))))
                                (___kont129705129706_))))
                        (___kont129705129706_))
                    (___kont129705129706_))
                (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129705129706_))
                                            (___kont129705129706_))))
                                    (___kont129705129706_))))
                            (___kont129705129706_))))
                    (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129705129706_))
                                                (___kont129705129706_))
                                            (___kont129705129706_))))
                                    (___kont129705129706_))))
                            (___kont129705129706_))
                        (___kont129705129706_))))
                (___kont129705129706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129705129706_))))
                                        (___kont129705129706_))))
                                (___kont129705129706_))
                            (___kont129705129706_))
                        (___kont129705129706_))))
                (___kont129705129706_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx123021_ _id123022_ _clauses123023_ _gensym?123024_)
        (let _lp123026_ ((_rest123028_ _clauses123023_)
                         (_ids123029_ '())
                         (_impls123030_ '())
                         (_clauses123031_ '()))
          (let* ((_rest123032123040_ _rest123028_)
                 (_else123034123048_
                  (lambda ()
                    (values (reverse _ids123029_)
                            (reverse _impls123030_)
                            (reverse _clauses123031_))))
                 (_K123036123253_
                  (lambda (_rest123051_ _clause123052_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause123052_))
                        (let ((__tmp130795
                               (let ()
                                 (declare (not safe))
                                 (cons _clause123052_ _clauses123031_))))
                          (declare (not safe))
                          (_lp123026_
                           _rest123051_
                           _ids123029_
                           _impls123030_
                           __tmp130795))
                        (let* ((_g123054123065_
                                (lambda (_g123055123062_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g123055123062_))))
                               (_g123053123250_
                                (lambda (_g123055123068_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g123055123068_))
                                      (let ((_e123060123070_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g123055123068_))))
                                        (let ((_hd123059123073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123060123070_)))
                                              (_tl123058123075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123060123070_))))
                                          ((lambda (_L123078_ _L123079_)
                                             (let* ((_id123096_
                                                     (let ((__tmp130742
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id123022_)))
                                                           (__tmp130741
                                                            (length _clauses123031_))
                                                           (__tmp130740
                                                            (if _gensym?123024_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130742
                                                        '"__"
                                                        __tmp130741
                                                        __tmp130740)))
                                                    (_id123098_
                                                     (let ((__tmp130743
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx123021_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id123096_
                                                        __tmp130743)))
                                                    (_impl123100_
                                                     (let ((__tmp130744
                                                            (let ((__tmp130746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130745
                           (let ()
                             (declare (not safe))
                             (cons _L123079_ _L123078_))))
                      (declare (not safe))
                      (cons __tmp130746 __tmp130745))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130744 _stx123021_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause123247_
                                                     (let* ((___stx130085130086_
                                                             _L123079_)
                                                            (_g123104123132_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx130085130086_)))))
               (let ((___kont130087130088_
                      (lambda (_L123226_)
                        (let ((__tmp130747
                               (let ((__tmp130748
                                      (let ((__tmp130749
                                             (let ((__tmp130750
                                                    (let ((__tmp130756
                                                           (let ((__tmp130757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id123098_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130757)))
                  (__tmp130751
                   (let ((__tmp130752
                          (lambda (_g123236123239_ _g123237123241_)
                            (let ((__tmp130753
                                   (let ((__tmp130755
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130754
                                          (let ()
                                            (declare (not safe))
                                            (cons _g123236123239_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130755 __tmp130754))))
                              (declare (not safe))
                              (cons __tmp130753 _g123237123241_)))))
                     (declare (not safe))
                     (foldr1 __tmp130752 '() _L123226_))))
              (declare (not safe))
              (cons __tmp130756 __tmp130751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130750))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130749
                                         _stx123021_))))
                                 (declare (not safe))
                                 (cons __tmp130748 '()))))
                          (declare (not safe))
                          (cons _L123079_ __tmp130747))))
                     (___kont130091130092_
                      (lambda (_L123177_ _L123178_)
                        (let ((__tmp130758
                               (let ((__tmp130759
                                      (let ((__tmp130760
                                             (let ((__tmp130761
                                                    (let ((__tmp130775
                                                           (let ((__tmp130776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130776)))
                  (__tmp130762
                   (let ((__tmp130773
                          (let ((__tmp130774
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123098_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130774)))
                         (__tmp130763
                          (let ((__tmp130769
                                 (let ((__tmp130770
                                        (let ((__tmp130772
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130771
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L123177_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130772 __tmp130771))))
                                   (declare (not safe))
                                   (cons __tmp130770 '())))
                                (__tmp130764
                                 (let ((__tmp130765
                                        (lambda (_g123189123192_
                                                 _g123190123194_)
                                          (let ((__tmp130766
                                                 (let ((__tmp130768
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130767
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g123189123192_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130768
                                                         __tmp130767))))
                                            (declare (not safe))
                                            (cons __tmp130766
                                                  _g123190123194_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130765 '() _L123178_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130769 __tmp130764))))
                     (declare (not safe))
                     (cons __tmp130773 __tmp130763))))
              (declare (not safe))
              (cons __tmp130775 __tmp130762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130761))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130760
                                         _stx123021_))))
                                 (declare (not safe))
                                 (cons __tmp130759 '()))))
                          (declare (not safe))
                          (cons _L123079_ __tmp130758))))
                     (___kont130095130096_
                      (lambda (_L123137_)
                        (let ((__tmp130777
                               (let ((__tmp130778
                                      (let ((__tmp130779
                                             (let ((__tmp130780
                                                    (let ((__tmp130788
                                                           (let ((__tmp130789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130789)))
                  (__tmp130781
                   (let ((__tmp130786
                          (let ((__tmp130787
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123098_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130787)))
                         (__tmp130782
                          (let ((__tmp130783
                                 (let ((__tmp130785
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130784
                                        (let ()
                                          (declare (not safe))
                                          (cons _L123137_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130785 __tmp130784))))
                            (declare (not safe))
                            (cons __tmp130783 '()))))
                     (declare (not safe))
                     (cons __tmp130786 __tmp130782))))
              (declare (not safe))
              (cons __tmp130788 __tmp130781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130780))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130779
                                         _stx123021_))))
                                 (declare (not safe))
                                 (cons __tmp130778 '()))))
                          (declare (not safe))
                          (cons _L123079_ __tmp130777)))))
                 (let* ((___match130110130111_
                         (lambda (___splice130093130094_
                                  _target123118123153_
                                  _tl123120123155_)
                           (letrec ((_loop123121123158_
                                     (lambda (_hd123119123161_
                                              _arg123125123163_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123119123161_))
                                           (let ((_e123122123166_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123119123161_))))
                                             (let ((_lp-tl123124123171_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123122123166_)))
                                                   (_lp-hd123123123169_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123122123166_))))
                                               (let ((__tmp130790
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123123123169_
                                                              _arg123125123163_))))
                                                 (declare (not safe))
                                                 (_loop123121123158_
                                                  _lp-tl123124123171_
                                                  __tmp130790))))
                                           (let ((_arg123126123174_
                                                  (reverse _arg123125123163_)))
                                             (___kont130091130092_
                                              _tl123120123155_
                                              _arg123126123174_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123121123158_
                                _target123118123153_
                                '())))))
                        (___match130104130105_
                         (lambda (___splice130089130090_
                                  _target123107123202_
                                  _tl123109123204_)
                           (letrec ((_loop123110123207_
                                     (lambda (_hd123108123210_
                                              _arg123114123212_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123108123210_))
                                           (let ((_e123111123215_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123108123210_))))
                                             (let ((_lp-tl123113123220_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123111123215_)))
                                                   (_lp-hd123112123218_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123111123215_))))
                                               (let ((__tmp130791
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123112123218_
                                                              _arg123114123212_))))
                                                 (declare (not safe))
                                                 (_loop123110123207_
                                                  _lp-tl123113123220_
                                                  __tmp130791))))
                                           (let ((_arg123115123223_
                                                  (reverse _arg123114123212_)))
                                             (___kont130087130088_
                                              _arg123115123223_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123110123207_
                                _target123107123202_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx130085130086_))
                       (let ((___splice130089130090_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx130085130086_
                                 '0))))
                         (let ((_tl123109123204_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130089130090_ '1)))
                               (_target123107123202_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130089130090_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl123109123204_))
                               (___match130104130105_
                                ___splice130089130090_
                                _target123107123202_
                                _tl123109123204_)
                               (___match130110130111_
                                ___splice130089130090_
                                _target123107123202_
                                _tl123109123204_))))
                       (___kont130095130096_ ___stx130085130086_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130794
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id123098_
                                                              _ids123029_)))
                                                     (__tmp130793
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl123100_
                                                              _impls123030_)))
                                                     (__tmp130792
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause123247_
                                                              _clauses123031_))))
                                                 (declare (not safe))
                                                 (_lp123026_
                                                  _rest123051_
                                                  __tmp130794
                                                  __tmp130793
                                                  __tmp130792))))
                                           _tl123058123075_
                                           _hd123059123073_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g123054123065_ _g123055123068_))))))
                          (declare (not safe))
                          (_g123053123250_ _clause123052_))))))
            (if (let () (declare (not safe)) (##pair? _rest123032123040_))
                (let ((_hd123037123256_
                       (let ()
                         (declare (not safe))
                         (##car _rest123032123040_)))
                      (_tl123038123258_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest123032123040_))))
                  (let* ((_clause123261_ _hd123037123256_)
                         (_rest123263_ _tl123038123258_))
                    (declare (not safe))
                    (_K123036123253_ _rest123263_ _clause123261_)))
                (let () (declare (not safe)) (_else123034123048_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx123268_ _id123269_ _clauses123270_)
        (let ((_gensym?123272_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx123268_
           _id123269_
           _clauses123270_
           _gensym?123272_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130797_
        (let ((_g130796_ (let () (declare (not safe)) (##length _g130797_))))
          (cond ((let () (declare (not safe)) (##fx= _g130796_ 3))
                 (apply (lambda (_stx123268_ _id123269_ _clauses123270_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx123268_
                             _id123269_
                             _clauses123270_)))
                        _g130797_))
                ((let () (declare (not safe)) (##fx= _g130796_ 4))
                 (apply (lambda (_stx123274_
                                 _id123275_
                                 _clauses123276_
                                 _gensym?123277_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx123274_
                             _id123275_
                             _clauses123276_
                             _gensym?123277_)))
                        _g130797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130797_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self122297_ _stx122298_)
        (letrec ((_case-lambda-clause-def122300_
                  (lambda (_id123017_ _impl123018_)
                    (let ((__tmp130798
                           (let ((__tmp130799
                                  (let ((__tmp130802
                                         (let ()
                                           (declare (not safe))
                                           (cons _id123017_ '())))
                                        (__tmp130800
                                         (let ((__tmp130801
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self122297_
                                                   _impl123018_))))
                                           (declare (not safe))
                                           (cons __tmp130801 '()))))
                                    (declare (not safe))
                                    (cons __tmp130802 __tmp130800))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130799))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130798 _stx122298_))))
                 (_opt-lambda-dispatch-name122301_
                  (lambda (_id123013_)
                    (if (uninterned-symbol? _id123013_)
                        (let ((_str123015_ (symbol->string _id123013_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str123015_))
                              '"%"
                              _id123013_))
                        _id123013_)))
                 (_kw-lambda-dispatch-name122302_
                  (lambda (_id123008_ _name123009_)
                    (if (uninterned-symbol? _id123008_)
                        (let ((_str123011_ (symbol->string _id123008_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str123011_))
                              _name123009_
                              _id123008_))
                        _id123008_))))
          (let* ((___stx130133130134_ _stx122298_)
                 (_g122307122366_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130133130134_)))))
            (let ((___kont130135130136_
                   (lambda (_L122917_ _L122918_)
                     (let* ((___stx130113130114_ _L122917_)
                            (_g122935122949_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130113130114_)))))
                       (let ((___kont130115130116_
                              (lambda (_L122993_) _stx122298_))
                             (___kont130117130118_
                              (lambda (_L122962_)
                                (let ((_g130803_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx122298_
                                          _L122918_
                                          _L122962_))))
                                  (begin
                                    (let ((_g130804_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130803_)
                                                 (##vector-length _g130803_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130804_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130804_)))
                                    (let ((_ids122972_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130803_ 0)))
                                          (_impls122973_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130803_ 1)))
                                          (_clauses122974_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130803_ 2))))
                                      (let* ((_g130805_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122972_))
                                             (_defs122977_
                                              (map _case-lambda-clause-def122300_
                                                   _ids122972_
                                                   _impls122973_)))
                                        (let ((__tmp130807
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122918_)))
                                              (__tmp130806
                                               (map gxc#identifier-symbol
                                                    _ids122972_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130807
                                           '" => "
                                           __tmp130806))
                                        (let ((__tmp130808
                                               (let ((__tmp130809
                                                      (let ((__tmp130810
                                                             (let ((__tmp130811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130812
                                   (let ((__tmp130813
                                          (let ((__tmp130818
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122918_ '())))
                                                (__tmp130814
                                                 (let ((__tmp130815
                                                        (let ((__tmp130817
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122974_)))
                      (__tmp130816
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130817 __tmp130816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130815 '()))))
                                            (declare (not safe))
                                            (cons __tmp130818 __tmp130814))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130813))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130812
                               _stx122298_))))
                       (declare (not safe))
                       (cons __tmp130811 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130810 _defs122977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130809))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130808
                                           _stx122298_)))))))))
                         (let ((___match130124130125_
                                (lambda (_e122940122985_
                                         _hd122939122988_
                                         _tl122938122990_)
                                  (let ((_L122993_ _tl122938122990_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L122993_))
                                        (___kont130115130116_ _L122993_)
                                        (___kont130117130118_
                                         _tl122938122990_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx130113130114_))
                               (let ((_e122940122985_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx130113130114_))))
                                 (let ((_tl122938122990_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122940122985_)))
                                       (_hd122939122988_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122940122985_))))
                                   (___match130124130125_
                                    _e122940122985_
                                    _hd122939122988_
                                    _tl122938122990_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122935122949_))))))))
                  (___kont130137130138_
                   (lambda (_L122735_ _L122736_)
                     (let* ((_g122752122782_
                             (lambda (_g122753122779_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122753122779_))))
                            (_g122751122877_
                             (lambda (_g122753122785_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122753122785_))
                                   (let ((_e122759122787_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122753122785_))))
                                     (let ((_hd122758122790_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122759122787_)))
                                           (_tl122757122792_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122759122787_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122757122792_))
                                           (let ((_e122762122795_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122757122792_))))
                                             (let ((_hd122761122798_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122762122795_)))
                                                   (_tl122760122800_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122762122795_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122761122798_))
                                                   (let ((_e122765122803_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122761122798_))))
                                                     (let ((_hd122764122806_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122765122803_)))
                                                           (_tl122763122808_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122765122803_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122764122806_))
                                                           (let ((_e122768122811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122764122806_))))
                     (let ((_hd122767122814_
                            (let ()
                              (declare (not safe))
                              (##car _e122768122811_)))
                           (_tl122766122816_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122768122811_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122767122814_))
                           (let ((_e122771122819_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122767122814_))))
                             (let ((_hd122770122822_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122771122819_)))
                                   (_tl122769122824_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122771122819_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122769122824_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122766122816_))
                                       (let ((_e122774122827_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122766122816_))))
                                         (let ((_hd122773122830_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122774122827_)))
                                               (_tl122772122832_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122774122827_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122772122832_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122763122808_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122760122800_))
                                                       (let ((_e122777122835_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122760122800_))))
                 (let ((_hd122776122838_
                        (let () (declare (not safe)) (##car _e122777122835_)))
                       (_tl122775122840_
                        (let () (declare (not safe)) (##cdr _e122777122835_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122775122840_))
                       ((lambda (_L122843_ _L122844_ _L122845_)
                          (let* ((_lambda-id122869_
                                  (let ((__tmp130821
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122736_)))
                                        (__tmp130819
                                         (let ((__tmp130820
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122845_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name122301_
                                            __tmp130820))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130821
                                     '"__"
                                     __tmp130819)))
                                 (_lambda-id122871_
                                  (let ((__tmp130822
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx122298_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122869_
                                     __tmp130822)))
                                 (_g130823_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122871_)))
                                 (_new-case-lambda-expr122874_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122843_
                                     'id:
                                     _L122845_
                                     'new-id:
                                     _lambda-id122871_))))
                            (let ((__tmp130825
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122736_)))
                                  (__tmp130824
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122871_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130825
                               '" => "
                               __tmp130824))
                            (let ((__tmp130826
                                   (let ((__tmp130827
                                          (let ((__tmp130835
                                                 (let ((__tmp130836
                                                        (let ((__tmp130837
                                                               (let ((__tmp130840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122871_ '())))
                             (__tmp130838
                              (let ((__tmp130839
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self122297_
                                        _L122844_))))
                                (declare (not safe))
                                (cons __tmp130839 '()))))
                         (declare (not safe))
                         (cons __tmp130840 __tmp130838))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130836
                                                    _stx122298_)))
                                                (__tmp130828
                                                 (let ((__tmp130829
                                                        (let ((__tmp130830
                                                               (let ((__tmp130831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130832
                                     (let ((__tmp130834
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122736_ '())))
                                           (__tmp130833
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122874_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130834 __tmp130833))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130832))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130831 _stx122298_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self122297_
                   __tmp130830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130829 '()))))
                                            (declare (not safe))
                                            (cons __tmp130835 __tmp130828))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130827))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130826
                               _stx122298_))))
                        _hd122776122838_
                        _hd122773122830_
                        _hd122770122822_)
                       (let ()
                         (declare (not safe))
                         (_g122752122782_ _g122753122785_)))))
               (let () (declare (not safe)) (_g122752122782_ _g122753122785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122752122782_
                                                      _g122753122785_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122752122782_
                                                  _g122753122785_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122752122782_ _g122753122785_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122752122782_ _g122753122785_)))))
                           (let ()
                             (declare (not safe))
                             (_g122752122782_ _g122753122785_)))))
                   (let ()
                     (declare (not safe))
                     (_g122752122782_ _g122753122785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122752122782_
                                                      _g122753122785_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122752122782_
                                              _g122753122785_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122752122782_ _g122753122785_))))))
                       (declare (not safe))
                       (_g122751122877_ _L122735_))))
                  (___kont130139130140_
                   (lambda (_L122449_ _L122450_)
                     (let* ((_g122466122519_
                             (lambda (_g122467122516_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122467122516_))))
                            (_g122465122695_
                             (lambda (_g122467122522_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122467122522_))
                                   (let ((_e122475122524_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122467122522_))))
                                     (let ((_hd122474122527_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122475122524_)))
                                           (_tl122473122529_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122475122524_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122473122529_))
                                           (let ((_e122478122532_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122473122529_))))
                                             (let ((_hd122477122535_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122478122532_)))
                                                   (_tl122476122537_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122478122532_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122477122535_))
                                                   (let ((_e122481122540_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122477122535_))))
                                                     (let ((_hd122480122543_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122481122540_)))
                                                           (_tl122479122545_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122481122540_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122480122543_))
                                                           (let ((_e122484122548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122480122543_))))
                     (let ((_hd122483122551_
                            (let ()
                              (declare (not safe))
                              (##car _e122484122548_)))
                           (_tl122482122553_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122484122548_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122483122551_))
                           (let ((_e122487122556_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122483122551_))))
                             (let ((_hd122486122559_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122487122556_)))
                                   (_tl122485122561_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122487122556_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122485122561_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122482122553_))
                                       (let ((_e122490122564_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122482122553_))))
                                         (let ((_hd122489122567_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122490122564_)))
                                               (_tl122488122569_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122490122564_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122489122567_))
                                               (let ((_e122493122572_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122489122567_))))
                                                 (let ((_hd122492122575_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122493122572_)))
                                                       (_tl122491122577_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122493122572_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122491122577_))
                                                       (let ((_e122496122580_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122491122577_))))
                 (let ((_hd122495122583_
                        (let () (declare (not safe)) (##car _e122496122580_)))
                       (_tl122494122585_
                        (let () (declare (not safe)) (##cdr _e122496122580_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122495122583_))
                       (let ((_e122499122588_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122495122583_))))
                         (let ((_hd122498122591_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122499122588_)))
                               (_tl122497122593_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122499122588_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122498122591_))
                               (let ((_e122502122596_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122498122591_))))
                                 (let ((_hd122501122599_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122502122596_)))
                                       (_tl122500122601_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122502122596_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122501122599_))
                                       (let ((_e122505122604_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122501122599_))))
                                         (let ((_hd122504122607_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122505122604_)))
                                               (_tl122503122609_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122505122604_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122503122609_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122500122601_))
                                                   (let ((_e122508122612_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122500122601_))))
                                                     (let ((_hd122507122615_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122508122612_)))
                                                           (_tl122506122617_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122508122612_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122506122617_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122497122593_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122494122585_))
                           (let ((_e122511122620_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122494122585_))))
                             (let ((_hd122510122623_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122511122620_)))
                                   (_tl122509122625_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122511122620_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122509122625_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122488122569_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122479122545_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122476122537_))
                                               (let ((_e122514122628_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122476122537_))))
                                                 (let ((_hd122513122631_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122514122628_)))
                                                       (_tl122512122633_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122514122628_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122512122633_))
                                                       ((lambda (_L122636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122637_
                         _L122638_
                         _L122639_
                         _L122640_)
                  (let* ((_get-kws-id122680_
                          (let ((__tmp130843
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122450_)))
                                (__tmp130841
                                 (let ((__tmp130842
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122640_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122302_
                                    __tmp130842
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130843 '"__" __tmp130841)))
                         (_get-kws-id122682_
                          (let ((__tmp130844
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122298_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122680_
                             __tmp130844)))
                         (_main-id122684_
                          (let ((__tmp130847
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122450_)))
                                (__tmp130845
                                 (let ((__tmp130846
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122639_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122302_
                                    __tmp130846
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130847 '"__" __tmp130845)))
                         (_main-id122686_
                          (let ((__tmp130848
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122298_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122684_
                             __tmp130848)))
                         (_g130849_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122682_)))
                         (_g130850_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122686_)))
                         (_new-kw-dispatch122690_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122636_
                             'id:
                             _L122640_
                             'new-id:
                             _get-kws-id122682_)))
                         (_new-get-kws122692_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122637_
                             'id:
                             _L122639_
                             'new-id:
                             _main-id122686_))))
                    (let ((__tmp130853
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122450_)))
                          (__tmp130852
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122682_)))
                          (__tmp130851
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122686_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130853
                       '" => "
                       __tmp130852
                       '" => "
                       __tmp130851))
                    (let ((__tmp130854
                           (let ((__tmp130855
                                  (let ((__tmp130868
                                         (let ((__tmp130869
                                                (let ((__tmp130870
                                                       (let ((__tmp130871
                                                              (let ((__tmp130873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122686_ '())))
                            (__tmp130872
                             (let ()
                               (declare (not safe))
                               (cons _L122638_ '()))))
                        (declare (not safe))
                        (cons __tmp130873 __tmp130872))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130870
                                                   _stx122298_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self122297_
                                            __tmp130869)))
                                        (__tmp130856
                                         (let ((__tmp130863
                                                (let ((__tmp130864
                                                       (let ((__tmp130865
                                                              (let ((__tmp130867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122682_ '())))
                            (__tmp130866
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122692_ '()))))
                        (declare (not safe))
                        (cons __tmp130867 __tmp130866))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130864
                                                   _stx122298_)))
                                               (__tmp130857
                                                (let ((__tmp130858
                                                       (let ((__tmp130859
                                                              (let ((__tmp130860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130862
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122450_ '())))
                                   (__tmp130861
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122690_ '()))))
                               (declare (not safe))
                               (cons __tmp130862 __tmp130861))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130860))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130859 _stx122298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130858 '()))))
                                           (declare (not safe))
                                           (cons __tmp130863 __tmp130857))))
                                    (declare (not safe))
                                    (cons __tmp130868 __tmp130856))))
                             (declare (not safe))
                             (cons '%#begin __tmp130855))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130854 _stx122298_))))
                _hd122513122631_
                _hd122510122623_
                _hd122507122615_
                _hd122504122607_
                _hd122486122559_)
               (let ()
                 (declare (not safe))
                 (_g122466122519_ _g122467122522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122466122519_
                                                  _g122467122522_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122466122519_
                                              _g122467122522_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122466122519_ _g122467122522_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122466122519_ _g122467122522_)))))
                           (let ()
                             (declare (not safe))
                             (_g122466122519_ _g122467122522_)))
                       (let ()
                         (declare (not safe))
                         (_g122466122519_ _g122467122522_)))
                   (let ()
                     (declare (not safe))
                     (_g122466122519_ _g122467122522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122466122519_
                                                      _g122467122522_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122466122519_
                                                  _g122467122522_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122466122519_ _g122467122522_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122466122519_ _g122467122522_)))))
                       (let ()
                         (declare (not safe))
                         (_g122466122519_ _g122467122522_)))))
               (let ()
                 (declare (not safe))
                 (_g122466122519_ _g122467122522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122466122519_
                                                  _g122467122522_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122466122519_ _g122467122522_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122466122519_ _g122467122522_)))))
                           (let ()
                             (declare (not safe))
                             (_g122466122519_ _g122467122522_)))))
                   (let ()
                     (declare (not safe))
                     (_g122466122519_ _g122467122522_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122466122519_
                                                      _g122467122522_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122466122519_
                                              _g122467122522_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122466122519_ _g122467122522_))))))
                       (declare (not safe))
                       (_g122465122695_ _L122449_))))
                  (___kont130141130142_
                   (lambda (_L122395_ _L122396_)
                     (let ((__tmp130874
                            (let ((__tmp130875
                                   (let ((__tmp130876
                                          (let ((__tmp130877
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self122297_
                                                    _L122395_))))
                                            (declare (not safe))
                                            (cons __tmp130877 '()))))
                                     (declare (not safe))
                                     (cons _L122396_ __tmp130876))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130875))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130874 _stx122298_)))))
              (let* ((___match130226130227_
                      (lambda (_e122341122417_
                               _hd122340122420_
                               _tl122339122422_
                               _e122344122425_
                               _hd122343122428_
                               _tl122342122430_
                               _e122347122433_
                               _hd122346122436_
                               _tl122345122438_
                               _e122350122441_
                               _hd122349122444_
                               _tl122348122446_)
                        (let ((_L122449_ _hd122349122444_)
                              (_L122450_ _hd122346122436_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122450_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122449_)))
                              (___kont130139130140_ _L122449_ _L122450_)
                              (___kont130141130142_
                               _hd122349122444_
                               _hd122343122428_)))))
                     (___match130198130199_
                      (lambda (_e122327122703_
                               _hd122326122706_
                               _tl122325122708_
                               _e122330122711_
                               _hd122329122714_
                               _tl122328122716_
                               _e122333122719_
                               _hd122332122722_
                               _tl122331122724_
                               _e122336122727_
                               _hd122335122730_
                               _tl122334122732_)
                        (let ((_L122735_ _hd122335122730_)
                              (_L122736_ _hd122332122722_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122736_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122735_)))
                              (___kont130137130138_ _L122735_ _L122736_)
                              (___match130226130227_
                               _e122327122703_
                               _hd122326122706_
                               _tl122325122708_
                               _e122330122711_
                               _hd122329122714_
                               _tl122328122716_
                               _e122333122719_
                               _hd122332122722_
                               _tl122331122724_
                               _e122336122727_
                               _hd122335122730_
                               _tl122334122732_)))))
                     (___match130170130171_
                      (lambda (_e122313122885_
                               _hd122312122888_
                               _tl122311122890_
                               _e122316122893_
                               _hd122315122896_
                               _tl122314122898_
                               _e122319122901_
                               _hd122318122904_
                               _tl122317122906_
                               _e122322122909_
                               _hd122321122912_
                               _tl122320122914_)
                        (let ((_L122917_ _hd122321122912_)
                              (_L122918_ _hd122318122904_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122918_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122917_)))
                              (___kont130135130136_ _L122917_ _L122918_)
                              (___match130198130199_
                               _e122313122885_
                               _hd122312122888_
                               _tl122311122890_
                               _e122316122893_
                               _hd122315122896_
                               _tl122314122898_
                               _e122319122901_
                               _hd122318122904_
                               _tl122317122906_
                               _e122322122909_
                               _hd122321122912_
                               _tl122320122914_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130133130134_))
                    (let ((_e122313122885_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130133130134_))))
                      (let ((_tl122311122890_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122313122885_)))
                            (_hd122312122888_
                             (let ()
                               (declare (not safe))
                               (##car _e122313122885_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122311122890_))
                            (let ((_e122316122893_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122311122890_))))
                              (let ((_tl122314122898_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122316122893_)))
                                    (_hd122315122896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122316122893_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122315122896_))
                                    (let ((_e122319122901_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122315122896_))))
                                      (let ((_tl122317122906_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122319122901_)))
                                            (_hd122318122904_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122319122901_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122317122906_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122314122898_))
                                                (let ((_e122322122909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122314122898_))))
                                                  (let ((_tl122320122914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122322122909_)))
                                                        (_hd122321122912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122322122909_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122320122914_))
                                                        (___match130170130171_
                                                         _e122313122885_
                                                         _hd122312122888_
                                                         _tl122311122890_
                                                         _e122316122893_
                                                         _hd122315122896_
                                                         _tl122314122898_
                                                         _e122319122901_
                                                         _hd122318122904_
                                                         _tl122317122906_
                                                         _e122322122909_
                                                         _hd122321122912_
                                                         _tl122320122914_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122307122366_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122307122366_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122314122898_))
                                                (let ((_e122361122387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122314122898_))))
                                                  (let ((_tl122359122392_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122361122387_)))
                                                        (_hd122360122390_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122361122387_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122359122392_))
                                                        (___kont130141130142_
                                                         _hd122360122390_
                                                         _hd122315122896_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122307122366_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122307122366_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122314122898_))
                                        (let ((_e122361122387_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122314122898_))))
                                          (let ((_tl122359122392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122361122387_)))
                                                (_hd122360122390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122361122387_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122359122392_))
                                                (___kont130141130142_
                                                 _hd122360122390_
                                                 _hd122315122896_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122307122366_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122307122366_))))))
                            (let () (declare (not safe)) (_g122307122366_)))))
                    (let () (declare (not safe)) (_g122307122366_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self121228_ _stx121229_)
        (letrec* ((_bind-e__128529128530_
                   (lambda (_id122281_ _expr122282_ _compile?122283_)
                     (let ((__tmp130880
                            (let ()
                              (declare (not safe))
                              (cons _id122281_ '())))
                           (__tmp130878
                            (let ((__tmp130879
                                   (if _compile?122283_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self121228_
                                          _expr122282_))
                                       _expr122282_)))
                              (declare (not safe))
                              (cons __tmp130879 '()))))
                       (declare (not safe))
                       (cons __tmp130880 __tmp130878))))
                  (_bind-e__0__128531128532_
                   (lambda (_id122288_ _expr122289_)
                     (let ((_compile?122291_ '#t))
                       (declare (not safe))
                       (_bind-e__128529128530_
                        _id122288_
                        _expr122289_
                        _compile?122291_))))
                  (_bind-e121231_
                   (lambda _g130882_
                     (let ((_g130881_
                            (let ()
                              (declare (not safe))
                              (##length _g130882_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130881_ 2))
                              (apply (lambda (_id122288_ _expr122289_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128531128532_
                                          _id122288_
                                          _expr122289_)))
                                     _g130882_))
                             ((let () (declare (not safe)) (##fx= _g130881_ 3))
                              (apply (lambda (_id122293_
                                              _expr122294_
                                              _compile?122295_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128529128530_
                                          _id122293_
                                          _expr122294_
                                          _compile?122295_)))
                                     _g130882_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130882_))))))
                  (_compile-bindings121232_
                   (lambda (_bindings121865_)
                     (let _lp121867_ ((_rest121869_ _bindings121865_)
                                      (_lift1121870_ '())
                                      (_lift2121871_ '())
                                      (_bind121872_ '()))
                       (let* ((_rest121873121881_ _rest121869_)
                              (_else121875121889_
                               (lambda ()
                                 (values (reverse _lift1121870_)
                                         (reverse _lift2121871_)
                                         (reverse _bind121872_))))
                              (_K121877122268_
                               (lambda (_rest121892_ _hd121893_)
                                 (let* ((___stx130269130270_ _hd121893_)
                                        (_g121897121933_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130269130270_)))))
                                   (let ((___kont130271130272_
                                          (lambda (_L122175_ _L122176_)
                                            (let* ((___stx130249130250_
                                                    _L122175_)
                                                   (_g122191122205_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130249130250_)))))
                                              (let ((___kont130251130252_
                                                     (lambda (_L122253_)
                                                       (let ((__tmp130883
                                                              (let ((__tmp130884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128529128530_
                                _L122176_
                                _L122175_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130884 _bind121872_))))
                 (declare (not safe))
                 (_lp121867_
                  _rest121892_
                  _lift1121870_
                  _lift2121871_
                  __tmp130883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130253130254_
                                                     (lambda (_L122218_)
                                                       (let ((_g130885_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx121229_
                         _L122176_
                         _L122218_
                         '#t))))
                 (begin
                   (let ((_g130886_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130885_)
                                (##vector-length _g130885_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130886_ 3)))
                         (error "Context expects 3 values" _g130886_)))
                   (let ((_ids122228_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130885_ 0)))
                         (_impls122229_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130885_ 1)))
                         (_clauses122230_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130885_ 2))))
                     (let* ((_g130887_
                             (for-each gx#core-bind-runtime! _ids122228_))
                            (_xbind122233_
                             (map _bind-e121231_ _ids122228_ _impls122229_))
                            (_expr*122235_
                             (let ((__tmp130889
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses122230_)))
                                   (__tmp130888
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130889
                                __tmp130888)))
                            (_bind*122237_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128529128530_
                                _L122176_
                                _expr*122235_
                                '#f))))
                       (let ((__tmp130891
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L122176_)))
                             (__tmp130890
                              (map gxc#identifier-symbol _ids122228_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130891
                          '" => "
                          __tmp130890))
                       (let ((__tmp130893
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121871_ _xbind122233_)))
                             (__tmp130892
                              (let ()
                                (declare (not safe))
                                (cons _bind*122237_ _bind121872_))))
                         (declare (not safe))
                         (_lp121867_
                          _rest121892_
                          _lift1121870_
                          __tmp130893
                          __tmp130892)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130260130261_
                                                       (lambda (_e122196122245_
                                                                _hd122195122248_
                                                                _tl122194122250_)
                                                         (let ((_L122253_
                                                                _tl122194122250_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L122253_))
                       (___kont130251130252_ _L122253_)
                       (___kont130253130254_ _tl122194122250_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130249130250_))
                                                      (let ((_e122196122245_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130249130250_))))
                (let ((_tl122194122250_
                       (let () (declare (not safe)) (##cdr _e122196122245_)))
                      (_hd122195122248_
                       (let () (declare (not safe)) (##car _e122196122245_))))
                  (___match130260130261_
                   _e122196122245_
                   _hd122195122248_
                   _tl122194122250_)))
              (let () (declare (not safe)) (_g122191122205_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130273130274_
                                          (lambda (_L122003_ _L122004_)
                                            (let* ((_g122018122048_
                                                    (lambda (_g122019122045_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g122019122045_))))
                                                   (_g122017122143_
                                                    (lambda (_g122019122051_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g122019122051_))
                                                          (let ((_e122025122053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g122019122051_))))
                    (let ((_hd122024122056_
                           (let ()
                             (declare (not safe))
                             (##car _e122025122053_)))
                          (_tl122023122058_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122025122053_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122023122058_))
                          (let ((_e122028122061_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122023122058_))))
                            (let ((_hd122027122064_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122028122061_)))
                                  (_tl122026122066_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122028122061_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122027122064_))
                                  (let ((_e122031122069_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122027122064_))))
                                    (let ((_hd122030122072_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122031122069_)))
                                          (_tl122029122074_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122031122069_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd122030122072_))
                                          (let ((_e122034122077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd122030122072_))))
                                            (let ((_hd122033122080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122034122077_)))
                                                  (_tl122032122082_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122034122077_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd122033122080_))
                                                  (let ((_e122037122085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd122033122080_))))
                                                    (let ((_hd122036122088_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122037122085_)))
                                                          (_tl122035122090_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122037122085_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122035122090_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl122032122082_))
                      (let ((_e122040122093_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122032122082_))))
                        (let ((_hd122039122096_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122040122093_)))
                              (_tl122038122098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122040122093_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122038122098_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122029122074_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122026122066_))
                                      (let ((_e122043122101_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122026122066_))))
                                        (let ((_hd122042122104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122043122101_)))
                                              (_tl122041122106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122043122101_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122041122106_))
                                              ((lambda (_L122109_
                                                        _L122110_
                                                        _L122111_)
                                                 (let* ((_lambda-id122135_
                                                         (let ((__tmp130895
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L122004_)))
                       (__tmp130894 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130895 __tmp130894)))
                (_lambda-id122137_
                 (let ((__tmp130896
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx121229_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id122135_ __tmp130896)))
                (_g130897_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id122137_)))
                (_new-case-lambda-expr122140_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L122109_
                    'id:
                    _L122111_
                    'new-id:
                    _lambda-id122137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130899
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L122004_)))
                                                         (__tmp130898
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id122137_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130899
                                                      '" => "
                                                      __tmp130898))
                                                   (let ((__tmp130902
                                                          (let ((__tmp130903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128529128530_
                            _L122004_
                            _new-case-lambda-expr122140_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130903 _rest121892_)))
                 (__tmp130900
                  (let ((__tmp130901
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128531128532_
                            _lambda-id122137_
                            _L122110_))))
                    (declare (not safe))
                    (cons __tmp130901 _lift1121870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121867_
                                                      __tmp130902
                                                      __tmp130900
                                                      _lift2121871_
                                                      _bind121872_))))
                                               _hd122042122104_
                                               _hd122039122096_
                                               _hd122036122088_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122018122048_
                                                 _g122019122051_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122018122048_ _g122019122051_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122018122048_ _g122019122051_)))
                              (let ()
                                (declare (not safe))
                                (_g122018122048_ _g122019122051_)))))
                      (let ()
                        (declare (not safe))
                        (_g122018122048_ _g122019122051_)))
                  (let ()
                    (declare (not safe))
                    (_g122018122048_ _g122019122051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122018122048_
                                                     _g122019122051_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122018122048_
                                             _g122019122051_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122018122048_ _g122019122051_)))))
                          (let ()
                            (declare (not safe))
                            (_g122018122048_ _g122019122051_)))))
                  (let ()
                    (declare (not safe))
                    (_g122018122048_ _g122019122051_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g122017122143_ _L122003_))))
                                         (___kont130275130276_
                                          (lambda (_L121954_ _L121955_)
                                            (let ((__tmp130904
                                                   (let ((__tmp130905
                                                          (let ((__tmp130906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130907
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self121228_ _L121954_))))
                           (declare (not safe))
                           (cons __tmp130907 '()))))
                    (declare (not safe))
                    (cons _L121955_ __tmp130906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130905
                                                           _bind121872_))))
                                              (declare (not safe))
                                              (_lp121867_
                                               _rest121892_
                                               _lift1121870_
                                               _lift2121871_
                                               __tmp130904)))))
                                     (let* ((___match130320130321_
                                             (lambda (_e121914121979_
                                                      _hd121913121982_
                                                      _tl121912121984_
                                                      _e121917121987_
                                                      _hd121916121990_
                                                      _tl121915121992_
                                                      _e121920121995_
                                                      _hd121919121998_
                                                      _tl121918122000_)
                                               (let ((_L122003_
                                                      _hd121919121998_)
                                                     (_L122004_
                                                      _hd121916121990_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122004_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L122003_)))
                                                     (___kont130273130274_
                                                      _L122003_
                                                      _L122004_)
                                                     (___kont130275130276_
                                                      _hd121919121998_
                                                      _hd121913121982_)))))
                                            (___match130298130299_
                                             (lambda (_e121903122151_
                                                      _hd121902122154_
                                                      _tl121901122156_
                                                      _e121906122159_
                                                      _hd121905122162_
                                                      _tl121904122164_
                                                      _e121909122167_
                                                      _hd121908122170_
                                                      _tl121907122172_)
                                               (let ((_L122175_
                                                      _hd121908122170_)
                                                     (_L122176_
                                                      _hd121905122162_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122176_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L122175_)))
                                                     (___kont130271130272_
                                                      _L122175_
                                                      _L122176_)
                                                     (___match130320130321_
                                                      _e121903122151_
                                                      _hd121902122154_
                                                      _tl121901122156_
                                                      _e121906122159_
                                                      _hd121905122162_
                                                      _tl121904122164_
                                                      _e121909122167_
                                                      _hd121908122170_
                                                      _tl121907122172_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130269130270_))
                                           (let ((_e121903122151_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130269130270_))))
                                             (let ((_tl121901122156_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121903122151_)))
                                                   (_hd121902122154_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121903122151_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121902122154_))
                                                   (let ((_e121906122159_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121902122154_))))
                                                     (let ((_tl121904122164_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121906122159_)))
                                                           (_hd121905122162_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121906122159_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121904122164_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121901122156_))
                       (let ((_e121909122167_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121901122156_))))
                         (let ((_tl121907122172_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121909122167_)))
                               (_hd121908122170_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121909122167_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121907122172_))
                               (___match130298130299_
                                _e121903122151_
                                _hd121902122154_
                                _tl121901122156_
                                _e121906122159_
                                _hd121905122162_
                                _tl121904122164_
                                _e121909122167_
                                _hd121908122170_
                                _tl121907122172_)
                               (let ()
                                 (declare (not safe))
                                 (_g121897121933_)))))
                       (let () (declare (not safe)) (_g121897121933_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121901122156_))
                       (let ((_e121928121946_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121901122156_))))
                         (let ((_tl121926121951_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121928121946_)))
                               (_hd121927121949_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121928121946_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121926121951_))
                               (___kont130275130276_
                                _hd121927121949_
                                _hd121902122154_)
                               (let ()
                                 (declare (not safe))
                                 (_g121897121933_)))))
                       (let () (declare (not safe)) (_g121897121933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121901122156_))
                                                       (let ((_e121928121946_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121901122156_))))
                 (let ((_tl121926121951_
                        (let () (declare (not safe)) (##cdr _e121928121946_)))
                       (_hd121927121949_
                        (let () (declare (not safe)) (##car _e121928121946_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121926121951_))
                       (___kont130275130276_ _hd121927121949_ _hd121902122154_)
                       (let () (declare (not safe)) (_g121897121933_)))))
               (let () (declare (not safe)) (_g121897121933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121897121933_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121873121881_))
                             (let ((_hd121878122271_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121873121881_)))
                                   (_tl121879122273_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121873121881_))))
                               (let* ((_hd122276_ _hd121878122271_)
                                      (_rest122278_ _tl121879122273_))
                                 (declare (not safe))
                                 (_K121877122268_ _rest122278_ _hd122276_)))
                             (let ()
                               (declare (not safe))
                               (_else121875121889_)))))))
                  (_lift-kw-lambda?121233_
                   (lambda (_bind121789_)
                     (let* ((___stx130337130338_ _bind121789_)
                            (_g121792121809_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130337130338_)))))
                       (let ((___kont130339130340_
                              (lambda (_L121845_ _L121846_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121846_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121845_))
                                    '#f)))
                             (___kont130341130342_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130337130338_))
                             (let ((_e121798121821_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130337130338_))))
                               (let ((_tl121796121826_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121798121821_)))
                                     (_hd121797121824_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121798121821_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121797121824_))
                                     (let ((_e121801121829_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121797121824_))))
                                       (let ((_tl121799121834_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121801121829_)))
                                             (_hd121800121832_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121801121829_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121799121834_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121796121826_))
                                                 (let ((_e121804121837_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121796121826_))))
                                                   (let ((_tl121802121842_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121804121837_)))
                                                         (_hd121803121840_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121804121837_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121802121842_))
                                                         (___kont130339130340_
                                                          _hd121803121840_
                                                          _hd121800121832_)
                                                         (___kont130341130342_))))
                                                 (___kont130341130342_))
                                             (___kont130341130342_))))
                                     (___kont130341130342_))))
                             (___kont130341130342_))))))
                  (_lift-kw-lambda-bindings121234_
                   (lambda (_bindings121401_)
                     (let _lp121403_ ((_rest121405_ _bindings121401_)
                                      (_lift1121406_ '())
                                      (_lift2121407_ '())
                                      (_bind121408_ '()))
                       (let* ((_rest121409121417_ _rest121405_)
                              (_else121411121425_
                               (lambda ()
                                 (values (reverse _lift1121406_)
                                         (reverse _lift2121407_)
                                         (reverse _bind121408_))))
                              (_K121413121777_
                               (lambda (_rest121428_ _hd121429_)
                                 (let* ((___stx130367130368_ _hd121429_)
                                        (_g121432121457_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130367130368_)))))
                                   (let ((___kont130369130370_
                                          (lambda (_L121527_ _L121528_)
                                            (let* ((_g121542121595_
                                                    (lambda (_g121543121592_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121543121592_))))
                                                   (_g121541121771_
                                                    (lambda (_g121543121598_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121543121598_))
                                                          (let ((_e121551121600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121543121598_))))
                    (let ((_hd121550121603_
                           (let ()
                             (declare (not safe))
                             (##car _e121551121600_)))
                          (_tl121549121605_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121551121600_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121549121605_))
                          (let ((_e121554121608_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121549121605_))))
                            (let ((_hd121553121611_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121554121608_)))
                                  (_tl121552121613_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121554121608_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121553121611_))
                                  (let ((_e121557121616_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121553121611_))))
                                    (let ((_hd121556121619_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121557121616_)))
                                          (_tl121555121621_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121557121616_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121556121619_))
                                          (let ((_e121560121624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121556121619_))))
                                            (let ((_hd121559121627_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121560121624_)))
                                                  (_tl121558121629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121560121624_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121559121627_))
                                                  (let ((_e121563121632_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121559121627_))))
                                                    (let ((_hd121562121635_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121563121632_)))
                                                          (_tl121561121637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121563121632_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121561121637_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121558121629_))
                      (let ((_e121566121640_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121558121629_))))
                        (let ((_hd121565121643_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121566121640_)))
                              (_tl121564121645_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121566121640_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121565121643_))
                              (let ((_e121569121648_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121565121643_))))
                                (let ((_hd121568121651_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121569121648_)))
                                      (_tl121567121653_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121569121648_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121567121653_))
                                      (let ((_e121572121656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121567121653_))))
                                        (let ((_hd121571121659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121572121656_)))
                                              (_tl121570121661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121572121656_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121571121659_))
                                              (let ((_e121575121664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121571121659_))))
                                                (let ((_hd121574121667_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121575121664_)))
                                                      (_tl121573121669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121575121664_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121574121667_))
                                                      (let ((_e121578121672_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121574121667_))))
                (let ((_hd121577121675_
                       (let () (declare (not safe)) (##car _e121578121672_)))
                      (_tl121576121677_
                       (let () (declare (not safe)) (##cdr _e121578121672_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121577121675_))
                      (let ((_e121581121680_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121577121675_))))
                        (let ((_hd121580121683_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121581121680_)))
                              (_tl121579121685_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121581121680_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121579121685_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121576121677_))
                                  (let ((_e121584121688_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121576121677_))))
                                    (let ((_hd121583121691_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121584121688_)))
                                          (_tl121582121693_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121584121688_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121582121693_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121573121669_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121570121661_))
                                                  (let ((_e121587121696_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121570121661_))))
                                                    (let ((_hd121586121699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121587121696_)))
                                                          (_tl121585121701_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121587121696_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121585121701_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121564121645_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121555121621_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121552121613_))
                              (let ((_e121590121704_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121552121613_))))
                                (let ((_hd121589121707_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121590121704_)))
                                      (_tl121588121709_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121590121704_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121588121709_))
                                      ((lambda (_L121712_
                                                _L121713_
                                                _L121714_
                                                _L121715_
                                                _L121716_)
                                         (let* ((_get-kws-id121756_
                                                 (let ((__tmp130909
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121528_)))
                                                       (__tmp130908
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130909
                                                    __tmp130908)))
                                                (_get-kws-id121758_
                                                 (let ((__tmp130910
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121229_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121756_
                                                    __tmp130910)))
                                                (_main-id121760_
                                                 (let ((__tmp130912
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121528_)))
                                                       (__tmp130911
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130912
                                                    __tmp130911)))
                                                (_main-id121762_
                                                 (let ((__tmp130913
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121229_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121760_
                                                    __tmp130913)))
                                                (_g130914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121758_)))
                                                (_g130915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121762_)))
                                                (_new-kw-dispatch121766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121712_
                                                    'id:
                                                    _L121716_
                                                    'new-id:
                                                    _get-kws-id121758_)))
                                                (_new-get-kws121768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121713_
                                                    'id:
                                                    _L121715_
                                                    'new-id:
                                                    _main-id121762_))))
                                           (let ((__tmp130918
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121528_)))
                                                 (__tmp130917
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121758_)))
                                                 (__tmp130916
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121762_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130918
                                              '" => "
                                              __tmp130917
                                              '" => "
                                              __tmp130916))
                                           (let ((__tmp130923
                                                  (let ((__tmp130924
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128529128530_
                                                            _main-id121762_
                                                            _L121714_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130924
                                                          _lift1121406_)))
                                                 (__tmp130921
                                                  (let ((__tmp130922
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128529128530_
                                                            _get-kws-id121758_
                                                            _new-get-kws121768_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130922
                                                          _lift2121407_)))
                                                 (__tmp130919
                                                  (let ((__tmp130920
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128529128530_
                                                            _L121528_
                                                            _new-kw-dispatch121766_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130920
                                                          _bind121408_))))
                                             (declare (not safe))
                                             (_lp121403_
                                              _rest121428_
                                              __tmp130923
                                              __tmp130921
                                              __tmp130919))))
                                       _hd121589121707_
                                       _hd121586121699_
                                       _hd121583121691_
                                       _hd121580121683_
                                       _hd121562121635_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121542121595_ _g121543121598_)))))
                              (let ()
                                (declare (not safe))
                                (_g121542121595_ _g121543121598_)))
                          (let ()
                            (declare (not safe))
                            (_g121542121595_ _g121543121598_)))
                      (let ()
                        (declare (not safe))
                        (_g121542121595_ _g121543121598_)))
                  (let ()
                    (declare (not safe))
                    (_g121542121595_ _g121543121598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121542121595_
                                                     _g121543121598_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121542121595_
                                                 _g121543121598_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121542121595_
                                             _g121543121598_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121542121595_ _g121543121598_)))
                              (let ()
                                (declare (not safe))
                                (_g121542121595_ _g121543121598_)))))
                      (let ()
                        (declare (not safe))
                        (_g121542121595_ _g121543121598_)))))
              (let ()
                (declare (not safe))
                (_g121542121595_ _g121543121598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121542121595_
                                                 _g121543121598_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121542121595_ _g121543121598_)))))
                              (let ()
                                (declare (not safe))
                                (_g121542121595_ _g121543121598_)))))
                      (let ()
                        (declare (not safe))
                        (_g121542121595_ _g121543121598_)))
                  (let ()
                    (declare (not safe))
                    (_g121542121595_ _g121543121598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121542121595_
                                                     _g121543121598_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121542121595_
                                             _g121543121598_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121542121595_ _g121543121598_)))))
                          (let ()
                            (declare (not safe))
                            (_g121542121595_ _g121543121598_)))))
                  (let ()
                    (declare (not safe))
                    (_g121542121595_ _g121543121598_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121541121771_ _L121527_))))
                                         (___kont130371130372_
                                          (lambda (_L121478_ _L121479_)
                                            (let ((__tmp130925
                                                   (let ((__tmp130926
                                                          (let ((__tmp130927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121478_ '()))))
                    (declare (not safe))
                    (cons _L121479_ __tmp130927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130926
                                                           _bind121408_))))
                                              (declare (not safe))
                                              (_lp121403_
                                               _rest121428_
                                               _lift1121406_
                                               _lift2121407_
                                               __tmp130925)))))
                                     (let ((___match130394130395_
                                            (lambda (_e121438121503_
                                                     _hd121437121506_
                                                     _tl121436121508_
                                                     _e121441121511_
                                                     _hd121440121514_
                                                     _tl121439121516_
                                                     _e121444121519_
                                                     _hd121443121522_
                                                     _tl121442121524_)
                                              (let ((_L121527_
                                                     _hd121443121522_)
                                                    (_L121528_
                                                     _hd121440121514_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121528_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121527_)))
                                                    (___kont130369130370_
                                                     _L121527_
                                                     _L121528_)
                                                    (___kont130371130372_
                                                     _hd121443121522_
                                                     _hd121437121506_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130367130368_))
                                           (let ((_e121438121503_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130367130368_))))
                                             (let ((_tl121436121508_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121438121503_)))
                                                   (_hd121437121506_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121438121503_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121437121506_))
                                                   (let ((_e121441121511_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121437121506_))))
                                                     (let ((_tl121439121516_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121441121511_)))
                                                           (_hd121440121514_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121441121511_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121439121516_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121436121508_))
                       (let ((_e121444121519_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121436121508_))))
                         (let ((_tl121442121524_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121444121519_)))
                               (_hd121443121522_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121444121519_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121442121524_))
                               (___match130394130395_
                                _e121438121503_
                                _hd121437121506_
                                _tl121436121508_
                                _e121441121511_
                                _hd121440121514_
                                _tl121439121516_
                                _e121444121519_
                                _hd121443121522_
                                _tl121442121524_)
                               (let ()
                                 (declare (not safe))
                                 (_g121432121457_)))))
                       (let () (declare (not safe)) (_g121432121457_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121436121508_))
                       (let ((_e121452121470_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121436121508_))))
                         (let ((_tl121450121475_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121452121470_)))
                               (_hd121451121473_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121452121470_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121450121475_))
                               (___kont130371130372_
                                _hd121451121473_
                                _hd121437121506_)
                               (let ()
                                 (declare (not safe))
                                 (_g121432121457_)))))
                       (let () (declare (not safe)) (_g121432121457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121436121508_))
                                                       (let ((_e121452121470_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121436121508_))))
                 (let ((_tl121450121475_
                        (let () (declare (not safe)) (##cdr _e121452121470_)))
                       (_hd121451121473_
                        (let () (declare (not safe)) (##car _e121452121470_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121450121475_))
                       (___kont130371130372_ _hd121451121473_ _hd121437121506_)
                       (let () (declare (not safe)) (_g121432121457_)))))
               (let () (declare (not safe)) (_g121432121457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121432121457_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121409121417_))
                             (let ((_hd121414121780_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121409121417_)))
                                   (_tl121415121782_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121409121417_))))
                               (let* ((_hd121785_ _hd121414121780_)
                                      (_rest121787_ _tl121415121782_))
                                 (declare (not safe))
                                 (_K121413121777_ _rest121787_ _hd121785_)))
                             (let ()
                               (declare (not safe))
                               (_else121411121425_))))))))
          (let* ((___stx130411130412_ _stx121229_)
                 (_g121237121263_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130411130412_)))))
            (let ((___kont130413130414_
                   (lambda (_L121323_ _L121324_)
                     (let ((__tmp130929
                            (lambda ()
                              (if (let ((__tmp130956
                                         (let ((__tmp130957
                                                (lambda (_g121352121355_
                                                         _g121353121357_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121352121355_
                                                          _g121353121357_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130957
                                                   '()
                                                   _L121324_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?121233_
                                            __tmp130956))
                                  (let ((_g130943_
                                         (let ((__tmp130945
                                                (let ((__tmp130946
                                                       (lambda (_g121359121362_
                                                                _g121360121364_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121359121362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121360121364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130946
                                                          '()
                                                          _L121324_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings121234_
                                            __tmp130945))))
                                    (begin
                                      (let ((_g130944_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130943_)
                                                   (##vector-length _g130943_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130944_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130944_)))
                                      (let ((_lift1121367_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130943_ 0)))
                                            (_lift2121368_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130943_ 1)))
                                            (_hd121369_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130943_ 2))))
                                        (let* ((_expr121371_
                                                (let ((__tmp130947
                                                       (let ((__tmp130948
                                                              (let ((__tmp130949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121323_ '()))))
                        (declare (not safe))
                        (cons _hd121369_ __tmp130949))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130947
                                                   _stx121229_)))
                                               (_expr121373_
                                                (let ((__tmp130950
                                                       (let ((__tmp130951
                                                              (let ((__tmp130952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121371_ '()))))
                        (declare (not safe))
                        (cons _lift2121368_ __tmp130952))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130950
                                                   _stx121229_)))
                                               (_expr121375_
                                                (let ((__tmp130953
                                                       (let ((__tmp130954
                                                              (let ((__tmp130955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121373_ '()))))
                        (declare (not safe))
                        (cons _lift1121367_ __tmp130955))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130953
                                                   _stx121229_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self121228_
                                             _expr121375_))))))
                                  (let ((_g130930_
                                         (let ((__tmp130932
                                                (let ((__tmp130933
                                                       (lambda (_g121377121380_
                                                                _g121378121382_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121377121380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121378121382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130933
                                                          '()
                                                          _L121324_))))
                                           (declare (not safe))
                                           (_compile-bindings121232_
                                            __tmp130932))))
                                    (begin
                                      (let ((_g130931_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130930_)
                                                   (##vector-length _g130930_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130931_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130931_)))
                                      (let ((_lift1121385_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130930_ 0)))
                                            (_lift2121386_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130930_ 1)))
                                            (_hd121387_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130930_ 2))))
                                        (let* ((_body121389_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121228_
                                                   _L121323_)))
                                               (_expr121391_
                                                (let ((__tmp130934
                                                       (let ((__tmp130935
                                                              (let ((__tmp130936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121389_ '()))))
                        (declare (not safe))
                        (cons _hd121387_ __tmp130936))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130934
                                                   _stx121229_)))
                                               (_expr121393_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121386_))
                                                    _expr121391_
                                                    (let ((__tmp130937
                                                           (let ((__tmp130938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130939
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121391_ '()))))
                            (declare (not safe))
                            (cons _lift2121386_ __tmp130939))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130938))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130937 _stx121229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121395_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121385_))
                                                    _expr121393_
                                                    (let ((__tmp130940
                                                           (let ((__tmp130941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130942
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121393_ '()))))
                            (declare (not safe))
                            (cons _lift1121385_ __tmp130942))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130941))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130940 _stx121229_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121395_)))))))
                           (__tmp130928
                            (let ((__obj130628
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130628)
                              __obj130628)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130929
                        gx#current-expander-context
                        __tmp130928))))
                  (___kont130417130418_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self121228_ _stx121229_)))))
              (let ((___match130438130439_
                     (lambda (_e121243121275_
                              _hd121242121278_
                              _tl121241121280_
                              _e121246121283_
                              _hd121245121286_
                              _tl121244121288_
                              ___splice130415130416_
                              _target121247121291_
                              _tl121249121293_)
                       (letrec ((_loop121250121296_
                                 (lambda (_hd121248121299_ _bind121254121301_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121248121299_))
                                       (let ((_e121251121304_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121248121299_))))
                                         (let ((_lp-tl121253121309_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121251121304_)))
                                               (_lp-hd121252121307_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121251121304_))))
                                           (let ((__tmp130960
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd121252121307_
                                                          _bind121254121301_))))
                                             (declare (not safe))
                                             (_loop121250121296_
                                              _lp-tl121253121309_
                                              __tmp130960))))
                                       (let ((_bind121255121312_
                                              (reverse _bind121254121301_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl121244121288_))
                                             (let ((_e121258121315_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl121244121288_))))
                                               (let ((_tl121256121320_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e121258121315_)))
                                                     (_hd121257121318_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e121258121315_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl121256121320_))
                                                     (let ((_L121323_
                                                            _hd121257121318_)
                                                           (_L121324_
                                                            _bind121255121312_))
                                                       (if (let ((__tmp130958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130959
                                 (lambda (_g121344121347_ _g121345121349_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121344121347_ _g121345121349_)))))
                            (declare (not safe))
                            (foldr1 __tmp130959 '() _L121324_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130958))
                   (___kont130413130414_ _L121323_ _L121324_)
                   (___kont130417130418_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130417130418_))))
                                             (___kont130417130418_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop121250121296_ _target121247121291_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130411130412_))
                    (let ((_e121243121275_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130411130412_))))
                      (let ((_tl121241121280_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121243121275_)))
                            (_hd121242121278_
                             (let ()
                               (declare (not safe))
                               (##car _e121243121275_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121241121280_))
                            (let ((_e121246121283_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121241121280_))))
                              (let ((_tl121244121288_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121246121283_)))
                                    (_hd121245121286_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121246121283_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd121245121286_))
                                    (let ((___splice130415130416_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd121245121286_
                                              '0))))
                                      (let ((_tl121249121293_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130415130416_
                                                '1)))
                                            (_target121247121291_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130415130416_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121249121293_))
                                            (___match130438130439_
                                             _e121243121275_
                                             _hd121242121278_
                                             _tl121241121280_
                                             _e121246121283_
                                             _hd121245121286_
                                             _tl121244121288_
                                             ___splice130415130416_
                                             _target121247121291_
                                             _tl121249121293_)
                                            (___kont130417130418_))))
                                    (___kont130417130418_))))
                            (___kont130417130418_))))
                    (___kont130417130418_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120371_ _stx120372_)
        (letrec* ((_bind-e__128534128535_
                   (lambda (_id121212_ _expr121213_ _compile?121214_)
                     (let ((__tmp130963
                            (let ()
                              (declare (not safe))
                              (cons _id121212_ '())))
                           (__tmp130961
                            (let ((__tmp130962
                                   (if _compile?121214_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120371_
                                          _expr121213_))
                                       _expr121213_)))
                              (declare (not safe))
                              (cons __tmp130962 '()))))
                       (declare (not safe))
                       (cons __tmp130963 __tmp130961))))
                  (_bind-e__0__128536128537_
                   (lambda (_id121219_ _expr121220_)
                     (let ((_compile?121222_ '#t))
                       (declare (not safe))
                       (_bind-e__128534128535_
                        _id121219_
                        _expr121220_
                        _compile?121222_))))
                  (_bind-e120374_
                   (lambda _g130965_
                     (let ((_g130964_
                            (let ()
                              (declare (not safe))
                              (##length _g130965_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130964_ 2))
                              (apply (lambda (_id121219_ _expr121220_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128536128537_
                                          _id121219_
                                          _expr121220_)))
                                     _g130965_))
                             ((let () (declare (not safe)) (##fx= _g130964_ 3))
                              (apply (lambda (_id121224_
                                              _expr121225_
                                              _compile?121226_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128534128535_
                                          _id121224_
                                          _expr121225_
                                          _compile?121226_)))
                                     _g130965_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130965_))))))
                  (_compile-bindings120375_
                   (lambda (_rest120510_)
                     (let _lp120512_ ((_rest120514_ _rest120510_)
                                      (_bind120515_ '()))
                       (let* ((_rest120516120524_ _rest120514_)
                              (_else120518120532_
                               (lambda () (reverse _bind120515_)))
                              (_K120520121199_
                               (lambda (_rest120535_ _hd120536_)
                                 (let* ((___stx130461130462_ _hd120536_)
                                        (_g120541120588_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130461130462_)))))
                                   (let ((___kont130463130464_
                                          (lambda (_L121106_ _L121107_)
                                            (let* ((___stx130441130442_
                                                    _L121106_)
                                                   (_g121122121136_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130441130442_)))))
                                              (let ((___kont130443130444_
                                                     (lambda (_L121184_)
                                                       (let ((__tmp130966
                                                              (let ((__tmp130967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128534128535_
                                _L121107_
                                _L121106_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130967 _bind120515_))))
                 (declare (not safe))
                 (_lp120512_ _rest120535_ __tmp130966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130445130446_
                                                     (lambda (_L121149_)
                                                       (let ((_g130968_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120372_
                         _L121107_
                         _L121149_
                         '#t))))
                 (begin
                   (let ((_g130969_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130968_)
                                (##vector-length _g130968_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130969_ 3)))
                         (error "Context expects 3 values" _g130969_)))
                   (let ((_ids121159_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130968_ 0)))
                         (_impls121160_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130968_ 1)))
                         (_clauses121161_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130968_ 2))))
                     (let* ((_g130970_
                             (for-each gx#core-bind-runtime! _ids121159_))
                            (_xbind121164_
                             (map _bind-e120374_ _ids121159_ _impls121160_))
                            (_expr*121166_
                             (let ((__tmp130972
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121161_)))
                                   (__tmp130971
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130972
                                __tmp130971)))
                            (_bind*121168_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128534128535_
                                _L121107_
                                _expr*121166_
                                '#f))))
                       (let ((__tmp130974
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121107_)))
                             (__tmp130973
                              (map gxc#identifier-symbol _ids121159_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130974
                          '" => "
                          __tmp130973))
                       (let ((__tmp130975
                              (let ((__tmp130976
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120515_
                                               _xbind121164_))))
                                (declare (not safe))
                                (cons _bind*121168_ __tmp130976))))
                         (declare (not safe))
                         (_lp120512_ _rest120535_ __tmp130975)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130452130453_
                                                       (lambda (_e121127121176_
                                                                _hd121126121179_
                                                                _tl121125121181_)
                                                         (let ((_L121184_
                                                                _tl121125121181_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121184_))
                       (___kont130443130444_ _L121184_)
                       (___kont130445130446_ _tl121125121181_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130441130442_))
                                                      (let ((_e121127121176_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130441130442_))))
                (let ((_tl121125121181_
                       (let () (declare (not safe)) (##cdr _e121127121176_)))
                      (_hd121126121179_
                       (let () (declare (not safe)) (##car _e121127121176_))))
                  (___match130452130453_
                   _e121127121176_
                   _hd121126121179_
                   _tl121125121181_)))
              (let () (declare (not safe)) (_g121122121136_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130465130466_
                                          (lambda (_L120934_ _L120935_)
                                            (let* ((_g120949120979_
                                                    (lambda (_g120950120976_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120950120976_))))
                                                   (_g120948121074_
                                                    (lambda (_g120950120982_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120950120982_))
                                                          (let ((_e120956120984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120950120982_))))
                    (let ((_hd120955120987_
                           (let ()
                             (declare (not safe))
                             (##car _e120956120984_)))
                          (_tl120954120989_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120956120984_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120954120989_))
                          (let ((_e120959120992_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120954120989_))))
                            (let ((_hd120958120995_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120959120992_)))
                                  (_tl120957120997_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120959120992_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120958120995_))
                                  (let ((_e120962121000_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120958120995_))))
                                    (let ((_hd120961121003_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120962121000_)))
                                          (_tl120960121005_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120962121000_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120961121003_))
                                          (let ((_e120965121008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120961121003_))))
                                            (let ((_hd120964121011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120965121008_)))
                                                  (_tl120963121013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120965121008_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120964121011_))
                                                  (let ((_e120968121016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120964121011_))))
                                                    (let ((_hd120967121019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120968121016_)))
                                                          (_tl120966121021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120968121016_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120966121021_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120963121013_))
                      (let ((_e120971121024_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120963121013_))))
                        (let ((_hd120970121027_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120971121024_)))
                              (_tl120969121029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120971121024_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120969121029_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120960121005_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120957120997_))
                                      (let ((_e120974121032_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120957120997_))))
                                        (let ((_hd120973121035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120974121032_)))
                                              (_tl120972121037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120974121032_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120972121037_))
                                              ((lambda (_L121040_
                                                        _L121041_
                                                        _L121042_)
                                                 (let* ((_lambda-id121066_
                                                         (let ((__tmp130978
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120935_)))
                       (__tmp130977 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130978 __tmp130977)))
                (_lambda-id121068_
                 (let ((__tmp130979
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120372_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121066_ __tmp130979)))
                (_g130980_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121068_)))
                (_new-case-lambda-expr121071_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121040_
                    'id:
                    _L121042_
                    'new-id:
                    _lambda-id121068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130982
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120935_)))
                                                         (__tmp130981
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121068_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130982
                                                      '" => "
                                                      __tmp130981))
                                                   (let ((__tmp130985
                                                          (let ((__tmp130986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128534128535_
                            _L120935_
                            _new-case-lambda-expr121071_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130986 _rest120535_)))
                 (__tmp130983
                  (let ((__tmp130984
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128536128537_
                            _lambda-id121068_
                            _L121041_))))
                    (declare (not safe))
                    (cons __tmp130984 _bind120515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120512_
                                                      __tmp130985
                                                      __tmp130983))))
                                               _hd120973121035_
                                               _hd120970121027_
                                               _hd120967121019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120949120979_
                                                 _g120950120982_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120949120979_ _g120950120982_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120949120979_ _g120950120982_)))
                              (let ()
                                (declare (not safe))
                                (_g120949120979_ _g120950120982_)))))
                      (let ()
                        (declare (not safe))
                        (_g120949120979_ _g120950120982_)))
                  (let ()
                    (declare (not safe))
                    (_g120949120979_ _g120950120982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120949120979_
                                                     _g120950120982_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120949120979_
                                             _g120950120982_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120949120979_ _g120950120982_)))))
                          (let ()
                            (declare (not safe))
                            (_g120949120979_ _g120950120982_)))))
                  (let ()
                    (declare (not safe))
                    (_g120949120979_ _g120950120982_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120948121074_ _L120934_))))
                                         (___kont130467130468_
                                          (lambda (_L120658_ _L120659_)
                                            (let* ((_g120673120726_
                                                    (lambda (_g120674120723_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120674120723_))))
                                                   (_g120672120902_
                                                    (lambda (_g120674120729_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120674120729_))
                                                          (let ((_e120682120731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120674120729_))))
                    (let ((_hd120681120734_
                           (let ()
                             (declare (not safe))
                             (##car _e120682120731_)))
                          (_tl120680120736_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120682120731_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120680120736_))
                          (let ((_e120685120739_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120680120736_))))
                            (let ((_hd120684120742_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120685120739_)))
                                  (_tl120683120744_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120685120739_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120684120742_))
                                  (let ((_e120688120747_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120684120742_))))
                                    (let ((_hd120687120750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120688120747_)))
                                          (_tl120686120752_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120688120747_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120687120750_))
                                          (let ((_e120691120755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120687120750_))))
                                            (let ((_hd120690120758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120691120755_)))
                                                  (_tl120689120760_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120691120755_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120690120758_))
                                                  (let ((_e120694120763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120690120758_))))
                                                    (let ((_hd120693120766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120694120763_)))
                                                          (_tl120692120768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120694120763_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120692120768_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120689120760_))
                      (let ((_e120697120771_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120689120760_))))
                        (let ((_hd120696120774_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120697120771_)))
                              (_tl120695120776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120697120771_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120696120774_))
                              (let ((_e120700120779_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120696120774_))))
                                (let ((_hd120699120782_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120700120779_)))
                                      (_tl120698120784_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120700120779_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120698120784_))
                                      (let ((_e120703120787_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120698120784_))))
                                        (let ((_hd120702120790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120703120787_)))
                                              (_tl120701120792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120703120787_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120702120790_))
                                              (let ((_e120706120795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120702120790_))))
                                                (let ((_hd120705120798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120706120795_)))
                                                      (_tl120704120800_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120706120795_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120705120798_))
                                                      (let ((_e120709120803_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120705120798_))))
                (let ((_hd120708120806_
                       (let () (declare (not safe)) (##car _e120709120803_)))
                      (_tl120707120808_
                       (let () (declare (not safe)) (##cdr _e120709120803_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120708120806_))
                      (let ((_e120712120811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120708120806_))))
                        (let ((_hd120711120814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120712120811_)))
                              (_tl120710120816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120712120811_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120710120816_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120707120808_))
                                  (let ((_e120715120819_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120707120808_))))
                                    (let ((_hd120714120822_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120715120819_)))
                                          (_tl120713120824_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120715120819_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120713120824_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120704120800_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120701120792_))
                                                  (let ((_e120718120827_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120701120792_))))
                                                    (let ((_hd120717120830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120718120827_)))
                                                          (_tl120716120832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120718120827_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120716120832_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120695120776_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120686120752_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120683120744_))
                              (let ((_e120721120835_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120683120744_))))
                                (let ((_hd120720120838_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120721120835_)))
                                      (_tl120719120840_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120721120835_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120719120840_))
                                      ((lambda (_L120843_
                                                _L120844_
                                                _L120845_
                                                _L120846_
                                                _L120847_)
                                         (let* ((_get-kws-id120887_
                                                 (let ((__tmp130988
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120659_)))
                                                       (__tmp130987
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130988
                                                    __tmp130987)))
                                                (_get-kws-id120889_
                                                 (let ((__tmp130989
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120372_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120887_
                                                    __tmp130989)))
                                                (_main-id120891_
                                                 (let ((__tmp130991
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120659_)))
                                                       (__tmp130990
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130991
                                                    __tmp130990)))
                                                (_main-id120893_
                                                 (let ((__tmp130992
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120372_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120891_
                                                    __tmp130992)))
                                                (_g130993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120889_)))
                                                (_g130994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120893_)))
                                                (_new-kw-dispatch120897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120843_
                                                    'id:
                                                    _L120847_
                                                    'new-id:
                                                    _get-kws-id120889_)))
                                                (_new-get-kws120899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120844_
                                                    'id:
                                                    _L120846_
                                                    'new-id:
                                                    _main-id120893_))))
                                           (let ((__tmp130997
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120659_)))
                                                 (__tmp130996
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120889_)))
                                                 (__tmp130995
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120893_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130997
                                              '" => "
                                              __tmp130996
                                              '" => "
                                              __tmp130995))
                                           (let ((__tmp130998
                                                  (let ((__tmp131003
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128534128535_
                                                            _main-id120893_
                                                            _L120845_
                                                            '#f)))
                                                        (__tmp130999
                                                         (let ((__tmp131002
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128534128535_
                           _get-kws-id120889_
                           _new-get-kws120899_
                           '#f)))
                       (__tmp131000
                        (let ((__tmp131001
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128534128535_
                                  _L120659_
                                  _new-kw-dispatch120897_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp131001 _rest120535_))))
                   (declare (not safe))
                   (cons __tmp131002 __tmp131000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131003
                                                          __tmp130999))))
                                             (declare (not safe))
                                             (_lp120512_
                                              __tmp130998
                                              _bind120515_))))
                                       _hd120720120838_
                                       _hd120717120830_
                                       _hd120714120822_
                                       _hd120711120814_
                                       _hd120693120766_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120673120726_ _g120674120729_)))))
                              (let ()
                                (declare (not safe))
                                (_g120673120726_ _g120674120729_)))
                          (let ()
                            (declare (not safe))
                            (_g120673120726_ _g120674120729_)))
                      (let ()
                        (declare (not safe))
                        (_g120673120726_ _g120674120729_)))
                  (let ()
                    (declare (not safe))
                    (_g120673120726_ _g120674120729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120673120726_
                                                     _g120674120729_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120673120726_
                                                 _g120674120729_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120673120726_
                                             _g120674120729_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120673120726_ _g120674120729_)))
                              (let ()
                                (declare (not safe))
                                (_g120673120726_ _g120674120729_)))))
                      (let ()
                        (declare (not safe))
                        (_g120673120726_ _g120674120729_)))))
              (let ()
                (declare (not safe))
                (_g120673120726_ _g120674120729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120673120726_
                                                 _g120674120729_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120673120726_ _g120674120729_)))))
                              (let ()
                                (declare (not safe))
                                (_g120673120726_ _g120674120729_)))))
                      (let ()
                        (declare (not safe))
                        (_g120673120726_ _g120674120729_)))
                  (let ()
                    (declare (not safe))
                    (_g120673120726_ _g120674120729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120673120726_
                                                     _g120674120729_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120673120726_
                                             _g120674120729_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120673120726_ _g120674120729_)))))
                          (let ()
                            (declare (not safe))
                            (_g120673120726_ _g120674120729_)))))
                  (let ()
                    (declare (not safe))
                    (_g120673120726_ _g120674120729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120672120902_ _L120658_))))
                                         (___kont130469130470_
                                          (lambda (_L120609_ _L120610_)
                                            (let ((__tmp131004
                                                   (let ((__tmp131005
                                                          (let ((__tmp131006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp131007
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120371_ _L120609_))))
                           (declare (not safe))
                           (cons __tmp131007 '()))))
                    (declare (not safe))
                    (cons _L120610_ __tmp131006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp131005
                                                           _bind120515_))))
                                              (declare (not safe))
                                              (_lp120512_
                                               _rest120535_
                                               __tmp131004)))))
                                     (let* ((___match130536130537_
                                             (lambda (_e120569120634_
                                                      _hd120568120637_
                                                      _tl120567120639_
                                                      _e120572120642_
                                                      _hd120571120645_
                                                      _tl120570120647_
                                                      _e120575120650_
                                                      _hd120574120653_
                                                      _tl120573120655_)
                                               (let ((_L120658_
                                                      _hd120574120653_)
                                                     (_L120659_
                                                      _hd120571120645_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120659_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120658_)))
                                                     (___kont130467130468_
                                                      _L120658_
                                                      _L120659_)
                                                     (___kont130469130470_
                                                      _hd120574120653_
                                                      _hd120568120637_)))))
                                            (___match130514130515_
                                             (lambda (_e120558120910_
                                                      _hd120557120913_
                                                      _tl120556120915_
                                                      _e120561120918_
                                                      _hd120560120921_
                                                      _tl120559120923_
                                                      _e120564120926_
                                                      _hd120563120929_
                                                      _tl120562120931_)
                                               (let ((_L120934_
                                                      _hd120563120929_)
                                                     (_L120935_
                                                      _hd120560120921_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120935_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120934_)))
                                                     (___kont130465130466_
                                                      _L120934_
                                                      _L120935_)
                                                     (___match130536130537_
                                                      _e120558120910_
                                                      _hd120557120913_
                                                      _tl120556120915_
                                                      _e120561120918_
                                                      _hd120560120921_
                                                      _tl120559120923_
                                                      _e120564120926_
                                                      _hd120563120929_
                                                      _tl120562120931_)))))
                                            (___match130492130493_
                                             (lambda (_e120547121082_
                                                      _hd120546121085_
                                                      _tl120545121087_
                                                      _e120550121090_
                                                      _hd120549121093_
                                                      _tl120548121095_
                                                      _e120553121098_
                                                      _hd120552121101_
                                                      _tl120551121103_)
                                               (let ((_L121106_
                                                      _hd120552121101_)
                                                     (_L121107_
                                                      _hd120549121093_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121107_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121106_)))
                                                     (___kont130463130464_
                                                      _L121106_
                                                      _L121107_)
                                                     (___match130514130515_
                                                      _e120547121082_
                                                      _hd120546121085_
                                                      _tl120545121087_
                                                      _e120550121090_
                                                      _hd120549121093_
                                                      _tl120548121095_
                                                      _e120553121098_
                                                      _hd120552121101_
                                                      _tl120551121103_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130461130462_))
                                           (let ((_e120547121082_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130461130462_))))
                                             (let ((_tl120545121087_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120547121082_)))
                                                   (_hd120546121085_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120547121082_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120546121085_))
                                                   (let ((_e120550121090_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120546121085_))))
                                                     (let ((_tl120548121095_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120550121090_)))
                                                           (_hd120549121093_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120550121090_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120548121095_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120545121087_))
                       (let ((_e120553121098_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120545121087_))))
                         (let ((_tl120551121103_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120553121098_)))
                               (_hd120552121101_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120553121098_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120551121103_))
                               (___match130492130493_
                                _e120547121082_
                                _hd120546121085_
                                _tl120545121087_
                                _e120550121090_
                                _hd120549121093_
                                _tl120548121095_
                                _e120553121098_
                                _hd120552121101_
                                _tl120551121103_)
                               (let ()
                                 (declare (not safe))
                                 (_g120541120588_)))))
                       (let () (declare (not safe)) (_g120541120588_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120545121087_))
                       (let ((_e120583120601_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120545121087_))))
                         (let ((_tl120581120606_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120583120601_)))
                               (_hd120582120604_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120583120601_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120581120606_))
                               (___kont130469130470_
                                _hd120582120604_
                                _hd120546121085_)
                               (let ()
                                 (declare (not safe))
                                 (_g120541120588_)))))
                       (let () (declare (not safe)) (_g120541120588_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120545121087_))
                                                       (let ((_e120583120601_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120545121087_))))
                 (let ((_tl120581120606_
                        (let () (declare (not safe)) (##cdr _e120583120601_)))
                       (_hd120582120604_
                        (let () (declare (not safe)) (##car _e120583120601_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120581120606_))
                       (___kont130469130470_ _hd120582120604_ _hd120546121085_)
                       (let () (declare (not safe)) (_g120541120588_)))))
               (let () (declare (not safe)) (_g120541120588_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120541120588_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120516120524_))
                             (let ((_hd120521121202_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120516120524_)))
                                   (_tl120522121204_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120516120524_))))
                               (let* ((_hd121207_ _hd120521121202_)
                                      (_rest121209_ _tl120522121204_))
                                 (declare (not safe))
                                 (_K120520121199_ _rest121209_ _hd121207_)))
                             (let ()
                               (declare (not safe))
                               (_else120518120532_))))))))
          (let* ((___stx130553130554_ _stx120372_)
                 (_g120378120405_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130553130554_)))))
            (let ((___kont130555130556_
                   (lambda (_L120465_ _L120466_ _L120467_)
                     (let ((__tmp131009
                            (lambda ()
                              (let ((_hd120504_
                                     (let ((__tmp131010
                                            (let ((__tmp131011
                                                   (lambda (_g120496120499_
                                                            _g120497120501_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120496120499_
                                                             _g120497120501_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp131011
                                                      '()
                                                      _L120466_))))
                                       (declare (not safe))
                                       (_compile-bindings120375_ __tmp131010)))
                                    (_body120505_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120371_
                                        _L120465_))))
                                (let ((__tmp131012
                                       (let ((__tmp131013
                                              (let ((__tmp131014
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120505_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120504_
                                                      __tmp131014))))
                                         (declare (not safe))
                                         (cons _L120467_ __tmp131013))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp131012
                                   _stx120372_)))))
                           (__tmp131008
                            (let ((__obj130629
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130629)
                              __obj130629)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp131009
                        gx#current-expander-context
                        __tmp131008))))
                  (___kont130559130560_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120371_ _stx120372_)))))
              (let ((___match130580130581_
                     (lambda (_e120385120417_
                              _hd120384120420_
                              _tl120383120422_
                              _e120388120425_
                              _hd120387120428_
                              _tl120386120430_
                              ___splice130557130558_
                              _target120389120433_
                              _tl120391120435_)
                       (letrec ((_loop120392120438_
                                 (lambda (_hd120390120441_ _bind120396120443_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120390120441_))
                                       (let ((_e120393120446_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120390120441_))))
                                         (let ((_lp-tl120395120451_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120393120446_)))
                                               (_lp-hd120394120449_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120393120446_))))
                                           (let ((__tmp131017
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120394120449_
                                                          _bind120396120443_))))
                                             (declare (not safe))
                                             (_loop120392120438_
                                              _lp-tl120395120451_
                                              __tmp131017))))
                                       (let ((_bind120397120454_
                                              (reverse _bind120396120443_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120386120430_))
                                             (let ((_e120400120457_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120386120430_))))
                                               (let ((_tl120398120462_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120400120457_)))
                                                     (_hd120399120460_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120400120457_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120398120462_))
                                                     (let ((_L120465_
                                                            _hd120399120460_)
                                                           (_L120466_
                                                            _bind120397120454_)
                                                           (_L120467_
                                                            _hd120384120420_))
                                                       (if (let ((__tmp131015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131016
                                 (lambda (_g120488120491_ _g120489120493_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120488120491_ _g120489120493_)))))
                            (declare (not safe))
                            (foldr1 __tmp131016 '() _L120466_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp131015))
                   (___kont130555130556_ _L120465_ _L120466_ _L120467_)
                   (___kont130559130560_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130559130560_))))
                                             (___kont130559130560_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120392120438_ _target120389120433_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130553130554_))
                    (let ((_e120385120417_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130553130554_))))
                      (let ((_tl120383120422_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120385120417_)))
                            (_hd120384120420_
                             (let ()
                               (declare (not safe))
                               (##car _e120385120417_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120383120422_))
                            (let ((_e120388120425_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120383120422_))))
                              (let ((_tl120386120430_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120388120425_)))
                                    (_hd120387120428_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120388120425_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120387120428_))
                                    (let ((___splice130557130558_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120387120428_
                                              '0))))
                                      (let ((_tl120391120435_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130557130558_
                                                '1)))
                                            (_target120389120433_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130557130558_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120391120435_))
                                            (___match130580130581_
                                             _e120385120417_
                                             _hd120384120420_
                                             _tl120383120422_
                                             _e120388120425_
                                             _hd120387120428_
                                             _tl120386120430_
                                             ___splice130557130558_
                                             _target120389120433_
                                             _tl120391120435_)
                                            (___kont130559130560_))))
                                    (___kont130559130560_))))
                            (___kont130559130560_))))
                    (___kont130559130560_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind120289_)
        (let* ((___stx130583130584_ _bind120289_)
               (_g120292120309_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130583130584_)))))
          (let ((___kont130585130586_
                 (lambda (_L120345_ _L120346_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120346_))
                       (let ((_$e120362_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120345_))))
                         (if _$e120362_
                             _$e120362_
                             (let ((_$e120365_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120345_))))
                               (if _$e120365_
                                   _$e120365_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120345_))))))
                       '#f)))
                (___kont130587130588_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130583130584_))
                (let ((_e120298120321_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130583130584_))))
                  (let ((_tl120296120326_
                         (let () (declare (not safe)) (##cdr _e120298120321_)))
                        (_hd120297120324_
                         (let ()
                           (declare (not safe))
                           (##car _e120298120321_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120297120324_))
                        (let ((_e120301120329_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120297120324_))))
                          (let ((_tl120299120334_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120301120329_)))
                                (_hd120300120332_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120301120329_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120299120334_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120296120326_))
                                    (let ((_e120304120337_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120296120326_))))
                                      (let ((_tl120302120342_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120304120337_)))
                                            (_hd120303120340_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120304120337_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120302120342_))
                                            (___kont130585130586_
                                             _hd120303120340_
                                             _hd120300120332_)
                                            (___kont130587130588_))))
                                    (___kont130587130588_))
                                (___kont130587130588_))))
                        (___kont130587130588_))))
                (___kont130587130588_))))))))
