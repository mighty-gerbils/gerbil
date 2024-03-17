(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710694206)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp127613 (list gxc#::void::t))
            (__tmp127611
             (let ((__tmp127612
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127612 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp127613
         '()
         __tmp127611
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args125507_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args125507_)))
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
      (lambda (_stx125499_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self125502_
                (let ((__obj127594
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj127594))
               (__tmp127614
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125502_ _stx125499_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127614
           gxc#current-compile-method
           _self125502_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp127617 (list gxc#::false::t))
            (__tmp127615
             (let ((__tmp127616
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127616 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp127617
         '()
         __tmp127615
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args125496_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args125496_)))
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
      (lambda (_stx125488_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self125491_
                (let ((__obj127596
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj127596))
               (__tmp127618
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125491_ _stx125488_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127618
           gxc#current-compile-method
           _self125491_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp127621 (list gxc#::void::t))
            (__tmp127619
             (let ((__tmp127620
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127620 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp127621
         '()
         __tmp127619
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args125485_
        (apply make-instance gxc#::collect-type-info::t _$args125485_)))
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
      (lambda (_stx125477_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self125480_
                (let ((__obj127598
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj127598))
               (__tmp127622
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125480_ _stx125477_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127622
           gxc#current-compile-method
           _self125480_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp127625 (list gxc#::false::t))
            (__tmp127623
             (let ((__tmp127624
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127624 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp127625
         '()
         __tmp127623
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args125474_
        (apply make-instance gxc#::basic-expression-type::t _$args125474_)))
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
      (lambda (_stx125466_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self125469_
                (let ((__obj127600
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj127600))
               (__tmp127626
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125469_ _stx125466_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127626
           gxc#current-compile-method
           _self125469_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp127629 (list gxc#::basic-xform::t))
            (__tmp127627
             (let ((__tmp127628
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127628 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp127629
         '()
         __tmp127627
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args125463_
        (apply make-instance gxc#::lift-top-lambdas::t _$args125463_)))
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
      (lambda (_stx125455_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self125458_
                (let ((__obj127602
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj127602))
               (__tmp127630
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125458_ _stx125455_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127630
           gxc#current-compile-method
           _self125458_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self125357_ _stx125358_)
        (let* ((___stx125520125521_ _stx125358_)
               (_g125361125381_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125520125521_)))))
          (let ((___kont125522125523_
                 (lambda (_L125425_ _L125426_)
                   (let ((_sym125444_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125426_))))
                     (if (let ((__tmp127631 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127631 _sym125444_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125444_))
                         (let ((_type125445125447_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L125425_))))
                           (if _type125445125447_
                               (let ((_type125450_ _type125445125447_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym125444_
                                  _type125450_))
                               '#f))))))
                (___kont125524125525_ (lambda () '#!void)))
            (let ((___match125553125554_
                   (lambda (_e125365125393_
                            _hd125366125396_
                            _tl125367125398_
                            _e125368125401_
                            _hd125369125404_
                            _tl125370125406_
                            _e125371125409_
                            _hd125372125412_
                            _tl125373125414_
                            _e125374125417_
                            _hd125375125420_
                            _tl125376125422_)
                     (let ((_L125425_ _hd125375125420_)
                           (_L125426_ _hd125372125412_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125426_))
                           (___kont125522125523_ _L125425_ _L125426_)
                           (___kont125524125525_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125520125521_))
                  (let ((_e125365125393_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125520125521_))))
                    (let ((_tl125367125398_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125365125393_)))
                          (_hd125366125396_
                           (let ()
                             (declare (not safe))
                             (##car _e125365125393_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125367125398_))
                          (let ((_e125368125401_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125367125398_))))
                            (let ((_tl125370125406_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125368125401_)))
                                  (_hd125369125404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125368125401_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125369125404_))
                                  (let ((_e125371125409_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125369125404_))))
                                    (let ((_tl125373125414_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125371125409_)))
                                          (_hd125372125412_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125371125409_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125373125414_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125370125406_))
                                              (let ((_e125374125417_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125370125406_))))
                                                (let ((_tl125376125422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125374125417_)))
                                                      (_hd125375125420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125374125417_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125376125422_))
                                                      (___match125553125554_
                                                       _e125365125393_
                                                       _hd125366125396_
                                                       _tl125367125398_
                                                       _e125368125401_
                                                       _hd125369125404_
                                                       _tl125370125406_
                                                       _e125371125409_
                                                       _hd125372125412_
                                                       _tl125373125414_
                                                       _e125374125417_
                                                       _hd125375125420_
                                                       _tl125376125422_)
                                                      (___kont125524125525_))))
                                              (___kont125524125525_))
                                          (___kont125524125525_))))
                                  (___kont125524125525_))))
                          (___kont125524125525_))))
                  (___kont125524125525_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self125212_ _stx125213_)
        (let* ((___stx125556125557_ _stx125213_)
               (_g125216125247_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125556125557_)))))
          (let ((___kont125558125559_
                 (lambda (_L125329_ _L125330_)
                   (let ((_sym125346_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125330_))))
                     (if (let ((__tmp127632 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127632 _sym125346_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125346_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym125346_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym125346_))
                             (let ((_type125347125349_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L125329_))))
                               (if _type125347125349_
                                   (let ((_type125352_ _type125347125349_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym125346_
                                      _type125352_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self125212_ _L125329_)))))
                (___kont125560125561_
                 (lambda (_L125276_ _L125277_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self125212_ _L125276_)))))
            (let ((___match125589125590_
                   (lambda (_e125220125297_
                            _hd125221125300_
                            _tl125222125302_
                            _e125223125305_
                            _hd125224125308_
                            _tl125225125310_
                            _e125226125313_
                            _hd125227125316_
                            _tl125228125318_
                            _e125229125321_
                            _hd125230125324_
                            _tl125231125326_)
                     (let ((_L125329_ _hd125230125324_)
                           (_L125330_ _hd125227125316_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125330_))
                           (___kont125558125559_ _L125329_ _L125330_)
                           (___kont125560125561_
                            _hd125230125324_
                            _hd125224125308_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125556125557_))
                  (let ((_e125220125297_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125556125557_))))
                    (let ((_tl125222125302_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125220125297_)))
                          (_hd125221125300_
                           (let ()
                             (declare (not safe))
                             (##car _e125220125297_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125222125302_))
                          (let ((_e125223125305_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125222125302_))))
                            (let ((_tl125225125310_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125223125305_)))
                                  (_hd125224125308_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125223125305_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125224125308_))
                                  (let ((_e125226125313_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125224125308_))))
                                    (let ((_tl125228125318_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125226125313_)))
                                          (_hd125227125316_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125226125313_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125228125318_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125225125310_))
                                              (let ((_e125229125321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125225125310_))))
                                                (let ((_tl125231125326_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125229125321_)))
                                                      (_hd125230125324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125229125321_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125231125326_))
                                                      (___match125589125590_
                                                       _e125220125297_
                                                       _hd125221125300_
                                                       _tl125222125302_
                                                       _e125223125305_
                                                       _hd125224125308_
                                                       _tl125225125310_
                                                       _e125226125313_
                                                       _hd125227125316_
                                                       _tl125228125318_
                                                       _e125229125321_
                                                       _hd125230125324_
                                                       _tl125231125326_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125216125247_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125216125247_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125225125310_))
                                              (let ((_e125240125268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125225125310_))))
                                                (let ((_tl125242125273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125240125268_)))
                                                      (_hd125241125271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125240125268_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125242125273_))
                                                      (___kont125560125561_
                                                       _hd125241125271_
                                                       _hd125224125308_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125216125247_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125216125247_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125225125310_))
                                      (let ((_e125240125268_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125225125310_))))
                                        (let ((_tl125242125273_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125240125268_)))
                                              (_hd125241125271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125240125268_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125242125273_))
                                              (___kont125560125561_
                                               _hd125241125271_
                                               _hd125224125308_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125216125247_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125216125247_))))))
                          (let () (declare (not safe)) (_g125216125247_)))))
                  (let () (declare (not safe)) (_g125216125247_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self124992_ _stx124993_)
        (letrec ((_collect-e124995_
                  (lambda (_hd125156_ _expr125157_)
                    (let* ((___stx125612125613_ _hd125156_)
                           (_g125160125170_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx125612125613_)))))
                      (let ((___kont125614125615_
                             (lambda (_L125190_)
                               (let ((_sym125201_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125190_))))
                                 (if (let ((__tmp127633
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp127633 _sym125201_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125201_))
                                     (let ((_type125202125204_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125157_))))
                                       (if _type125202125204_
                                           (let ((_type125207_
                                                  _type125202125204_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125201_
                                              _type125207_
                                              '#t))
                                           '#f))))))
                            (___kont125616125617_ (lambda () '#!void)))
                        (let ((___match125625125626_
                               (lambda (_e125163125182_
                                        _hd125164125185_
                                        _tl125165125187_)
                                 (let ((_L125190_ _hd125164125185_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125190_))
                                       (___kont125614125615_ _L125190_)
                                       (___kont125616125617_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx125612125613_))
                              (let ((_e125163125182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx125612125613_))))
                                (let ((_tl125165125187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125163125182_)))
                                      (_hd125164125185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125163125182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125165125187_))
                                      (___match125625125626_
                                       _e125163125182_
                                       _hd125164125185_
                                       _tl125165125187_)
                                      (___kont125616125617_))))
                              (___kont125616125617_))))))))
          (let* ((_g124997125032_
                  (lambda (_g124998125029_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124998125029_))))
                 (_g124996125153_
                  (lambda (_g124998125035_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124998125035_))
                        (let ((_e125002125037_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124998125035_))))
                          (let ((_hd125003125040_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125002125037_)))
                                (_tl125004125042_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125002125037_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125004125042_))
                                (let ((_e125005125045_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125004125042_))))
                                  (let ((_hd125006125048_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125005125045_)))
                                        (_tl125007125050_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125005125045_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125006125048_))
                                        (let ((_g127634_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125006125048_
                                                  '0))))
                                          (begin
                                            (let ((_g127635_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g127634_)
                                                         (##vector-length
                                                          _g127634_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g127635_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g127635_)))
                                            (let ((_target125008125053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127634_
                                                      0)))
                                                  (_tl125010125055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127634_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125010125055_))
                                                  (letrec ((_loop125011125058_
                                                            (lambda (_hd125009125061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125015125063_
                             _hd125016125065_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125009125061_))
                          (let ((_e125012125068_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125009125061_))))
                            (let ((_lp-hd125013125071_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125012125068_)))
                                  (_lp-tl125014125073_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125012125068_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125013125071_))
                                  (let ((_e125019125076_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125013125071_))))
                                    (let ((_hd125020125079_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125019125076_)))
                                          (_tl125021125081_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125019125076_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125021125081_))
                                          (let ((_e125022125084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125021125081_))))
                                            (let ((_hd125023125087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125022125084_)))
                                                  (_tl125024125089_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125022125084_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125024125089_))
                                                  (let ((__tmp127637
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125023125087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125015125063_)))
                (__tmp127636
                 (let ()
                   (declare (not safe))
                   (cons _hd125020125079_ _hd125016125065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125011125058_
                                                     _lp-tl125014125073_
                                                     __tmp127637
                                                     __tmp127636))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124997125032_
                                                     _g124998125035_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124997125032_
                                             _g124998125035_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124997125032_ _g124998125035_)))))
                          (let ((_expr125017125092_
                                 (reverse _expr125015125063_))
                                (_hd125018125094_ (reverse _hd125016125065_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125007125050_))
                                (let ((_e125025125097_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125007125050_))))
                                  (let ((_hd125026125100_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125025125097_)))
                                        (_tl125027125102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125025125097_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125027125102_))
                                        ((lambda (_L125105_
                                                  _L125106_
                                                  _L125107_)
                                           (for-each
                                            _collect-e124995_
                                            (let ((__tmp127638
                                                   (lambda (_g125127125130_
                                                            _g125128125132_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125127125130_
                                                             _g125128125132_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127638
                                                      '()
                                                      _L125107_))
                                            (let ((__tmp127639
                                                   (lambda (_g125134125137_
                                                            _g125135125139_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125134125137_
                                                             _g125135125139_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127639
                                                      '()
                                                      _L125106_)))
                                           (for-each
                                            (lambda (_g125141125143_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self124992_
                                                 _g125141125143_)))
                                            (let ((__tmp127640
                                                   (lambda (_g125145125148_
                                                            _g125146125150_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125145125148_
                                                             _g125146125150_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127640
                                                      '()
                                                      _L125106_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self124992_
                                              _L125105_)))
                                         _hd125026125100_
                                         _expr125017125092_
                                         _hd125018125094_)
                                        (let ()
                                          (declare (not safe))
                                          (_g124997125032_ _g124998125035_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124997125032_ _g124998125035_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125011125058_
                                                       _target125008125053_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124997125032_
                                                     _g124998125035_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g124997125032_ _g124998125035_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124997125032_ _g124998125035_)))))
                        (let ()
                          (declare (not safe))
                          (_g124997125032_ _g124998125035_))))))
            (declare (not safe))
            (_g124996125153_ _stx124993_)))))
    (define gxc#collect-type-call%
      (lambda (_self124479_ _stx124480_)
        (let* ((___stx125628125629_ _stx124480_)
               (_g124484124599_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125628125629_)))))
          (let ((___kont125630125631_
                 (lambda (_L124942_ _L124943_ _L124944_ _L124945_ _L124946_)
                   (let ((__tmp127644
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124945_)))
                         (__tmp127643
                          (let () (declare (not safe)) (gx#stx-e _L124944_)))
                         (__tmp127642
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124943_)))
                         (__tmp127641
                          (let () (declare (not safe)) (gx#stx-e _L124942_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127644
                      __tmp127643
                      __tmp127642
                      __tmp127641))))
                (___kont125632125633_
                 (lambda (_L124770_ _L124771_ _L124772_ _L124773_)
                   (let ((__tmp127647
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124772_)))
                         (__tmp127646
                          (let () (declare (not safe)) (gx#stx-e _L124771_)))
                         (__tmp127645
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124770_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127647
                      __tmp127646
                      __tmp127645
                      '#f))))
                (___kont125634125635_
                 (lambda (_L124636_)
                   (for-each
                    (lambda (_g124649124651_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self124479_ _g124649124651_)))
                    (let ((__tmp127648
                           (lambda (_g124653124656_ _g124654124658_)
                             (let ()
                               (declare (not safe))
                               (cons _g124653124656_ _g124654124658_)))))
                      (declare (not safe))
                      (foldr1 __tmp127648 '() _L124636_))))))
            (let* ((___match125885125886_
                    (lambda (_e124583124604_
                             _hd124584124607_
                             _tl124585124609_
                             ___splice125636125637_
                             _target124586124612_
                             _tl124588124614_)
                      (letrec ((_loop124589124617_
                                (lambda (_hd124587124620_ _expr124593124622_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124587124620_))
                                      (let ((_e124590124625_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124587124620_))))
                                        (let ((_lp-tl124592124630_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124590124625_)))
                                              (_lp-hd124591124628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124590124625_))))
                                          (let ((__tmp127649
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124591124628_
                                                         _expr124593124622_))))
                                            (declare (not safe))
                                            (_loop124589124617_
                                             _lp-tl124592124630_
                                             __tmp127649))))
                                      (let ((_expr124594124633_
                                             (reverse _expr124593124622_)))
                                        (___kont125634125635_
                                         _expr124594124633_))))))
                        (let ()
                          (declare (not safe))
                          (_loop124589124617_ _target124586124612_ '())))))
                   (___match125765125766_
                    (lambda (_e124491124814_
                             _hd124492124817_
                             _tl124493124819_
                             _e124494124822_
                             _hd124495124825_
                             _tl124496124827_
                             _e124497124830_
                             _hd124498124833_
                             _tl124499124835_
                             _e124500124838_
                             _hd124501124841_
                             _tl124502124843_
                             _e124503124846_
                             _hd124504124849_
                             _tl124505124851_
                             _e124506124854_
                             _hd124507124857_
                             _tl124508124859_
                             _e124509124862_
                             _hd124510124865_
                             _tl124511124867_
                             _e124512124870_
                             _hd124513124873_
                             _tl124514124875_
                             _e124515124878_
                             _hd124516124881_
                             _tl124517124883_
                             _e124518124886_
                             _hd124519124889_
                             _tl124520124891_
                             _e124521124894_
                             _hd124522124897_
                             _tl124523124899_
                             _e124524124902_
                             _hd124525124905_
                             _tl124526124907_
                             _e124527124910_
                             _hd124528124913_
                             _tl124529124915_
                             _e124530124918_
                             _hd124531124921_
                             _tl124532124923_
                             _e124533124926_
                             _hd124534124929_
                             _tl124535124931_
                             _e124536124934_
                             _hd124537124937_
                             _tl124538124939_)
                      (let ((_L124942_ _hd124537124937_)
                            (_L124943_ _hd124528124913_)
                            (_L124944_ _hd124519124889_)
                            (_L124945_ _hd124510124865_)
                            (_L124946_ _hd124501124841_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L124946_
                               'bind-method!))
                            (___kont125630125631_
                             _L124942_
                             _L124943_
                             _L124944_
                             _L124945_
                             _L124946_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl124493124819_))
                                (let ((___splice125636125637_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl124493124819_
                                          '0))))
                                  (let ((_tl124588124614_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125636125637_
                                            '1)))
                                        (_target124586124612_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125636125637_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124588124614_))
                                        (___match125885125886_
                                         _e124491124814_
                                         _hd124492124817_
                                         _tl124493124819_
                                         ___splice125636125637_
                                         _target124586124612_
                                         _tl124588124614_)
                                        (let ()
                                          (declare (not safe))
                                          (_g124484124599_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124484124599_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125628125629_))
                  (let ((_e124491124814_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125628125629_))))
                    (let ((_tl124493124819_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124491124814_)))
                          (_hd124492124817_
                           (let ()
                             (declare (not safe))
                             (##car _e124491124814_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124493124819_))
                          (let ((_e124494124822_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124493124819_))))
                            (let ((_tl124496124827_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124494124822_)))
                                  (_hd124495124825_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124494124822_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124495124825_))
                                  (let ((_e124497124830_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124495124825_))))
                                    (let ((_tl124499124835_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124497124830_)))
                                          (_hd124498124833_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124497124830_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124498124833_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124498124833_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124499124835_))
                                                  (let ((_e124500124838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124499124835_))))
                                                    (let ((_tl124502124843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124500124838_)))
                                                          (_hd124501124841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124500124838_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124502124843_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124496124827_))
                      (let ((_e124503124846_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124496124827_))))
                        (let ((_tl124505124851_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124503124846_)))
                              (_hd124504124849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124503124846_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124504124849_))
                              (let ((_e124506124854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124504124849_))))
                                (let ((_tl124508124859_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124506124854_)))
                                      (_hd124507124857_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124506124854_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124507124857_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124507124857_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124508124859_))
                                              (let ((_e124509124862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124508124859_))))
                                                (let ((_tl124511124867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124509124862_)))
                                                      (_hd124510124865_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124509124862_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124511124867_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124505124851_))
                                                          (let ((_e124512124870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124505124851_))))
                    (let ((_tl124514124875_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124512124870_)))
                          (_hd124513124873_
                           (let ()
                             (declare (not safe))
                             (##car _e124512124870_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124513124873_))
                          (let ((_e124515124878_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124513124873_))))
                            (let ((_tl124517124883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124515124878_)))
                                  (_hd124516124881_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124515124878_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124516124881_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd124516124881_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124517124883_))
                                          (let ((_e124518124886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124517124883_))))
                                            (let ((_tl124520124891_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124518124886_)))
                                                  (_hd124519124889_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124518124886_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124520124891_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124514124875_))
                                                      (let ((_e124521124894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124514124875_))))
                (let ((_tl124523124899_
                       (let () (declare (not safe)) (##cdr _e124521124894_)))
                      (_hd124522124897_
                       (let () (declare (not safe)) (##car _e124521124894_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124522124897_))
                      (let ((_e124524124902_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124522124897_))))
                        (let ((_tl124526124907_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124524124902_)))
                              (_hd124525124905_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124524124902_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124525124905_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124525124905_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124526124907_))
                                      (let ((_e124527124910_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124526124907_))))
                                        (let ((_tl124529124915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124527124910_)))
                                              (_hd124528124913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124527124910_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124529124915_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124523124899_))
                                                  (let ((_e124530124918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124523124899_))))
                                                    (let ((_tl124532124923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124530124918_)))
                                                          (_hd124531124921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124530124918_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124531124921_))
                                                          (let ((_e124533124926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124531124921_))))
                    (let ((_tl124535124931_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124533124926_)))
                          (_hd124534124929_
                           (let ()
                             (declare (not safe))
                             (##car _e124533124926_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124534124929_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124534124929_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124535124931_))
                                  (let ((_e124536124934_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124535124931_))))
                                    (let ((_tl124538124939_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124536124934_)))
                                          (_hd124537124937_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124536124934_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124538124939_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124532124923_))
                                              (___match125765125766_
                                               _e124491124814_
                                               _hd124492124817_
                                               _tl124493124819_
                                               _e124494124822_
                                               _hd124495124825_
                                               _tl124496124827_
                                               _e124497124830_
                                               _hd124498124833_
                                               _tl124499124835_
                                               _e124500124838_
                                               _hd124501124841_
                                               _tl124502124843_
                                               _e124503124846_
                                               _hd124504124849_
                                               _tl124505124851_
                                               _e124506124854_
                                               _hd124507124857_
                                               _tl124508124859_
                                               _e124509124862_
                                               _hd124510124865_
                                               _tl124511124867_
                                               _e124512124870_
                                               _hd124513124873_
                                               _tl124514124875_
                                               _e124515124878_
                                               _hd124516124881_
                                               _tl124517124883_
                                               _e124518124886_
                                               _hd124519124889_
                                               _tl124520124891_
                                               _e124521124894_
                                               _hd124522124897_
                                               _tl124523124899_
                                               _e124524124902_
                                               _hd124525124905_
                                               _tl124526124907_
                                               _e124527124910_
                                               _hd124528124913_
                                               _tl124529124915_
                                               _e124530124918_
                                               _hd124531124921_
                                               _tl124532124923_
                                               _e124533124926_
                                               _hd124534124929_
                                               _tl124535124931_
                                               _e124536124934_
                                               _hd124537124937_
                                               _tl124538124939_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124493124819_))
                                                  (let ((___splice125636125637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124493124819_
                                                            '0))))
                                                    (let ((_tl124588124614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '1)))
                                                          (_target124586124612_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124588124614_))
                                                          (___match125885125886_
                                                           _e124491124814_
                                                           _hd124492124817_
                                                           _tl124493124819_
                                                           ___splice125636125637_
                                                           _target124586124612_
                                                           _tl124588124614_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124484124599_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124484124599_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124493124819_))
                                              (let ((___splice125636125637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124493124819_
                                                        '0))))
                                                (let ((_tl124588124614_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '1)))
                                                      (_target124586124612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124588124614_))
                                                      (___match125885125886_
                                                       _e124491124814_
                                                       _hd124492124817_
                                                       _tl124493124819_
                                                       ___splice125636125637_
                                                       _target124586124612_
                                                       _tl124588124614_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124484124599_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124493124819_))
                                      (let ((___splice125636125637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124493124819_
                                                '0))))
                                        (let ((_tl124588124614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '1)))
                                              (_target124586124612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124588124614_))
                                              (___match125885125886_
                                               _e124491124814_
                                               _hd124492124817_
                                               _tl124493124819_
                                               ___splice125636125637_
                                               _target124586124612_
                                               _tl124588124614_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124484124599_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124493124819_))
                                  (let ((___splice125636125637_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124493124819_
                                            '0))))
                                    (let ((_tl124588124614_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125636125637_
                                              '1)))
                                          (_target124586124612_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125636125637_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124588124614_))
                                          (___match125885125886_
                                           _e124491124814_
                                           _hd124492124817_
                                           _tl124493124819_
                                           ___splice125636125637_
                                           _target124586124612_
                                           _tl124588124614_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124484124599_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124484124599_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124493124819_))
                              (let ((___splice125636125637_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124493124819_
                                        '0))))
                                (let ((_tl124588124614_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125636125637_
                                          '1)))
                                      (_target124586124612_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125636125637_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124588124614_))
                                      (___match125885125886_
                                       _e124491124814_
                                       _hd124492124817_
                                       _tl124493124819_
                                       ___splice125636125637_
                                       _target124586124612_
                                       _tl124588124614_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124484124599_)))))
                              (let ()
                                (declare (not safe))
                                (_g124484124599_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124493124819_))
                      (let ((___splice125636125637_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124493124819_ '0))))
                        (let ((_tl124588124614_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '1)))
                              (_target124586124612_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124588124614_))
                              (___match125885125886_
                               _e124491124814_
                               _hd124492124817_
                               _tl124493124819_
                               ___splice125636125637_
                               _target124586124612_
                               _tl124588124614_)
                              (let ()
                                (declare (not safe))
                                (_g124484124599_)))))
                      (let () (declare (not safe)) (_g124484124599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124523124899_))
                                                      (if (let ((__tmp127650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp127650 'bind-method!))
                  (let ((_L124770_ _hd124528124913_)
                        (_L124771_ _hd124519124889_)
                        (_L124772_ _hd124510124865_)
                        (_L124773_ _hd124501124841_))
                    (___kont125632125633_
                     _L124770_
                     _L124771_
                     _L124772_
                     _L124773_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124493124819_))
                      (let ((___splice125636125637_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124493124819_ '0))))
                        (let ((_tl124588124614_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '1)))
                              (_target124586124612_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124588124614_))
                              (___match125885125886_
                               _e124491124814_
                               _hd124492124817_
                               _tl124493124819_
                               ___splice125636125637_
                               _target124586124612_
                               _tl124588124614_)
                              (let ()
                                (declare (not safe))
                                (_g124484124599_)))))
                      (let () (declare (not safe)) (_g124484124599_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124493124819_))
                  (let ((___splice125636125637_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124493124819_ '0))))
                    (let ((_tl124588124614_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125636125637_ '1)))
                          (_target124586124612_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125636125637_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124588124614_))
                          (___match125885125886_
                           _e124491124814_
                           _hd124492124817_
                           _tl124493124819_
                           ___splice125636125637_
                           _target124586124612_
                           _tl124588124614_)
                          (let () (declare (not safe)) (_g124484124599_)))))
                  (let () (declare (not safe)) (_g124484124599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124493124819_))
                                                  (let ((___splice125636125637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124493124819_
                                                            '0))))
                                                    (let ((_tl124588124614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '1)))
                                                          (_target124586124612_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124588124614_))
                                                          (___match125885125886_
                                                           _e124491124814_
                                                           _hd124492124817_
                                                           _tl124493124819_
                                                           ___splice125636125637_
                                                           _target124586124612_
                                                           _tl124588124614_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124484124599_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124484124599_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124493124819_))
                                          (let ((___splice125636125637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124493124819_
                                                    '0))))
                                            (let ((_tl124588124614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125636125637_
                                                      '1)))
                                                  (_target124586124612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125636125637_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124588124614_))
                                                  (___match125885125886_
                                                   _e124491124814_
                                                   _hd124492124817_
                                                   _tl124493124819_
                                                   ___splice125636125637_
                                                   _target124586124612_
                                                   _tl124588124614_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124484124599_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124484124599_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124493124819_))
                                      (let ((___splice125636125637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124493124819_
                                                '0))))
                                        (let ((_tl124588124614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '1)))
                                              (_target124586124612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124588124614_))
                                              (___match125885125886_
                                               _e124491124814_
                                               _hd124492124817_
                                               _tl124493124819_
                                               ___splice125636125637_
                                               _target124586124612_
                                               _tl124588124614_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124484124599_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124493124819_))
                                  (let ((___splice125636125637_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124493124819_
                                            '0))))
                                    (let ((_tl124588124614_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125636125637_
                                              '1)))
                                          (_target124586124612_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125636125637_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124588124614_))
                                          (___match125885125886_
                                           _e124491124814_
                                           _hd124492124817_
                                           _tl124493124819_
                                           ___splice125636125637_
                                           _target124586124612_
                                           _tl124588124614_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124484124599_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124484124599_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124493124819_))
                          (let ((___splice125636125637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124493124819_
                                    '0))))
                            (let ((_tl124588124614_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125636125637_ '1)))
                                  (_target124586124612_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125636125637_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124588124614_))
                                  (___match125885125886_
                                   _e124491124814_
                                   _hd124492124817_
                                   _tl124493124819_
                                   ___splice125636125637_
                                   _target124586124612_
                                   _tl124588124614_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124484124599_)))))
                          (let () (declare (not safe)) (_g124484124599_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124493124819_))
                  (let ((___splice125636125637_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124493124819_ '0))))
                    (let ((_tl124588124614_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125636125637_ '1)))
                          (_target124586124612_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125636125637_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124588124614_))
                          (___match125885125886_
                           _e124491124814_
                           _hd124492124817_
                           _tl124493124819_
                           ___splice125636125637_
                           _target124586124612_
                           _tl124588124614_)
                          (let () (declare (not safe)) (_g124484124599_)))))
                  (let () (declare (not safe)) (_g124484124599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124493124819_))
                                                      (let ((___splice125636125637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124493124819_ '0))))
                (let ((_tl124588124614_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125636125637_ '1)))
                      (_target124586124612_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125636125637_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124588124614_))
                      (___match125885125886_
                       _e124491124814_
                       _hd124492124817_
                       _tl124493124819_
                       ___splice125636125637_
                       _target124586124612_
                       _tl124588124614_)
                      (let () (declare (not safe)) (_g124484124599_)))))
              (let () (declare (not safe)) (_g124484124599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124493124819_))
                                              (let ((___splice125636125637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124493124819_
                                                        '0))))
                                                (let ((_tl124588124614_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '1)))
                                                      (_target124586124612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124588124614_))
                                                      (___match125885125886_
                                                       _e124491124814_
                                                       _hd124492124817_
                                                       _tl124493124819_
                                                       ___splice125636125637_
                                                       _target124586124612_
                                                       _tl124588124614_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124484124599_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124493124819_))
                                          (let ((___splice125636125637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124493124819_
                                                    '0))))
                                            (let ((_tl124588124614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125636125637_
                                                      '1)))
                                                  (_target124586124612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125636125637_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124588124614_))
                                                  (___match125885125886_
                                                   _e124491124814_
                                                   _hd124492124817_
                                                   _tl124493124819_
                                                   ___splice125636125637_
                                                   _target124586124612_
                                                   _tl124588124614_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124484124599_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124484124599_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124493124819_))
                                      (let ((___splice125636125637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124493124819_
                                                '0))))
                                        (let ((_tl124588124614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '1)))
                                              (_target124586124612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124588124614_))
                                              (___match125885125886_
                                               _e124491124814_
                                               _hd124492124817_
                                               _tl124493124819_
                                               ___splice125636125637_
                                               _target124586124612_
                                               _tl124588124614_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124484124599_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124493124819_))
                              (let ((___splice125636125637_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124493124819_
                                        '0))))
                                (let ((_tl124588124614_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125636125637_
                                          '1)))
                                      (_target124586124612_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125636125637_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124588124614_))
                                      (___match125885125886_
                                       _e124491124814_
                                       _hd124492124817_
                                       _tl124493124819_
                                       ___splice125636125637_
                                       _target124586124612_
                                       _tl124588124614_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124484124599_)))))
                              (let ()
                                (declare (not safe))
                                (_g124484124599_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124493124819_))
                      (let ((___splice125636125637_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124493124819_ '0))))
                        (let ((_tl124588124614_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '1)))
                              (_target124586124612_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124588124614_))
                              (___match125885125886_
                               _e124491124814_
                               _hd124492124817_
                               _tl124493124819_
                               ___splice125636125637_
                               _target124586124612_
                               _tl124588124614_)
                              (let ()
                                (declare (not safe))
                                (_g124484124599_)))))
                      (let () (declare (not safe)) (_g124484124599_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124493124819_))
                  (let ((___splice125636125637_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124493124819_ '0))))
                    (let ((_tl124588124614_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125636125637_ '1)))
                          (_target124586124612_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125636125637_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124588124614_))
                          (___match125885125886_
                           _e124491124814_
                           _hd124492124817_
                           _tl124493124819_
                           ___splice125636125637_
                           _target124586124612_
                           _tl124588124614_)
                          (let () (declare (not safe)) (_g124484124599_)))))
                  (let () (declare (not safe)) (_g124484124599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124493124819_))
                                                  (let ((___splice125636125637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124493124819_
                                                            '0))))
                                                    (let ((_tl124588124614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '1)))
                                                          (_target124586124612_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124588124614_))
                                                          (___match125885125886_
                                                           _e124491124814_
                                                           _hd124492124817_
                                                           _tl124493124819_
                                                           ___splice125636125637_
                                                           _target124586124612_
                                                           _tl124588124614_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124484124599_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124484124599_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124493124819_))
                                              (let ((___splice125636125637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124493124819_
                                                        '0))))
                                                (let ((_tl124588124614_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '1)))
                                                      (_target124586124612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124588124614_))
                                                      (___match125885125886_
                                                       _e124491124814_
                                                       _hd124492124817_
                                                       _tl124493124819_
                                                       ___splice125636125637_
                                                       _target124586124612_
                                                       _tl124588124614_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124484124599_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124493124819_))
                                          (let ((___splice125636125637_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124493124819_
                                                    '0))))
                                            (let ((_tl124588124614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125636125637_
                                                      '1)))
                                                  (_target124586124612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125636125637_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124588124614_))
                                                  (___match125885125886_
                                                   _e124491124814_
                                                   _hd124492124817_
                                                   _tl124493124819_
                                                   ___splice125636125637_
                                                   _target124586124612_
                                                   _tl124588124614_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124484124599_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124484124599_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124493124819_))
                                  (let ((___splice125636125637_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124493124819_
                                            '0))))
                                    (let ((_tl124588124614_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125636125637_
                                              '1)))
                                          (_target124586124612_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125636125637_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124588124614_))
                                          (___match125885125886_
                                           _e124491124814_
                                           _hd124492124817_
                                           _tl124493124819_
                                           ___splice125636125637_
                                           _target124586124612_
                                           _tl124588124614_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124484124599_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124484124599_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124493124819_))
                          (let ((___splice125636125637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124493124819_
                                    '0))))
                            (let ((_tl124588124614_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125636125637_ '1)))
                                  (_target124586124612_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125636125637_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124588124614_))
                                  (___match125885125886_
                                   _e124491124814_
                                   _hd124492124817_
                                   _tl124493124819_
                                   ___splice125636125637_
                                   _target124586124612_
                                   _tl124588124614_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124484124599_)))))
                          (let () (declare (not safe)) (_g124484124599_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124493124819_))
                      (let ((___splice125636125637_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124493124819_ '0))))
                        (let ((_tl124588124614_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '1)))
                              (_target124586124612_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125636125637_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124588124614_))
                              (___match125885125886_
                               _e124491124814_
                               _hd124492124817_
                               _tl124493124819_
                               ___splice125636125637_
                               _target124586124612_
                               _tl124588124614_)
                              (let ()
                                (declare (not safe))
                                (_g124484124599_)))))
                      (let () (declare (not safe)) (_g124484124599_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124493124819_))
                                                      (let ((___splice125636125637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124493124819_ '0))))
                (let ((_tl124588124614_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125636125637_ '1)))
                      (_target124586124612_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125636125637_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124588124614_))
                      (___match125885125886_
                       _e124491124814_
                       _hd124492124817_
                       _tl124493124819_
                       ___splice125636125637_
                       _target124586124612_
                       _tl124588124614_)
                      (let () (declare (not safe)) (_g124484124599_)))))
              (let () (declare (not safe)) (_g124484124599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124493124819_))
                                                  (let ((___splice125636125637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124493124819_
                                                            '0))))
                                                    (let ((_tl124588124614_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '1)))
                                                          (_target124586124612_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125636125637_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124588124614_))
                                                          (___match125885125886_
                                                           _e124491124814_
                                                           _hd124492124817_
                                                           _tl124493124819_
                                                           ___splice125636125637_
                                                           _target124586124612_
                                                           _tl124588124614_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124484124599_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124484124599_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124493124819_))
                                              (let ((___splice125636125637_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124493124819_
                                                        '0))))
                                                (let ((_tl124588124614_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '1)))
                                                      (_target124586124612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125636125637_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124588124614_))
                                                      (___match125885125886_
                                                       _e124491124814_
                                                       _hd124492124817_
                                                       _tl124493124819_
                                                       ___splice125636125637_
                                                       _target124586124612_
                                                       _tl124588124614_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124484124599_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124493124819_))
                                      (let ((___splice125636125637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124493124819_
                                                '0))))
                                        (let ((_tl124588124614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '1)))
                                              (_target124586124612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125636125637_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124588124614_))
                                              (___match125885125886_
                                               _e124491124814_
                                               _hd124492124817_
                                               _tl124493124819_
                                               ___splice125636125637_
                                               _target124586124612_
                                               _tl124588124614_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124484124599_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124484124599_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124493124819_))
                              (let ((___splice125636125637_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124493124819_
                                        '0))))
                                (let ((_tl124588124614_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125636125637_
                                          '1)))
                                      (_target124586124612_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125636125637_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124588124614_))
                                      (___match125885125886_
                                       _e124491124814_
                                       _hd124492124817_
                                       _tl124493124819_
                                       ___splice125636125637_
                                       _target124586124612_
                                       _tl124588124614_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124484124599_)))))
                              (let ()
                                (declare (not safe))
                                (_g124484124599_))))))
                  (let () (declare (not safe)) (_g124484124599_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self124418_ _stx124419_)
        (let* ((___stx125888125889_ _stx124419_)
               (_g124422124435_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125888125889_)))))
          (let ((___kont125890125891_
                 (lambda (_L124463_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self124418_ _L124463_))))
                (___kont125892125893_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx125888125889_))
                (let ((_e124425124447_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx125888125889_))))
                  (let ((_tl124427124452_
                         (let () (declare (not safe)) (##cdr _e124425124447_)))
                        (_hd124426124450_
                         (let ()
                           (declare (not safe))
                           (##car _e124425124447_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124427124452_))
                        (let ((_e124428124455_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124427124452_))))
                          (let ((_tl124430124460_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124428124455_)))
                                (_hd124429124458_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124428124455_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124430124460_))
                                (___kont125890125891_ _hd124429124458_)
                                (___kont125892125893_))))
                        (___kont125892125893_))))
                (___kont125892125893_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self124297_ _stx124298_)
        (let* ((_g124300124317_
                (lambda (_g124301124314_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124301124314_))))
               (_g124299124415_
                (lambda (_g124301124320_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124301124320_))
                      (let ((_e124304124322_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124301124320_))))
                        (let ((_hd124305124325_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124304124322_)))
                              (_tl124306124327_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124304124322_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124306124327_))
                              (let ((_e124307124330_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124306124327_))))
                                (let ((_hd124308124333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124307124330_)))
                                      (_tl124309124335_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124307124330_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124309124335_))
                                      (let ((_e124310124338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124309124335_))))
                                        (let ((_hd124311124341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124310124338_)))
                                              (_tl124312124343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124310124338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124312124343_))
                                              ((lambda (_L124346_ _L124347_)
                                                 (let* ((___stx125910125911_
                                                         _L124347_)
                                                        (_g124363124374_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx125910125911_)))))
                                                   (let ((___kont125912125913_
                                                          (lambda (_L124394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124395_)
                    (let ((_$e124407_
                           (let ((__tmp127651
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L124395_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp127651))))
                      (if _$e124407_
                          ((lambda (_type-e124410_)
                             (_type-e124410_ _stx124298_ _L124347_))
                           _$e124407_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self124297_ _L124346_))))))
                 (___kont125914125915_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self124297_ _L124346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match125921125922_
                                                            (lambda (_e124367124386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd124368124389_
                             _tl124369124391_)
                      (let ((_L124394_ _tl124369124391_)
                            (_L124395_ _hd124368124389_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L124395_))
                            (___kont125912125913_ _L124394_ _L124395_)
                            (___kont125914125915_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx125910125911_))
                   (let ((_e124367124386_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx125910125911_))))
                     (let ((_tl124369124391_
                            (let ()
                              (declare (not safe))
                              (##cdr _e124367124386_)))
                           (_hd124368124389_
                            (let ()
                              (declare (not safe))
                              (##car _e124367124386_))))
                       (___match125921125922_
                        _e124367124386_
                        _hd124368124389_
                        _tl124369124391_)))
                   (___kont125914125915_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd124311124341_
                                               _hd124308124333_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124300124317_
                                                 _g124301124320_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124300124317_ _g124301124320_)))))
                              (let ()
                                (declare (not safe))
                                (_g124300124317_ _g124301124320_)))))
                      (let ()
                        (declare (not safe))
                        (_g124300124317_ _g124301124320_))))))
          (declare (not safe))
          (_g124299124415_ _stx124298_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124141_ _ann124142_)
        (let* ((_g124144124181_
                (lambda (_g124145124178_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124145124178_))))
               (_g124143124294_
                (lambda (_g124145124184_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124145124184_))
                      (let ((_e124153124186_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124145124184_))))
                        (let ((_hd124154124189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124153124186_)))
                              (_tl124155124191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124153124186_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124155124191_))
                              (let ((_e124156124194_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124155124191_))))
                                (let ((_hd124157124197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124156124194_)))
                                      (_tl124158124199_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124156124194_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124158124199_))
                                      (let ((_e124159124202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124158124199_))))
                                        (let ((_hd124160124205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124159124202_)))
                                              (_tl124161124207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124159124202_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124161124207_))
                                              (let ((_e124162124210_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124161124207_))))
                                                (let ((_hd124163124213_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124162124210_)))
                                                      (_tl124164124215_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124162124210_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124164124215_))
                                                      (let ((_e124165124218_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124164124215_))))
                (let ((_hd124166124221_
                       (let () (declare (not safe)) (##car _e124165124218_)))
                      (_tl124167124223_
                       (let () (declare (not safe)) (##cdr _e124165124218_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124167124223_))
                      (let ((_e124168124226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124167124223_))))
                        (let ((_hd124169124229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124168124226_)))
                              (_tl124170124231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124168124226_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124170124231_))
                              (let ((_e124171124234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124170124231_))))
                                (let ((_hd124172124237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124171124234_)))
                                      (_tl124173124239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124171124234_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124173124239_))
                                      (let ((_e124174124242_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124173124239_))))
                                        (let ((_hd124175124245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124174124242_)))
                                              (_tl124176124247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124174124242_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124176124247_))
                                              ((lambda (_L124250_
                                                        _L124251_
                                                        _L124252_
                                                        _L124253_
                                                        _L124254_
                                                        _L124255_
                                                        _L124256_)
                                                 (let ((_type-id124286_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124256_)))
                                                       (_super124287_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124255_)))
                                                       (_slots124288_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124254_)))
                                                       (_ctor-method124289_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124253_)))
                                                       (_struct?124290_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124252_)))
                                                       (_final?124291_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124251_)))
                                                       (_metaclass124292_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124250_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124250_))
                                                            '#f)))
                                                   (let ((__obj127603
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
                                                      __obj127603
                                                      _type-id124286_
                                                      _super124287_
                                                      _slots124288_
                                                      _ctor-method124289_
                                                      _struct?124290_
                                                      _final?124291_
                                                      '#f
                                                      _metaclass124292_)
                                                     __obj127603)))
                                               _hd124175124245_
                                               _hd124172124237_
                                               _hd124169124229_
                                               _hd124166124221_
                                               _hd124163124213_
                                               _hd124160124205_
                                               _hd124157124197_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124144124181_
                                                 _g124145124184_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124144124181_ _g124145124184_)))))
                              (let ()
                                (declare (not safe))
                                (_g124144124181_ _g124145124184_)))))
                      (let ()
                        (declare (not safe))
                        (_g124144124181_ _g124145124184_)))))
              (let ()
                (declare (not safe))
                (_g124144124181_ _g124145124184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124144124181_
                                                 _g124145124184_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124144124181_ _g124145124184_)))))
                              (let ()
                                (declare (not safe))
                                (_g124144124181_ _g124145124184_)))))
                      (let ()
                        (declare (not safe))
                        (_g124144124181_ _g124145124184_))))))
          (declare (not safe))
          (_g124143124294_ _ann124142_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx124070_ _ann124071_)
        (let* ((_g124073124090_
                (lambda (_g124074124087_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124074124087_))))
               (_g124072124138_
                (lambda (_g124074124093_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124074124093_))
                      (let ((_e124077124095_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124074124093_))))
                        (let ((_hd124078124098_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124077124095_)))
                              (_tl124079124100_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124077124095_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124079124100_))
                              (let ((_e124080124103_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124079124100_))))
                                (let ((_hd124081124106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124080124103_)))
                                      (_tl124082124108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124080124103_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124082124108_))
                                      (let ((_e124083124111_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124082124108_))))
                                        (let ((_hd124084124114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124083124111_)))
                                              (_tl124085124116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124083124111_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124085124116_))
                                              ((lambda (_L124119_ _L124120_)
                                                 (let ((_type-id124135_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124120_)))
                                                       (_super124136_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124119_))))
                                                   (let ((__obj127604
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
                                                      __obj127604
                                                      _type-id124135_
                                                      _super124136_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj127604)))
                                               _hd124084124114_
                                               _hd124081124106_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124073124090_
                                                 _g124074124093_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124073124090_ _g124074124093_)))))
                              (let ()
                                (declare (not safe))
                                (_g124073124090_ _g124074124093_)))))
                      (let ()
                        (declare (not safe))
                        (_g124073124090_ _g124074124093_))))))
          (declare (not safe))
          (_g124072124138_ _ann124071_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124018_ _ann124019_)
        (let* ((_g124021124034_
                (lambda (_g124022124031_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124022124031_))))
               (_g124020124067_
                (lambda (_g124022124037_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124022124037_))
                      (let ((_e124024124039_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124022124037_))))
                        (let ((_hd124025124042_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124024124039_)))
                              (_tl124026124044_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124024124039_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124026124044_))
                              (let ((_e124027124047_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124026124044_))))
                                (let ((_hd124028124050_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124027124047_)))
                                      (_tl124029124052_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124027124047_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124029124052_))
                                      ((lambda (_L124055_)
                                         (let ((__tmp127652
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124055_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp127652)))
                                       _hd124028124050_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124021124034_ _g124022124037_)))))
                              (let ()
                                (declare (not safe))
                                (_g124021124034_ _g124022124037_)))))
                      (let ()
                        (declare (not safe))
                        (_g124021124034_ _g124022124037_))))))
          (declare (not safe))
          (_g124020124067_ _ann124019_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx123966_ _ann123967_)
        (let* ((_g123969123982_
                (lambda (_g123970123979_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123970123979_))))
               (_g123968124015_
                (lambda (_g123970123985_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123970123985_))
                      (let ((_e123972123987_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123970123985_))))
                        (let ((_hd123973123990_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123972123987_)))
                              (_tl123974123992_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123972123987_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123974123992_))
                              (let ((_e123975123995_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123974123992_))))
                                (let ((_hd123976123998_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123975123995_)))
                                      (_tl123977124000_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123975123995_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123977124000_))
                                      ((lambda (_L124003_)
                                         (let ((__tmp127653
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124003_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp127653)))
                                       _hd123976123998_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123969123982_ _g123970123985_)))))
                              (let ()
                                (declare (not safe))
                                (_g123969123982_ _g123970123985_)))))
                      (let ()
                        (declare (not safe))
                        (_g123969123982_ _g123970123985_))))))
          (declare (not safe))
          (_g123968124015_ _ann123967_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx123882_ _ann123883_)
        (let* ((_g123885123906_
                (lambda (_g123886123903_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123886123903_))))
               (_g123884123963_
                (lambda (_g123886123909_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123886123909_))
                      (let ((_e123890123911_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123886123909_))))
                        (let ((_hd123891123914_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123890123911_)))
                              (_tl123892123916_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123890123911_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123892123916_))
                              (let ((_e123893123919_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123892123916_))))
                                (let ((_hd123894123922_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123893123919_)))
                                      (_tl123895123924_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123893123919_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123895123924_))
                                      (let ((_e123896123927_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123895123924_))))
                                        (let ((_hd123897123930_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123896123927_)))
                                              (_tl123898123932_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123896123927_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123898123932_))
                                              (let ((_e123899123935_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123898123932_))))
                                                (let ((_hd123900123938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123899123935_)))
                                                      (_tl123901123940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123899123935_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123901123940_))
                                                      ((lambda (_L123943_
                                                                _L123944_
                                                                _L123945_)
                                                         (let ((__tmp127656
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L123945_)))
                       (__tmp127655
                        (let () (declare (not safe)) (gx#stx-e _L123944_)))
                       (__tmp127654
                        (let () (declare (not safe)) (gx#stx-e _L123943_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp127656
                    __tmp127655
                    __tmp127654)))
               _hd123900123938_
               _hd123897123930_
               _hd123894123922_)
              (let ()
                (declare (not safe))
                (_g123885123906_ _g123886123909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g123885123906_
                                                 _g123886123909_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123885123906_ _g123886123909_)))))
                              (let ()
                                (declare (not safe))
                                (_g123885123906_ _g123886123909_)))))
                      (let ()
                        (declare (not safe))
                        (_g123885123906_ _g123886123909_))))))
          (declare (not safe))
          (_g123884123963_ _ann123883_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx123798_ _ann123799_)
        (let* ((_g123801123822_
                (lambda (_g123802123819_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123802123819_))))
               (_g123800123879_
                (lambda (_g123802123825_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123802123825_))
                      (let ((_e123806123827_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123802123825_))))
                        (let ((_hd123807123830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123806123827_)))
                              (_tl123808123832_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123806123827_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123808123832_))
                              (let ((_e123809123835_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123808123832_))))
                                (let ((_hd123810123838_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123809123835_)))
                                      (_tl123811123840_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123809123835_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123811123840_))
                                      (let ((_e123812123843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123811123840_))))
                                        (let ((_hd123813123846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123812123843_)))
                                              (_tl123814123848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123812123843_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123814123848_))
                                              (let ((_e123815123851_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123814123848_))))
                                                (let ((_hd123816123854_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123815123851_)))
                                                      (_tl123817123856_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123815123851_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123817123856_))
                                                      ((lambda (_L123859_
                                                                _L123860_
                                                                _L123861_)
                                                         (let ((__tmp127659
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L123861_)))
                       (__tmp127658
                        (let () (declare (not safe)) (gx#stx-e _L123860_)))
                       (__tmp127657
                        (let () (declare (not safe)) (gx#stx-e _L123859_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp127659
                    __tmp127658
                    __tmp127657)))
               _hd123816123854_
               _hd123813123846_
               _hd123810123838_)
              (let ()
                (declare (not safe))
                (_g123801123822_ _g123802123825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g123801123822_
                                                 _g123802123825_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123801123822_ _g123802123825_)))))
                              (let ()
                                (declare (not safe))
                                (_g123801123822_ _g123802123825_)))))
                      (let ()
                        (declare (not safe))
                        (_g123801123822_ _g123802123825_))))))
          (declare (not safe))
          (_g123800123879_ _ann123799_))))
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
      (lambda (_self122917_ _stx122918_)
        (let* ((___stx125924125925_ _stx122918_)
               (_g122924123120_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125924125925_)))))
          (let ((___kont125926125927_
                 (lambda (_L123786_)
                   (let ((__obj127605
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127605
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123786_))
                      '#f)
                     __obj127605)))
                (___kont125928125929_
                 (lambda (_L123713_
                          _L123714_
                          _L123715_
                          _L123716_
                          _L123717_
                          _L123718_)
                   (let* ((_tab123768_
                           (let () (declare (not safe)) (gx#stx-e _L123715_)))
                          (_keys123770_
                           (if _tab123768_
                               (filter values (vector->list _tab123768_))
                               '#f)))
                     (let ((__tmp127660
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L123714_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys123770_
                        __tmp127660)))))
                (___kont125930125931_
                 (lambda (_L123446_
                          _L123447_
                          _L123448_
                          _L123449_
                          _L123450_
                          _L123451_
                          _L123452_
                          _L123453_
                          _L123454_
                          _L123455_)
                   (let ((__tmp127662
                          (map gx#stx-e
                               (let ((__tmp127663
                                      (lambda (_g123548123551_ _g123549123553_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g123548123551_
                                                _g123549123553_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp127663 '() _L123448_))))
                         (__tmp127661
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123452_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp127662
                      __tmp127661))))
                (___kont125934125935_
                 (lambda (_L123156_)
                   (let ((__obj127606
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127606
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123156_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123156_)))
                     __obj127606)))
                (___kont125936125937_
                 (lambda (_L123133_)
                   (let ((__obj127607
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127607
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123133_))
                      '#f)
                     __obj127607))))
            (let* ((___match126243126244_
                    (lambda (_e123109123148_ _hd123110123151_ _tl123111123153_)
                      (let ((_L123156_ _tl123111123153_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123156_))
                            (___kont125934125935_ _L123156_)
                            (___kont125936125937_ _tl123111123153_)))))
                   (___match126237126238_
                    (lambda (_e123003123170_
                             _hd123004123173_
                             _tl123005123175_
                             _e123006123178_
                             _hd123007123181_
                             _tl123008123183_
                             _e123009123186_
                             _hd123010123189_
                             _tl123011123191_
                             _e123012123194_
                             _hd123013123197_
                             _tl123014123199_
                             _e123015123202_
                             _hd123016123205_
                             _tl123017123207_
                             _e123018123210_
                             _hd123019123213_
                             _tl123020123215_
                             _e123021123218_
                             _hd123022123221_
                             _tl123023123223_
                             _e123024123226_
                             _hd123025123229_
                             _tl123026123231_
                             _e123027123234_
                             _hd123028123237_
                             _tl123029123239_
                             _e123030123242_
                             _hd123031123245_
                             _tl123032123247_
                             _e123033123250_
                             _hd123034123253_
                             _tl123035123255_
                             _e123036123258_
                             _hd123037123261_
                             _tl123038123263_
                             _e123039123266_
                             _hd123040123269_
                             _tl123041123271_
                             _e123042123274_
                             _hd123043123277_
                             _tl123044123279_
                             ___splice125932125933_
                             _target123045123282_
                             _tl123047123284_
                             _e123060123287_
                             _hd123061123290_
                             _tl123062123292_
                             _e123063123295_
                             _hd123064123298_
                             _tl123065123300_
                             _e123066123303_
                             _hd123067123306_
                             _tl123068123308_)
                      (letrec ((_loop123048123311_
                                (lambda (_hd123046123314_
                                         _-absent-value123052123316_
                                         _key123053123318_
                                         _-xkwvar123054123320_
                                         _-hash-ref123055123322_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123046123314_))
                                      (let ((_e123049123325_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123046123314_))))
                                        (let ((_lp-tl123051123330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123049123325_)))
                                              (_lp-hd123050123328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123049123325_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123050123328_))
                                              (let ((_e123069123333_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123050123328_))))
                                                (let ((_tl123071123338_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123069123333_)))
                                                      (_hd123070123336_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123069123333_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123070123336_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123070123336_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123071123338_))
                      (let ((_e123072123341_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123071123338_))))
                        (let ((_tl123074123346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123072123341_)))
                              (_hd123073123344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123072123341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123073123344_))
                              (let ((_e123075123349_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123073123344_))))
                                (let ((_tl123077123354_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123075123349_)))
                                      (_hd123076123352_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123075123349_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123076123352_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123076123352_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123077123354_))
                                              (let ((_e123078123357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123077123354_))))
                                                (let ((_tl123080123362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123078123357_)))
                                                      (_hd123079123360_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123078123357_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123080123362_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123074123346_))
                                                          (let ((_e123081123365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123074123346_))))
                    (let ((_tl123083123370_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123081123365_)))
                          (_hd123082123368_
                           (let ()
                             (declare (not safe))
                             (##car _e123081123365_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123082123368_))
                          (let ((_e123084123373_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123082123368_))))
                            (let ((_tl123086123378_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123084123373_)))
                                  (_hd123085123376_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123084123373_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123085123376_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123085123376_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123086123378_))
                                          (let ((_e123087123381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123086123378_))))
                                            (let ((_tl123089123386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123087123381_)))
                                                  (_hd123088123384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123087123381_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123089123386_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123083123370_))
                                                      (let ((_e123090123389_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123083123370_))))
                (let ((_tl123092123394_
                       (let () (declare (not safe)) (##cdr _e123090123389_)))
                      (_hd123091123392_
                       (let () (declare (not safe)) (##car _e123090123389_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123091123392_))
                      (let ((_e123093123397_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123091123392_))))
                        (let ((_tl123095123402_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123093123397_)))
                              (_hd123094123400_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123093123397_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123094123400_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123094123400_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123095123402_))
                                      (let ((_e123096123405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123095123402_))))
                                        (let ((_tl123098123410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123096123405_)))
                                              (_hd123097123408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123096123405_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123098123410_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123092123394_))
                                                  (let ((_e123099123413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123092123394_))))
                                                    (let ((_tl123101123418_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123099123413_)))
                                                          (_hd123100123416_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123099123413_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123100123416_))
                                                          (let ((_e123102123421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123100123416_))))
                    (let ((_tl123104123426_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123102123421_)))
                          (_hd123103123424_
                           (let ()
                             (declare (not safe))
                             (##car _e123102123421_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123103123424_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123103123424_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123104123426_))
                                  (let ((_e123105123429_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123104123426_))))
                                    (let ((_tl123107123434_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123105123429_)))
                                          (_hd123106123432_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123105123429_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123107123434_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123101123418_))
                                              (let ((__tmp127667
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123106123432_
                                                             _-absent-value123052123316_)))
                                                    (__tmp127666
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123097123408_
                                                             _key123053123318_)))
                                                    (__tmp127665
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123088123384_
                                                             _-xkwvar123054123320_)))
                                                    (__tmp127664
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123079123360_
                                                             _-hash-ref123055123322_))))
                                                (declare (not safe))
                                                (_loop123048123311_
                                                 _lp-tl123051123330_
                                                 __tmp127667
                                                 __tmp127666
                                                 __tmp127665
                                                 __tmp127664))
                                              (___match126243126244_
                                               _e123003123170_
                                               _hd123004123173_
                                               _tl123005123175_))
                                          (___match126243126244_
                                           _e123003123170_
                                           _hd123004123173_
                                           _tl123005123175_))))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))
                              (___match126243126244_
                               _e123003123170_
                               _hd123004123173_
                               _tl123005123175_))
                          (___match126243126244_
                           _e123003123170_
                           _hd123004123173_
                           _tl123005123175_))))
                  (___match126243126244_
                   _e123003123170_
                   _hd123004123173_
                   _tl123005123175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_))
                                              (___match126243126244_
                                               _e123003123170_
                                               _hd123004123173_
                                               _tl123005123175_))))
                                      (___match126243126244_
                                       _e123003123170_
                                       _hd123004123173_
                                       _tl123005123175_))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))
                              (___match126243126244_
                               _e123003123170_
                               _hd123004123173_
                               _tl123005123175_))))
                      (___match126243126244_
                       _e123003123170_
                       _hd123004123173_
                       _tl123005123175_))))
              (___match126243126244_
               _e123003123170_
               _hd123004123173_
               _tl123005123175_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_))))
                                          (___match126243126244_
                                           _e123003123170_
                                           _hd123004123173_
                                           _tl123005123175_))
                                      (___match126243126244_
                                       _e123003123170_
                                       _hd123004123173_
                                       _tl123005123175_))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))))
                          (___match126243126244_
                           _e123003123170_
                           _hd123004123173_
                           _tl123005123175_))))
                  (___match126243126244_
                   _e123003123170_
                   _hd123004123173_
                   _tl123005123175_))
              (___match126243126244_
               _e123003123170_
               _hd123004123173_
               _tl123005123175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126243126244_
                                               _e123003123170_
                                               _hd123004123173_
                                               _tl123005123175_))
                                          (___match126243126244_
                                           _e123003123170_
                                           _hd123004123173_
                                           _tl123005123175_))
                                      (___match126243126244_
                                       _e123003123170_
                                       _hd123004123173_
                                       _tl123005123175_))))
                              (___match126243126244_
                               _e123003123170_
                               _hd123004123173_
                               _tl123005123175_))))
                      (___match126243126244_
                       _e123003123170_
                       _hd123004123173_
                       _tl123005123175_))
                  (___match126243126244_
                   _e123003123170_
                   _hd123004123173_
                   _tl123005123175_))
              (___match126243126244_
               _e123003123170_
               _hd123004123173_
               _tl123005123175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126243126244_
                                               _e123003123170_
                                               _hd123004123173_
                                               _tl123005123175_))))
                                      (let ((_-hash-ref123059123443_
                                             (reverse _-hash-ref123055123322_))
                                            (_-xkwvar123058123441_
                                             (reverse _-xkwvar123054123320_))
                                            (_key123057123439_
                                             (reverse _key123053123318_))
                                            (_-absent-value123056123437_
                                             (reverse _-absent-value123052123316_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123014123199_))
                                            (let ((_L123446_ _hd123067123306_)
                                                  (_L123447_
                                                   _-absent-value123056123437_)
                                                  (_L123448_ _key123057123439_)
                                                  (_L123449_
                                                   _-xkwvar123058123441_)
                                                  (_L123450_
                                                   _-hash-ref123059123443_)
                                                  (_L123451_ _hd123043123277_)
                                                  (_L123452_ _hd123034123253_)
                                                  (_L123453_ _hd123025123229_)
                                                  (_L123454_ _tl123011123191_)
                                                  (_L123455_ _hd123010123189_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123455_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123454_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L123453_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L123455_
                                                          _L123451_))
                                                       (let ((__tmp127668
                                                              (let ((__tmp127669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g123508123511_ _g123509123513_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123508123511_ _g123509123513_)))))
                        (declare (not safe))
                        (foldr1 __tmp127669 '() _L123448_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp127668))
               (let ((__tmp127672
                      (lambda (_g123515123517_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123515123517_
                           'hash-ref))))
                     (__tmp127670
                      (let ((__tmp127671
                             (lambda (_g123519123522_ _g123520123524_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123519123522_ _g123520123524_)))))
                        (declare (not safe))
                        (foldr1 __tmp127671 '() _L123450_))))
                 (declare (not safe))
                 (andmap1 __tmp127672 __tmp127670))
               (let ((__tmp127675
                      (lambda (_g123526123528_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123526123528_
                           'absent-value))))
                     (__tmp127673
                      (let ((__tmp127674
                             (lambda (_g123530123533_ _g123531123535_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123530123533_ _g123531123535_)))))
                        (declare (not safe))
                        (foldr1 __tmp127674 '() _L123447_))))
                 (declare (not safe))
                 (andmap1 __tmp127675 __tmp127673))
               (let ((__tmp127678
                      (lambda (_g123537123539_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g123537123539_ _L123455_))))
                     (__tmp127676
                      (let ((__tmp127677
                             (lambda (_g123541123544_ _g123542123546_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123541123544_ _g123542123546_)))))
                        (declare (not safe))
                        (foldr1 __tmp127677 '() _L123449_))))
                 (declare (not safe))
                 (andmap1 __tmp127678 __tmp127676)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont125930125931_
                                                   _L123446_
                                                   _L123447_
                                                   _L123448_
                                                   _L123449_
                                                   _L123450_
                                                   _L123451_
                                                   _L123452_
                                                   _L123453_
                                                   _L123454_
                                                   _L123455_)
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_)))
                                            (___match126243126244_
                                             _e123003123170_
                                             _hd123004123173_
                                             _tl123005123175_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123048123311_
                           _target123045123282_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126109126110_
                    (lambda (_e123003123170_
                             _hd123004123173_
                             _tl123005123175_
                             _e123006123178_
                             _hd123007123181_
                             _tl123008123183_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123007123181_))
                          (let ((_e123009123186_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123007123181_))))
                            (let ((_tl123011123191_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123009123186_)))
                                  (_hd123010123189_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123009123186_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123008123183_))
                                  (let ((_e123012123194_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123008123183_))))
                                    (let ((_tl123014123199_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123012123194_)))
                                          (_hd123013123197_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123012123194_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123013123197_))
                                          (let ((_e123015123202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123013123197_))))
                                            (let ((_tl123017123207_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123015123202_)))
                                                  (_hd123016123205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123015123202_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123016123205_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123016123205_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123017123207_))
                                                          (let ((_e123018123210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123017123207_))))
                    (let ((_tl123020123215_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123018123210_)))
                          (_hd123019123213_
                           (let ()
                             (declare (not safe))
                             (##car _e123018123210_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123019123213_))
                          (let ((_e123021123218_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123019123213_))))
                            (let ((_tl123023123223_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123021123218_)))
                                  (_hd123022123221_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123021123218_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123022123221_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123022123221_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123023123223_))
                                          (let ((_e123024123226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123023123223_))))
                                            (let ((_tl123026123231_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123024123226_)))
                                                  (_hd123025123229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123024123226_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123026123231_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123020123215_))
                                                      (let ((_e123027123234_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123020123215_))))
                (let ((_tl123029123239_
                       (let () (declare (not safe)) (##cdr _e123027123234_)))
                      (_hd123028123237_
                       (let () (declare (not safe)) (##car _e123027123234_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123028123237_))
                      (let ((_e123030123242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123028123237_))))
                        (let ((_tl123032123247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123030123242_)))
                              (_hd123031123245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123030123242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123031123245_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123031123245_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123032123247_))
                                      (let ((_e123033123250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123032123247_))))
                                        (let ((_tl123035123255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123033123250_)))
                                              (_hd123034123253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123033123250_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123035123255_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123029123239_))
                                                  (let ((_e123036123258_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123029123239_))))
                                                    (let ((_tl123038123263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123036123258_)))
                                                          (_hd123037123261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123036123258_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123037123261_))
                                                          (let ((_e123039123266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123037123261_))))
                    (let ((_tl123041123271_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123039123266_)))
                          (_hd123040123269_
                           (let ()
                             (declare (not safe))
                             (##car _e123039123266_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123040123269_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123040123269_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123041123271_))
                                  (let ((_e123042123274_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123041123271_))))
                                    (let ((_tl123044123279_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123042123274_)))
                                          (_hd123043123277_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123042123274_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123044123279_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123038123263_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123038123263_))
                                                        '1)
                                                  (let ((___splice125932125933_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123038123263_
                                                            '1))))
                                                    (let ((_tl123047123284_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125932125933_
                                                              '1)))
                                                          (_target123045123282_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125932125933_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123047123284_))
                                                          (let ((_e123060123287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123047123284_))))
                    (let ((_tl123062123292_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123060123287_)))
                          (_hd123061123290_
                           (let ()
                             (declare (not safe))
                             (##car _e123060123287_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123061123290_))
                          (let ((_e123063123295_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123061123290_))))
                            (let ((_tl123065123300_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123063123295_)))
                                  (_hd123064123298_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123063123295_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123064123298_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123064123298_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123065123300_))
                                          (let ((_e123066123303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123065123300_))))
                                            (let ((_tl123068123308_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123066123303_)))
                                                  (_hd123067123306_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123066123303_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123068123308_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123062123292_))
                                                      (___match126237126238_
                                                       _e123003123170_
                                                       _hd123004123173_
                                                       _tl123005123175_
                                                       _e123006123178_
                                                       _hd123007123181_
                                                       _tl123008123183_
                                                       _e123009123186_
                                                       _hd123010123189_
                                                       _tl123011123191_
                                                       _e123012123194_
                                                       _hd123013123197_
                                                       _tl123014123199_
                                                       _e123015123202_
                                                       _hd123016123205_
                                                       _tl123017123207_
                                                       _e123018123210_
                                                       _hd123019123213_
                                                       _tl123020123215_
                                                       _e123021123218_
                                                       _hd123022123221_
                                                       _tl123023123223_
                                                       _e123024123226_
                                                       _hd123025123229_
                                                       _tl123026123231_
                                                       _e123027123234_
                                                       _hd123028123237_
                                                       _tl123029123239_
                                                       _e123030123242_
                                                       _hd123031123245_
                                                       _tl123032123247_
                                                       _e123033123250_
                                                       _hd123034123253_
                                                       _tl123035123255_
                                                       _e123036123258_
                                                       _hd123037123261_
                                                       _tl123038123263_
                                                       _e123039123266_
                                                       _hd123040123269_
                                                       _tl123041123271_
                                                       _e123042123274_
                                                       _hd123043123277_
                                                       _tl123044123279_
                                                       ___splice125932125933_
                                                       _target123045123282_
                                                       _tl123047123284_
                                                       _e123060123287_
                                                       _hd123061123290_
                                                       _tl123062123292_
                                                       _e123063123295_
                                                       _hd123064123298_
                                                       _tl123065123300_
                                                       _e123066123303_
                                                       _hd123067123306_
                                                       _tl123068123308_)
                                                      (___match126243126244_
                                                       _e123003123170_
                                                       _hd123004123173_
                                                       _tl123005123175_))
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_))))
                                          (___match126243126244_
                                           _e123003123170_
                                           _hd123004123173_
                                           _tl123005123175_))
                                      (___match126243126244_
                                       _e123003123170_
                                       _hd123004123173_
                                       _tl123005123175_))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))))
                          (___match126243126244_
                           _e123003123170_
                           _hd123004123173_
                           _tl123005123175_))))
                  (___match126243126244_
                   _e123003123170_
                   _hd123004123173_
                   _tl123005123175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_))
                                              (___match126243126244_
                                               _e123003123170_
                                               _hd123004123173_
                                               _tl123005123175_))
                                          (___match126243126244_
                                           _e123003123170_
                                           _hd123004123173_
                                           _tl123005123175_))))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))
                              (___match126243126244_
                               _e123003123170_
                               _hd123004123173_
                               _tl123005123175_))
                          (___match126243126244_
                           _e123003123170_
                           _hd123004123173_
                           _tl123005123175_))))
                  (___match126243126244_
                   _e123003123170_
                   _hd123004123173_
                   _tl123005123175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_))
                                              (___match126243126244_
                                               _e123003123170_
                                               _hd123004123173_
                                               _tl123005123175_))))
                                      (___match126243126244_
                                       _e123003123170_
                                       _hd123004123173_
                                       _tl123005123175_))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))
                              (___match126243126244_
                               _e123003123170_
                               _hd123004123173_
                               _tl123005123175_))))
                      (___match126243126244_
                       _e123003123170_
                       _hd123004123173_
                       _tl123005123175_))))
              (___match126243126244_
               _e123003123170_
               _hd123004123173_
               _tl123005123175_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_))))
                                          (___match126243126244_
                                           _e123003123170_
                                           _hd123004123173_
                                           _tl123005123175_))
                                      (___match126243126244_
                                       _e123003123170_
                                       _hd123004123173_
                                       _tl123005123175_))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))))
                          (___match126243126244_
                           _e123003123170_
                           _hd123004123173_
                           _tl123005123175_))))
                  (___match126243126244_
                   _e123003123170_
                   _hd123004123173_
                   _tl123005123175_))
              (___match126243126244_
               _e123003123170_
               _hd123004123173_
               _tl123005123175_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126243126244_
                                                   _e123003123170_
                                                   _hd123004123173_
                                                   _tl123005123175_))))
                                          (___match126243126244_
                                           _e123003123170_
                                           _hd123004123173_
                                           _tl123005123175_))))
                                  (___match126243126244_
                                   _e123003123170_
                                   _hd123004123173_
                                   _tl123005123175_))))
                          (___match126243126244_
                           _e123003123170_
                           _hd123004123173_
                           _tl123005123175_))))
                   (___match126097126098_
                    (lambda (_e122936123561_
                             _hd122937123564_
                             _tl122938123566_
                             _e122939123569_
                             _hd122940123572_
                             _tl122941123574_
                             _e122942123577_
                             _hd122943123580_
                             _tl122944123582_
                             _e122945123585_
                             _hd122946123588_
                             _tl122947123590_
                             _e122948123593_
                             _hd122949123596_
                             _tl122950123598_
                             _e122951123601_
                             _hd122952123604_
                             _tl122953123606_
                             _e122954123609_
                             _hd122955123612_
                             _tl122956123614_
                             _e122957123617_
                             _hd122958123620_
                             _tl122959123622_
                             _e122960123625_
                             _hd122961123628_
                             _tl122962123630_
                             _e122963123633_
                             _hd122964123636_
                             _tl122965123638_
                             _e122966123641_
                             _hd122967123644_
                             _tl122968123646_
                             _e122969123649_
                             _hd122970123652_
                             _tl122971123654_
                             _e122972123657_
                             _hd122973123660_
                             _tl122974123662_
                             _e122975123665_
                             _hd122976123668_
                             _tl122977123670_
                             _e122978123673_
                             _hd122979123676_
                             _tl122980123678_
                             _e122981123681_
                             _hd122982123684_
                             _tl122983123686_
                             _e122984123689_
                             _hd122985123692_
                             _tl122986123694_
                             _e122987123697_
                             _hd122988123700_
                             _tl122989123702_
                             _e122990123705_
                             _hd122991123708_
                             _tl122992123710_)
                      (let ((_L123713_ _hd122991123708_)
                            (_L123714_ _hd122982123684_)
                            (_L123715_ _hd122973123660_)
                            (_L123716_ _hd122964123636_)
                            (_L123717_ _hd122955123612_)
                            (_L123718_ _hd122940123572_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123718_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123717_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L123716_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123718_ _L123713_)))
                            (___kont125928125929_
                             _L123713_
                             _L123714_
                             _L123715_
                             _L123716_
                             _L123717_
                             _L123718_)
                            (___match126109126110_
                             _e122936123561_
                             _hd122937123564_
                             _tl122938123566_
                             _e122939123569_
                             _hd122940123572_
                             _tl122941123574_)))))
                   (___match125951125952_
                    (lambda (_e122936123561_ _hd122937123564_ _tl122938123566_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122938123566_))
                          (let ((_e122939123569_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122938123566_))))
                            (let ((_tl122941123574_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122939123569_)))
                                  (_hd122940123572_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122939123569_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122941123574_))
                                  (let ((_e122942123577_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122941123574_))))
                                    (let ((_tl122944123582_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122942123577_)))
                                          (_hd122943123580_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122942123577_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd122943123580_))
                                          (let ((_e122945123585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd122943123580_))))
                                            (let ((_tl122947123590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122945123585_)))
                                                  (_hd122946123588_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122945123585_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd122946123588_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd122946123588_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl122947123590_))
                                                          (let ((_e122948123593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl122947123590_))))
                    (let ((_tl122950123598_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122948123593_)))
                          (_hd122949123596_
                           (let ()
                             (declare (not safe))
                             (##car _e122948123593_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd122949123596_))
                          (let ((_e122951123601_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd122949123596_))))
                            (let ((_tl122953123606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122951123601_)))
                                  (_hd122952123604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122951123601_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd122952123604_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd122952123604_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl122953123606_))
                                          (let ((_e122954123609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl122953123606_))))
                                            (let ((_tl122956123614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122954123609_)))
                                                  (_hd122955123612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122954123609_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122956123614_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122950123598_))
                                                      (let ((_e122957123617_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122950123598_))))
                (let ((_tl122959123622_
                       (let () (declare (not safe)) (##cdr _e122957123617_)))
                      (_hd122958123620_
                       (let () (declare (not safe)) (##car _e122957123617_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122958123620_))
                      (let ((_e122960123625_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122958123620_))))
                        (let ((_tl122962123630_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122960123625_)))
                              (_hd122961123628_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122960123625_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122961123628_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122961123628_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122962123630_))
                                      (let ((_e122963123633_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122962123630_))))
                                        (let ((_tl122965123638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122963123633_)))
                                              (_hd122964123636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122963123633_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122965123638_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122959123622_))
                                                  (let ((_e122966123641_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122959123622_))))
                                                    (let ((_tl122968123646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122966123641_)))
                                                          (_hd122967123644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122966123641_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122967123644_))
                                                          (let ((_e122969123649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122967123644_))))
                    (let ((_tl122971123654_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122969123649_)))
                          (_hd122970123652_
                           (let ()
                             (declare (not safe))
                             (##car _e122969123649_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122970123652_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd122970123652_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122971123654_))
                                  (let ((_e122972123657_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122971123654_))))
                                    (let ((_tl122974123662_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122972123657_)))
                                          (_hd122973123660_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122972123657_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122974123662_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122968123646_))
                                              (let ((_e122975123665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122968123646_))))
                                                (let ((_tl122977123670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122975123665_)))
                                                      (_hd122976123668_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122975123665_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122976123668_))
                                                      (let ((_e122978123673_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122976123668_))))
                (let ((_tl122980123678_
                       (let () (declare (not safe)) (##cdr _e122978123673_)))
                      (_hd122979123676_
                       (let () (declare (not safe)) (##car _e122978123673_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122979123676_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122979123676_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122980123678_))
                              (let ((_e122981123681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122980123678_))))
                                (let ((_tl122983123686_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122981123681_)))
                                      (_hd122982123684_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122981123681_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122983123686_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl122977123670_))
                                          (let ((_e122984123689_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl122977123670_))))
                                            (let ((_tl122986123694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122984123689_)))
                                                  (_hd122985123692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122984123689_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd122985123692_))
                                                  (let ((_e122987123697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd122985123692_))))
                                                    (let ((_tl122989123702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122987123697_)))
                                                          (_hd122988123700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122987123697_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd122988123700_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd122988123700_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122989123702_))
                          (let ((_e122990123705_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122989123702_))))
                            (let ((_tl122992123710_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122990123705_)))
                                  (_hd122991123708_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122990123705_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122992123710_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122986123694_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122944123582_))
                                          (___match126097126098_
                                           _e122936123561_
                                           _hd122937123564_
                                           _tl122938123566_
                                           _e122939123569_
                                           _hd122940123572_
                                           _tl122941123574_
                                           _e122942123577_
                                           _hd122943123580_
                                           _tl122944123582_
                                           _e122945123585_
                                           _hd122946123588_
                                           _tl122947123590_
                                           _e122948123593_
                                           _hd122949123596_
                                           _tl122950123598_
                                           _e122951123601_
                                           _hd122952123604_
                                           _tl122953123606_
                                           _e122954123609_
                                           _hd122955123612_
                                           _tl122956123614_
                                           _e122957123617_
                                           _hd122958123620_
                                           _tl122959123622_
                                           _e122960123625_
                                           _hd122961123628_
                                           _tl122962123630_
                                           _e122963123633_
                                           _hd122964123636_
                                           _tl122965123638_
                                           _e122966123641_
                                           _hd122967123644_
                                           _tl122968123646_
                                           _e122969123649_
                                           _hd122970123652_
                                           _tl122971123654_
                                           _e122972123657_
                                           _hd122973123660_
                                           _tl122974123662_
                                           _e122975123665_
                                           _hd122976123668_
                                           _tl122977123670_
                                           _e122978123673_
                                           _hd122979123676_
                                           _tl122980123678_
                                           _e122981123681_
                                           _hd122982123684_
                                           _tl122983123686_
                                           _e122984123689_
                                           _hd122985123692_
                                           _tl122986123694_
                                           _e122987123697_
                                           _hd122988123700_
                                           _tl122989123702_
                                           _e122990123705_
                                           _hd122991123708_
                                           _tl122992123710_)
                                          (___match126109126110_
                                           _e122936123561_
                                           _hd122937123564_
                                           _tl122938123566_
                                           _e122939123569_
                                           _hd122940123572_
                                           _tl122941123574_))
                                      (___match126109126110_
                                       _e122936123561_
                                       _hd122937123564_
                                       _tl122938123566_
                                       _e122939123569_
                                       _hd122940123572_
                                       _tl122941123574_))
                                  (___match126109126110_
                                   _e122936123561_
                                   _hd122937123564_
                                   _tl122938123566_
                                   _e122939123569_
                                   _hd122940123572_
                                   _tl122941123574_))))
                          (___match126109126110_
                           _e122936123561_
                           _hd122937123564_
                           _tl122938123566_
                           _e122939123569_
                           _hd122940123572_
                           _tl122941123574_))
                      (___match126109126110_
                       _e122936123561_
                       _hd122937123564_
                       _tl122938123566_
                       _e122939123569_
                       _hd122940123572_
                       _tl122941123574_))
                  (___match126109126110_
                   _e122936123561_
                   _hd122937123564_
                   _tl122938123566_
                   _e122939123569_
                   _hd122940123572_
                   _tl122941123574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126109126110_
                                                   _e122936123561_
                                                   _hd122937123564_
                                                   _tl122938123566_
                                                   _e122939123569_
                                                   _hd122940123572_
                                                   _tl122941123574_))))
                                          (___match126109126110_
                                           _e122936123561_
                                           _hd122937123564_
                                           _tl122938123566_
                                           _e122939123569_
                                           _hd122940123572_
                                           _tl122941123574_))
                                      (___match126109126110_
                                       _e122936123561_
                                       _hd122937123564_
                                       _tl122938123566_
                                       _e122939123569_
                                       _hd122940123572_
                                       _tl122941123574_))))
                              (___match126109126110_
                               _e122936123561_
                               _hd122937123564_
                               _tl122938123566_
                               _e122939123569_
                               _hd122940123572_
                               _tl122941123574_))
                          (___match126109126110_
                           _e122936123561_
                           _hd122937123564_
                           _tl122938123566_
                           _e122939123569_
                           _hd122940123572_
                           _tl122941123574_))
                      (___match126109126110_
                       _e122936123561_
                       _hd122937123564_
                       _tl122938123566_
                       _e122939123569_
                       _hd122940123572_
                       _tl122941123574_))))
              (___match126109126110_
               _e122936123561_
               _hd122937123564_
               _tl122938123566_
               _e122939123569_
               _hd122940123572_
               _tl122941123574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126109126110_
                                               _e122936123561_
                                               _hd122937123564_
                                               _tl122938123566_
                                               _e122939123569_
                                               _hd122940123572_
                                               _tl122941123574_))
                                          (___match126109126110_
                                           _e122936123561_
                                           _hd122937123564_
                                           _tl122938123566_
                                           _e122939123569_
                                           _hd122940123572_
                                           _tl122941123574_))))
                                  (___match126109126110_
                                   _e122936123561_
                                   _hd122937123564_
                                   _tl122938123566_
                                   _e122939123569_
                                   _hd122940123572_
                                   _tl122941123574_))
                              (___match126109126110_
                               _e122936123561_
                               _hd122937123564_
                               _tl122938123566_
                               _e122939123569_
                               _hd122940123572_
                               _tl122941123574_))
                          (___match126109126110_
                           _e122936123561_
                           _hd122937123564_
                           _tl122938123566_
                           _e122939123569_
                           _hd122940123572_
                           _tl122941123574_))))
                  (___match126109126110_
                   _e122936123561_
                   _hd122937123564_
                   _tl122938123566_
                   _e122939123569_
                   _hd122940123572_
                   _tl122941123574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126109126110_
                                                   _e122936123561_
                                                   _hd122937123564_
                                                   _tl122938123566_
                                                   _e122939123569_
                                                   _hd122940123572_
                                                   _tl122941123574_))
                                              (___match126109126110_
                                               _e122936123561_
                                               _hd122937123564_
                                               _tl122938123566_
                                               _e122939123569_
                                               _hd122940123572_
                                               _tl122941123574_))))
                                      (___match126109126110_
                                       _e122936123561_
                                       _hd122937123564_
                                       _tl122938123566_
                                       _e122939123569_
                                       _hd122940123572_
                                       _tl122941123574_))
                                  (___match126109126110_
                                   _e122936123561_
                                   _hd122937123564_
                                   _tl122938123566_
                                   _e122939123569_
                                   _hd122940123572_
                                   _tl122941123574_))
                              (___match126109126110_
                               _e122936123561_
                               _hd122937123564_
                               _tl122938123566_
                               _e122939123569_
                               _hd122940123572_
                               _tl122941123574_))))
                      (___match126109126110_
                       _e122936123561_
                       _hd122937123564_
                       _tl122938123566_
                       _e122939123569_
                       _hd122940123572_
                       _tl122941123574_))))
              (___match126109126110_
               _e122936123561_
               _hd122937123564_
               _tl122938123566_
               _e122939123569_
               _hd122940123572_
               _tl122941123574_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126109126110_
                                                   _e122936123561_
                                                   _hd122937123564_
                                                   _tl122938123566_
                                                   _e122939123569_
                                                   _hd122940123572_
                                                   _tl122941123574_))))
                                          (___match126109126110_
                                           _e122936123561_
                                           _hd122937123564_
                                           _tl122938123566_
                                           _e122939123569_
                                           _hd122940123572_
                                           _tl122941123574_))
                                      (___match126109126110_
                                       _e122936123561_
                                       _hd122937123564_
                                       _tl122938123566_
                                       _e122939123569_
                                       _hd122940123572_
                                       _tl122941123574_))
                                  (___match126109126110_
                                   _e122936123561_
                                   _hd122937123564_
                                   _tl122938123566_
                                   _e122939123569_
                                   _hd122940123572_
                                   _tl122941123574_))))
                          (___match126109126110_
                           _e122936123561_
                           _hd122937123564_
                           _tl122938123566_
                           _e122939123569_
                           _hd122940123572_
                           _tl122941123574_))))
                  (___match126109126110_
                   _e122936123561_
                   _hd122937123564_
                   _tl122938123566_
                   _e122939123569_
                   _hd122940123572_
                   _tl122941123574_))
              (___match126109126110_
               _e122936123561_
               _hd122937123564_
               _tl122938123566_
               _e122939123569_
               _hd122940123572_
               _tl122941123574_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126109126110_
                                                   _e122936123561_
                                                   _hd122937123564_
                                                   _tl122938123566_
                                                   _e122939123569_
                                                   _hd122940123572_
                                                   _tl122941123574_))))
                                          (___match126109126110_
                                           _e122936123561_
                                           _hd122937123564_
                                           _tl122938123566_
                                           _e122939123569_
                                           _hd122940123572_
                                           _tl122941123574_))))
                                  (___match126109126110_
                                   _e122936123561_
                                   _hd122937123564_
                                   _tl122938123566_
                                   _e122939123569_
                                   _hd122940123572_
                                   _tl122941123574_))))
                          (___match126243126244_
                           _e122936123561_
                           _hd122937123564_
                           _tl122938123566_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125924125925_))
                  (let ((_e122927123778_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125924125925_))))
                    (let ((_tl122929123783_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122927123778_)))
                          (_hd122928123781_
                           (let ()
                             (declare (not safe))
                             (##car _e122927123778_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L123786_ _tl122929123783_))
                            (___kont125926125927_ _L123786_))
                          (___match125951125952_
                           _e122927123778_
                           _hd122928123781_
                           _tl122929123783_))))
                  (let () (declare (not safe)) (_g122924123120_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self122871_ _stx122872_)
        (letrec ((_clause-e122874_
                  (lambda (_form122915_)
                    (let ((__obj127608
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
                       __obj127608
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form122915_))
                       (if (let ((__tmp127679
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp127679))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form122915_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form122915_))
                               '#f)
                           '#f))
                      __obj127608))))
          (let* ((_g122876122886_
                  (lambda (_g122877122883_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g122877122883_))))
                 (_g122875122912_
                  (lambda (_g122877122889_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g122877122889_))
                        (let ((_e122879122891_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g122877122889_))))
                          (let ((_hd122880122894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122879122891_)))
                                (_tl122881122896_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122879122891_))))
                            ((lambda (_L122899_)
                               (let ((_clauses122910_
                                      (map _clause-e122874_ _L122899_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses122910_)))
                             _tl122881122896_)))
                        (let ()
                          (declare (not safe))
                          (_g122876122886_ _g122877122889_))))))
            (declare (not safe))
            (_g122875122912_ _stx122872_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self122802_ _stx122803_)
        (let* ((_g122805122822_
                (lambda (_g122806122819_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122806122819_))))
               (_g122804122868_
                (lambda (_g122806122825_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122806122825_))
                      (let ((_e122809122827_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122806122825_))))
                        (let ((_hd122810122830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122809122827_)))
                              (_tl122811122832_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122809122827_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122811122832_))
                              (let ((_e122812122835_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122811122832_))))
                                (let ((_hd122813122838_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122812122835_)))
                                      (_tl122814122840_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122812122835_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122814122840_))
                                      (let ((_e122815122843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122814122840_))))
                                        (let ((_hd122816122846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122815122843_)))
                                              (_tl122817122848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122815122843_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122817122848_))
                                              ((lambda (_L122851_ _L122852_)
                                                 (let ((__tmp127680
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self122802_
                                                             _L122851_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp127680
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd122816122846_
                                               _hd122813122838_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122805122822_
                                                 _g122806122825_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122805122822_ _g122806122825_)))))
                              (let ()
                                (declare (not safe))
                                (_g122805122822_ _g122806122825_)))))
                      (let ()
                        (declare (not safe))
                        (_g122805122822_ _g122806122825_))))))
          (declare (not safe))
          (_g122804122868_ _stx122803_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self122706_ _stx122707_)
        (let* ((___stx126252126253_ _stx122707_)
               (_g122710122730_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126252126253_)))))
          (let ((___kont126254126255_
                 (lambda (_L122774_ _L122775_)
                   (let ((_type-e122792122794_
                          (let ((__tmp127681
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L122775_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp127681))))
                     (if _type-e122792122794_
                         (let ((_type-e122797_ _type-e122792122794_))
                           (_type-e122797_ _stx122707_ _L122774_))
                         '#f))))
                (___kont126256126257_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126252126253_))
                (let ((_e122714122742_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126252126253_))))
                  (let ((_tl122716122747_
                         (let () (declare (not safe)) (##cdr _e122714122742_)))
                        (_hd122715122745_
                         (let ()
                           (declare (not safe))
                           (##car _e122714122742_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122716122747_))
                        (let ((_e122717122750_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122716122747_))))
                          (let ((_tl122719122755_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122717122750_)))
                                (_hd122718122753_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122717122750_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122718122753_))
                                (let ((_e122720122758_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122718122753_))))
                                  (let ((_tl122722122763_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122720122758_)))
                                        (_hd122721122761_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122720122758_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122721122761_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122721122761_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122722122763_))
                                                (let ((_e122723122766_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122722122763_))))
                                                  (let ((_tl122725122771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122723122766_)))
                                                        (_hd122724122769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122723122766_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122725122771_))
                                                        (___kont126254126255_
                                                         _tl122719122755_
                                                         _hd122724122769_)
                                                        (___kont126256126257_))))
                                                (___kont126256126257_))
                                            (___kont126256126257_))
                                        (___kont126256126257_))))
                                (___kont126256126257_))))
                        (___kont126256126257_))))
                (___kont126256126257_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self122654_ _stx122655_)
        (let* ((_g122657122670_
                (lambda (_g122658122667_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122658122667_))))
               (_g122656122703_
                (lambda (_g122658122673_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122658122673_))
                      (let ((_e122660122675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122658122673_))))
                        (let ((_hd122661122678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122660122675_)))
                              (_tl122662122680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122660122675_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122662122680_))
                              (let ((_e122663122683_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122662122680_))))
                                (let ((_hd122664122686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122663122683_)))
                                      (_tl122665122688_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122663122683_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122665122688_))
                                      ((lambda (_L122691_)
                                         (let ((__tmp127682
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122691_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp127682)))
                                       _hd122664122686_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122657122670_ _g122658122673_)))))
                              (let ()
                                (declare (not safe))
                                (_g122657122670_ _g122658122673_)))))
                      (let ()
                        (declare (not safe))
                        (_g122657122670_ _g122658122673_))))))
          (declare (not safe))
          (_g122656122703_ _stx122655_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form121888_)
        (let* ((___stx126290126291_ _form121888_)
               (_g121893122050_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126290126291_)))))
          (let ((___kont126292126293_
                 (lambda (_L122574_ _L122575_ _L122576_) '#t))
                (___kont126298126299_
                 (lambda (_L122362_
                          _L122363_
                          _L122364_
                          _L122365_
                          _L122366_
                          _L122367_)
                   '#t))
                (___kont126304126305_
                 (lambda (_L122158_ _L122159_ _L122160_ _L122161_) '#t))
                (___kont126306126307_ (lambda () '#f)))
            (let* ((___match126431126432_
                    (lambda (_e122010122062_
                             _hd122011122065_
                             _tl122012122067_
                             _e122013122070_
                             _hd122014122073_
                             _tl122015122075_
                             _e122016122078_
                             _hd122017122081_
                             _tl122018122083_
                             _e122019122086_
                             _hd122020122089_
                             _tl122021122091_
                             _e122022122094_
                             _hd122023122097_
                             _tl122024122099_
                             _e122025122102_
                             _hd122026122105_
                             _tl122027122107_
                             _e122028122110_
                             _hd122029122113_
                             _tl122030122115_
                             _e122031122118_
                             _hd122032122121_
                             _tl122033122123_
                             _e122034122126_
                             _hd122035122129_
                             _tl122036122131_
                             _e122037122134_
                             _hd122038122137_
                             _tl122039122139_
                             _e122040122142_
                             _hd122041122145_
                             _tl122042122147_
                             _e122043122150_
                             _hd122044122153_
                             _tl122045122155_)
                      (let ((_L122158_ _hd122044122153_)
                            (_L122159_ _hd122035122129_)
                            (_L122160_ _hd122026122105_)
                            (_L122161_ _hd122011122065_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122161_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122160_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122161_ _L122158_))
                                 (let ((__tmp127683
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122159_
                                           _L122161_))))
                                   (declare (not safe))
                                   (not __tmp127683)))
                            (___kont126304126305_
                             _L122158_
                             _L122159_
                             _L122160_
                             _L122161_)
                            (___kont126306126307_)))))
                   (___match126403126404_
                    (lambda (_e122010122062_
                             _hd122011122065_
                             _tl122012122067_
                             _e122013122070_
                             _hd122014122073_
                             _tl122015122075_
                             _e122016122078_
                             _hd122017122081_
                             _tl122018122083_
                             _e122019122086_
                             _hd122020122089_
                             _tl122021122091_
                             _e122022122094_
                             _hd122023122097_
                             _tl122024122099_
                             _e122025122102_
                             _hd122026122105_
                             _tl122027122107_
                             _e122028122110_
                             _hd122029122113_
                             _tl122030122115_
                             _e122031122118_
                             _hd122032122121_
                             _tl122033122123_
                             _e122034122126_
                             _hd122035122129_
                             _tl122036122131_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122030122115_))
                          (let ((_e122037122134_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122030122115_))))
                            (let ((_tl122039122139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122037122134_)))
                                  (_hd122038122137_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122037122134_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122038122137_))
                                  (let ((_e122040122142_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122038122137_))))
                                    (let ((_tl122042122147_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122040122142_)))
                                          (_hd122041122145_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122040122142_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122041122145_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122041122145_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122042122147_))
                                                  (let ((_e122043122150_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122042122147_))))
                                                    (let ((_tl122045122155_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122043122150_)))
                                                          (_hd122044122153_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122043122150_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122045122155_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122039122139_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122015122075_))
                          (___match126431126432_
                           _e122010122062_
                           _hd122011122065_
                           _tl122012122067_
                           _e122013122070_
                           _hd122014122073_
                           _tl122015122075_
                           _e122016122078_
                           _hd122017122081_
                           _tl122018122083_
                           _e122019122086_
                           _hd122020122089_
                           _tl122021122091_
                           _e122022122094_
                           _hd122023122097_
                           _tl122024122099_
                           _e122025122102_
                           _hd122026122105_
                           _tl122027122107_
                           _e122028122110_
                           _hd122029122113_
                           _tl122030122115_
                           _e122031122118_
                           _hd122032122121_
                           _tl122033122123_
                           _e122034122126_
                           _hd122035122129_
                           _tl122036122131_
                           _e122037122134_
                           _hd122038122137_
                           _tl122039122139_
                           _e122040122142_
                           _hd122041122145_
                           _tl122042122147_
                           _e122043122150_
                           _hd122044122153_
                           _tl122045122155_)
                          (___kont126306126307_))
                      (___kont126306126307_))
                  (___kont126306126307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126306126307_))
                                              (___kont126306126307_))
                                          (___kont126306126307_))))
                                  (___kont126306126307_))))
                          (___kont126306126307_))))
                   (___match126333126334_
                    (lambda (_e121946122202_
                             _hd121947122205_
                             _tl121948122207_
                             ___splice126300126301_
                             _target121949122210_
                             _tl121951122212_)
                      (letrec ((_loop121952122215_
                                (lambda (_hd121950122218_ _arg121956122220_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121950122218_))
                                      (let ((_e121953122223_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121950122218_))))
                                        (let ((_lp-tl121955122228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121953122223_)))
                                              (_lp-hd121954122226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121953122223_))))
                                          (let ((__tmp127684
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121954122226_
                                                         _arg121956122220_))))
                                            (declare (not safe))
                                            (_loop121952122215_
                                             _lp-tl121955122228_
                                             __tmp127684))))
                                      (let ((_arg121957122231_
                                             (reverse _arg121956122220_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121948122207_))
                                            (let ((_e121958122234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121948122207_))))
                                              (let ((_tl121960122239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121958122234_)))
                                                    (_hd121959122237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121958122234_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121959122237_))
                                                    (let ((_e121961122242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121959122237_))))
                                                      (let ((_tl121963122247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121961122242_)))
                    (_hd121962122245_
                     (let () (declare (not safe)) (##car _e121961122242_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121962122245_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121962122245_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121963122247_))
                            (let ((_e121964122250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121963122247_))))
                              (let ((_tl121966122255_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121964122250_)))
                                    (_hd121965122253_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121964122250_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121965122253_))
                                    (let ((_e121967122258_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121965122253_))))
                                      (let ((_tl121969122263_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121967122258_)))
                                            (_hd121968122261_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121967122258_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121968122261_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121968122261_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121969122263_))
                                                    (let ((_e121970122266_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121969122263_))))
                                                      (let ((_tl121972122271_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121970122266_)))
                    (_hd121971122269_
                     (let () (declare (not safe)) (##car _e121970122266_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121972122271_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121966122255_))
                        (let ((_e121973122274_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121966122255_))))
                          (let ((_tl121975122279_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121973122274_)))
                                (_hd121974122277_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121973122274_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121974122277_))
                                (let ((_e121976122282_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121974122277_))))
                                  (let ((_tl121978122287_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121976122282_)))
                                        (_hd121977122285_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121976122282_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121977122285_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121977122285_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121978122287_))
                                                (let ((_e121979122290_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121978122287_))))
                                                  (let ((_tl121981122295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121979122290_)))
                                                        (_hd121980122293_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121979122290_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121981122295_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl121975122279_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl121975122279_))
                              '1)
                        (let ((___splice126302126303_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121975122279_
                                  '1))))
                          (let ((_tl121984122300_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126302126303_ '1)))
                                (_target121982122298_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126302126303_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121984122300_))
                                (let ((_e121991122303_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121984122300_))))
                                  (let ((_tl121993122308_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121991122303_)))
                                        (_hd121992122306_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121991122303_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121992122306_))
                                        (let ((_e121994122311_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121992122306_))))
                                          (let ((_tl121996122316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121994122311_)))
                                                (_hd121995122314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121994122311_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd121995122314_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd121995122314_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121996122316_))
                                                        (let ((_e121997122319_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121996122316_))))
                  (let ((_tl121999122324_
                         (let () (declare (not safe)) (##cdr _e121997122319_)))
                        (_hd121998122322_
                         (let ()
                           (declare (not safe))
                           (##car _e121997122319_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121999122324_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl121993122308_))
                            (letrec ((_loop121985122327_
                                      (lambda (_hd121983122330_
                                               _xarg121989122332_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd121983122330_))
                                            (let ((_e121986122335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd121983122330_))))
                                              (let ((_lp-tl121988122340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121986122335_)))
                                                    (_lp-hd121987122338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121986122335_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd121987122338_))
                                                    (let ((_e122000122343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd121987122338_))))
                                                      (let ((_tl122002122348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122000122343_)))
                    (_hd122001122346_
                     (let () (declare (not safe)) (##car _e122000122343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122001122346_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122001122346_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122002122348_))
                            (let ((_e122003122351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122002122348_))))
                              (let ((_tl122005122356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122003122351_)))
                                    (_hd122004122354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122003122351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122005122356_))
                                    (let ((__tmp127685
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122004122354_
                                                   _xarg121989122332_))))
                                      (declare (not safe))
                                      (_loop121985122327_
                                       _lp-tl121988122340_
                                       __tmp127685))
                                    (___match126403126404_
                                     _e121946122202_
                                     _hd121947122205_
                                     _tl121948122207_
                                     _e121958122234_
                                     _hd121959122237_
                                     _tl121960122239_
                                     _e121961122242_
                                     _hd121962122245_
                                     _tl121963122247_
                                     _e121964122250_
                                     _hd121965122253_
                                     _tl121966122255_
                                     _e121967122258_
                                     _hd121968122261_
                                     _tl121969122263_
                                     _e121970122266_
                                     _hd121971122269_
                                     _tl121972122271_
                                     _e121973122274_
                                     _hd121974122277_
                                     _tl121975122279_
                                     _e121976122282_
                                     _hd121977122285_
                                     _tl121978122287_
                                     _e121979122290_
                                     _hd121980122293_
                                     _tl121981122295_))))
                            (___match126403126404_
                             _e121946122202_
                             _hd121947122205_
                             _tl121948122207_
                             _e121958122234_
                             _hd121959122237_
                             _tl121960122239_
                             _e121961122242_
                             _hd121962122245_
                             _tl121963122247_
                             _e121964122250_
                             _hd121965122253_
                             _tl121966122255_
                             _e121967122258_
                             _hd121968122261_
                             _tl121969122263_
                             _e121970122266_
                             _hd121971122269_
                             _tl121972122271_
                             _e121973122274_
                             _hd121974122277_
                             _tl121975122279_
                             _e121976122282_
                             _hd121977122285_
                             _tl121978122287_
                             _e121979122290_
                             _hd121980122293_
                             _tl121981122295_))
                        (___match126403126404_
                         _e121946122202_
                         _hd121947122205_
                         _tl121948122207_
                         _e121958122234_
                         _hd121959122237_
                         _tl121960122239_
                         _e121961122242_
                         _hd121962122245_
                         _tl121963122247_
                         _e121964122250_
                         _hd121965122253_
                         _tl121966122255_
                         _e121967122258_
                         _hd121968122261_
                         _tl121969122263_
                         _e121970122266_
                         _hd121971122269_
                         _tl121972122271_
                         _e121973122274_
                         _hd121974122277_
                         _tl121975122279_
                         _e121976122282_
                         _hd121977122285_
                         _tl121978122287_
                         _e121979122290_
                         _hd121980122293_
                         _tl121981122295_))
                    (___match126403126404_
                     _e121946122202_
                     _hd121947122205_
                     _tl121948122207_
                     _e121958122234_
                     _hd121959122237_
                     _tl121960122239_
                     _e121961122242_
                     _hd121962122245_
                     _tl121963122247_
                     _e121964122250_
                     _hd121965122253_
                     _tl121966122255_
                     _e121967122258_
                     _hd121968122261_
                     _tl121969122263_
                     _e121970122266_
                     _hd121971122269_
                     _tl121972122271_
                     _e121973122274_
                     _hd121974122277_
                     _tl121975122279_
                     _e121976122282_
                     _hd121977122285_
                     _tl121978122287_
                     _e121979122290_
                     _hd121980122293_
                     _tl121981122295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126403126404_
                                                     _e121946122202_
                                                     _hd121947122205_
                                                     _tl121948122207_
                                                     _e121958122234_
                                                     _hd121959122237_
                                                     _tl121960122239_
                                                     _e121961122242_
                                                     _hd121962122245_
                                                     _tl121963122247_
                                                     _e121964122250_
                                                     _hd121965122253_
                                                     _tl121966122255_
                                                     _e121967122258_
                                                     _hd121968122261_
                                                     _tl121969122263_
                                                     _e121970122266_
                                                     _hd121971122269_
                                                     _tl121972122271_
                                                     _e121973122274_
                                                     _hd121974122277_
                                                     _tl121975122279_
                                                     _e121976122282_
                                                     _hd121977122285_
                                                     _tl121978122287_
                                                     _e121979122290_
                                                     _hd121980122293_
                                                     _tl121981122295_))))
                                            (let ((_xarg121990122359_
                                                   (reverse _xarg121989122332_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl121960122239_))
                                                  (let ((_L122362_
                                                         _hd121998122322_)
                                                        (_L122363_
                                                         _xarg121990122359_)
                                                        (_L122364_
                                                         _hd121980122293_)
                                                        (_L122365_
                                                         _hd121971122269_)
                                                        (_L122366_
                                                         _tl121951122212_)
                                                        (_L122367_
                                                         _arg121957122231_))
                                                    (if (and (let ((__tmp127686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127687
                                   (lambda (_g122410122413_ _g122411122415_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122410122413_
                                             _g122411122415_)))))
                              (declare (not safe))
                              (foldr1 __tmp127687 '() _L122367_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp127686))
                     (let () (declare (not safe)) (gx#identifier? _L122366_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L122365_ 'apply))
                     (fx= (length (let ((__tmp127688
                                         (lambda (_g122417122420_
                                                  _g122418122422_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122417122420_
                                                   _g122418122422_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127688 '() _L122367_)))
                          (length (let ((__tmp127689
                                         (lambda (_g122424122427_
                                                  _g122425122429_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122424122427_
                                                   _g122425122429_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127689 '() _L122363_))))
                     (let ((__tmp127692
                            (let ((__tmp127693
                                   (lambda (_g122431122434_ _g122432122436_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122431122434_
                                             _g122432122436_)))))
                              (declare (not safe))
                              (foldr1 __tmp127693 '() _L122367_)))
                           (__tmp127690
                            (let ((__tmp127691
                                   (lambda (_g122438122441_ _g122439122443_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122438122441_
                                             _g122439122443_)))))
                              (declare (not safe))
                              (foldr1 __tmp127691 '() _L122363_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp127692 __tmp127690))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L122366_ _L122362_))
                     (let ((__tmp127694
                            (let ((__tmp127698
                                   (lambda (_g122445122447_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g122445122447_
                                        _L122364_))))
                                  (__tmp127695
                                   (let ((__tmp127697
                                          (lambda (_g122449122452_
                                                   _g122450122454_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g122449122452_
                                                    _g122450122454_))))
                                         (__tmp127696
                                          (let ()
                                            (declare (not safe))
                                            (cons _L122366_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp127697
                                             __tmp127696
                                             _L122367_))))
                              (declare (not safe))
                              (find __tmp127698 __tmp127695))))
                       (declare (not safe))
                       (not __tmp127694)))
                (___kont126298126299_
                 _L122362_
                 _L122363_
                 _L122364_
                 _L122365_
                 _L122366_
                 _L122367_)
                (___match126403126404_
                 _e121946122202_
                 _hd121947122205_
                 _tl121948122207_
                 _e121958122234_
                 _hd121959122237_
                 _tl121960122239_
                 _e121961122242_
                 _hd121962122245_
                 _tl121963122247_
                 _e121964122250_
                 _hd121965122253_
                 _tl121966122255_
                 _e121967122258_
                 _hd121968122261_
                 _tl121969122263_
                 _e121970122266_
                 _hd121971122269_
                 _tl121972122271_
                 _e121973122274_
                 _hd121974122277_
                 _tl121975122279_
                 _e121976122282_
                 _hd121977122285_
                 _tl121978122287_
                 _e121979122290_
                 _hd121980122293_
                 _tl121981122295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126403126404_
                                                   _e121946122202_
                                                   _hd121947122205_
                                                   _tl121948122207_
                                                   _e121958122234_
                                                   _hd121959122237_
                                                   _tl121960122239_
                                                   _e121961122242_
                                                   _hd121962122245_
                                                   _tl121963122247_
                                                   _e121964122250_
                                                   _hd121965122253_
                                                   _tl121966122255_
                                                   _e121967122258_
                                                   _hd121968122261_
                                                   _tl121969122263_
                                                   _e121970122266_
                                                   _hd121971122269_
                                                   _tl121972122271_
                                                   _e121973122274_
                                                   _hd121974122277_
                                                   _tl121975122279_
                                                   _e121976122282_
                                                   _hd121977122285_
                                                   _tl121978122287_
                                                   _e121979122290_
                                                   _hd121980122293_
                                                   _tl121981122295_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop121985122327_ _target121982122298_ '())))
                            (___match126403126404_
                             _e121946122202_
                             _hd121947122205_
                             _tl121948122207_
                             _e121958122234_
                             _hd121959122237_
                             _tl121960122239_
                             _e121961122242_
                             _hd121962122245_
                             _tl121963122247_
                             _e121964122250_
                             _hd121965122253_
                             _tl121966122255_
                             _e121967122258_
                             _hd121968122261_
                             _tl121969122263_
                             _e121970122266_
                             _hd121971122269_
                             _tl121972122271_
                             _e121973122274_
                             _hd121974122277_
                             _tl121975122279_
                             _e121976122282_
                             _hd121977122285_
                             _tl121978122287_
                             _e121979122290_
                             _hd121980122293_
                             _tl121981122295_))
                        (___match126403126404_
                         _e121946122202_
                         _hd121947122205_
                         _tl121948122207_
                         _e121958122234_
                         _hd121959122237_
                         _tl121960122239_
                         _e121961122242_
                         _hd121962122245_
                         _tl121963122247_
                         _e121964122250_
                         _hd121965122253_
                         _tl121966122255_
                         _e121967122258_
                         _hd121968122261_
                         _tl121969122263_
                         _e121970122266_
                         _hd121971122269_
                         _tl121972122271_
                         _e121973122274_
                         _hd121974122277_
                         _tl121975122279_
                         _e121976122282_
                         _hd121977122285_
                         _tl121978122287_
                         _e121979122290_
                         _hd121980122293_
                         _tl121981122295_))))
                (___match126403126404_
                 _e121946122202_
                 _hd121947122205_
                 _tl121948122207_
                 _e121958122234_
                 _hd121959122237_
                 _tl121960122239_
                 _e121961122242_
                 _hd121962122245_
                 _tl121963122247_
                 _e121964122250_
                 _hd121965122253_
                 _tl121966122255_
                 _e121967122258_
                 _hd121968122261_
                 _tl121969122263_
                 _e121970122266_
                 _hd121971122269_
                 _tl121972122271_
                 _e121973122274_
                 _hd121974122277_
                 _tl121975122279_
                 _e121976122282_
                 _hd121977122285_
                 _tl121978122287_
                 _e121979122290_
                 _hd121980122293_
                 _tl121981122295_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126403126404_
                                                     _e121946122202_
                                                     _hd121947122205_
                                                     _tl121948122207_
                                                     _e121958122234_
                                                     _hd121959122237_
                                                     _tl121960122239_
                                                     _e121961122242_
                                                     _hd121962122245_
                                                     _tl121963122247_
                                                     _e121964122250_
                                                     _hd121965122253_
                                                     _tl121966122255_
                                                     _e121967122258_
                                                     _hd121968122261_
                                                     _tl121969122263_
                                                     _e121970122266_
                                                     _hd121971122269_
                                                     _tl121972122271_
                                                     _e121973122274_
                                                     _hd121974122277_
                                                     _tl121975122279_
                                                     _e121976122282_
                                                     _hd121977122285_
                                                     _tl121978122287_
                                                     _e121979122290_
                                                     _hd121980122293_
                                                     _tl121981122295_))
                                                (___match126403126404_
                                                 _e121946122202_
                                                 _hd121947122205_
                                                 _tl121948122207_
                                                 _e121958122234_
                                                 _hd121959122237_
                                                 _tl121960122239_
                                                 _e121961122242_
                                                 _hd121962122245_
                                                 _tl121963122247_
                                                 _e121964122250_
                                                 _hd121965122253_
                                                 _tl121966122255_
                                                 _e121967122258_
                                                 _hd121968122261_
                                                 _tl121969122263_
                                                 _e121970122266_
                                                 _hd121971122269_
                                                 _tl121972122271_
                                                 _e121973122274_
                                                 _hd121974122277_
                                                 _tl121975122279_
                                                 _e121976122282_
                                                 _hd121977122285_
                                                 _tl121978122287_
                                                 _e121979122290_
                                                 _hd121980122293_
                                                 _tl121981122295_))))
                                        (___match126403126404_
                                         _e121946122202_
                                         _hd121947122205_
                                         _tl121948122207_
                                         _e121958122234_
                                         _hd121959122237_
                                         _tl121960122239_
                                         _e121961122242_
                                         _hd121962122245_
                                         _tl121963122247_
                                         _e121964122250_
                                         _hd121965122253_
                                         _tl121966122255_
                                         _e121967122258_
                                         _hd121968122261_
                                         _tl121969122263_
                                         _e121970122266_
                                         _hd121971122269_
                                         _tl121972122271_
                                         _e121973122274_
                                         _hd121974122277_
                                         _tl121975122279_
                                         _e121976122282_
                                         _hd121977122285_
                                         _tl121978122287_
                                         _e121979122290_
                                         _hd121980122293_
                                         _tl121981122295_))))
                                (___match126403126404_
                                 _e121946122202_
                                 _hd121947122205_
                                 _tl121948122207_
                                 _e121958122234_
                                 _hd121959122237_
                                 _tl121960122239_
                                 _e121961122242_
                                 _hd121962122245_
                                 _tl121963122247_
                                 _e121964122250_
                                 _hd121965122253_
                                 _tl121966122255_
                                 _e121967122258_
                                 _hd121968122261_
                                 _tl121969122263_
                                 _e121970122266_
                                 _hd121971122269_
                                 _tl121972122271_
                                 _e121973122274_
                                 _hd121974122277_
                                 _tl121975122279_
                                 _e121976122282_
                                 _hd121977122285_
                                 _tl121978122287_
                                 _e121979122290_
                                 _hd121980122293_
                                 _tl121981122295_))))
                        (___match126403126404_
                         _e121946122202_
                         _hd121947122205_
                         _tl121948122207_
                         _e121958122234_
                         _hd121959122237_
                         _tl121960122239_
                         _e121961122242_
                         _hd121962122245_
                         _tl121963122247_
                         _e121964122250_
                         _hd121965122253_
                         _tl121966122255_
                         _e121967122258_
                         _hd121968122261_
                         _tl121969122263_
                         _e121970122266_
                         _hd121971122269_
                         _tl121972122271_
                         _e121973122274_
                         _hd121974122277_
                         _tl121975122279_
                         _e121976122282_
                         _hd121977122285_
                         _tl121978122287_
                         _e121979122290_
                         _hd121980122293_
                         _tl121981122295_))
                    (___match126403126404_
                     _e121946122202_
                     _hd121947122205_
                     _tl121948122207_
                     _e121958122234_
                     _hd121959122237_
                     _tl121960122239_
                     _e121961122242_
                     _hd121962122245_
                     _tl121963122247_
                     _e121964122250_
                     _hd121965122253_
                     _tl121966122255_
                     _e121967122258_
                     _hd121968122261_
                     _tl121969122263_
                     _e121970122266_
                     _hd121971122269_
                     _tl121972122271_
                     _e121973122274_
                     _hd121974122277_
                     _tl121975122279_
                     _e121976122282_
                     _hd121977122285_
                     _tl121978122287_
                     _e121979122290_
                     _hd121980122293_
                     _tl121981122295_))
                (___kont126306126307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126306126307_))
                                            (___kont126306126307_))
                                        (___kont126306126307_))))
                                (___kont126306126307_))))
                        (___kont126306126307_))
                    (___kont126306126307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126306126307_))
                                                (___kont126306126307_))
                                            (___kont126306126307_))))
                                    (___kont126306126307_))))
                            (___kont126306126307_))
                        (___kont126306126307_))
                    (___kont126306126307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126306126307_))))
                                            (___kont126306126307_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121952122215_ _target121949122210_ '())))))
                   (___match126321126322_
                    (lambda (_e121898122462_
                             _hd121899122465_
                             _tl121900122467_
                             ___splice126294126295_
                             _target121901122470_
                             _tl121903122472_)
                      (letrec ((_loop121904122475_
                                (lambda (_hd121902122478_ _arg121908122480_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121902122478_))
                                      (let ((_e121905122483_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121902122478_))))
                                        (let ((_lp-tl121907122488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121905122483_)))
                                              (_lp-hd121906122486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121905122483_))))
                                          (let ((__tmp127699
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121906122486_
                                                         _arg121908122480_))))
                                            (declare (not safe))
                                            (_loop121904122475_
                                             _lp-tl121907122488_
                                             __tmp127699))))
                                      (let ((_arg121909122491_
                                             (reverse _arg121908122480_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121900122467_))
                                            (let ((_e121910122494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121900122467_))))
                                              (let ((_tl121912122499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121910122494_)))
                                                    (_hd121911122497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121910122494_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121911122497_))
                                                    (let ((_e121913122502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121911122497_))))
                                                      (let ((_tl121915122507_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121913122502_)))
                    (_hd121914122505_
                     (let () (declare (not safe)) (##car _e121913122502_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121914122505_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121914122505_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121915122507_))
                            (let ((_e121916122510_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121915122507_))))
                              (let ((_tl121918122515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121916122510_)))
                                    (_hd121917122513_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121916122510_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121917122513_))
                                    (let ((_e121919122518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121917122513_))))
                                      (let ((_tl121921122523_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121919122518_)))
                                            (_hd121920122521_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121919122518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121920122521_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121920122521_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121921122523_))
                                                    (let ((_e121922122526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121921122523_))))
                                                      (let ((_tl121924122531_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121922122526_)))
                    (_hd121923122529_
                     (let () (declare (not safe)) (##car _e121922122526_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121924122531_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121918122515_))
                        (let ((___splice126296126297_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121918122515_
                                  '0))))
                          (let ((_tl121927122536_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126296126297_ '1)))
                                (_target121925122534_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126296126297_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121927122536_))
                                (letrec ((_loop121928122539_
                                          (lambda (_hd121926122542_
                                                   _xarg121932122544_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121926122542_))
                                                (let ((_e121929122547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121926122542_))))
                                                  (let ((_lp-tl121931122552_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121929122547_)))
                                                        (_lp-hd121930122550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121929122547_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121930122550_))
                                                        (let ((_e121934122555_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121930122550_))))
                  (let ((_tl121936122560_
                         (let () (declare (not safe)) (##cdr _e121934122555_)))
                        (_hd121935122558_
                         (let ()
                           (declare (not safe))
                           (##car _e121934122555_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121935122558_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121935122558_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121936122560_))
                                (let ((_e121937122563_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121936122560_))))
                                  (let ((_tl121939122568_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121937122563_)))
                                        (_hd121938122566_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121937122563_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121939122568_))
                                        (let ((__tmp127700
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121938122566_
                                                       _xarg121932122544_))))
                                          (declare (not safe))
                                          (_loop121928122539_
                                           _lp-tl121931122552_
                                           __tmp127700))
                                        (___match126333126334_
                                         _e121898122462_
                                         _hd121899122465_
                                         _tl121900122467_
                                         ___splice126294126295_
                                         _target121901122470_
                                         _tl121903122472_))))
                                (___match126333126334_
                                 _e121898122462_
                                 _hd121899122465_
                                 _tl121900122467_
                                 ___splice126294126295_
                                 _target121901122470_
                                 _tl121903122472_))
                            (___match126333126334_
                             _e121898122462_
                             _hd121899122465_
                             _tl121900122467_
                             ___splice126294126295_
                             _target121901122470_
                             _tl121903122472_))
                        (___match126333126334_
                         _e121898122462_
                         _hd121899122465_
                         _tl121900122467_
                         ___splice126294126295_
                         _target121901122470_
                         _tl121903122472_))))
                (___match126333126334_
                 _e121898122462_
                 _hd121899122465_
                 _tl121900122467_
                 ___splice126294126295_
                 _target121901122470_
                 _tl121903122472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121933122571_
                                                       (reverse _xarg121932122544_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121912122499_))
                                                      (let ((_L122574_
                                                             _xarg121933122571_)
                                                            (_L122575_
                                                             _hd121923122529_)
                                                            (_L122576_
                                                             _arg121909122491_))
                                                        (if (and (let ((__tmp127701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp127702
                                       (lambda (_g122604122607_
                                                _g122605122609_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122604122607_
                                                 _g122605122609_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127702 '() _L122576_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp127701))
                         (fx= (length (let ((__tmp127703
                                             (lambda (_g122611122614_
                                                      _g122612122616_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122611122614_
                                                       _g122612122616_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127703 '() _L122576_)))
                              (length (let ((__tmp127704
                                             (lambda (_g122618122621_
                                                      _g122619122623_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122618122621_
                                                       _g122619122623_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127704 '() _L122574_))))
                         (let ((__tmp127707
                                (let ((__tmp127708
                                       (lambda (_g122625122628_
                                                _g122626122630_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122625122628_
                                                 _g122626122630_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127708 '() _L122576_)))
                               (__tmp127705
                                (let ((__tmp127706
                                       (lambda (_g122632122635_
                                                _g122633122637_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122632122635_
                                                 _g122633122637_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127706 '() _L122574_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp127707
                                    __tmp127705))
                         (let ((__tmp127709
                                (let ((__tmp127712
                                       (lambda (_g122639122641_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g122639122641_
                                            _L122575_))))
                                      (__tmp127710
                                       (let ((__tmp127711
                                              (lambda (_g122643122646_
                                                       _g122644122648_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g122643122646_
                                                        _g122644122648_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp127711 '() _L122576_))))
                                  (declare (not safe))
                                  (find __tmp127712 __tmp127710))))
                           (declare (not safe))
                           (not __tmp127709)))
                    (___kont126292126293_ _L122574_ _L122575_ _L122576_)
                    (___match126333126334_
                     _e121898122462_
                     _hd121899122465_
                     _tl121900122467_
                     ___splice126294126295_
                     _target121901122470_
                     _tl121903122472_)))
              (___match126333126334_
               _e121898122462_
               _hd121899122465_
               _tl121900122467_
               ___splice126294126295_
               _target121901122470_
               _tl121903122472_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop121928122539_
                                     _target121925122534_
                                     '())))
                                (___match126333126334_
                                 _e121898122462_
                                 _hd121899122465_
                                 _tl121900122467_
                                 ___splice126294126295_
                                 _target121901122470_
                                 _tl121903122472_))))
                        (___match126333126334_
                         _e121898122462_
                         _hd121899122465_
                         _tl121900122467_
                         ___splice126294126295_
                         _target121901122470_
                         _tl121903122472_))
                    (___match126333126334_
                     _e121898122462_
                     _hd121899122465_
                     _tl121900122467_
                     ___splice126294126295_
                     _target121901122470_
                     _tl121903122472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126333126334_
                                                     _e121898122462_
                                                     _hd121899122465_
                                                     _tl121900122467_
                                                     ___splice126294126295_
                                                     _target121901122470_
                                                     _tl121903122472_))
                                                (___match126333126334_
                                                 _e121898122462_
                                                 _hd121899122465_
                                                 _tl121900122467_
                                                 ___splice126294126295_
                                                 _target121901122470_
                                                 _tl121903122472_))
                                            (___match126333126334_
                                             _e121898122462_
                                             _hd121899122465_
                                             _tl121900122467_
                                             ___splice126294126295_
                                             _target121901122470_
                                             _tl121903122472_))))
                                    (___match126333126334_
                                     _e121898122462_
                                     _hd121899122465_
                                     _tl121900122467_
                                     ___splice126294126295_
                                     _target121901122470_
                                     _tl121903122472_))))
                            (___match126333126334_
                             _e121898122462_
                             _hd121899122465_
                             _tl121900122467_
                             ___splice126294126295_
                             _target121901122470_
                             _tl121903122472_))
                        (___match126333126334_
                         _e121898122462_
                         _hd121899122465_
                         _tl121900122467_
                         ___splice126294126295_
                         _target121901122470_
                         _tl121903122472_))
                    (___match126333126334_
                     _e121898122462_
                     _hd121899122465_
                     _tl121900122467_
                     ___splice126294126295_
                     _target121901122470_
                     _tl121903122472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126333126334_
                                                     _e121898122462_
                                                     _hd121899122465_
                                                     _tl121900122467_
                                                     ___splice126294126295_
                                                     _target121901122470_
                                                     _tl121903122472_))))
                                            (___match126333126334_
                                             _e121898122462_
                                             _hd121899122465_
                                             _tl121900122467_
                                             ___splice126294126295_
                                             _target121901122470_
                                             _tl121903122472_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121904122475_ _target121901122470_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126290126291_))
                  (let ((_e121898122462_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126290126291_))))
                    (let ((_tl121900122467_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121898122462_)))
                          (_hd121899122465_
                           (let ()
                             (declare (not safe))
                             (##car _e121898122462_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121899122465_))
                          (let ((___splice126294126295_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121899122465_
                                    '0))))
                            (let ((_tl121903122472_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126294126295_ '1)))
                                  (_target121901122470_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126294126295_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121903122472_))
                                  (___match126321126322_
                                   _e121898122462_
                                   _hd121899122465_
                                   _tl121900122467_
                                   ___splice126294126295_
                                   _target121901122470_
                                   _tl121903122472_)
                                  (___match126333126334_
                                   _e121898122462_
                                   _hd121899122465_
                                   _tl121900122467_
                                   ___splice126294126295_
                                   _target121901122470_
                                   _tl121903122472_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121900122467_))
                              (let ((_e122013122070_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121900122467_))))
                                (let ((_tl122015122075_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122013122070_)))
                                      (_hd122014122073_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122013122070_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122014122073_))
                                      (let ((_e122016122078_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122014122073_))))
                                        (let ((_tl122018122083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122016122078_)))
                                              (_hd122017122081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122016122078_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122017122081_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122017122081_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122018122083_))
                                                      (let ((_e122019122086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122018122083_))))
                (let ((_tl122021122091_
                       (let () (declare (not safe)) (##cdr _e122019122086_)))
                      (_hd122020122089_
                       (let () (declare (not safe)) (##car _e122019122086_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122020122089_))
                      (let ((_e122022122094_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122020122089_))))
                        (let ((_tl122024122099_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122022122094_)))
                              (_hd122023122097_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122022122094_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122023122097_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122023122097_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122024122099_))
                                      (let ((_e122025122102_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122024122099_))))
                                        (let ((_tl122027122107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122025122102_)))
                                              (_hd122026122105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122025122102_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122027122107_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122021122091_))
                                                  (let ((_e122028122110_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122021122091_))))
                                                    (let ((_tl122030122115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122028122110_)))
                                                          (_hd122029122113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122028122110_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122029122113_))
                                                          (let ((_e122031122118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122029122113_))))
                    (let ((_tl122033122123_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122031122118_)))
                          (_hd122032122121_
                           (let ()
                             (declare (not safe))
                             (##car _e122031122118_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122032122121_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122032122121_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122033122123_))
                                  (let ((_e122034122126_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122033122123_))))
                                    (let ((_tl122036122131_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122034122126_)))
                                          (_hd122035122129_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122034122126_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122036122131_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122030122115_))
                                              (let ((_e122037122134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122030122115_))))
                                                (let ((_tl122039122139_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122037122134_)))
                                                      (_hd122038122137_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122037122134_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122038122137_))
                                                      (let ((_e122040122142_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122038122137_))))
                (let ((_tl122042122147_
                       (let () (declare (not safe)) (##cdr _e122040122142_)))
                      (_hd122041122145_
                       (let () (declare (not safe)) (##car _e122040122142_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122041122145_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122041122145_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122042122147_))
                              (let ((_e122043122150_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122042122147_))))
                                (let ((_tl122045122155_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122043122150_)))
                                      (_hd122044122153_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122043122150_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122045122155_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122039122139_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122015122075_))
                                              (___match126431126432_
                                               _e121898122462_
                                               _hd121899122465_
                                               _tl121900122467_
                                               _e122013122070_
                                               _hd122014122073_
                                               _tl122015122075_
                                               _e122016122078_
                                               _hd122017122081_
                                               _tl122018122083_
                                               _e122019122086_
                                               _hd122020122089_
                                               _tl122021122091_
                                               _e122022122094_
                                               _hd122023122097_
                                               _tl122024122099_
                                               _e122025122102_
                                               _hd122026122105_
                                               _tl122027122107_
                                               _e122028122110_
                                               _hd122029122113_
                                               _tl122030122115_
                                               _e122031122118_
                                               _hd122032122121_
                                               _tl122033122123_
                                               _e122034122126_
                                               _hd122035122129_
                                               _tl122036122131_
                                               _e122037122134_
                                               _hd122038122137_
                                               _tl122039122139_
                                               _e122040122142_
                                               _hd122041122145_
                                               _tl122042122147_
                                               _e122043122150_
                                               _hd122044122153_
                                               _tl122045122155_)
                                              (___kont126306126307_))
                                          (___kont126306126307_))
                                      (___kont126306126307_))))
                              (___kont126306126307_))
                          (___kont126306126307_))
                      (___kont126306126307_))))
              (___kont126306126307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont126306126307_))
                                          (___kont126306126307_))))
                                  (___kont126306126307_))
                              (___kont126306126307_))
                          (___kont126306126307_))))
                  (___kont126306126307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126306126307_))
                                              (___kont126306126307_))))
                                      (___kont126306126307_))
                                  (___kont126306126307_))
                              (___kont126306126307_))))
                      (___kont126306126307_))))
              (___kont126306126307_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126306126307_))
                                              (___kont126306126307_))))
                                      (___kont126306126307_))))
                              (___kont126306126307_)))))
                  (___kont126306126307_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form121356_)
        (let* ((___stx126434126435_ _form121356_)
               (_g121360121484_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126434126435_)))))
          (let ((___kont126436126437_
                 (lambda (_L121854_ _L121855_ _L121856_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121855_))))
                (___kont126442126443_
                 (lambda (_L121702_ _L121703_ _L121704_ _L121705_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121702_))))
                (___kont126446126447_
                 (lambda (_L121569_ _L121570_ _L121571_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121569_)))))
            (let* ((___match126543126544_
                    (lambda (_e121450121489_
                             _hd121451121492_
                             _tl121452121494_
                             _e121453121497_
                             _hd121454121500_
                             _tl121455121502_
                             _e121456121505_
                             _hd121457121508_
                             _tl121458121510_
                             _e121459121513_
                             _hd121460121516_
                             _tl121461121518_
                             _e121462121521_
                             _hd121463121524_
                             _tl121464121526_
                             _e121465121529_
                             _hd121466121532_
                             _tl121467121534_
                             _e121468121537_
                             _hd121469121540_
                             _tl121470121542_
                             _e121471121545_
                             _hd121472121548_
                             _tl121473121550_
                             _e121474121553_
                             _hd121475121556_
                             _tl121476121558_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121470121542_))
                          (let ((_e121477121561_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121470121542_))))
                            (let ((_tl121479121566_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121477121561_)))
                                  (_hd121478121564_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121477121561_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121479121566_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121455121502_))
                                      (___kont126446126447_
                                       _hd121475121556_
                                       _hd121466121532_
                                       _hd121451121492_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121360121484_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121360121484_)))))
                          (let () (declare (not safe)) (_g121360121484_)))))
                   (___match126473126474_
                    (lambda (_e121411121606_
                             _hd121412121609_
                             _tl121413121611_
                             ___splice126444126445_
                             _target121414121614_
                             _tl121416121616_)
                      (letrec ((_loop121417121619_
                                (lambda (_hd121415121622_ _arg121421121624_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121415121622_))
                                      (let ((_e121418121627_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121415121622_))))
                                        (let ((_lp-tl121420121632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121418121627_)))
                                              (_lp-hd121419121630_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121418121627_))))
                                          (let ((__tmp127713
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121419121630_
                                                         _arg121421121624_))))
                                            (declare (not safe))
                                            (_loop121417121619_
                                             _lp-tl121420121632_
                                             __tmp127713))))
                                      (let ((_arg121422121635_
                                             (reverse _arg121421121624_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121413121611_))
                                            (let ((_e121423121638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121413121611_))))
                                              (let ((_tl121425121643_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121423121638_)))
                                                    (_hd121424121641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121423121638_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121424121641_))
                                                    (let ((_e121426121646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121424121641_))))
                                                      (let ((_tl121428121651_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121426121646_)))
                    (_hd121427121649_
                     (let () (declare (not safe)) (##car _e121426121646_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121427121649_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121427121649_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121428121651_))
                            (let ((_e121429121654_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121428121651_))))
                              (let ((_tl121431121659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121429121654_)))
                                    (_hd121430121657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121429121654_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121430121657_))
                                    (let ((_e121432121662_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121430121657_))))
                                      (let ((_tl121434121667_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121432121662_)))
                                            (_hd121433121665_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121432121662_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121433121665_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121433121665_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121434121667_))
                                                    (let ((_e121435121670_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121434121667_))))
                                                      (let ((_tl121437121675_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121435121670_)))
                    (_hd121436121673_
                     (let () (declare (not safe)) (##car _e121435121670_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121437121675_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121431121659_))
                        (let ((_e121438121678_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121431121659_))))
                          (let ((_tl121440121683_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121438121678_)))
                                (_hd121439121681_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121438121678_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121439121681_))
                                (let ((_e121441121686_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121439121681_))))
                                  (let ((_tl121443121691_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121441121686_)))
                                        (_hd121442121689_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121441121686_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121442121689_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121442121689_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121443121691_))
                                                (let ((_e121444121694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121443121691_))))
                                                  (let ((_tl121446121699_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121444121694_)))
                                                        (_hd121445121697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121444121694_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121446121699_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121425121643_))
                                                            (___kont126442126443_
                                                             _hd121445121697_
                                                             _hd121436121673_
                                                             _tl121416121616_
                                                             _arg121422121635_)
                                                            (___match126543126544_
                                                             _e121411121606_
                                                             _hd121412121609_
                                                             _tl121413121611_
                                                             _e121423121638_
                                                             _hd121424121641_
                                                             _tl121425121643_
                                                             _e121426121646_
                                                             _hd121427121649_
                                                             _tl121428121651_
                                                             _e121429121654_
                                                             _hd121430121657_
                                                             _tl121431121659_
                                                             _e121432121662_
                                                             _hd121433121665_
                                                             _tl121434121667_
                                                             _e121435121670_
                                                             _hd121436121673_
                                                             _tl121437121675_
                                                             _e121438121678_
                                                             _hd121439121681_
                                                             _tl121440121683_
                                                             _e121441121686_
                                                             _hd121442121689_
                                                             _tl121443121691_
                                                             _e121444121694_
                                                             _hd121445121697_
                                                             _tl121446121699_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121360121484_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121360121484_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121360121484_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g121360121484_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g121360121484_)))))
                        (let () (declare (not safe)) (_g121360121484_)))
                    (let () (declare (not safe)) (_g121360121484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121360121484_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121360121484_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121360121484_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g121360121484_)))))
                            (let () (declare (not safe)) (_g121360121484_)))
                        (let () (declare (not safe)) (_g121360121484_)))
                    (let () (declare (not safe)) (_g121360121484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121360121484_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g121360121484_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop121417121619_ _target121414121614_ '())))))
                   (___match126461126462_
                    (lambda (_e121365121742_
                             _hd121366121745_
                             _tl121367121747_
                             ___splice126438126439_
                             _target121368121750_
                             _tl121370121752_)
                      (letrec ((_loop121371121755_
                                (lambda (_hd121369121758_ _arg121375121760_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121369121758_))
                                      (let ((_e121372121763_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121369121758_))))
                                        (let ((_lp-tl121374121768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121372121763_)))
                                              (_lp-hd121373121766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121372121763_))))
                                          (let ((__tmp127714
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121373121766_
                                                         _arg121375121760_))))
                                            (declare (not safe))
                                            (_loop121371121755_
                                             _lp-tl121374121768_
                                             __tmp127714))))
                                      (let ((_arg121376121771_
                                             (reverse _arg121375121760_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121367121747_))
                                            (let ((_e121377121774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121367121747_))))
                                              (let ((_tl121379121779_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121377121774_)))
                                                    (_hd121378121777_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121377121774_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121378121777_))
                                                    (let ((_e121380121782_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121378121777_))))
                                                      (let ((_tl121382121787_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121380121782_)))
                    (_hd121381121785_
                     (let () (declare (not safe)) (##car _e121380121782_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121381121785_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121381121785_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121382121787_))
                            (let ((_e121383121790_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121382121787_))))
                              (let ((_tl121385121795_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121383121790_)))
                                    (_hd121384121793_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121383121790_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121384121793_))
                                    (let ((_e121386121798_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121384121793_))))
                                      (let ((_tl121388121803_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121386121798_)))
                                            (_hd121387121801_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121386121798_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121387121801_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121387121801_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121388121803_))
                                                    (let ((_e121389121806_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121388121803_))))
                                                      (let ((_tl121391121811_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121389121806_)))
                    (_hd121390121809_
                     (let () (declare (not safe)) (##car _e121389121806_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121391121811_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121385121795_))
                        (let ((___splice126440126441_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121385121795_
                                  '0))))
                          (let ((_tl121394121816_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126440126441_ '1)))
                                (_target121392121814_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126440126441_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121394121816_))
                                (letrec ((_loop121395121819_
                                          (lambda (_hd121393121822_
                                                   _xarg121399121824_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121393121822_))
                                                (let ((_e121396121827_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121393121822_))))
                                                  (let ((_lp-tl121398121832_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121396121827_)))
                                                        (_lp-hd121397121830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121396121827_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121397121830_))
                                                        (let ((_e121401121835_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121397121830_))))
                  (let ((_tl121403121840_
                         (let () (declare (not safe)) (##cdr _e121401121835_)))
                        (_hd121402121838_
                         (let ()
                           (declare (not safe))
                           (##car _e121401121835_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121402121838_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121402121838_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121403121840_))
                                (let ((_e121404121843_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121403121840_))))
                                  (let ((_tl121406121848_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121404121843_)))
                                        (_hd121405121846_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121404121843_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121406121848_))
                                        (let ((__tmp127715
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121405121846_
                                                       _xarg121399121824_))))
                                          (declare (not safe))
                                          (_loop121395121819_
                                           _lp-tl121398121832_
                                           __tmp127715))
                                        (___match126473126474_
                                         _e121365121742_
                                         _hd121366121745_
                                         _tl121367121747_
                                         ___splice126438126439_
                                         _target121368121750_
                                         _tl121370121752_))))
                                (___match126473126474_
                                 _e121365121742_
                                 _hd121366121745_
                                 _tl121367121747_
                                 ___splice126438126439_
                                 _target121368121750_
                                 _tl121370121752_))
                            (___match126473126474_
                             _e121365121742_
                             _hd121366121745_
                             _tl121367121747_
                             ___splice126438126439_
                             _target121368121750_
                             _tl121370121752_))
                        (___match126473126474_
                         _e121365121742_
                         _hd121366121745_
                         _tl121367121747_
                         ___splice126438126439_
                         _target121368121750_
                         _tl121370121752_))))
                (___match126473126474_
                 _e121365121742_
                 _hd121366121745_
                 _tl121367121747_
                 ___splice126438126439_
                 _target121368121750_
                 _tl121370121752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121400121851_
                                                       (reverse _xarg121399121824_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121379121779_))
                                                      (___kont126436126437_
                                                       _xarg121400121851_
                                                       _hd121390121809_
                                                       _arg121376121771_)
                                                      (___match126473126474_
                                                       _e121365121742_
                                                       _hd121366121745_
                                                       _tl121367121747_
                                                       ___splice126438126439_
                                                       _target121368121750_
                                                       _tl121370121752_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop121395121819_
                                     _target121392121814_
                                     '())))
                                (___match126473126474_
                                 _e121365121742_
                                 _hd121366121745_
                                 _tl121367121747_
                                 ___splice126438126439_
                                 _target121368121750_
                                 _tl121370121752_))))
                        (___match126473126474_
                         _e121365121742_
                         _hd121366121745_
                         _tl121367121747_
                         ___splice126438126439_
                         _target121368121750_
                         _tl121370121752_))
                    (___match126473126474_
                     _e121365121742_
                     _hd121366121745_
                     _tl121367121747_
                     ___splice126438126439_
                     _target121368121750_
                     _tl121370121752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126473126474_
                                                     _e121365121742_
                                                     _hd121366121745_
                                                     _tl121367121747_
                                                     ___splice126438126439_
                                                     _target121368121750_
                                                     _tl121370121752_))
                                                (___match126473126474_
                                                 _e121365121742_
                                                 _hd121366121745_
                                                 _tl121367121747_
                                                 ___splice126438126439_
                                                 _target121368121750_
                                                 _tl121370121752_))
                                            (___match126473126474_
                                             _e121365121742_
                                             _hd121366121745_
                                             _tl121367121747_
                                             ___splice126438126439_
                                             _target121368121750_
                                             _tl121370121752_))))
                                    (___match126473126474_
                                     _e121365121742_
                                     _hd121366121745_
                                     _tl121367121747_
                                     ___splice126438126439_
                                     _target121368121750_
                                     _tl121370121752_))))
                            (___match126473126474_
                             _e121365121742_
                             _hd121366121745_
                             _tl121367121747_
                             ___splice126438126439_
                             _target121368121750_
                             _tl121370121752_))
                        (___match126473126474_
                         _e121365121742_
                         _hd121366121745_
                         _tl121367121747_
                         ___splice126438126439_
                         _target121368121750_
                         _tl121370121752_))
                    (___match126473126474_
                     _e121365121742_
                     _hd121366121745_
                     _tl121367121747_
                     ___splice126438126439_
                     _target121368121750_
                     _tl121370121752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126473126474_
                                                     _e121365121742_
                                                     _hd121366121745_
                                                     _tl121367121747_
                                                     ___splice126438126439_
                                                     _target121368121750_
                                                     _tl121370121752_))))
                                            (___match126473126474_
                                             _e121365121742_
                                             _hd121366121745_
                                             _tl121367121747_
                                             ___splice126438126439_
                                             _target121368121750_
                                             _tl121370121752_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121371121755_ _target121368121750_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126434126435_))
                  (let ((_e121365121742_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126434126435_))))
                    (let ((_tl121367121747_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121365121742_)))
                          (_hd121366121745_
                           (let ()
                             (declare (not safe))
                             (##car _e121365121742_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121366121745_))
                          (let ((___splice126438126439_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121366121745_
                                    '0))))
                            (let ((_tl121370121752_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126438126439_ '1)))
                                  (_target121368121750_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126438126439_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121370121752_))
                                  (___match126461126462_
                                   _e121365121742_
                                   _hd121366121745_
                                   _tl121367121747_
                                   ___splice126438126439_
                                   _target121368121750_
                                   _tl121370121752_)
                                  (___match126473126474_
                                   _e121365121742_
                                   _hd121366121745_
                                   _tl121367121747_
                                   ___splice126438126439_
                                   _target121368121750_
                                   _tl121370121752_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121367121747_))
                              (let ((_e121453121497_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121367121747_))))
                                (let ((_tl121455121502_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121453121497_)))
                                      (_hd121454121500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121453121497_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121454121500_))
                                      (let ((_e121456121505_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121454121500_))))
                                        (let ((_tl121458121510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121456121505_)))
                                              (_hd121457121508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121456121505_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd121457121508_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd121457121508_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121458121510_))
                                                      (let ((_e121459121513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121458121510_))))
                (let ((_tl121461121518_
                       (let () (declare (not safe)) (##cdr _e121459121513_)))
                      (_hd121460121516_
                       (let () (declare (not safe)) (##car _e121459121513_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121460121516_))
                      (let ((_e121462121521_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121460121516_))))
                        (let ((_tl121464121526_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121462121521_)))
                              (_hd121463121524_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121462121521_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121463121524_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121463121524_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121464121526_))
                                      (let ((_e121465121529_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121464121526_))))
                                        (let ((_tl121467121534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121465121529_)))
                                              (_hd121466121532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121465121529_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121467121534_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121461121518_))
                                                  (let ((_e121468121537_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121461121518_))))
                                                    (let ((_tl121470121542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121468121537_)))
                                                          (_hd121469121540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121468121537_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121469121540_))
                                                          (let ((_e121471121545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121469121540_))))
                    (let ((_tl121473121550_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121471121545_)))
                          (_hd121472121548_
                           (let ()
                             (declare (not safe))
                             (##car _e121471121545_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121472121548_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121472121548_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121473121550_))
                                  (let ((_e121474121553_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121473121550_))))
                                    (let ((_tl121476121558_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121474121553_)))
                                          (_hd121475121556_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121474121553_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121476121558_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121470121542_))
                                              (let ((_e121477121561_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121470121542_))))
                                                (let ((_tl121479121566_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121477121561_)))
                                                      (_hd121478121564_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121477121561_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121479121566_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121455121502_))
                                                          (___kont126446126447_
                                                           _hd121475121556_
                                                           _hd121466121532_
                                                           _hd121366121745_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g121360121484_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g121360121484_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g121360121484_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121360121484_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121360121484_)))
                              (let () (declare (not safe)) (_g121360121484_)))
                          (let () (declare (not safe)) (_g121360121484_)))))
                  (let () (declare (not safe)) (_g121360121484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121360121484_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121360121484_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121360121484_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121360121484_)))
                              (let ()
                                (declare (not safe))
                                (_g121360121484_)))))
                      (let () (declare (not safe)) (_g121360121484_)))))
              (let () (declare (not safe)) (_g121360121484_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121360121484_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121360121484_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121360121484_)))))
                              (let ()
                                (declare (not safe))
                                (_g121360121484_))))))
                  (let () (declare (not safe)) (_g121360121484_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121160_)
        (let* ((_g121162121176_
                (lambda (_g121163121173_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121163121173_))))
               (_g121161121353_
                (lambda (_g121163121179_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121163121179_))
                      (let ((_e121166121181_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121163121179_))))
                        (let ((_hd121167121184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121166121181_)))
                              (_tl121168121186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121166121181_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121168121186_))
                              (let ((_e121169121189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121168121186_))))
                                (let ((_hd121170121192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121169121189_)))
                                      (_tl121171121194_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121169121189_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121171121194_))
                                      ((lambda (_L121197_ _L121198_)
                                         (let* ((___stx126556126557_ _L121198_)
                                                (_g121213121241_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx126556126557_)))))
                                           (let ((___kont126558126559_
                                                  (lambda (_L121332_)
                                                    (length (let ((__tmp127716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g121342121345_ _g121343121347_)
                             (let ()
                               (declare (not safe))
                               (cons _g121342121345_ _g121343121347_)))))
                      (declare (not safe))
                      (foldr1 __tmp127716 '() _L121332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126562126563_
                                                  (lambda (_L121283_ _L121284_)
                                                    (let ((__tmp127717
                                                           (length (let ((__tmp127718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g121295121298_ _g121296121300_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g121295121298_
                                            _g121296121300_)))))
                             (declare (not safe))
                             (foldr1 __tmp127718 '() _L121284_)))))
              (declare (not safe))
              (cons __tmp127717 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126566126567_
                                                  (lambda (_L121246_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match126581126582_
                                                     (lambda (___splice126564126565_
                                                              _target121227121259_
                                                              _tl121229121261_)
                                                       (letrec ((_loop121230121264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121228121267_ _arg121234121269_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121228121267_))
                               (let ((_e121231121272_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121228121267_))))
                                 (let ((_lp-tl121233121277_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121231121272_)))
                                       (_lp-hd121232121275_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121231121272_))))
                                   (let ((__tmp127719
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121232121275_
                                                  _arg121234121269_))))
                                     (declare (not safe))
                                     (_loop121230121264_
                                      _lp-tl121233121277_
                                      __tmp127719))))
                               (let ((_arg121235121280_
                                      (reverse _arg121234121269_)))
                                 (___kont126562126563_
                                  _tl121229121261_
                                  _arg121235121280_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121230121264_ _target121227121259_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126575126576_
                                                     (lambda (___splice126560126561_
                                                              _target121216121308_
                                                              _tl121218121310_)
                                                       (letrec ((_loop121219121313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121217121316_ _arg121223121318_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121217121316_))
                               (let ((_e121220121321_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121217121316_))))
                                 (let ((_lp-tl121222121326_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121220121321_)))
                                       (_lp-hd121221121324_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121220121321_))))
                                   (let ((__tmp127720
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121221121324_
                                                  _arg121223121318_))))
                                     (declare (not safe))
                                     (_loop121219121313_
                                      _lp-tl121222121326_
                                      __tmp127720))))
                               (let ((_arg121224121329_
                                      (reverse _arg121223121318_)))
                                 (___kont126558126559_ _arg121224121329_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121219121313_ _target121216121308_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx126556126557_))
                                                   (let ((___splice126560126561_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx126556126557_
                                                             '0))))
                                                     (let ((_tl121218121310_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126560126561_
                                                               '1)))
                                                           (_target121216121308_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126560126561_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121218121310_))
                                                           (___match126575126576_
                                                            ___splice126560126561_
                                                            _target121216121308_
                                                            _tl121218121310_)
                                                           (___match126581126582_
                                                            ___splice126560126561_
                                                            _target121216121308_
                                                            _tl121218121310_))))
                                                   (___kont126566126567_
                                                    ___stx126556126557_))))))
                                       _hd121170121192_
                                       _hd121167121184_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121162121176_ _g121163121179_)))))
                              (let ()
                                (declare (not safe))
                                (_g121162121176_ _g121163121179_)))))
                      (let ()
                        (declare (not safe))
                        (_g121162121176_ _g121163121179_))))))
          (declare (not safe))
          (_g121161121353_ _form121160_))))
    (define gxc#lambda-expr?
      (lambda (_expr121113_)
        (let* ((___stx126584126585_ _expr121113_)
               (_g121116121126_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126584126585_)))))
          (let ((___kont126586126587_ (lambda (_L121146_) '#t))
                (___kont126588126589_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126584126585_))
                (let ((_e121119121138_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126584126585_))))
                  (let ((_tl121121121143_
                         (let () (declare (not safe)) (##cdr _e121119121138_)))
                        (_hd121120121141_
                         (let ()
                           (declare (not safe))
                           (##car _e121119121138_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121120121141_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121120121141_))
                            (___kont126586126587_ _tl121121121143_)
                            (___kont126588126589_))
                        (___kont126588126589_))))
                (___kont126588126589_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121066_)
        (let* ((___stx126602126603_ _expr121066_)
               (_g121069121079_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126602126603_)))))
          (let ((___kont126604126605_ (lambda (_L121099_) '#t))
                (___kont126606126607_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126602126603_))
                (let ((_e121072121091_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126602126603_))))
                  (let ((_tl121074121096_
                         (let () (declare (not safe)) (##cdr _e121072121091_)))
                        (_hd121073121094_
                         (let ()
                           (declare (not safe))
                           (##car _e121072121091_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121073121094_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121073121094_))
                            (___kont126604126605_ _tl121074121096_)
                            (___kont126606126607_))
                        (___kont126606126607_))))
                (___kont126606126607_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr120935_)
        (let* ((___stx126620126621_ _expr120935_)
               (_g120938120968_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126620126621_)))))
          (let ((___kont126622126623_
                 (lambda (_L121036_ _L121037_ _L121038_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121038_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121037_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121036_))
                           '#f)
                       '#f)))
                (___kont126624126625_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126620126621_))
                (let ((_e120943120980_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126620126621_))))
                  (let ((_tl120945120985_
                         (let () (declare (not safe)) (##cdr _e120943120980_)))
                        (_hd120944120983_
                         (let ()
                           (declare (not safe))
                           (##car _e120943120980_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120944120983_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120944120983_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120945120985_))
                                (let ((_e120946120988_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120945120985_))))
                                  (let ((_tl120948120993_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120946120988_)))
                                        (_hd120947120991_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120946120988_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120947120991_))
                                        (let ((_e120949120996_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120947120991_))))
                                          (let ((_tl120951121001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120949120996_)))
                                                (_hd120950120999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120949120996_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120950120999_))
                                                (let ((_e120952121004_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120950120999_))))
                                                  (let ((_tl120954121009_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120952121004_)))
                                                        (_hd120953121007_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120952121004_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120953121007_))
                                                        (let ((_e120955121012_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120953121007_))))
                  (let ((_tl120957121017_
                         (let () (declare (not safe)) (##cdr _e120955121012_)))
                        (_hd120956121015_
                         (let ()
                           (declare (not safe))
                           (##car _e120955121012_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120957121017_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120954121009_))
                            (let ((_e120958121020_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120954121009_))))
                              (let ((_tl120960121025_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120958121020_)))
                                    (_hd120959121023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120958121020_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120960121025_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120951121001_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120948120993_))
                                            (let ((_e120961121028_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120948120993_))))
                                              (let ((_tl120963121033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120961121028_)))
                                                    (_hd120962121031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120961121028_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120963121033_))
                                                    (___kont126622126623_
                                                     _hd120962121031_
                                                     _hd120959121023_
                                                     _hd120956121015_)
                                                    (___kont126624126625_))))
                                            (___kont126624126625_))
                                        (___kont126624126625_))
                                    (___kont126624126625_))))
                            (___kont126624126625_))
                        (___kont126624126625_))))
                (___kont126624126625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126624126625_))))
                                        (___kont126624126625_))))
                                (___kont126624126625_))
                            (___kont126624126625_))
                        (___kont126624126625_))))
                (___kont126624126625_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr120260_)
        (let* ((___stx126682126683_ _expr120260_)
               (_g120263120421_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126682126683_)))))
          (let ((___kont126684126685_
                 (lambda (_L120809_
                          _L120810_
                          _L120811_
                          _L120812_
                          _L120813_
                          _L120814_
                          _L120815_
                          _L120816_
                          _L120817_
                          _L120818_
                          _L120819_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L120816_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L120812_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L120811_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L120819_
                                      _L120810_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L120818_
                                          _L120815_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L120813_
                                              _L120809_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L120817_
                                              _L120814_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont126686126687_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126682126683_))
                (let ((_e120276120433_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126682126683_))))
                  (let ((_tl120278120438_
                         (let () (declare (not safe)) (##cdr _e120276120433_)))
                        (_hd120277120436_
                         (let ()
                           (declare (not safe))
                           (##car _e120276120433_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120277120436_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120277120436_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120278120438_))
                                (let ((_e120279120441_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120278120438_))))
                                  (let ((_tl120281120446_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120279120441_)))
                                        (_hd120280120444_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120279120441_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120280120444_))
                                        (let ((_e120282120449_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120280120444_))))
                                          (let ((_tl120284120454_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120282120449_)))
                                                (_hd120283120452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120282120449_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120283120452_))
                                                (let ((_e120285120457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120283120452_))))
                                                  (let ((_tl120287120462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120285120457_)))
                                                        (_hd120286120460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120285120457_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120286120460_))
                                                        (let ((_e120288120465_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120286120460_))))
                  (let ((_tl120290120470_
                         (let () (declare (not safe)) (##cdr _e120288120465_)))
                        (_hd120289120468_
                         (let ()
                           (declare (not safe))
                           (##car _e120288120465_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120290120470_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120287120462_))
                            (let ((_e120291120473_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120287120462_))))
                              (let ((_tl120293120478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120291120473_)))
                                    (_hd120292120476_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120291120473_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120292120476_))
                                    (let ((_e120294120481_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120292120476_))))
                                      (let ((_tl120296120486_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120294120481_)))
                                            (_hd120295120484_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120294120481_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120295120484_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd120295120484_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120296120486_))
                                                    (let ((_e120297120489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120296120486_))))
                                                      (let ((_tl120299120494_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120297120489_)))
                    (_hd120298120492_
                     (let () (declare (not safe)) (##car _e120297120489_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120298120492_))
                    (let ((_e120300120497_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120298120492_))))
                      (let ((_tl120302120502_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120300120497_)))
                            (_hd120301120500_
                             (let ()
                               (declare (not safe))
                               (##car _e120300120497_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120301120500_))
                            (let ((_e120303120505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120301120500_))))
                              (let ((_tl120305120510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120303120505_)))
                                    (_hd120304120508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120303120505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120304120508_))
                                    (let ((_e120306120513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120304120508_))))
                                      (let ((_tl120308120518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120306120513_)))
                                            (_hd120307120516_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120306120513_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120308120518_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120305120510_))
                                                (let ((_e120309120521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120305120510_))))
                                                  (let ((_tl120311120526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120309120521_)))
                                                        (_hd120310120524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120309120521_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120311120526_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl120302120502_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120299120494_))
                        (let ((_e120312120529_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120299120494_))))
                          (let ((_tl120314120534_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120312120529_)))
                                (_hd120313120532_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120312120529_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120313120532_))
                                (let ((_e120315120537_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120313120532_))))
                                  (let ((_tl120317120542_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120315120537_)))
                                        (_hd120316120540_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120315120537_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120316120540_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd120316120540_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120317120542_))
                                                (let ((_e120318120545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120317120542_))))
                                                  (let ((_tl120320120550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120318120545_)))
                                                        (_hd120319120548_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120318120545_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120319120548_))
                                                        (let ((_e120321120553_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120319120548_))))
                  (let ((_tl120323120558_
                         (let () (declare (not safe)) (##cdr _e120321120553_)))
                        (_hd120322120556_
                         (let ()
                           (declare (not safe))
                           (##car _e120321120553_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120320120550_))
                        (let ((_e120324120561_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120320120550_))))
                          (let ((_tl120326120566_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120324120561_)))
                                (_hd120325120564_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120324120561_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120325120564_))
                                (let ((_e120327120569_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120325120564_))))
                                  (let ((_tl120329120574_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120327120569_)))
                                        (_hd120328120572_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120327120569_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120328120572_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd120328120572_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120329120574_))
                                                (let ((_e120330120577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120329120574_))))
                                                  (let ((_tl120332120582_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120330120577_)))
                                                        (_hd120331120580_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120330120577_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120331120580_))
                                                        (let ((_e120333120585_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120331120580_))))
                  (let ((_tl120335120590_
                         (let () (declare (not safe)) (##cdr _e120333120585_)))
                        (_hd120334120588_
                         (let ()
                           (declare (not safe))
                           (##car _e120333120585_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120334120588_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120334120588_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120335120590_))
                                (let ((_e120336120593_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120335120590_))))
                                  (let ((_tl120338120598_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120336120593_)))
                                        (_hd120337120596_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120336120593_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120338120598_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120332120582_))
                                            (let ((_e120339120601_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120332120582_))))
                                              (let ((_tl120341120606_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120339120601_)))
                                                    (_hd120340120604_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120339120601_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120340120604_))
                                                    (let ((_e120342120609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120340120604_))))
                                                      (let ((_tl120344120614_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120342120609_)))
                    (_hd120343120612_
                     (let () (declare (not safe)) (##car _e120342120609_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120343120612_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120343120612_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120344120614_))
                            (let ((_e120345120617_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120344120614_))))
                              (let ((_tl120347120622_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120345120617_)))
                                    (_hd120346120620_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120345120617_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120347120622_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120341120606_))
                                        (let ((_e120348120625_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120341120606_))))
                                          (let ((_tl120350120630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120348120625_)))
                                                (_hd120349120628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120348120625_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120349120628_))
                                                (let ((_e120351120633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120349120628_))))
                                                  (let ((_tl120353120638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120351120633_)))
                                                        (_hd120352120636_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120351120633_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd120352120636_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd120352120636_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120353120638_))
                        (let ((_e120354120641_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120353120638_))))
                          (let ((_tl120356120646_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120354120641_)))
                                (_hd120355120644_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120354120641_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120356120646_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120326120566_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120314120534_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120293120478_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120284120454_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120281120446_))
                                                    (let ((_e120357120649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120281120446_))))
                                                      (let ((_tl120359120654_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120357120649_)))
                    (_hd120358120652_
                     (let () (declare (not safe)) (##car _e120357120649_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120358120652_))
                    (let ((_e120360120657_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120358120652_))))
                      (let ((_tl120362120662_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120360120657_)))
                            (_hd120361120660_
                             (let ()
                               (declare (not safe))
                               (##car _e120360120657_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120361120660_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd120361120660_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120362120662_))
                                    (let ((_e120363120665_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120362120662_))))
                                      (let ((_tl120365120670_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120363120665_)))
                                            (_hd120364120668_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120363120665_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120365120670_))
                                            (let ((_e120366120673_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120365120670_))))
                                              (let ((_tl120368120678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120366120673_)))
                                                    (_hd120367120676_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120366120673_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120367120676_))
                                                    (let ((_e120369120681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120367120676_))))
                                                      (let ((_tl120371120686_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120369120681_)))
                    (_hd120370120684_
                     (let () (declare (not safe)) (##car _e120369120681_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120370120684_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120370120684_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120371120686_))
                            (let ((_e120372120689_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120371120686_))))
                              (let ((_tl120374120694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120372120689_)))
                                    (_hd120373120692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120372120689_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120373120692_))
                                    (let ((_e120375120697_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120373120692_))))
                                      (let ((_tl120377120702_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120375120697_)))
                                            (_hd120376120700_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120375120697_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120376120700_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120376120700_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120377120702_))
                                                    (let ((_e120378120705_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120377120702_))))
                                                      (let ((_tl120380120710_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120378120705_)))
                    (_hd120379120708_
                     (let () (declare (not safe)) (##car _e120378120705_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120380120710_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120374120694_))
                        (let ((_e120381120713_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120374120694_))))
                          (let ((_tl120383120718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120381120713_)))
                                (_hd120382120716_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120381120713_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120382120716_))
                                (let ((_e120384120721_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120382120716_))))
                                  (let ((_tl120386120726_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120384120721_)))
                                        (_hd120385120724_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120384120721_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120385120724_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120385120724_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120386120726_))
                                                (let ((_e120387120729_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120386120726_))))
                                                  (let ((_tl120389120734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120387120729_)))
                                                        (_hd120388120732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120387120729_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120389120734_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl120383120718_))
                                                            (let ((_e120390120737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl120383120718_))))
                      (let ((_tl120392120742_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120390120737_)))
                            (_hd120391120740_
                             (let ()
                               (declare (not safe))
                               (##car _e120390120737_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120391120740_))
                            (let ((_e120393120745_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120391120740_))))
                              (let ((_tl120395120750_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120393120745_)))
                                    (_hd120394120748_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120393120745_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd120394120748_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd120394120748_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120395120750_))
                                            (let ((_e120396120753_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120395120750_))))
                                              (let ((_tl120398120758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120396120753_)))
                                                    (_hd120397120756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120396120753_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120398120758_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120392120742_))
                                                        (let ((_e120399120761_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120392120742_))))
                  (let ((_tl120401120766_
                         (let () (declare (not safe)) (##cdr _e120399120761_)))
                        (_hd120400120764_
                         (let ()
                           (declare (not safe))
                           (##car _e120399120761_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120400120764_))
                        (let ((_e120402120769_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120400120764_))))
                          (let ((_tl120404120774_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120402120769_)))
                                (_hd120403120772_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120402120769_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd120403120772_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd120403120772_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120404120774_))
                                        (let ((_e120405120777_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120404120774_))))
                                          (let ((_tl120407120782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120405120777_)))
                                                (_hd120406120780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120405120777_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120407120782_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120401120766_))
                                                    (let ((_e120408120785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120401120766_))))
                                                      (let ((_tl120410120790_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120408120785_)))
                    (_hd120409120788_
                     (let () (declare (not safe)) (##car _e120408120785_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120409120788_))
                    (let ((_e120411120793_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120409120788_))))
                      (let ((_tl120413120798_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120411120793_)))
                            (_hd120412120796_
                             (let ()
                               (declare (not safe))
                               (##car _e120411120793_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120412120796_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd120412120796_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120413120798_))
                                    (let ((_e120414120801_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120413120798_))))
                                      (let ((_tl120416120806_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120414120801_)))
                                            (_hd120415120804_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120414120801_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120416120806_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120410120790_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120368120678_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120359120654_))
                                                        (___kont126684126685_
                                                         _hd120415120804_
                                                         _hd120406120780_
                                                         _hd120388120732_
                                                         _hd120379120708_
                                                         _hd120364120668_
                                                         _hd120355120644_
                                                         _hd120346120620_
                                                         _hd120337120596_
                                                         _hd120322120556_
                                                         _hd120307120516_
                                                         _hd120289120468_)
                                                        (___kont126686126687_))
                                                    (___kont126686126687_))
                                                (___kont126686126687_))
                                            (___kont126686126687_))))
                                    (___kont126686126687_))
                                (___kont126686126687_))
                            (___kont126686126687_))))
                    (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126686126687_))
                                                (___kont126686126687_))))
                                        (___kont126686126687_))
                                    (___kont126686126687_))
                                (___kont126686126687_))))
                        (___kont126686126687_))))
                (___kont126686126687_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126686126687_))))
                                            (___kont126686126687_))
                                        (___kont126686126687_))
                                    (___kont126686126687_))))
                            (___kont126686126687_))))
                    (___kont126686126687_))
                (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126686126687_))
                                            (___kont126686126687_))
                                        (___kont126686126687_))))
                                (___kont126686126687_))))
                        (___kont126686126687_))
                    (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126686126687_))
                                                (___kont126686126687_))
                                            (___kont126686126687_))))
                                    (___kont126686126687_))))
                            (___kont126686126687_))
                        (___kont126686126687_))
                    (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126686126687_))))
                                            (___kont126686126687_))))
                                    (___kont126686126687_))
                                (___kont126686126687_))
                            (___kont126686126687_))))
                    (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126686126687_))
                                                (___kont126686126687_))
                                            (___kont126686126687_))
                                        (___kont126686126687_))
                                    (___kont126686126687_))
                                (___kont126686126687_))))
                        (___kont126686126687_))
                    (___kont126686126687_))
                (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126686126687_))))
                                        (___kont126686126687_))
                                    (___kont126686126687_))))
                            (___kont126686126687_))
                        (___kont126686126687_))
                    (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126686126687_))))
                                            (___kont126686126687_))
                                        (___kont126686126687_))))
                                (___kont126686126687_))
                            (___kont126686126687_))
                        (___kont126686126687_))))
                (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126686126687_))
                                            (___kont126686126687_))
                                        (___kont126686126687_))))
                                (___kont126686126687_))))
                        (___kont126686126687_))))
                (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126686126687_))
                                            (___kont126686126687_))
                                        (___kont126686126687_))))
                                (___kont126686126687_))))
                        (___kont126686126687_))
                    (___kont126686126687_))
                (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126686126687_))
                                            (___kont126686126687_))))
                                    (___kont126686126687_))))
                            (___kont126686126687_))))
                    (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126686126687_))
                                                (___kont126686126687_))
                                            (___kont126686126687_))))
                                    (___kont126686126687_))))
                            (___kont126686126687_))
                        (___kont126686126687_))))
                (___kont126686126687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126686126687_))))
                                        (___kont126686126687_))))
                                (___kont126686126687_))
                            (___kont126686126687_))
                        (___kont126686126687_))))
                (___kont126686126687_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120002_ _id120003_ _clauses120004_ _gensym?120005_)
        (let _lp120007_ ((_rest120009_ _clauses120004_)
                         (_ids120010_ '())
                         (_impls120011_ '())
                         (_clauses120012_ '()))
          (let* ((_rest120013120021_ _rest120009_)
                 (_else120015120029_
                  (lambda ()
                    (values (reverse _ids120010_)
                            (reverse _impls120011_)
                            (reverse _clauses120012_))))
                 (_K120017120234_
                  (lambda (_rest120032_ _clause120033_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120033_))
                        (let ((__tmp127721
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120033_ _clauses120012_))))
                          (declare (not safe))
                          (_lp120007_
                           _rest120032_
                           _ids120010_
                           _impls120011_
                           __tmp127721))
                        (let* ((_g120035120046_
                                (lambda (_g120036120043_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120036120043_))))
                               (_g120034120231_
                                (lambda (_g120036120049_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120036120049_))
                                      (let ((_e120039120051_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120036120049_))))
                                        (let ((_hd120040120054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120039120051_)))
                                              (_tl120041120056_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120039120051_))))
                                          ((lambda (_L120059_ _L120060_)
                                             (let* ((_id120077_
                                                     (let ((__tmp127724
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120003_)))
                                                           (__tmp127723
                                                            (length _clauses120012_))
                                                           (__tmp127722
                                                            (if _gensym?120005_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp127724
                                                        '"__"
                                                        __tmp127723
                                                        __tmp127722)))
                                                    (_id120079_
                                                     (let ((__tmp127725
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120002_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120077_
                                                        __tmp127725)))
                                                    (_impl120081_
                                                     (let ((__tmp127726
                                                            (let ((__tmp127728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp127727
                           (let ()
                             (declare (not safe))
                             (cons _L120060_ _L120059_))))
                      (declare (not safe))
                      (cons __tmp127728 __tmp127727))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp127726 _stx120002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause120228_
                                                     (let* ((___stx127066127067_
                                                             _L120060_)
                                                            (_g120085120113_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127066127067_)))))
               (let ((___kont127068127069_
                      (lambda (_L120207_)
                        (let ((__tmp127729
                               (let ((__tmp127730
                                      (let ((__tmp127731
                                             (let ((__tmp127732
                                                    (let ((__tmp127738
                                                           (let ((__tmp127739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120079_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127739)))
                  (__tmp127733
                   (let ((__tmp127734
                          (lambda (_g120217120220_ _g120218120222_)
                            (let ((__tmp127735
                                   (let ((__tmp127737
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp127736
                                          (let ()
                                            (declare (not safe))
                                            (cons _g120217120220_ '()))))
                                     (declare (not safe))
                                     (cons __tmp127737 __tmp127736))))
                              (declare (not safe))
                              (cons __tmp127735 _g120218120222_)))))
                     (declare (not safe))
                     (foldr1 __tmp127734 '() _L120207_))))
              (declare (not safe))
              (cons __tmp127738 __tmp127733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127732))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127731
                                         _stx120002_))))
                                 (declare (not safe))
                                 (cons __tmp127730 '()))))
                          (declare (not safe))
                          (cons _L120060_ __tmp127729))))
                     (___kont127072127073_
                      (lambda (_L120158_ _L120159_)
                        (let ((__tmp127740
                               (let ((__tmp127741
                                      (let ((__tmp127742
                                             (let ((__tmp127743
                                                    (let ((__tmp127757
                                                           (let ((__tmp127758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127758)))
                  (__tmp127744
                   (let ((__tmp127755
                          (let ((__tmp127756
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120079_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127756)))
                         (__tmp127745
                          (let ((__tmp127751
                                 (let ((__tmp127752
                                        (let ((__tmp127754
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp127753
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120158_ '()))))
                                          (declare (not safe))
                                          (cons __tmp127754 __tmp127753))))
                                   (declare (not safe))
                                   (cons __tmp127752 '())))
                                (__tmp127746
                                 (let ((__tmp127747
                                        (lambda (_g120170120173_
                                                 _g120171120175_)
                                          (let ((__tmp127748
                                                 (let ((__tmp127750
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp127749
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120170120173_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp127750
                                                         __tmp127749))))
                                            (declare (not safe))
                                            (cons __tmp127748
                                                  _g120171120175_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp127747 '() _L120159_))))
                            (declare (not safe))
                            (foldr1 cons __tmp127751 __tmp127746))))
                     (declare (not safe))
                     (cons __tmp127755 __tmp127745))))
              (declare (not safe))
              (cons __tmp127757 __tmp127744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127743))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127742
                                         _stx120002_))))
                                 (declare (not safe))
                                 (cons __tmp127741 '()))))
                          (declare (not safe))
                          (cons _L120060_ __tmp127740))))
                     (___kont127076127077_
                      (lambda (_L120118_)
                        (let ((__tmp127759
                               (let ((__tmp127760
                                      (let ((__tmp127761
                                             (let ((__tmp127762
                                                    (let ((__tmp127770
                                                           (let ((__tmp127771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127771)))
                  (__tmp127763
                   (let ((__tmp127768
                          (let ((__tmp127769
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120079_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127769)))
                         (__tmp127764
                          (let ((__tmp127765
                                 (let ((__tmp127767
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp127766
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120118_ '()))))
                                   (declare (not safe))
                                   (cons __tmp127767 __tmp127766))))
                            (declare (not safe))
                            (cons __tmp127765 '()))))
                     (declare (not safe))
                     (cons __tmp127768 __tmp127764))))
              (declare (not safe))
              (cons __tmp127770 __tmp127763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127762))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127761
                                         _stx120002_))))
                                 (declare (not safe))
                                 (cons __tmp127760 '()))))
                          (declare (not safe))
                          (cons _L120060_ __tmp127759)))))
                 (let* ((___match127091127092_
                         (lambda (___splice127074127075_
                                  _target120099120134_
                                  _tl120101120136_)
                           (letrec ((_loop120102120139_
                                     (lambda (_hd120100120142_
                                              _arg120106120144_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120100120142_))
                                           (let ((_e120103120147_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120100120142_))))
                                             (let ((_lp-tl120105120152_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120103120147_)))
                                                   (_lp-hd120104120150_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120103120147_))))
                                               (let ((__tmp127772
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120104120150_
                                                              _arg120106120144_))))
                                                 (declare (not safe))
                                                 (_loop120102120139_
                                                  _lp-tl120105120152_
                                                  __tmp127772))))
                                           (let ((_arg120107120155_
                                                  (reverse _arg120106120144_)))
                                             (___kont127072127073_
                                              _tl120101120136_
                                              _arg120107120155_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120102120139_
                                _target120099120134_
                                '())))))
                        (___match127085127086_
                         (lambda (___splice127070127071_
                                  _target120088120183_
                                  _tl120090120185_)
                           (letrec ((_loop120091120188_
                                     (lambda (_hd120089120191_
                                              _arg120095120193_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120089120191_))
                                           (let ((_e120092120196_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120089120191_))))
                                             (let ((_lp-tl120094120201_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120092120196_)))
                                                   (_lp-hd120093120199_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120092120196_))))
                                               (let ((__tmp127773
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120093120199_
                                                              _arg120095120193_))))
                                                 (declare (not safe))
                                                 (_loop120091120188_
                                                  _lp-tl120094120201_
                                                  __tmp127773))))
                                           (let ((_arg120096120204_
                                                  (reverse _arg120095120193_)))
                                             (___kont127068127069_
                                              _arg120096120204_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120091120188_
                                _target120088120183_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127066127067_))
                       (let ((___splice127070127071_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127066127067_
                                 '0))))
                         (let ((_tl120090120185_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127070127071_ '1)))
                               (_target120088120183_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127070127071_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120090120185_))
                               (___match127085127086_
                                ___splice127070127071_
                                _target120088120183_
                                _tl120090120185_)
                               (___match127091127092_
                                ___splice127070127071_
                                _target120088120183_
                                _tl120090120185_))))
                       (___kont127076127077_ ___stx127066127067_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp127776
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120079_
                                                              _ids120010_)))
                                                     (__tmp127775
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120081_
                                                              _impls120011_)))
                                                     (__tmp127774
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause120228_
                                                              _clauses120012_))))
                                                 (declare (not safe))
                                                 (_lp120007_
                                                  _rest120032_
                                                  __tmp127776
                                                  __tmp127775
                                                  __tmp127774))))
                                           _tl120041120056_
                                           _hd120040120054_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120035120046_ _g120036120049_))))))
                          (declare (not safe))
                          (_g120034120231_ _clause120033_))))))
            (if (let () (declare (not safe)) (##pair? _rest120013120021_))
                (let ((_hd120018120237_
                       (let ()
                         (declare (not safe))
                         (##car _rest120013120021_)))
                      (_tl120019120239_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120013120021_))))
                  (let* ((_clause120242_ _hd120018120237_)
                         (_rest120244_ _tl120019120239_))
                    (declare (not safe))
                    (_K120017120234_ _rest120244_ _clause120242_)))
                (let () (declare (not safe)) (_else120015120029_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx120249_ _id120250_ _clauses120251_)
        (let ((_gensym?120253_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx120249_
           _id120250_
           _clauses120251_
           _gensym?120253_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g127778_
        (let ((_g127777_ (let () (declare (not safe)) (##length _g127778_))))
          (cond ((let () (declare (not safe)) (##fx= _g127777_ 3))
                 (apply (lambda (_stx120249_ _id120250_ _clauses120251_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx120249_
                             _id120250_
                             _clauses120251_)))
                        _g127778_))
                ((let () (declare (not safe)) (##fx= _g127777_ 4))
                 (apply (lambda (_stx120255_
                                 _id120256_
                                 _clauses120257_
                                 _gensym?120258_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx120255_
                             _id120256_
                             _clauses120257_
                             _gensym?120258_)))
                        _g127778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g127778_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self119278_ _stx119279_)
        (letrec ((_case-lambda-clause-def119281_
                  (lambda (_id119998_ _impl119999_)
                    (let ((__tmp127779
                           (let ((__tmp127780
                                  (let ((__tmp127783
                                         (let ()
                                           (declare (not safe))
                                           (cons _id119998_ '())))
                                        (__tmp127781
                                         (let ((__tmp127782
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self119278_
                                                   _impl119999_))))
                                           (declare (not safe))
                                           (cons __tmp127782 '()))))
                                    (declare (not safe))
                                    (cons __tmp127783 __tmp127781))))
                             (declare (not safe))
                             (cons '%#define-values __tmp127780))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127779 _stx119279_))))
                 (_opt-lambda-dispatch-name119282_
                  (lambda (_id119994_)
                    (if (uninterned-symbol? _id119994_)
                        (let ((_str119996_ (symbol->string _id119994_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str119996_))
                              '"%"
                              _id119994_))
                        _id119994_)))
                 (_kw-lambda-dispatch-name119283_
                  (lambda (_id119989_ _name119990_)
                    (if (uninterned-symbol? _id119989_)
                        (let ((_str119992_ (symbol->string _id119989_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str119992_))
                              _name119990_
                              _id119989_))
                        _id119989_))))
          (let* ((___stx127114127115_ _stx119279_)
                 (_g119288119347_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127114127115_)))))
            (let ((___kont127116127117_
                   (lambda (_L119898_ _L119899_)
                     (let* ((___stx127094127095_ _L119898_)
                            (_g119916119930_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127094127095_)))))
                       (let ((___kont127096127097_
                              (lambda (_L119974_) _stx119279_))
                             (___kont127098127099_
                              (lambda (_L119943_)
                                (let ((_g127784_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx119279_
                                          _L119899_
                                          _L119943_))))
                                  (begin
                                    (let ((_g127785_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g127784_)
                                                 (##vector-length _g127784_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g127785_ 3)))
                                          (error "Context expects 3 values"
                                                 _g127785_)))
                                    (let ((_ids119953_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127784_ 0)))
                                          (_impls119954_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127784_ 1)))
                                          (_clauses119955_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127784_ 2))))
                                      (let* ((_g127786_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids119953_))
                                             (_defs119958_
                                              (map _case-lambda-clause-def119281_
                                                   _ids119953_
                                                   _impls119954_)))
                                        (let ((__tmp127788
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L119899_)))
                                              (__tmp127787
                                               (map gxc#identifier-symbol
                                                    _ids119953_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp127788
                                           '" => "
                                           __tmp127787))
                                        (let ((__tmp127789
                                               (let ((__tmp127790
                                                      (let ((__tmp127791
                                                             (let ((__tmp127792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127793
                                   (let ((__tmp127794
                                          (let ((__tmp127799
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L119899_ '())))
                                                (__tmp127795
                                                 (let ((__tmp127796
                                                        (let ((__tmp127798
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses119955_)))
                      (__tmp127797
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp127798 __tmp127797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127796 '()))))
                                            (declare (not safe))
                                            (cons __tmp127799 __tmp127795))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp127794))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127793
                               _stx119279_))))
                       (declare (not safe))
                       (cons __tmp127792 '()))))
                (declare (not safe))
                (foldr1 cons __tmp127791 _defs119958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp127790))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp127789
                                           _stx119279_)))))))))
                         (let ((___match127105127106_
                                (lambda (_e119919119966_
                                         _hd119920119969_
                                         _tl119921119971_)
                                  (let ((_L119974_ _tl119921119971_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L119974_))
                                        (___kont127096127097_ _L119974_)
                                        (___kont127098127099_
                                         _tl119921119971_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127094127095_))
                               (let ((_e119919119966_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127094127095_))))
                                 (let ((_tl119921119971_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119919119966_)))
                                       (_hd119920119969_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119919119966_))))
                                   (___match127105127106_
                                    _e119919119966_
                                    _hd119920119969_
                                    _tl119921119971_)))
                               (let ()
                                 (declare (not safe))
                                 (_g119916119930_))))))))
                  (___kont127118127119_
                   (lambda (_L119716_ _L119717_)
                     (let* ((_g119733119763_
                             (lambda (_g119734119760_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119734119760_))))
                            (_g119732119858_
                             (lambda (_g119734119766_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119734119766_))
                                   (let ((_e119738119768_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119734119766_))))
                                     (let ((_hd119739119771_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119738119768_)))
                                           (_tl119740119773_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119738119768_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119740119773_))
                                           (let ((_e119741119776_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119740119773_))))
                                             (let ((_hd119742119779_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119741119776_)))
                                                   (_tl119743119781_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119741119776_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119742119779_))
                                                   (let ((_e119744119784_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119742119779_))))
                                                     (let ((_hd119745119787_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119744119784_)))
                                                           (_tl119746119789_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119744119784_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119745119787_))
                                                           (let ((_e119747119792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119745119787_))))
                     (let ((_hd119748119795_
                            (let ()
                              (declare (not safe))
                              (##car _e119747119792_)))
                           (_tl119749119797_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119747119792_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119748119795_))
                           (let ((_e119750119800_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119748119795_))))
                             (let ((_hd119751119803_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119750119800_)))
                                   (_tl119752119805_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119750119800_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119752119805_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119749119797_))
                                       (let ((_e119753119808_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119749119797_))))
                                         (let ((_hd119754119811_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119753119808_)))
                                               (_tl119755119813_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119753119808_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119755119813_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl119746119789_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119743119781_))
                                                       (let ((_e119756119816_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119743119781_))))
                 (let ((_hd119757119819_
                        (let () (declare (not safe)) (##car _e119756119816_)))
                       (_tl119758119821_
                        (let () (declare (not safe)) (##cdr _e119756119816_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119758119821_))
                       ((lambda (_L119824_ _L119825_ _L119826_)
                          (let* ((_lambda-id119850_
                                  (let ((__tmp127802
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L119717_)))
                                        (__tmp127800
                                         (let ((__tmp127801
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L119826_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name119282_
                                            __tmp127801))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp127802
                                     '"__"
                                     __tmp127800)))
                                 (_lambda-id119852_
                                  (let ((__tmp127803
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx119279_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id119850_
                                     __tmp127803)))
                                 (_g127804_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id119852_)))
                                 (_new-case-lambda-expr119855_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L119824_
                                     'id:
                                     _L119826_
                                     'new-id:
                                     _lambda-id119852_))))
                            (let ((__tmp127806
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L119717_)))
                                  (__tmp127805
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id119852_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp127806
                               '" => "
                               __tmp127805))
                            (let ((__tmp127807
                                   (let ((__tmp127808
                                          (let ((__tmp127816
                                                 (let ((__tmp127817
                                                        (let ((__tmp127818
                                                               (let ((__tmp127821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id119852_ '())))
                             (__tmp127819
                              (let ((__tmp127820
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self119278_
                                        _L119825_))))
                                (declare (not safe))
                                (cons __tmp127820 '()))))
                         (declare (not safe))
                         (cons __tmp127821 __tmp127819))))
                  (declare (not safe))
                  (cons '%#define-values __tmp127818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp127817
                                                    _stx119279_)))
                                                (__tmp127809
                                                 (let ((__tmp127810
                                                        (let ((__tmp127811
                                                               (let ((__tmp127812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp127813
                                     (let ((__tmp127815
                                            (let ()
                                              (declare (not safe))
                                              (cons _L119717_ '())))
                                           (__tmp127814
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr119855_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp127815 __tmp127814))))
                                (declare (not safe))
                                (cons '%#define-values __tmp127813))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp127812 _stx119279_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self119278_
                   __tmp127811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127810 '()))))
                                            (declare (not safe))
                                            (cons __tmp127816 __tmp127809))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp127808))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127807
                               _stx119279_))))
                        _hd119757119819_
                        _hd119754119811_
                        _hd119751119803_)
                       (let ()
                         (declare (not safe))
                         (_g119733119763_ _g119734119766_)))))
               (let () (declare (not safe)) (_g119733119763_ _g119734119766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119733119763_
                                                      _g119734119766_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119733119763_
                                                  _g119734119766_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119733119763_ _g119734119766_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119733119763_ _g119734119766_)))))
                           (let ()
                             (declare (not safe))
                             (_g119733119763_ _g119734119766_)))))
                   (let ()
                     (declare (not safe))
                     (_g119733119763_ _g119734119766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119733119763_
                                                      _g119734119766_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119733119763_
                                              _g119734119766_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119733119763_ _g119734119766_))))))
                       (declare (not safe))
                       (_g119732119858_ _L119716_))))
                  (___kont127120127121_
                   (lambda (_L119430_ _L119431_)
                     (let* ((_g119447119500_
                             (lambda (_g119448119497_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119448119497_))))
                            (_g119446119676_
                             (lambda (_g119448119503_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119448119503_))
                                   (let ((_e119454119505_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119448119503_))))
                                     (let ((_hd119455119508_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119454119505_)))
                                           (_tl119456119510_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119454119505_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119456119510_))
                                           (let ((_e119457119513_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119456119510_))))
                                             (let ((_hd119458119516_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119457119513_)))
                                                   (_tl119459119518_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119457119513_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119458119516_))
                                                   (let ((_e119460119521_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119458119516_))))
                                                     (let ((_hd119461119524_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119460119521_)))
                                                           (_tl119462119526_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119460119521_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119461119524_))
                                                           (let ((_e119463119529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119461119524_))))
                     (let ((_hd119464119532_
                            (let ()
                              (declare (not safe))
                              (##car _e119463119529_)))
                           (_tl119465119534_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119463119529_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119464119532_))
                           (let ((_e119466119537_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119464119532_))))
                             (let ((_hd119467119540_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119466119537_)))
                                   (_tl119468119542_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119466119537_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119468119542_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119465119534_))
                                       (let ((_e119469119545_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119465119534_))))
                                         (let ((_hd119470119548_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119469119545_)))
                                               (_tl119471119550_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119469119545_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd119470119548_))
                                               (let ((_e119472119553_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd119470119548_))))
                                                 (let ((_hd119473119556_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119472119553_)))
                                                       (_tl119474119558_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119472119553_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119474119558_))
                                                       (let ((_e119475119561_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119474119558_))))
                 (let ((_hd119476119564_
                        (let () (declare (not safe)) (##car _e119475119561_)))
                       (_tl119477119566_
                        (let () (declare (not safe)) (##cdr _e119475119561_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd119476119564_))
                       (let ((_e119478119569_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd119476119564_))))
                         (let ((_hd119479119572_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119478119569_)))
                               (_tl119480119574_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119478119569_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119479119572_))
                               (let ((_e119481119577_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119479119572_))))
                                 (let ((_hd119482119580_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119481119577_)))
                                       (_tl119483119582_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119481119577_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119482119580_))
                                       (let ((_e119484119585_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119482119580_))))
                                         (let ((_hd119485119588_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119484119585_)))
                                               (_tl119486119590_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119484119585_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119486119590_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl119483119582_))
                                                   (let ((_e119487119593_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl119483119582_))))
                                                     (let ((_hd119488119596_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119487119593_)))
                                                           (_tl119489119598_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119487119593_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119489119598_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl119480119574_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl119477119566_))
                           (let ((_e119490119601_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl119477119566_))))
                             (let ((_hd119491119604_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119490119601_)))
                                   (_tl119492119606_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119490119601_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119492119606_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl119471119550_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl119462119526_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl119459119518_))
                                               (let ((_e119493119609_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl119459119518_))))
                                                 (let ((_hd119494119612_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119493119609_)))
                                                       (_tl119495119614_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119493119609_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl119495119614_))
                                                       ((lambda (_L119617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L119618_
                         _L119619_
                         _L119620_
                         _L119621_)
                  (let* ((_get-kws-id119661_
                          (let ((__tmp127824
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119431_)))
                                (__tmp127822
                                 (let ((__tmp127823
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119621_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119283_
                                    __tmp127823
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127824 '"__" __tmp127822)))
                         (_get-kws-id119663_
                          (let ((__tmp127825
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119279_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id119661_
                             __tmp127825)))
                         (_main-id119665_
                          (let ((__tmp127828
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119431_)))
                                (__tmp127826
                                 (let ((__tmp127827
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119620_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119283_
                                    __tmp127827
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127828 '"__" __tmp127826)))
                         (_main-id119667_
                          (let ((__tmp127829
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119279_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id119665_
                             __tmp127829)))
                         (_g127830_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id119663_)))
                         (_g127831_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id119667_)))
                         (_new-kw-dispatch119671_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119617_
                             'id:
                             _L119621_
                             'new-id:
                             _get-kws-id119663_)))
                         (_new-get-kws119673_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119618_
                             'id:
                             _L119620_
                             'new-id:
                             _main-id119667_))))
                    (let ((__tmp127834
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L119431_)))
                          (__tmp127833
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id119663_)))
                          (__tmp127832
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id119667_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp127834
                       '" => "
                       __tmp127833
                       '" => "
                       __tmp127832))
                    (let ((__tmp127835
                           (let ((__tmp127836
                                  (let ((__tmp127849
                                         (let ((__tmp127850
                                                (let ((__tmp127851
                                                       (let ((__tmp127852
                                                              (let ((__tmp127854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id119667_ '())))
                            (__tmp127853
                             (let ()
                               (declare (not safe))
                               (cons _L119619_ '()))))
                        (declare (not safe))
                        (cons __tmp127854 __tmp127853))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127851
                                                   _stx119279_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self119278_
                                            __tmp127850)))
                                        (__tmp127837
                                         (let ((__tmp127844
                                                (let ((__tmp127845
                                                       (let ((__tmp127846
                                                              (let ((__tmp127848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id119663_ '())))
                            (__tmp127847
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws119673_ '()))))
                        (declare (not safe))
                        (cons __tmp127848 __tmp127847))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127845
                                                   _stx119279_)))
                                               (__tmp127838
                                                (let ((__tmp127839
                                                       (let ((__tmp127840
                                                              (let ((__tmp127841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp127843
                                    (let ()
                                      (declare (not safe))
                                      (cons _L119431_ '())))
                                   (__tmp127842
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch119671_ '()))))
                               (declare (not safe))
                               (cons __tmp127843 __tmp127842))))
                        (declare (not safe))
                        (cons '%#define-values __tmp127841))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp127840 _stx119279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp127839 '()))))
                                           (declare (not safe))
                                           (cons __tmp127844 __tmp127838))))
                                    (declare (not safe))
                                    (cons __tmp127849 __tmp127837))))
                             (declare (not safe))
                             (cons '%#begin __tmp127836))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127835 _stx119279_))))
                _hd119494119612_
                _hd119491119604_
                _hd119488119596_
                _hd119485119588_
                _hd119467119540_)
               (let ()
                 (declare (not safe))
                 (_g119447119500_ _g119448119503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119447119500_
                                                  _g119448119503_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g119447119500_
                                              _g119448119503_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g119447119500_ _g119448119503_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119447119500_ _g119448119503_)))))
                           (let ()
                             (declare (not safe))
                             (_g119447119500_ _g119448119503_)))
                       (let ()
                         (declare (not safe))
                         (_g119447119500_ _g119448119503_)))
                   (let ()
                     (declare (not safe))
                     (_g119447119500_ _g119448119503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119447119500_
                                                      _g119448119503_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119447119500_
                                                  _g119448119503_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119447119500_ _g119448119503_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g119447119500_ _g119448119503_)))))
                       (let ()
                         (declare (not safe))
                         (_g119447119500_ _g119448119503_)))))
               (let ()
                 (declare (not safe))
                 (_g119447119500_ _g119448119503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119447119500_
                                                  _g119448119503_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119447119500_ _g119448119503_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119447119500_ _g119448119503_)))))
                           (let ()
                             (declare (not safe))
                             (_g119447119500_ _g119448119503_)))))
                   (let ()
                     (declare (not safe))
                     (_g119447119500_ _g119448119503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119447119500_
                                                      _g119448119503_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119447119500_
                                              _g119448119503_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119447119500_ _g119448119503_))))))
                       (declare (not safe))
                       (_g119446119676_ _L119430_))))
                  (___kont127122127123_
                   (lambda (_L119376_ _L119377_)
                     (let ((__tmp127855
                            (let ((__tmp127856
                                   (let ((__tmp127857
                                          (let ((__tmp127858
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self119278_
                                                    _L119376_))))
                                            (declare (not safe))
                                            (cons __tmp127858 '()))))
                                     (declare (not safe))
                                     (cons _L119377_ __tmp127857))))
                              (declare (not safe))
                              (cons '%#define-values __tmp127856))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp127855 _stx119279_)))))
              (let* ((___match127207127208_
                      (lambda (_e119320119398_
                               _hd119321119401_
                               _tl119322119403_
                               _e119323119406_
                               _hd119324119409_
                               _tl119325119411_
                               _e119326119414_
                               _hd119327119417_
                               _tl119328119419_
                               _e119329119422_
                               _hd119330119425_
                               _tl119331119427_)
                        (let ((_L119430_ _hd119330119425_)
                              (_L119431_ _hd119327119417_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119431_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119430_)))
                              (___kont127120127121_ _L119430_ _L119431_)
                              (___kont127122127123_
                               _hd119330119425_
                               _hd119324119409_)))))
                     (___match127179127180_
                      (lambda (_e119306119684_
                               _hd119307119687_
                               _tl119308119689_
                               _e119309119692_
                               _hd119310119695_
                               _tl119311119697_
                               _e119312119700_
                               _hd119313119703_
                               _tl119314119705_
                               _e119315119708_
                               _hd119316119711_
                               _tl119317119713_)
                        (let ((_L119716_ _hd119316119711_)
                              (_L119717_ _hd119313119703_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119717_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L119716_)))
                              (___kont127118127119_ _L119716_ _L119717_)
                              (___match127207127208_
                               _e119306119684_
                               _hd119307119687_
                               _tl119308119689_
                               _e119309119692_
                               _hd119310119695_
                               _tl119311119697_
                               _e119312119700_
                               _hd119313119703_
                               _tl119314119705_
                               _e119315119708_
                               _hd119316119711_
                               _tl119317119713_)))))
                     (___match127151127152_
                      (lambda (_e119292119866_
                               _hd119293119869_
                               _tl119294119871_
                               _e119295119874_
                               _hd119296119877_
                               _tl119297119879_
                               _e119298119882_
                               _hd119299119885_
                               _tl119300119887_
                               _e119301119890_
                               _hd119302119893_
                               _tl119303119895_)
                        (let ((_L119898_ _hd119302119893_)
                              (_L119899_ _hd119299119885_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119899_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L119898_)))
                              (___kont127116127117_ _L119898_ _L119899_)
                              (___match127179127180_
                               _e119292119866_
                               _hd119293119869_
                               _tl119294119871_
                               _e119295119874_
                               _hd119296119877_
                               _tl119297119879_
                               _e119298119882_
                               _hd119299119885_
                               _tl119300119887_
                               _e119301119890_
                               _hd119302119893_
                               _tl119303119895_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127114127115_))
                    (let ((_e119292119866_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127114127115_))))
                      (let ((_tl119294119871_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119292119866_)))
                            (_hd119293119869_
                             (let ()
                               (declare (not safe))
                               (##car _e119292119866_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119294119871_))
                            (let ((_e119295119874_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119294119871_))))
                              (let ((_tl119297119879_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119295119874_)))
                                    (_hd119296119877_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119295119874_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119296119877_))
                                    (let ((_e119298119882_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119296119877_))))
                                      (let ((_tl119300119887_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119298119882_)))
                                            (_hd119299119885_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119298119882_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119300119887_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119297119879_))
                                                (let ((_e119301119890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119297119879_))))
                                                  (let ((_tl119303119895_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119301119890_)))
                                                        (_hd119302119893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119301119890_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119303119895_))
                                                        (___match127151127152_
                                                         _e119292119866_
                                                         _hd119293119869_
                                                         _tl119294119871_
                                                         _e119295119874_
                                                         _hd119296119877_
                                                         _tl119297119879_
                                                         _e119298119882_
                                                         _hd119299119885_
                                                         _tl119300119887_
                                                         _e119301119890_
                                                         _hd119302119893_
                                                         _tl119303119895_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119288119347_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119288119347_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119297119879_))
                                                (let ((_e119340119368_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119297119879_))))
                                                  (let ((_tl119342119373_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119340119368_)))
                                                        (_hd119341119371_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119340119368_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119342119373_))
                                                        (___kont127122127123_
                                                         _hd119341119371_
                                                         _hd119296119877_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119288119347_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119288119347_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl119297119879_))
                                        (let ((_e119340119368_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl119297119879_))))
                                          (let ((_tl119342119373_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119340119368_)))
                                                (_hd119341119371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119340119368_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl119342119373_))
                                                (___kont127122127123_
                                                 _hd119341119371_
                                                 _hd119296119877_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119288119347_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g119288119347_))))))
                            (let () (declare (not safe)) (_g119288119347_)))))
                    (let () (declare (not safe)) (_g119288119347_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self118209_ _stx118210_)
        (letrec* ((_bind-e__125510125511_
                   (lambda (_id119262_ _expr119263_ _compile?119264_)
                     (let ((__tmp127861
                            (let ()
                              (declare (not safe))
                              (cons _id119262_ '())))
                           (__tmp127859
                            (let ((__tmp127860
                                   (if _compile?119264_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self118209_
                                          _expr119263_))
                                       _expr119263_)))
                              (declare (not safe))
                              (cons __tmp127860 '()))))
                       (declare (not safe))
                       (cons __tmp127861 __tmp127859))))
                  (_bind-e__0__125512125513_
                   (lambda (_id119269_ _expr119270_)
                     (let ((_compile?119272_ '#t))
                       (declare (not safe))
                       (_bind-e__125510125511_
                        _id119269_
                        _expr119270_
                        _compile?119272_))))
                  (_bind-e118212_
                   (lambda _g127863_
                     (let ((_g127862_
                            (let ()
                              (declare (not safe))
                              (##length _g127863_))))
                       (cond ((let () (declare (not safe)) (##fx= _g127862_ 2))
                              (apply (lambda (_id119269_ _expr119270_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125512125513_
                                          _id119269_
                                          _expr119270_)))
                                     _g127863_))
                             ((let () (declare (not safe)) (##fx= _g127862_ 3))
                              (apply (lambda (_id119274_
                                              _expr119275_
                                              _compile?119276_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125510125511_
                                          _id119274_
                                          _expr119275_
                                          _compile?119276_)))
                                     _g127863_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127863_))))))
                  (_compile-bindings118213_
                   (lambda (_bindings118846_)
                     (let _lp118848_ ((_rest118850_ _bindings118846_)
                                      (_lift1118851_ '())
                                      (_lift2118852_ '())
                                      (_bind118853_ '()))
                       (let* ((_rest118854118862_ _rest118850_)
                              (_else118856118870_
                               (lambda ()
                                 (values (reverse _lift1118851_)
                                         (reverse _lift2118852_)
                                         (reverse _bind118853_))))
                              (_K118858119249_
                               (lambda (_rest118873_ _hd118874_)
                                 (let* ((___stx127250127251_ _hd118874_)
                                        (_g118878118914_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127250127251_)))))
                                   (let ((___kont127252127253_
                                          (lambda (_L119156_ _L119157_)
                                            (let* ((___stx127230127231_
                                                    _L119156_)
                                                   (_g119172119186_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127230127231_)))))
                                              (let ((___kont127232127233_
                                                     (lambda (_L119234_)
                                                       (let ((__tmp127864
                                                              (let ((__tmp127865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125510125511_
                                _L119157_
                                _L119156_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp127865 _bind118853_))))
                 (declare (not safe))
                 (_lp118848_
                  _rest118873_
                  _lift1118851_
                  _lift2118852_
                  __tmp127864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127234127235_
                                                     (lambda (_L119199_)
                                                       (let ((_g127866_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118210_
                         _L119157_
                         _L119199_
                         '#t))))
                 (begin
                   (let ((_g127867_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g127866_)
                                (##vector-length _g127866_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g127867_ 3)))
                         (error "Context expects 3 values" _g127867_)))
                   (let ((_ids119209_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127866_ 0)))
                         (_impls119210_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127866_ 1)))
                         (_clauses119211_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127866_ 2))))
                     (let* ((_g127868_
                             (for-each gx#core-bind-runtime! _ids119209_))
                            (_xbind119214_
                             (map _bind-e118212_ _ids119209_ _impls119210_))
                            (_expr*119216_
                             (let ((__tmp127870
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119211_)))
                                   (__tmp127869
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp127870
                                __tmp127869)))
                            (_bind*119218_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125510125511_
                                _L119157_
                                _expr*119216_
                                '#f))))
                       (let ((__tmp127872
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119157_)))
                             (__tmp127871
                              (map gxc#identifier-symbol _ids119209_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp127872
                          '" => "
                          __tmp127871))
                       (let ((__tmp127874
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2118852_ _xbind119214_)))
                             (__tmp127873
                              (let ()
                                (declare (not safe))
                                (cons _bind*119218_ _bind118853_))))
                         (declare (not safe))
                         (_lp118848_
                          _rest118873_
                          _lift1118851_
                          __tmp127874
                          __tmp127873)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127241127242_
                                                       (lambda (_e119175119226_
                                                                _hd119176119229_
                                                                _tl119177119231_)
                                                         (let ((_L119234_
                                                                _tl119177119231_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119234_))
                       (___kont127232127233_ _L119234_)
                       (___kont127234127235_ _tl119177119231_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127230127231_))
                                                      (let ((_e119175119226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127230127231_))))
                (let ((_tl119177119231_
                       (let () (declare (not safe)) (##cdr _e119175119226_)))
                      (_hd119176119229_
                       (let () (declare (not safe)) (##car _e119175119226_))))
                  (___match127241127242_
                   _e119175119226_
                   _hd119176119229_
                   _tl119177119231_)))
              (let () (declare (not safe)) (_g119172119186_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127254127255_
                                          (lambda (_L118984_ _L118985_)
                                            (let* ((_g118999119029_
                                                    (lambda (_g119000119026_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119000119026_))))
                                                   (_g118998119124_
                                                    (lambda (_g119000119032_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119000119032_))
                                                          (let ((_e119004119034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119000119032_))))
                    (let ((_hd119005119037_
                           (let ()
                             (declare (not safe))
                             (##car _e119004119034_)))
                          (_tl119006119039_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119004119034_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119006119039_))
                          (let ((_e119007119042_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119006119039_))))
                            (let ((_hd119008119045_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119007119042_)))
                                  (_tl119009119047_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119007119042_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119008119045_))
                                  (let ((_e119010119050_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119008119045_))))
                                    (let ((_hd119011119053_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119010119050_)))
                                          (_tl119012119055_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119010119050_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119011119053_))
                                          (let ((_e119013119058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119011119053_))))
                                            (let ((_hd119014119061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119013119058_)))
                                                  (_tl119015119063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119013119058_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119014119061_))
                                                  (let ((_e119016119066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119014119061_))))
                                                    (let ((_hd119017119069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119016119066_)))
                                                          (_tl119018119071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119016119066_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119018119071_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119015119063_))
                      (let ((_e119019119074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119015119063_))))
                        (let ((_hd119020119077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119019119074_)))
                              (_tl119021119079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119019119074_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119021119079_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119012119055_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119009119047_))
                                      (let ((_e119022119082_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119009119047_))))
                                        (let ((_hd119023119085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119022119082_)))
                                              (_tl119024119087_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119022119082_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119024119087_))
                                              ((lambda (_L119090_
                                                        _L119091_
                                                        _L119092_)
                                                 (let* ((_lambda-id119116_
                                                         (let ((__tmp127876
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L118985_)))
                       (__tmp127875 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp127876 __tmp127875)))
                (_lambda-id119118_
                 (let ((__tmp127877
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118210_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119116_ __tmp127877)))
                (_g127878_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119118_)))
                (_new-case-lambda-expr119121_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119090_
                    'id:
                    _L119092_
                    'new-id:
                    _lambda-id119118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp127880
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L118985_)))
                                                         (__tmp127879
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119118_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp127880
                                                      '" => "
                                                      __tmp127879))
                                                   (let ((__tmp127883
                                                          (let ((__tmp127884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125510125511_
                            _L118985_
                            _new-case-lambda-expr119121_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp127884 _rest118873_)))
                 (__tmp127881
                  (let ((__tmp127882
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125512125513_
                            _lambda-id119118_
                            _L119091_))))
                    (declare (not safe))
                    (cons __tmp127882 _lift1118851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118848_
                                                      __tmp127883
                                                      __tmp127881
                                                      _lift2118852_
                                                      _bind118853_))))
                                               _hd119023119085_
                                               _hd119020119077_
                                               _hd119017119069_)
                                              (let ()
                                                (declare (not safe))
                                                (_g118999119029_
                                                 _g119000119032_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118999119029_ _g119000119032_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g118999119029_ _g119000119032_)))
                              (let ()
                                (declare (not safe))
                                (_g118999119029_ _g119000119032_)))))
                      (let ()
                        (declare (not safe))
                        (_g118999119029_ _g119000119032_)))
                  (let ()
                    (declare (not safe))
                    (_g118999119029_ _g119000119032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118999119029_
                                                     _g119000119032_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118999119029_
                                             _g119000119032_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118999119029_ _g119000119032_)))))
                          (let ()
                            (declare (not safe))
                            (_g118999119029_ _g119000119032_)))))
                  (let ()
                    (declare (not safe))
                    (_g118999119029_ _g119000119032_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118998119124_ _L118984_))))
                                         (___kont127256127257_
                                          (lambda (_L118935_ _L118936_)
                                            (let ((__tmp127885
                                                   (let ((__tmp127886
                                                          (let ((__tmp127887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp127888
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self118209_ _L118935_))))
                           (declare (not safe))
                           (cons __tmp127888 '()))))
                    (declare (not safe))
                    (cons _L118936_ __tmp127887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127886
                                                           _bind118853_))))
                                              (declare (not safe))
                                              (_lp118848_
                                               _rest118873_
                                               _lift1118851_
                                               _lift2118852_
                                               __tmp127885)))))
                                     (let* ((___match127301127302_
                                             (lambda (_e118893118960_
                                                      _hd118894118963_
                                                      _tl118895118965_
                                                      _e118896118968_
                                                      _hd118897118971_
                                                      _tl118898118973_
                                                      _e118899118976_
                                                      _hd118900118979_
                                                      _tl118901118981_)
                                               (let ((_L118984_
                                                      _hd118900118979_)
                                                     (_L118985_
                                                      _hd118897118971_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118985_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L118984_)))
                                                     (___kont127254127255_
                                                      _L118984_
                                                      _L118985_)
                                                     (___kont127256127257_
                                                      _hd118900118979_
                                                      _hd118894118963_)))))
                                            (___match127279127280_
                                             (lambda (_e118882119132_
                                                      _hd118883119135_
                                                      _tl118884119137_
                                                      _e118885119140_
                                                      _hd118886119143_
                                                      _tl118887119145_
                                                      _e118888119148_
                                                      _hd118889119151_
                                                      _tl118890119153_)
                                               (let ((_L119156_
                                                      _hd118889119151_)
                                                     (_L119157_
                                                      _hd118886119143_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119157_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119156_)))
                                                     (___kont127252127253_
                                                      _L119156_
                                                      _L119157_)
                                                     (___match127301127302_
                                                      _e118882119132_
                                                      _hd118883119135_
                                                      _tl118884119137_
                                                      _e118885119140_
                                                      _hd118886119143_
                                                      _tl118887119145_
                                                      _e118888119148_
                                                      _hd118889119151_
                                                      _tl118890119153_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127250127251_))
                                           (let ((_e118882119132_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127250127251_))))
                                             (let ((_tl118884119137_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118882119132_)))
                                                   (_hd118883119135_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118882119132_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118883119135_))
                                                   (let ((_e118885119140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118883119135_))))
                                                     (let ((_tl118887119145_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118885119140_)))
                                                           (_hd118886119143_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118885119140_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118887119145_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118884119137_))
                       (let ((_e118888119148_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118884119137_))))
                         (let ((_tl118890119153_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118888119148_)))
                               (_hd118889119151_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118888119148_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118890119153_))
                               (___match127279127280_
                                _e118882119132_
                                _hd118883119135_
                                _tl118884119137_
                                _e118885119140_
                                _hd118886119143_
                                _tl118887119145_
                                _e118888119148_
                                _hd118889119151_
                                _tl118890119153_)
                               (let ()
                                 (declare (not safe))
                                 (_g118878118914_)))))
                       (let () (declare (not safe)) (_g118878118914_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118884119137_))
                       (let ((_e118907118927_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118884119137_))))
                         (let ((_tl118909118932_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118907118927_)))
                               (_hd118908118930_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118907118927_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118909118932_))
                               (___kont127256127257_
                                _hd118908118930_
                                _hd118883119135_)
                               (let ()
                                 (declare (not safe))
                                 (_g118878118914_)))))
                       (let () (declare (not safe)) (_g118878118914_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118884119137_))
                                                       (let ((_e118907118927_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118884119137_))))
                 (let ((_tl118909118932_
                        (let () (declare (not safe)) (##cdr _e118907118927_)))
                       (_hd118908118930_
                        (let () (declare (not safe)) (##car _e118907118927_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118909118932_))
                       (___kont127256127257_ _hd118908118930_ _hd118883119135_)
                       (let () (declare (not safe)) (_g118878118914_)))))
               (let () (declare (not safe)) (_g118878118914_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118878118914_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118854118862_))
                             (let ((_hd118859119252_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118854118862_)))
                                   (_tl118860119254_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118854118862_))))
                               (let* ((_hd119257_ _hd118859119252_)
                                      (_rest119259_ _tl118860119254_))
                                 (declare (not safe))
                                 (_K118858119249_ _rest119259_ _hd119257_)))
                             (let ()
                               (declare (not safe))
                               (_else118856118870_)))))))
                  (_lift-kw-lambda?118214_
                   (lambda (_bind118770_)
                     (let* ((___stx127318127319_ _bind118770_)
                            (_g118773118790_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127318127319_)))))
                       (let ((___kont127320127321_
                              (lambda (_L118826_ _L118827_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L118827_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L118826_))
                                    '#f)))
                             (___kont127322127323_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx127318127319_))
                             (let ((_e118777118802_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx127318127319_))))
                               (let ((_tl118779118807_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e118777118802_)))
                                     (_hd118778118805_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e118777118802_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd118778118805_))
                                     (let ((_e118780118810_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd118778118805_))))
                                       (let ((_tl118782118815_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e118780118810_)))
                                             (_hd118781118813_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e118780118810_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl118782118815_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl118779118807_))
                                                 (let ((_e118783118818_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl118779118807_))))
                                                   (let ((_tl118785118823_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e118783118818_)))
                                                         (_hd118784118821_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e118783118818_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl118785118823_))
                                                         (___kont127320127321_
                                                          _hd118784118821_
                                                          _hd118781118813_)
                                                         (___kont127322127323_))))
                                                 (___kont127322127323_))
                                             (___kont127322127323_))))
                                     (___kont127322127323_))))
                             (___kont127322127323_))))))
                  (_lift-kw-lambda-bindings118215_
                   (lambda (_bindings118382_)
                     (let _lp118384_ ((_rest118386_ _bindings118382_)
                                      (_lift1118387_ '())
                                      (_lift2118388_ '())
                                      (_bind118389_ '()))
                       (let* ((_rest118390118398_ _rest118386_)
                              (_else118392118406_
                               (lambda ()
                                 (values (reverse _lift1118387_)
                                         (reverse _lift2118388_)
                                         (reverse _bind118389_))))
                              (_K118394118758_
                               (lambda (_rest118409_ _hd118410_)
                                 (let* ((___stx127348127349_ _hd118410_)
                                        (_g118413118438_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127348127349_)))))
                                   (let ((___kont127350127351_
                                          (lambda (_L118508_ _L118509_)
                                            (let* ((_g118523118576_
                                                    (lambda (_g118524118573_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118524118573_))))
                                                   (_g118522118752_
                                                    (lambda (_g118524118579_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118524118579_))
                                                          (let ((_e118530118581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118524118579_))))
                    (let ((_hd118531118584_
                           (let ()
                             (declare (not safe))
                             (##car _e118530118581_)))
                          (_tl118532118586_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118530118581_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118532118586_))
                          (let ((_e118533118589_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118532118586_))))
                            (let ((_hd118534118592_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118533118589_)))
                                  (_tl118535118594_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118533118589_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118534118592_))
                                  (let ((_e118536118597_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118534118592_))))
                                    (let ((_hd118537118600_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118536118597_)))
                                          (_tl118538118602_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118536118597_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118537118600_))
                                          (let ((_e118539118605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118537118600_))))
                                            (let ((_hd118540118608_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118539118605_)))
                                                  (_tl118541118610_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118539118605_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118540118608_))
                                                  (let ((_e118542118613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118540118608_))))
                                                    (let ((_hd118543118616_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118542118613_)))
                                                          (_tl118544118618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118542118613_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118544118618_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118541118610_))
                      (let ((_e118545118621_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118541118610_))))
                        (let ((_hd118546118624_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118545118621_)))
                              (_tl118547118626_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118545118621_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118546118624_))
                              (let ((_e118548118629_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118546118624_))))
                                (let ((_hd118549118632_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118548118629_)))
                                      (_tl118550118634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118548118629_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118550118634_))
                                      (let ((_e118551118637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118550118634_))))
                                        (let ((_hd118552118640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118551118637_)))
                                              (_tl118553118642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118551118637_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118552118640_))
                                              (let ((_e118554118645_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118552118640_))))
                                                (let ((_hd118555118648_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118554118645_)))
                                                      (_tl118556118650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118554118645_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118555118648_))
                                                      (let ((_e118557118653_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118555118648_))))
                (let ((_hd118558118656_
                       (let () (declare (not safe)) (##car _e118557118653_)))
                      (_tl118559118658_
                       (let () (declare (not safe)) (##cdr _e118557118653_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118558118656_))
                      (let ((_e118560118661_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118558118656_))))
                        (let ((_hd118561118664_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118560118661_)))
                              (_tl118562118666_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118560118661_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118562118666_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118559118658_))
                                  (let ((_e118563118669_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118559118658_))))
                                    (let ((_hd118564118672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118563118669_)))
                                          (_tl118565118674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118563118669_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118565118674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118556118650_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118553118642_))
                                                  (let ((_e118566118677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118553118642_))))
                                                    (let ((_hd118567118680_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118566118677_)))
                                                          (_tl118568118682_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118566118677_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118568118682_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118547118626_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118538118602_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118535118594_))
                              (let ((_e118569118685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118535118594_))))
                                (let ((_hd118570118688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118569118685_)))
                                      (_tl118571118690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118569118685_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118571118690_))
                                      ((lambda (_L118693_
                                                _L118694_
                                                _L118695_
                                                _L118696_
                                                _L118697_)
                                         (let* ((_get-kws-id118737_
                                                 (let ((__tmp127890
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118509_)))
                                                       (__tmp127889
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp127890
                                                    __tmp127889)))
                                                (_get-kws-id118739_
                                                 (let ((__tmp127891
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118210_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118737_
                                                    __tmp127891)))
                                                (_main-id118741_
                                                 (let ((__tmp127893
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118509_)))
                                                       (__tmp127892
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp127893
                                                    __tmp127892)))
                                                (_main-id118743_
                                                 (let ((__tmp127894
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118210_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118741_
                                                    __tmp127894)))
                                                (_g127895_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118739_)))
                                                (_g127896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118743_)))
                                                (_new-kw-dispatch118747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118693_
                                                    'id:
                                                    _L118697_
                                                    'new-id:
                                                    _get-kws-id118739_)))
                                                (_new-get-kws118749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118694_
                                                    'id:
                                                    _L118696_
                                                    'new-id:
                                                    _main-id118743_))))
                                           (let ((__tmp127899
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118509_)))
                                                 (__tmp127898
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118739_)))
                                                 (__tmp127897
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118743_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp127899
                                              '" => "
                                              __tmp127898
                                              '" => "
                                              __tmp127897))
                                           (let ((__tmp127904
                                                  (let ((__tmp127905
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125510125511_
                                                            _main-id118743_
                                                            _L118695_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp127905
                                                          _lift1118387_)))
                                                 (__tmp127902
                                                  (let ((__tmp127903
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125510125511_
                                                            _get-kws-id118739_
                                                            _new-get-kws118749_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp127903
                                                          _lift2118388_)))
                                                 (__tmp127900
                                                  (let ((__tmp127901
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125510125511_
                                                            _L118509_
                                                            _new-kw-dispatch118747_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp127901
                                                          _bind118389_))))
                                             (declare (not safe))
                                             (_lp118384_
                                              _rest118409_
                                              __tmp127904
                                              __tmp127902
                                              __tmp127900))))
                                       _hd118570118688_
                                       _hd118567118680_
                                       _hd118564118672_
                                       _hd118561118664_
                                       _hd118543118616_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118523118576_ _g118524118579_)))))
                              (let ()
                                (declare (not safe))
                                (_g118523118576_ _g118524118579_)))
                          (let ()
                            (declare (not safe))
                            (_g118523118576_ _g118524118579_)))
                      (let ()
                        (declare (not safe))
                        (_g118523118576_ _g118524118579_)))
                  (let ()
                    (declare (not safe))
                    (_g118523118576_ _g118524118579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118523118576_
                                                     _g118524118579_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118523118576_
                                                 _g118524118579_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118523118576_
                                             _g118524118579_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118523118576_ _g118524118579_)))
                              (let ()
                                (declare (not safe))
                                (_g118523118576_ _g118524118579_)))))
                      (let ()
                        (declare (not safe))
                        (_g118523118576_ _g118524118579_)))))
              (let ()
                (declare (not safe))
                (_g118523118576_ _g118524118579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118523118576_
                                                 _g118524118579_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118523118576_ _g118524118579_)))))
                              (let ()
                                (declare (not safe))
                                (_g118523118576_ _g118524118579_)))))
                      (let ()
                        (declare (not safe))
                        (_g118523118576_ _g118524118579_)))
                  (let ()
                    (declare (not safe))
                    (_g118523118576_ _g118524118579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118523118576_
                                                     _g118524118579_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118523118576_
                                             _g118524118579_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118523118576_ _g118524118579_)))))
                          (let ()
                            (declare (not safe))
                            (_g118523118576_ _g118524118579_)))))
                  (let ()
                    (declare (not safe))
                    (_g118523118576_ _g118524118579_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118522118752_ _L118508_))))
                                         (___kont127352127353_
                                          (lambda (_L118459_ _L118460_)
                                            (let ((__tmp127906
                                                   (let ((__tmp127907
                                                          (let ((__tmp127908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L118459_ '()))))
                    (declare (not safe))
                    (cons _L118460_ __tmp127908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127907
                                                           _bind118389_))))
                                              (declare (not safe))
                                              (_lp118384_
                                               _rest118409_
                                               _lift1118387_
                                               _lift2118388_
                                               __tmp127906)))))
                                     (let ((___match127375127376_
                                            (lambda (_e118417118484_
                                                     _hd118418118487_
                                                     _tl118419118489_
                                                     _e118420118492_
                                                     _hd118421118495_
                                                     _tl118422118497_
                                                     _e118423118500_
                                                     _hd118424118503_
                                                     _tl118425118505_)
                                              (let ((_L118508_
                                                     _hd118424118503_)
                                                    (_L118509_
                                                     _hd118421118495_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L118509_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L118508_)))
                                                    (___kont127350127351_
                                                     _L118508_
                                                     _L118509_)
                                                    (___kont127352127353_
                                                     _hd118424118503_
                                                     _hd118418118487_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127348127349_))
                                           (let ((_e118417118484_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127348127349_))))
                                             (let ((_tl118419118489_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118417118484_)))
                                                   (_hd118418118487_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118417118484_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118418118487_))
                                                   (let ((_e118420118492_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118418118487_))))
                                                     (let ((_tl118422118497_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118420118492_)))
                                                           (_hd118421118495_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118420118492_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118422118497_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118419118489_))
                       (let ((_e118423118500_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118419118489_))))
                         (let ((_tl118425118505_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118423118500_)))
                               (_hd118424118503_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118423118500_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118425118505_))
                               (___match127375127376_
                                _e118417118484_
                                _hd118418118487_
                                _tl118419118489_
                                _e118420118492_
                                _hd118421118495_
                                _tl118422118497_
                                _e118423118500_
                                _hd118424118503_
                                _tl118425118505_)
                               (let ()
                                 (declare (not safe))
                                 (_g118413118438_)))))
                       (let () (declare (not safe)) (_g118413118438_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118419118489_))
                       (let ((_e118431118451_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118419118489_))))
                         (let ((_tl118433118456_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118431118451_)))
                               (_hd118432118454_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118431118451_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118433118456_))
                               (___kont127352127353_
                                _hd118432118454_
                                _hd118418118487_)
                               (let ()
                                 (declare (not safe))
                                 (_g118413118438_)))))
                       (let () (declare (not safe)) (_g118413118438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118419118489_))
                                                       (let ((_e118431118451_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118419118489_))))
                 (let ((_tl118433118456_
                        (let () (declare (not safe)) (##cdr _e118431118451_)))
                       (_hd118432118454_
                        (let () (declare (not safe)) (##car _e118431118451_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118433118456_))
                       (___kont127352127353_ _hd118432118454_ _hd118418118487_)
                       (let () (declare (not safe)) (_g118413118438_)))))
               (let () (declare (not safe)) (_g118413118438_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118413118438_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118390118398_))
                             (let ((_hd118395118761_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118390118398_)))
                                   (_tl118396118763_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118390118398_))))
                               (let* ((_hd118766_ _hd118395118761_)
                                      (_rest118768_ _tl118396118763_))
                                 (declare (not safe))
                                 (_K118394118758_ _rest118768_ _hd118766_)))
                             (let ()
                               (declare (not safe))
                               (_else118392118406_))))))))
          (let* ((___stx127392127393_ _stx118210_)
                 (_g118218118244_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127392127393_)))))
            (let ((___kont127394127395_
                   (lambda (_L118304_ _L118305_)
                     (let ((__tmp127910
                            (lambda ()
                              (if (let ((__tmp127911
                                         (let ((__tmp127912
                                                (lambda (_g118333118336_
                                                         _g118334118338_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g118333118336_
                                                          _g118334118338_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp127912
                                                   '()
                                                   _L118305_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?118214_
                                            __tmp127911))
                                  (let ((_g127913_
                                         (let ((__tmp127915
                                                (let ((__tmp127916
                                                       (lambda (_g118340118343_
                                                                _g118341118345_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118340118343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118341118345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp127916
                                                          '()
                                                          _L118305_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings118215_
                                            __tmp127915))))
                                    (begin
                                      (let ((_g127914_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g127913_)
                                                   (##vector-length _g127913_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g127914_ 3)))
                                            (error "Context expects 3 values"
                                                   _g127914_)))
                                      (let ((_lift1118348_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127913_ 0)))
                                            (_lift2118349_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127913_ 1)))
                                            (_hd118350_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127913_ 2))))
                                        (let* ((_expr118352_
                                                (let ((__tmp127917
                                                       (let ((__tmp127918
                                                              (let ((__tmp127919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L118304_ '()))))
                        (declare (not safe))
                        (cons _hd118350_ __tmp127919))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127917
                                                   _stx118210_)))
                                               (_expr118354_
                                                (let ((__tmp127920
                                                       (let ((__tmp127921
                                                              (let ((__tmp127922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118352_ '()))))
                        (declare (not safe))
                        (cons _lift2118349_ __tmp127922))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127920
                                                   _stx118210_)))
                                               (_expr118356_
                                                (let ((__tmp127923
                                                       (let ((__tmp127924
                                                              (let ((__tmp127925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118354_ '()))))
                        (declare (not safe))
                        (cons _lift1118348_ __tmp127925))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127923
                                                   _stx118210_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self118209_
                                             _expr118356_))))))
                                  (let ((_g127926_
                                         (let ((__tmp127928
                                                (let ((__tmp127929
                                                       (lambda (_g118358118361_
                                                                _g118359118363_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118358118361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118359118363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp127929
                                                          '()
                                                          _L118305_))))
                                           (declare (not safe))
                                           (_compile-bindings118213_
                                            __tmp127928))))
                                    (begin
                                      (let ((_g127927_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g127926_)
                                                   (##vector-length _g127926_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g127927_ 3)))
                                            (error "Context expects 3 values"
                                                   _g127927_)))
                                      (let ((_lift1118366_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127926_ 0)))
                                            (_lift2118367_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127926_ 1)))
                                            (_hd118368_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127926_ 2))))
                                        (let* ((_body118370_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self118209_
                                                   _L118304_)))
                                               (_expr118372_
                                                (let ((__tmp127930
                                                       (let ((__tmp127931
                                                              (let ((__tmp127932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body118370_ '()))))
                        (declare (not safe))
                        (cons _hd118368_ __tmp127932))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127930
                                                   _stx118210_)))
                                               (_expr118374_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2118367_))
                                                    _expr118372_
                                                    (let ((__tmp127933
                                                           (let ((__tmp127934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp127935
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118372_ '()))))
                            (declare (not safe))
                            (cons _lift2118367_ __tmp127935))))
                     (declare (not safe))
                     (cons '%#let-values __tmp127934))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp127933 _stx118210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr118376_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1118366_))
                                                    _expr118374_
                                                    (let ((__tmp127936
                                                           (let ((__tmp127937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp127938
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118374_ '()))))
                            (declare (not safe))
                            (cons _lift1118366_ __tmp127938))))
                     (declare (not safe))
                     (cons '%#let-values __tmp127937))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp127936 _stx118210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr118376_)))))))
                           (__tmp127909
                            (let ((__obj127609
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127609)
                              __obj127609)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp127910
                        gx#current-expander-context
                        __tmp127909))))
                  (___kont127398127399_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self118209_ _stx118210_)))))
              (let ((___match127419127420_
                     (lambda (_e118222118256_
                              _hd118223118259_
                              _tl118224118261_
                              _e118225118264_
                              _hd118226118267_
                              _tl118227118269_
                              ___splice127396127397_
                              _target118228118272_
                              _tl118230118274_)
                       (letrec ((_loop118231118277_
                                 (lambda (_hd118229118280_ _bind118235118282_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118229118280_))
                                       (let ((_e118232118285_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118229118280_))))
                                         (let ((_lp-tl118234118290_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118232118285_)))
                                               (_lp-hd118233118288_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118232118285_))))
                                           (let ((__tmp127939
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118233118288_
                                                          _bind118235118282_))))
                                             (declare (not safe))
                                             (_loop118231118277_
                                              _lp-tl118234118290_
                                              __tmp127939))))
                                       (let ((_bind118236118293_
                                              (reverse _bind118235118282_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118227118269_))
                                             (let ((_e118237118296_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118227118269_))))
                                               (let ((_tl118239118301_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118237118296_)))
                                                     (_hd118238118299_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118237118296_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118239118301_))
                                                     (let ((_L118304_
                                                            _hd118238118299_)
                                                           (_L118305_
                                                            _bind118236118293_))
                                                       (if (let ((__tmp127940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp127941
                                 (lambda (_g118325118328_ _g118326118330_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118325118328_ _g118326118330_)))))
                            (declare (not safe))
                            (foldr1 __tmp127941 '() _L118305_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp127940))
                   (___kont127394127395_ _L118304_ _L118305_)
                   (___kont127398127399_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127398127399_))))
                                             (___kont127398127399_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118231118277_ _target118228118272_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127392127393_))
                    (let ((_e118222118256_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127392127393_))))
                      (let ((_tl118224118261_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118222118256_)))
                            (_hd118223118259_
                             (let ()
                               (declare (not safe))
                               (##car _e118222118256_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118224118261_))
                            (let ((_e118225118264_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118224118261_))))
                              (let ((_tl118227118269_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118225118264_)))
                                    (_hd118226118267_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118225118264_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118226118267_))
                                    (let ((___splice127396127397_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118226118267_
                                              '0))))
                                      (let ((_tl118230118274_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127396127397_
                                                '1)))
                                            (_target118228118272_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127396127397_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118230118274_))
                                            (___match127419127420_
                                             _e118222118256_
                                             _hd118223118259_
                                             _tl118224118261_
                                             _e118225118264_
                                             _hd118226118267_
                                             _tl118227118269_
                                             ___splice127396127397_
                                             _target118228118272_
                                             _tl118230118274_)
                                            (___kont127398127399_))))
                                    (___kont127398127399_))))
                            (___kont127398127399_))))
                    (___kont127398127399_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self117352_ _stx117353_)
        (letrec* ((_bind-e__125515125516_
                   (lambda (_id118193_ _expr118194_ _compile?118195_)
                     (let ((__tmp127944
                            (let ()
                              (declare (not safe))
                              (cons _id118193_ '())))
                           (__tmp127942
                            (let ((__tmp127943
                                   (if _compile?118195_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self117352_
                                          _expr118194_))
                                       _expr118194_)))
                              (declare (not safe))
                              (cons __tmp127943 '()))))
                       (declare (not safe))
                       (cons __tmp127944 __tmp127942))))
                  (_bind-e__0__125517125518_
                   (lambda (_id118200_ _expr118201_)
                     (let ((_compile?118203_ '#t))
                       (declare (not safe))
                       (_bind-e__125515125516_
                        _id118200_
                        _expr118201_
                        _compile?118203_))))
                  (_bind-e117355_
                   (lambda _g127946_
                     (let ((_g127945_
                            (let ()
                              (declare (not safe))
                              (##length _g127946_))))
                       (cond ((let () (declare (not safe)) (##fx= _g127945_ 2))
                              (apply (lambda (_id118200_ _expr118201_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125517125518_
                                          _id118200_
                                          _expr118201_)))
                                     _g127946_))
                             ((let () (declare (not safe)) (##fx= _g127945_ 3))
                              (apply (lambda (_id118205_
                                              _expr118206_
                                              _compile?118207_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125515125516_
                                          _id118205_
                                          _expr118206_
                                          _compile?118207_)))
                                     _g127946_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127946_))))))
                  (_compile-bindings117356_
                   (lambda (_rest117491_)
                     (let _lp117493_ ((_rest117495_ _rest117491_)
                                      (_bind117496_ '()))
                       (let* ((_rest117497117505_ _rest117495_)
                              (_else117499117513_
                               (lambda () (reverse _bind117496_)))
                              (_K117501118180_
                               (lambda (_rest117516_ _hd117517_)
                                 (let* ((___stx127442127443_ _hd117517_)
                                        (_g117522117569_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127442127443_)))))
                                   (let ((___kont127444127445_
                                          (lambda (_L118087_ _L118088_)
                                            (let* ((___stx127422127423_
                                                    _L118087_)
                                                   (_g118103118117_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127422127423_)))))
                                              (let ((___kont127424127425_
                                                     (lambda (_L118165_)
                                                       (let ((__tmp127947
                                                              (let ((__tmp127948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125515125516_
                                _L118088_
                                _L118087_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp127948 _bind117496_))))
                 (declare (not safe))
                 (_lp117493_ _rest117516_ __tmp127947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127426127427_
                                                     (lambda (_L118130_)
                                                       (let ((_g127949_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx117353_
                         _L118088_
                         _L118130_
                         '#t))))
                 (begin
                   (let ((_g127950_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g127949_)
                                (##vector-length _g127949_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g127950_ 3)))
                         (error "Context expects 3 values" _g127950_)))
                   (let ((_ids118140_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127949_ 0)))
                         (_impls118141_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127949_ 1)))
                         (_clauses118142_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127949_ 2))))
                     (let* ((_g127951_
                             (for-each gx#core-bind-runtime! _ids118140_))
                            (_xbind118145_
                             (map _bind-e117355_ _ids118140_ _impls118141_))
                            (_expr*118147_
                             (let ((__tmp127953
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118142_)))
                                   (__tmp127952
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp127953
                                __tmp127952)))
                            (_bind*118149_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125515125516_
                                _L118088_
                                _expr*118147_
                                '#f))))
                       (let ((__tmp127955
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118088_)))
                             (__tmp127954
                              (map gxc#identifier-symbol _ids118140_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp127955
                          '" => "
                          __tmp127954))
                       (let ((__tmp127956
                              (let ((__tmp127957
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind117496_
                                               _xbind118145_))))
                                (declare (not safe))
                                (cons _bind*118149_ __tmp127957))))
                         (declare (not safe))
                         (_lp117493_ _rest117516_ __tmp127956)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127433127434_
                                                       (lambda (_e118106118157_
                                                                _hd118107118160_
                                                                _tl118108118162_)
                                                         (let ((_L118165_
                                                                _tl118108118162_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118165_))
                       (___kont127424127425_ _L118165_)
                       (___kont127426127427_ _tl118108118162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127422127423_))
                                                      (let ((_e118106118157_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127422127423_))))
                (let ((_tl118108118162_
                       (let () (declare (not safe)) (##cdr _e118106118157_)))
                      (_hd118107118160_
                       (let () (declare (not safe)) (##car _e118106118157_))))
                  (___match127433127434_
                   _e118106118157_
                   _hd118107118160_
                   _tl118108118162_)))
              (let () (declare (not safe)) (_g118103118117_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127446127447_
                                          (lambda (_L117915_ _L117916_)
                                            (let* ((_g117930117960_
                                                    (lambda (_g117931117957_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117931117957_))))
                                                   (_g117929118055_
                                                    (lambda (_g117931117963_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117931117963_))
                                                          (let ((_e117935117965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117931117963_))))
                    (let ((_hd117936117968_
                           (let ()
                             (declare (not safe))
                             (##car _e117935117965_)))
                          (_tl117937117970_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117935117965_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117937117970_))
                          (let ((_e117938117973_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117937117970_))))
                            (let ((_hd117939117976_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117938117973_)))
                                  (_tl117940117978_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117938117973_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117939117976_))
                                  (let ((_e117941117981_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117939117976_))))
                                    (let ((_hd117942117984_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117941117981_)))
                                          (_tl117943117986_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117941117981_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117942117984_))
                                          (let ((_e117944117989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117942117984_))))
                                            (let ((_hd117945117992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117944117989_)))
                                                  (_tl117946117994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117944117989_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117945117992_))
                                                  (let ((_e117947117997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117945117992_))))
                                                    (let ((_hd117948118000_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117947117997_)))
                                                          (_tl117949118002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117947117997_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117949118002_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117946117994_))
                      (let ((_e117950118005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117946117994_))))
                        (let ((_hd117951118008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117950118005_)))
                              (_tl117952118010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117950118005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117952118010_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl117943117986_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117940117978_))
                                      (let ((_e117953118013_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117940117978_))))
                                        (let ((_hd117954118016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117953118013_)))
                                              (_tl117955118018_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117953118013_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117955118018_))
                                              ((lambda (_L118021_
                                                        _L118022_
                                                        _L118023_)
                                                 (let* ((_lambda-id118047_
                                                         (let ((__tmp127959
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L117916_)))
                       (__tmp127958 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp127959 __tmp127958)))
                (_lambda-id118049_
                 (let ((__tmp127960
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx117353_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118047_ __tmp127960)))
                (_g127961_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118049_)))
                (_new-case-lambda-expr118052_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118021_
                    'id:
                    _L118023_
                    'new-id:
                    _lambda-id118049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp127963
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L117916_)))
                                                         (__tmp127962
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118049_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp127963
                                                      '" => "
                                                      __tmp127962))
                                                   (let ((__tmp127966
                                                          (let ((__tmp127967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125515125516_
                            _L117916_
                            _new-case-lambda-expr118052_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp127967 _rest117516_)))
                 (__tmp127964
                  (let ((__tmp127965
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125517125518_
                            _lambda-id118049_
                            _L118022_))))
                    (declare (not safe))
                    (cons __tmp127965 _bind117496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp117493_
                                                      __tmp127966
                                                      __tmp127964))))
                                               _hd117954118016_
                                               _hd117951118008_
                                               _hd117948118000_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117930117960_
                                                 _g117931117963_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117930117960_ _g117931117963_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117930117960_ _g117931117963_)))
                              (let ()
                                (declare (not safe))
                                (_g117930117960_ _g117931117963_)))))
                      (let ()
                        (declare (not safe))
                        (_g117930117960_ _g117931117963_)))
                  (let ()
                    (declare (not safe))
                    (_g117930117960_ _g117931117963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117930117960_
                                                     _g117931117963_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117930117960_
                                             _g117931117963_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117930117960_ _g117931117963_)))))
                          (let ()
                            (declare (not safe))
                            (_g117930117960_ _g117931117963_)))))
                  (let ()
                    (declare (not safe))
                    (_g117930117960_ _g117931117963_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117929118055_ _L117915_))))
                                         (___kont127448127449_
                                          (lambda (_L117639_ _L117640_)
                                            (let* ((_g117654117707_
                                                    (lambda (_g117655117704_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117655117704_))))
                                                   (_g117653117883_
                                                    (lambda (_g117655117710_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117655117710_))
                                                          (let ((_e117661117712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117655117710_))))
                    (let ((_hd117662117715_
                           (let ()
                             (declare (not safe))
                             (##car _e117661117712_)))
                          (_tl117663117717_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117661117712_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117663117717_))
                          (let ((_e117664117720_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117663117717_))))
                            (let ((_hd117665117723_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117664117720_)))
                                  (_tl117666117725_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117664117720_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117665117723_))
                                  (let ((_e117667117728_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117665117723_))))
                                    (let ((_hd117668117731_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117667117728_)))
                                          (_tl117669117733_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117667117728_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117668117731_))
                                          (let ((_e117670117736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117668117731_))))
                                            (let ((_hd117671117739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117670117736_)))
                                                  (_tl117672117741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117670117736_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117671117739_))
                                                  (let ((_e117673117744_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117671117739_))))
                                                    (let ((_hd117674117747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117673117744_)))
                                                          (_tl117675117749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117673117744_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117675117749_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117672117741_))
                      (let ((_e117676117752_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117672117741_))))
                        (let ((_hd117677117755_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117676117752_)))
                              (_tl117678117757_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117676117752_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117677117755_))
                              (let ((_e117679117760_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117677117755_))))
                                (let ((_hd117680117763_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117679117760_)))
                                      (_tl117681117765_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117679117760_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117681117765_))
                                      (let ((_e117682117768_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117681117765_))))
                                        (let ((_hd117683117771_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117682117768_)))
                                              (_tl117684117773_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117682117768_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd117683117771_))
                                              (let ((_e117685117776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd117683117771_))))
                                                (let ((_hd117686117779_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117685117776_)))
                                                      (_tl117687117781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117685117776_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117686117779_))
                                                      (let ((_e117688117784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd117686117779_))))
                (let ((_hd117689117787_
                       (let () (declare (not safe)) (##car _e117688117784_)))
                      (_tl117690117789_
                       (let () (declare (not safe)) (##cdr _e117688117784_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117689117787_))
                      (let ((_e117691117792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117689117787_))))
                        (let ((_hd117692117795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117691117792_)))
                              (_tl117693117797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117691117792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117693117797_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117690117789_))
                                  (let ((_e117694117800_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117690117789_))))
                                    (let ((_hd117695117803_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117694117800_)))
                                          (_tl117696117805_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117694117800_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117696117805_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117687117781_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117684117773_))
                                                  (let ((_e117697117808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117684117773_))))
                                                    (let ((_hd117698117811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117697117808_)))
                                                          (_tl117699117813_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117697117808_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117699117813_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl117678117757_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl117669117733_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117666117725_))
                              (let ((_e117700117816_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117666117725_))))
                                (let ((_hd117701117819_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117700117816_)))
                                      (_tl117702117821_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117700117816_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117702117821_))
                                      ((lambda (_L117824_
                                                _L117825_
                                                _L117826_
                                                _L117827_
                                                _L117828_)
                                         (let* ((_get-kws-id117868_
                                                 (let ((__tmp127969
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117640_)))
                                                       (__tmp127968
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp127969
                                                    __tmp127968)))
                                                (_get-kws-id117870_
                                                 (let ((__tmp127970
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117353_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id117868_
                                                    __tmp127970)))
                                                (_main-id117872_
                                                 (let ((__tmp127972
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117640_)))
                                                       (__tmp127971
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp127972
                                                    __tmp127971)))
                                                (_main-id117874_
                                                 (let ((__tmp127973
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117353_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id117872_
                                                    __tmp127973)))
                                                (_g127974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id117870_)))
                                                (_g127975_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id117874_)))
                                                (_new-kw-dispatch117878_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L117824_
                                                    'id:
                                                    _L117828_
                                                    'new-id:
                                                    _get-kws-id117870_)))
                                                (_new-get-kws117880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L117825_
                                                    'id:
                                                    _L117827_
                                                    'new-id:
                                                    _main-id117874_))))
                                           (let ((__tmp127978
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L117640_)))
                                                 (__tmp127977
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id117870_)))
                                                 (__tmp127976
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id117874_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp127978
                                              '" => "
                                              __tmp127977
                                              '" => "
                                              __tmp127976))
                                           (let ((__tmp127979
                                                  (let ((__tmp127984
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125515125516_
                                                            _main-id117874_
                                                            _L117826_
                                                            '#f)))
                                                        (__tmp127980
                                                         (let ((__tmp127983
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__125515125516_
                           _get-kws-id117870_
                           _new-get-kws117880_
                           '#f)))
                       (__tmp127981
                        (let ((__tmp127982
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__125515125516_
                                  _L117640_
                                  _new-kw-dispatch117878_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp127982 _rest117516_))))
                   (declare (not safe))
                   (cons __tmp127983 __tmp127981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp127984
                                                          __tmp127980))))
                                             (declare (not safe))
                                             (_lp117493_
                                              __tmp127979
                                              _bind117496_))))
                                       _hd117701117819_
                                       _hd117698117811_
                                       _hd117695117803_
                                       _hd117692117795_
                                       _hd117674117747_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117654117707_ _g117655117710_)))))
                              (let ()
                                (declare (not safe))
                                (_g117654117707_ _g117655117710_)))
                          (let ()
                            (declare (not safe))
                            (_g117654117707_ _g117655117710_)))
                      (let ()
                        (declare (not safe))
                        (_g117654117707_ _g117655117710_)))
                  (let ()
                    (declare (not safe))
                    (_g117654117707_ _g117655117710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117654117707_
                                                     _g117655117710_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g117654117707_
                                                 _g117655117710_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g117654117707_
                                             _g117655117710_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117654117707_ _g117655117710_)))
                              (let ()
                                (declare (not safe))
                                (_g117654117707_ _g117655117710_)))))
                      (let ()
                        (declare (not safe))
                        (_g117654117707_ _g117655117710_)))))
              (let ()
                (declare (not safe))
                (_g117654117707_ _g117655117710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g117654117707_
                                                 _g117655117710_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117654117707_ _g117655117710_)))))
                              (let ()
                                (declare (not safe))
                                (_g117654117707_ _g117655117710_)))))
                      (let ()
                        (declare (not safe))
                        (_g117654117707_ _g117655117710_)))
                  (let ()
                    (declare (not safe))
                    (_g117654117707_ _g117655117710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117654117707_
                                                     _g117655117710_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117654117707_
                                             _g117655117710_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117654117707_ _g117655117710_)))))
                          (let ()
                            (declare (not safe))
                            (_g117654117707_ _g117655117710_)))))
                  (let ()
                    (declare (not safe))
                    (_g117654117707_ _g117655117710_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117653117883_ _L117639_))))
                                         (___kont127450127451_
                                          (lambda (_L117590_ _L117591_)
                                            (let ((__tmp127985
                                                   (let ((__tmp127986
                                                          (let ((__tmp127987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp127988
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self117352_ _L117590_))))
                           (declare (not safe))
                           (cons __tmp127988 '()))))
                    (declare (not safe))
                    (cons _L117591_ __tmp127987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127986
                                                           _bind117496_))))
                                              (declare (not safe))
                                              (_lp117493_
                                               _rest117516_
                                               __tmp127985)))))
                                     (let* ((___match127517127518_
                                             (lambda (_e117548117615_
                                                      _hd117549117618_
                                                      _tl117550117620_
                                                      _e117551117623_
                                                      _hd117552117626_
                                                      _tl117553117628_
                                                      _e117554117631_
                                                      _hd117555117634_
                                                      _tl117556117636_)
                                               (let ((_L117639_
                                                      _hd117555117634_)
                                                     (_L117640_
                                                      _hd117552117626_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117640_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L117639_)))
                                                     (___kont127448127449_
                                                      _L117639_
                                                      _L117640_)
                                                     (___kont127450127451_
                                                      _hd117555117634_
                                                      _hd117549117618_)))))
                                            (___match127495127496_
                                             (lambda (_e117537117891_
                                                      _hd117538117894_
                                                      _tl117539117896_
                                                      _e117540117899_
                                                      _hd117541117902_
                                                      _tl117542117904_
                                                      _e117543117907_
                                                      _hd117544117910_
                                                      _tl117545117912_)
                                               (let ((_L117915_
                                                      _hd117544117910_)
                                                     (_L117916_
                                                      _hd117541117902_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117916_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L117915_)))
                                                     (___kont127446127447_
                                                      _L117915_
                                                      _L117916_)
                                                     (___match127517127518_
                                                      _e117537117891_
                                                      _hd117538117894_
                                                      _tl117539117896_
                                                      _e117540117899_
                                                      _hd117541117902_
                                                      _tl117542117904_
                                                      _e117543117907_
                                                      _hd117544117910_
                                                      _tl117545117912_)))))
                                            (___match127473127474_
                                             (lambda (_e117526118063_
                                                      _hd117527118066_
                                                      _tl117528118068_
                                                      _e117529118071_
                                                      _hd117530118074_
                                                      _tl117531118076_
                                                      _e117532118079_
                                                      _hd117533118082_
                                                      _tl117534118084_)
                                               (let ((_L118087_
                                                      _hd117533118082_)
                                                     (_L118088_
                                                      _hd117530118074_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118088_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118087_)))
                                                     (___kont127444127445_
                                                      _L118087_
                                                      _L118088_)
                                                     (___match127495127496_
                                                      _e117526118063_
                                                      _hd117527118066_
                                                      _tl117528118068_
                                                      _e117529118071_
                                                      _hd117530118074_
                                                      _tl117531118076_
                                                      _e117532118079_
                                                      _hd117533118082_
                                                      _tl117534118084_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127442127443_))
                                           (let ((_e117526118063_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127442127443_))))
                                             (let ((_tl117528118068_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117526118063_)))
                                                   (_hd117527118066_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117526118063_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117527118066_))
                                                   (let ((_e117529118071_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117527118066_))))
                                                     (let ((_tl117531118076_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117529118071_)))
                                                           (_hd117530118074_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117529118071_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117531118076_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl117528118068_))
                       (let ((_e117532118079_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117528118068_))))
                         (let ((_tl117534118084_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117532118079_)))
                               (_hd117533118082_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117532118079_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117534118084_))
                               (___match127473127474_
                                _e117526118063_
                                _hd117527118066_
                                _tl117528118068_
                                _e117529118071_
                                _hd117530118074_
                                _tl117531118076_
                                _e117532118079_
                                _hd117533118082_
                                _tl117534118084_)
                               (let ()
                                 (declare (not safe))
                                 (_g117522117569_)))))
                       (let () (declare (not safe)) (_g117522117569_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl117528118068_))
                       (let ((_e117562117582_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117528118068_))))
                         (let ((_tl117564117587_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117562117582_)))
                               (_hd117563117585_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117562117582_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117564117587_))
                               (___kont127450127451_
                                _hd117563117585_
                                _hd117527118066_)
                               (let ()
                                 (declare (not safe))
                                 (_g117522117569_)))))
                       (let () (declare (not safe)) (_g117522117569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117528118068_))
                                                       (let ((_e117562117582_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117528118068_))))
                 (let ((_tl117564117587_
                        (let () (declare (not safe)) (##cdr _e117562117582_)))
                       (_hd117563117585_
                        (let () (declare (not safe)) (##car _e117562117582_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117564117587_))
                       (___kont127450127451_ _hd117563117585_ _hd117527118066_)
                       (let () (declare (not safe)) (_g117522117569_)))))
               (let () (declare (not safe)) (_g117522117569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g117522117569_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest117497117505_))
                             (let ((_hd117502118183_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest117497117505_)))
                                   (_tl117503118185_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest117497117505_))))
                               (let* ((_hd118188_ _hd117502118183_)
                                      (_rest118190_ _tl117503118185_))
                                 (declare (not safe))
                                 (_K117501118180_ _rest118190_ _hd118188_)))
                             (let ()
                               (declare (not safe))
                               (_else117499117513_))))))))
          (let* ((___stx127534127535_ _stx117353_)
                 (_g117359117386_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127534127535_)))))
            (let ((___kont127536127537_
                   (lambda (_L117446_ _L117447_ _L117448_)
                     (let ((__tmp127990
                            (lambda ()
                              (let ((_hd117485_
                                     (let ((__tmp127991
                                            (let ((__tmp127992
                                                   (lambda (_g117477117480_
                                                            _g117478117482_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g117477117480_
                                                             _g117478117482_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127992
                                                      '()
                                                      _L117447_))))
                                       (declare (not safe))
                                       (_compile-bindings117356_ __tmp127991)))
                                    (_body117486_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self117352_
                                        _L117446_))))
                                (let ((__tmp127993
                                       (let ((__tmp127994
                                              (let ((__tmp127995
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body117486_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd117485_
                                                      __tmp127995))))
                                         (declare (not safe))
                                         (cons _L117448_ __tmp127994))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp127993
                                   _stx117353_)))))
                           (__tmp127989
                            (let ((__obj127610
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127610)
                              __obj127610)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp127990
                        gx#current-expander-context
                        __tmp127989))))
                  (___kont127540127541_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self117352_ _stx117353_)))))
              (let ((___match127561127562_
                     (lambda (_e117364117398_
                              _hd117365117401_
                              _tl117366117403_
                              _e117367117406_
                              _hd117368117409_
                              _tl117369117411_
                              ___splice127538127539_
                              _target117370117414_
                              _tl117372117416_)
                       (letrec ((_loop117373117419_
                                 (lambda (_hd117371117422_ _bind117377117424_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117371117422_))
                                       (let ((_e117374117427_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117371117422_))))
                                         (let ((_lp-tl117376117432_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117374117427_)))
                                               (_lp-hd117375117430_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117374117427_))))
                                           (let ((__tmp127996
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd117375117430_
                                                          _bind117377117424_))))
                                             (declare (not safe))
                                             (_loop117373117419_
                                              _lp-tl117376117432_
                                              __tmp127996))))
                                       (let ((_bind117378117435_
                                              (reverse _bind117377117424_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl117369117411_))
                                             (let ((_e117379117438_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl117369117411_))))
                                               (let ((_tl117381117443_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e117379117438_)))
                                                     (_hd117380117441_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e117379117438_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117381117443_))
                                                     (let ((_L117446_
                                                            _hd117380117441_)
                                                           (_L117447_
                                                            _bind117378117435_)
                                                           (_L117448_
                                                            _hd117365117401_))
                                                       (if (let ((__tmp127997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp127998
                                 (lambda (_g117469117472_ _g117470117474_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g117469117472_ _g117470117474_)))))
                            (declare (not safe))
                            (foldr1 __tmp127998 '() _L117447_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp127997))
                   (___kont127536127537_ _L117446_ _L117447_ _L117448_)
                   (___kont127540127541_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127540127541_))))
                                             (___kont127540127541_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop117373117419_ _target117370117414_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127534127535_))
                    (let ((_e117364117398_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127534127535_))))
                      (let ((_tl117366117403_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117364117398_)))
                            (_hd117365117401_
                             (let ()
                               (declare (not safe))
                               (##car _e117364117398_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117366117403_))
                            (let ((_e117367117406_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117366117403_))))
                              (let ((_tl117369117411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117367117406_)))
                                    (_hd117368117409_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117367117406_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd117368117409_))
                                    (let ((___splice127538127539_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd117368117409_
                                              '0))))
                                      (let ((_tl117372117416_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127538127539_
                                                '1)))
                                            (_target117370117414_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127538127539_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117372117416_))
                                            (___match127561127562_
                                             _e117364117398_
                                             _hd117365117401_
                                             _tl117366117403_
                                             _e117367117406_
                                             _hd117368117409_
                                             _tl117369117411_
                                             ___splice127538127539_
                                             _target117370117414_
                                             _tl117372117416_)
                                            (___kont127540127541_))))
                                    (___kont127540127541_))))
                            (___kont127540127541_))))
                    (___kont127540127541_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind117270_)
        (let* ((___stx127564127565_ _bind117270_)
               (_g117273117290_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127564127565_)))))
          (let ((___kont127566127567_
                 (lambda (_L117326_ _L117327_)
                   (if (let () (declare (not safe)) (gx#identifier? _L117327_))
                       (let ((_$e117343_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L117326_))))
                         (if _$e117343_
                             _$e117343_
                             (let ((_$e117346_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L117326_))))
                               (if _$e117346_
                                   _$e117346_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117326_))))))
                       '#f)))
                (___kont127568127569_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127564127565_))
                (let ((_e117277117302_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127564127565_))))
                  (let ((_tl117279117307_
                         (let () (declare (not safe)) (##cdr _e117277117302_)))
                        (_hd117278117305_
                         (let ()
                           (declare (not safe))
                           (##car _e117277117302_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117278117305_))
                        (let ((_e117280117310_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117278117305_))))
                          (let ((_tl117282117315_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117280117310_)))
                                (_hd117281117313_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117280117310_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl117282117315_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl117279117307_))
                                    (let ((_e117283117318_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl117279117307_))))
                                      (let ((_tl117285117323_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117283117318_)))
                                            (_hd117284117321_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117283117318_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117285117323_))
                                            (___kont127566127567_
                                             _hd117284117321_
                                             _hd117281117313_)
                                            (___kont127568127569_))))
                                    (___kont127568127569_))
                                (___kont127568127569_))))
                        (___kont127568127569_))))
                (___kont127568127569_))))))))
