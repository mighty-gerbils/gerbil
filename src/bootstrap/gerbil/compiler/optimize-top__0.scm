(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710617605)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp127661 (list gxc#::void::t))
            (__tmp127659
             (let ((__tmp127660
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127660 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp127661
         '()
         __tmp127659
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args125555_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args125555_)))
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
      (lambda (_stx125547_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self125550_
                (let ((__obj127642
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj127642))
               (__tmp127662
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125550_ _stx125547_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127662
           gxc#current-compile-method
           _self125550_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp127665 (list gxc#::false::t))
            (__tmp127663
             (let ((__tmp127664
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127664 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp127665
         '()
         __tmp127663
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args125544_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args125544_)))
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
      (lambda (_stx125536_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self125539_
                (let ((__obj127644
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj127644))
               (__tmp127666
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125539_ _stx125536_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127666
           gxc#current-compile-method
           _self125539_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp127669 (list gxc#::void::t))
            (__tmp127667
             (let ((__tmp127668
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127668 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp127669
         '()
         __tmp127667
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args125533_
        (apply make-instance gxc#::collect-type-info::t _$args125533_)))
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
      (lambda (_stx125525_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self125528_
                (let ((__obj127646
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj127646))
               (__tmp127670
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125528_ _stx125525_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127670
           gxc#current-compile-method
           _self125528_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp127673 (list gxc#::false::t))
            (__tmp127671
             (let ((__tmp127672
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127672 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp127673
         '()
         __tmp127671
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args125522_
        (apply make-instance gxc#::basic-expression-type::t _$args125522_)))
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
      (lambda (_stx125514_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self125517_
                (let ((__obj127648
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj127648))
               (__tmp127674
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125517_ _stx125514_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127674
           gxc#current-compile-method
           _self125517_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp127677 (list gxc#::basic-xform::t))
            (__tmp127675
             (let ((__tmp127676
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp127676 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp127677
         '()
         __tmp127675
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args125511_
        (apply make-instance gxc#::lift-top-lambdas::t _$args125511_)))
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
      (lambda (_stx125503_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self125506_
                (let ((__obj127650
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj127650))
               (__tmp127678
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self125506_ _stx125503_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp127678
           gxc#current-compile-method
           _self125506_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self125405_ _stx125406_)
        (let* ((___stx125568125569_ _stx125406_)
               (_g125409125429_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125568125569_)))))
          (let ((___kont125570125571_
                 (lambda (_L125473_ _L125474_)
                   (let ((_sym125492_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125474_))))
                     (if (let ((__tmp127679 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127679 _sym125492_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125492_))
                         (let ((_type125493125495_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L125473_))))
                           (if _type125493125495_
                               (let ((_type125498_ _type125493125495_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym125492_
                                  _type125498_))
                               '#f))))))
                (___kont125572125573_ (lambda () '#!void)))
            (let ((___match125601125602_
                   (lambda (_e125413125441_
                            _hd125414125444_
                            _tl125415125446_
                            _e125416125449_
                            _hd125417125452_
                            _tl125418125454_
                            _e125419125457_
                            _hd125420125460_
                            _tl125421125462_
                            _e125422125465_
                            _hd125423125468_
                            _tl125424125470_)
                     (let ((_L125473_ _hd125423125468_)
                           (_L125474_ _hd125420125460_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125474_))
                           (___kont125570125571_ _L125473_ _L125474_)
                           (___kont125572125573_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125568125569_))
                  (let ((_e125413125441_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125568125569_))))
                    (let ((_tl125415125446_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125413125441_)))
                          (_hd125414125444_
                           (let ()
                             (declare (not safe))
                             (##car _e125413125441_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125415125446_))
                          (let ((_e125416125449_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125415125446_))))
                            (let ((_tl125418125454_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125416125449_)))
                                  (_hd125417125452_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125416125449_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125417125452_))
                                  (let ((_e125419125457_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125417125452_))))
                                    (let ((_tl125421125462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125419125457_)))
                                          (_hd125420125460_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125419125457_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125421125462_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125418125454_))
                                              (let ((_e125422125465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125418125454_))))
                                                (let ((_tl125424125470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125422125465_)))
                                                      (_hd125423125468_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125422125465_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125424125470_))
                                                      (___match125601125602_
                                                       _e125413125441_
                                                       _hd125414125444_
                                                       _tl125415125446_
                                                       _e125416125449_
                                                       _hd125417125452_
                                                       _tl125418125454_
                                                       _e125419125457_
                                                       _hd125420125460_
                                                       _tl125421125462_
                                                       _e125422125465_
                                                       _hd125423125468_
                                                       _tl125424125470_)
                                                      (___kont125572125573_))))
                                              (___kont125572125573_))
                                          (___kont125572125573_))))
                                  (___kont125572125573_))))
                          (___kont125572125573_))))
                  (___kont125572125573_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self125260_ _stx125261_)
        (let* ((___stx125604125605_ _stx125261_)
               (_g125264125295_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125604125605_)))))
          (let ((___kont125606125607_
                 (lambda (_L125377_ _L125378_)
                   (let ((_sym125394_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125378_))))
                     (if (let ((__tmp127680 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp127680 _sym125394_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym125394_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym125394_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym125394_))
                             (let ((_type125395125397_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L125377_))))
                               (if _type125395125397_
                                   (let ((_type125400_ _type125395125397_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym125394_
                                      _type125400_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self125260_ _L125377_)))))
                (___kont125608125609_
                 (lambda (_L125324_ _L125325_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self125260_ _L125324_)))))
            (let ((___match125637125638_
                   (lambda (_e125268125345_
                            _hd125269125348_
                            _tl125270125350_
                            _e125271125353_
                            _hd125272125356_
                            _tl125273125358_
                            _e125274125361_
                            _hd125275125364_
                            _tl125276125366_
                            _e125277125369_
                            _hd125278125372_
                            _tl125279125374_)
                     (let ((_L125377_ _hd125278125372_)
                           (_L125378_ _hd125275125364_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L125378_))
                           (___kont125606125607_ _L125377_ _L125378_)
                           (___kont125608125609_
                            _hd125278125372_
                            _hd125272125356_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125604125605_))
                  (let ((_e125268125345_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125604125605_))))
                    (let ((_tl125270125350_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125268125345_)))
                          (_hd125269125348_
                           (let ()
                             (declare (not safe))
                             (##car _e125268125345_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125270125350_))
                          (let ((_e125271125353_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125270125350_))))
                            (let ((_tl125273125358_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125271125353_)))
                                  (_hd125272125356_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125271125353_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125272125356_))
                                  (let ((_e125274125361_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125272125356_))))
                                    (let ((_tl125276125366_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125274125361_)))
                                          (_hd125275125364_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125274125361_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125276125366_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125273125358_))
                                              (let ((_e125277125369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125273125358_))))
                                                (let ((_tl125279125374_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125277125369_)))
                                                      (_hd125278125372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125277125369_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125279125374_))
                                                      (___match125637125638_
                                                       _e125268125345_
                                                       _hd125269125348_
                                                       _tl125270125350_
                                                       _e125271125353_
                                                       _hd125272125356_
                                                       _tl125273125358_
                                                       _e125274125361_
                                                       _hd125275125364_
                                                       _tl125276125366_
                                                       _e125277125369_
                                                       _hd125278125372_
                                                       _tl125279125374_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125264125295_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125264125295_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125273125358_))
                                              (let ((_e125288125316_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125273125358_))))
                                                (let ((_tl125290125321_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125288125316_)))
                                                      (_hd125289125319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125288125316_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125290125321_))
                                                      (___kont125608125609_
                                                       _hd125289125319_
                                                       _hd125272125356_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125264125295_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125264125295_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125273125358_))
                                      (let ((_e125288125316_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125273125358_))))
                                        (let ((_tl125290125321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125288125316_)))
                                              (_hd125289125319_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125288125316_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125290125321_))
                                              (___kont125608125609_
                                               _hd125289125319_
                                               _hd125272125356_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125264125295_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125264125295_))))))
                          (let () (declare (not safe)) (_g125264125295_)))))
                  (let () (declare (not safe)) (_g125264125295_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self125040_ _stx125041_)
        (letrec ((_collect-e125043_
                  (lambda (_hd125204_ _expr125205_)
                    (let* ((___stx125660125661_ _hd125204_)
                           (_g125208125218_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx125660125661_)))))
                      (let ((___kont125662125663_
                             (lambda (_L125238_)
                               (let ((_sym125249_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L125238_))))
                                 (if (let ((__tmp127681
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp127681 _sym125249_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym125249_))
                                     (let ((_type125250125252_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr125205_))))
                                       (if _type125250125252_
                                           (let ((_type125255_
                                                  _type125250125252_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym125249_
                                              _type125255_
                                              '#t))
                                           '#f))))))
                            (___kont125664125665_ (lambda () '#!void)))
                        (let ((___match125673125674_
                               (lambda (_e125211125230_
                                        _hd125212125233_
                                        _tl125213125235_)
                                 (let ((_L125238_ _hd125212125233_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L125238_))
                                       (___kont125662125663_ _L125238_)
                                       (___kont125664125665_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx125660125661_))
                              (let ((_e125211125230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx125660125661_))))
                                (let ((_tl125213125235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125211125230_)))
                                      (_hd125212125233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125211125230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125213125235_))
                                      (___match125673125674_
                                       _e125211125230_
                                       _hd125212125233_
                                       _tl125213125235_)
                                      (___kont125664125665_))))
                              (___kont125664125665_))))))))
          (let* ((_g125045125080_
                  (lambda (_g125046125077_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125046125077_))))
                 (_g125044125201_
                  (lambda (_g125046125083_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125046125083_))
                        (let ((_e125050125085_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125046125083_))))
                          (let ((_hd125051125088_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125050125085_)))
                                (_tl125052125090_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125050125085_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125052125090_))
                                (let ((_e125053125093_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125052125090_))))
                                  (let ((_hd125054125096_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125053125093_)))
                                        (_tl125055125098_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125053125093_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd125054125096_))
                                        (let ((_g127682_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd125054125096_
                                                  '0))))
                                          (begin
                                            (let ((_g127683_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g127682_)
                                                         (##vector-length
                                                          _g127682_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g127683_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g127683_)))
                                            (let ((_target125056125101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127682_
                                                      0)))
                                                  (_tl125058125103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g127682_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125058125103_))
                                                  (letrec ((_loop125059125106_
                                                            (lambda (_hd125057125109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr125063125111_
                             _hd125064125113_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125057125109_))
                          (let ((_e125060125116_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125057125109_))))
                            (let ((_lp-hd125061125119_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125060125116_)))
                                  (_lp-tl125062125121_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125060125116_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd125061125119_))
                                  (let ((_e125067125124_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd125061125119_))))
                                    (let ((_hd125068125127_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125067125124_)))
                                          (_tl125069125129_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125067125124_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125069125129_))
                                          (let ((_e125070125132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125069125129_))))
                                            (let ((_hd125071125135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125070125132_)))
                                                  (_tl125072125137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125070125132_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125072125137_))
                                                  (let ((__tmp127685
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd125071125135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr125063125111_)))
                (__tmp127684
                 (let ()
                   (declare (not safe))
                   (cons _hd125068125127_ _hd125064125113_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop125059125106_
                                                     _lp-tl125062125121_
                                                     __tmp127685
                                                     __tmp127684))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125045125080_
                                                     _g125046125083_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125045125080_
                                             _g125046125083_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125045125080_ _g125046125083_)))))
                          (let ((_expr125065125140_
                                 (reverse _expr125063125111_))
                                (_hd125066125142_ (reverse _hd125064125113_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125055125098_))
                                (let ((_e125073125145_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125055125098_))))
                                  (let ((_hd125074125148_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125073125145_)))
                                        (_tl125075125150_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125073125145_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125075125150_))
                                        ((lambda (_L125153_
                                                  _L125154_
                                                  _L125155_)
                                           (for-each
                                            _collect-e125043_
                                            (let ((__tmp127686
                                                   (lambda (_g125175125178_
                                                            _g125176125180_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125175125178_
                                                             _g125176125180_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127686
                                                      '()
                                                      _L125155_))
                                            (let ((__tmp127687
                                                   (lambda (_g125182125185_
                                                            _g125183125187_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125182125185_
                                                             _g125183125187_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127687
                                                      '()
                                                      _L125154_)))
                                           (for-each
                                            (lambda (_g125189125191_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self125040_
                                                 _g125189125191_)))
                                            (let ((__tmp127688
                                                   (lambda (_g125193125196_
                                                            _g125194125198_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g125193125196_
                                                             _g125194125198_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp127688
                                                      '()
                                                      _L125154_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self125040_
                                              _L125153_)))
                                         _hd125074125148_
                                         _expr125065125140_
                                         _hd125066125142_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125045125080_ _g125046125083_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125045125080_ _g125046125083_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop125059125106_
                                                       _target125056125101_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125045125080_
                                                     _g125046125083_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g125045125080_ _g125046125083_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125045125080_ _g125046125083_)))))
                        (let ()
                          (declare (not safe))
                          (_g125045125080_ _g125046125083_))))))
            (declare (not safe))
            (_g125044125201_ _stx125041_)))))
    (define gxc#collect-type-call%
      (lambda (_self124527_ _stx124528_)
        (let* ((___stx125676125677_ _stx124528_)
               (_g124532124647_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125676125677_)))))
          (let ((___kont125678125679_
                 (lambda (_L124990_ _L124991_ _L124992_ _L124993_ _L124994_)
                   (let ((__tmp127692
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124993_)))
                         (__tmp127691
                          (let () (declare (not safe)) (gx#stx-e _L124992_)))
                         (__tmp127690
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124991_)))
                         (__tmp127689
                          (let () (declare (not safe)) (gx#stx-e _L124990_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127692
                      __tmp127691
                      __tmp127690
                      __tmp127689))))
                (___kont125680125681_
                 (lambda (_L124818_ _L124819_ _L124820_ _L124821_)
                   (let ((__tmp127695
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124820_)))
                         (__tmp127694
                          (let () (declare (not safe)) (gx#stx-e _L124819_)))
                         (__tmp127693
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124818_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp127695
                      __tmp127694
                      __tmp127693
                      '#f))))
                (___kont125682125683_
                 (lambda (_L124684_)
                   (for-each
                    (lambda (_g124697124699_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self124527_ _g124697124699_)))
                    (let ((__tmp127696
                           (lambda (_g124701124704_ _g124702124706_)
                             (let ()
                               (declare (not safe))
                               (cons _g124701124704_ _g124702124706_)))))
                      (declare (not safe))
                      (foldr1 __tmp127696 '() _L124684_))))))
            (let* ((___match125933125934_
                    (lambda (_e124631124652_
                             _hd124632124655_
                             _tl124633124657_
                             ___splice125684125685_
                             _target124634124660_
                             _tl124636124662_)
                      (letrec ((_loop124637124665_
                                (lambda (_hd124635124668_ _expr124641124670_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124635124668_))
                                      (let ((_e124638124673_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124635124668_))))
                                        (let ((_lp-tl124640124678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124638124673_)))
                                              (_lp-hd124639124676_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124638124673_))))
                                          (let ((__tmp127697
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124639124676_
                                                         _expr124641124670_))))
                                            (declare (not safe))
                                            (_loop124637124665_
                                             _lp-tl124640124678_
                                             __tmp127697))))
                                      (let ((_expr124642124681_
                                             (reverse _expr124641124670_)))
                                        (___kont125682125683_
                                         _expr124642124681_))))))
                        (let ()
                          (declare (not safe))
                          (_loop124637124665_ _target124634124660_ '())))))
                   (___match125813125814_
                    (lambda (_e124539124862_
                             _hd124540124865_
                             _tl124541124867_
                             _e124542124870_
                             _hd124543124873_
                             _tl124544124875_
                             _e124545124878_
                             _hd124546124881_
                             _tl124547124883_
                             _e124548124886_
                             _hd124549124889_
                             _tl124550124891_
                             _e124551124894_
                             _hd124552124897_
                             _tl124553124899_
                             _e124554124902_
                             _hd124555124905_
                             _tl124556124907_
                             _e124557124910_
                             _hd124558124913_
                             _tl124559124915_
                             _e124560124918_
                             _hd124561124921_
                             _tl124562124923_
                             _e124563124926_
                             _hd124564124929_
                             _tl124565124931_
                             _e124566124934_
                             _hd124567124937_
                             _tl124568124939_
                             _e124569124942_
                             _hd124570124945_
                             _tl124571124947_
                             _e124572124950_
                             _hd124573124953_
                             _tl124574124955_
                             _e124575124958_
                             _hd124576124961_
                             _tl124577124963_
                             _e124578124966_
                             _hd124579124969_
                             _tl124580124971_
                             _e124581124974_
                             _hd124582124977_
                             _tl124583124979_
                             _e124584124982_
                             _hd124585124985_
                             _tl124586124987_)
                      (let ((_L124990_ _hd124585124985_)
                            (_L124991_ _hd124576124961_)
                            (_L124992_ _hd124567124937_)
                            (_L124993_ _hd124558124913_)
                            (_L124994_ _hd124549124889_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L124994_
                               'bind-method!))
                            (___kont125678125679_
                             _L124990_
                             _L124991_
                             _L124992_
                             _L124993_
                             _L124994_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl124541124867_))
                                (let ((___splice125684125685_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl124541124867_
                                          '0))))
                                  (let ((_tl124636124662_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125684125685_
                                            '1)))
                                        (_target124634124660_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice125684125685_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124636124662_))
                                        (___match125933125934_
                                         _e124539124862_
                                         _hd124540124865_
                                         _tl124541124867_
                                         ___splice125684125685_
                                         _target124634124660_
                                         _tl124636124662_)
                                        (let ()
                                          (declare (not safe))
                                          (_g124532124647_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124532124647_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125676125677_))
                  (let ((_e124539124862_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125676125677_))))
                    (let ((_tl124541124867_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124539124862_)))
                          (_hd124540124865_
                           (let ()
                             (declare (not safe))
                             (##car _e124539124862_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124541124867_))
                          (let ((_e124542124870_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124541124867_))))
                            (let ((_tl124544124875_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124542124870_)))
                                  (_hd124543124873_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124542124870_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd124543124873_))
                                  (let ((_e124545124878_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd124543124873_))))
                                    (let ((_tl124547124883_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124545124878_)))
                                          (_hd124546124881_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124545124878_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd124546124881_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd124546124881_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124547124883_))
                                                  (let ((_e124548124886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124547124883_))))
                                                    (let ((_tl124550124891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124548124886_)))
                                                          (_hd124549124889_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124548124886_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124550124891_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124544124875_))
                      (let ((_e124551124894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124544124875_))))
                        (let ((_tl124553124899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124551124894_)))
                              (_hd124552124897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124551124894_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124552124897_))
                              (let ((_e124554124902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124552124897_))))
                                (let ((_tl124556124907_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124554124902_)))
                                      (_hd124555124905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124554124902_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124555124905_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124555124905_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124556124907_))
                                              (let ((_e124557124910_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124556124907_))))
                                                (let ((_tl124559124915_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124557124910_)))
                                                      (_hd124558124913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124557124910_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124559124915_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124553124899_))
                                                          (let ((_e124560124918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124553124899_))))
                    (let ((_tl124562124923_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124560124918_)))
                          (_hd124561124921_
                           (let ()
                             (declare (not safe))
                             (##car _e124560124918_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124561124921_))
                          (let ((_e124563124926_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124561124921_))))
                            (let ((_tl124565124931_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124563124926_)))
                                  (_hd124564124929_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124563124926_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124564124929_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd124564124929_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124565124931_))
                                          (let ((_e124566124934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124565124931_))))
                                            (let ((_tl124568124939_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124566124934_)))
                                                  (_hd124567124937_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124566124934_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124568124939_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124562124923_))
                                                      (let ((_e124569124942_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124562124923_))))
                (let ((_tl124571124947_
                       (let () (declare (not safe)) (##cdr _e124569124942_)))
                      (_hd124570124945_
                       (let () (declare (not safe)) (##car _e124569124942_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124570124945_))
                      (let ((_e124572124950_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124570124945_))))
                        (let ((_tl124574124955_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124572124950_)))
                              (_hd124573124953_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124572124950_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124573124953_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124573124953_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124574124955_))
                                      (let ((_e124575124958_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124574124955_))))
                                        (let ((_tl124577124963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124575124958_)))
                                              (_hd124576124961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124575124958_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124577124963_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124571124947_))
                                                  (let ((_e124578124966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124571124947_))))
                                                    (let ((_tl124580124971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124578124966_)))
                                                          (_hd124579124969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124578124966_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124579124969_))
                                                          (let ((_e124581124974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124579124969_))))
                    (let ((_tl124583124979_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124581124974_)))
                          (_hd124582124977_
                           (let ()
                             (declare (not safe))
                             (##car _e124581124974_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124582124977_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124582124977_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124583124979_))
                                  (let ((_e124584124982_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124583124979_))))
                                    (let ((_tl124586124987_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124584124982_)))
                                          (_hd124585124985_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124584124982_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124586124987_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124580124971_))
                                              (___match125813125814_
                                               _e124539124862_
                                               _hd124540124865_
                                               _tl124541124867_
                                               _e124542124870_
                                               _hd124543124873_
                                               _tl124544124875_
                                               _e124545124878_
                                               _hd124546124881_
                                               _tl124547124883_
                                               _e124548124886_
                                               _hd124549124889_
                                               _tl124550124891_
                                               _e124551124894_
                                               _hd124552124897_
                                               _tl124553124899_
                                               _e124554124902_
                                               _hd124555124905_
                                               _tl124556124907_
                                               _e124557124910_
                                               _hd124558124913_
                                               _tl124559124915_
                                               _e124560124918_
                                               _hd124561124921_
                                               _tl124562124923_
                                               _e124563124926_
                                               _hd124564124929_
                                               _tl124565124931_
                                               _e124566124934_
                                               _hd124567124937_
                                               _tl124568124939_
                                               _e124569124942_
                                               _hd124570124945_
                                               _tl124571124947_
                                               _e124572124950_
                                               _hd124573124953_
                                               _tl124574124955_
                                               _e124575124958_
                                               _hd124576124961_
                                               _tl124577124963_
                                               _e124578124966_
                                               _hd124579124969_
                                               _tl124580124971_
                                               _e124581124974_
                                               _hd124582124977_
                                               _tl124583124979_
                                               _e124584124982_
                                               _hd124585124985_
                                               _tl124586124987_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124541124867_))
                                                  (let ((___splice125684125685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124541124867_
                                                            '0))))
                                                    (let ((_tl124636124662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '1)))
                                                          (_target124634124660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124636124662_))
                                                          (___match125933125934_
                                                           _e124539124862_
                                                           _hd124540124865_
                                                           _tl124541124867_
                                                           ___splice125684125685_
                                                           _target124634124660_
                                                           _tl124636124662_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124532124647_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124532124647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124541124867_))
                                              (let ((___splice125684125685_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124541124867_
                                                        '0))))
                                                (let ((_tl124636124662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '1)))
                                                      (_target124634124660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124636124662_))
                                                      (___match125933125934_
                                                       _e124539124862_
                                                       _hd124540124865_
                                                       _tl124541124867_
                                                       ___splice125684125685_
                                                       _target124634124660_
                                                       _tl124636124662_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124532124647_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124541124867_))
                                      (let ((___splice125684125685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124541124867_
                                                '0))))
                                        (let ((_tl124636124662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '1)))
                                              (_target124634124660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124636124662_))
                                              (___match125933125934_
                                               _e124539124862_
                                               _hd124540124865_
                                               _tl124541124867_
                                               ___splice125684125685_
                                               _target124634124660_
                                               _tl124636124662_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124532124647_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124541124867_))
                                  (let ((___splice125684125685_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124541124867_
                                            '0))))
                                    (let ((_tl124636124662_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125684125685_
                                              '1)))
                                          (_target124634124660_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125684125685_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124636124662_))
                                          (___match125933125934_
                                           _e124539124862_
                                           _hd124540124865_
                                           _tl124541124867_
                                           ___splice125684125685_
                                           _target124634124660_
                                           _tl124636124662_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124532124647_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124532124647_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124541124867_))
                              (let ((___splice125684125685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124541124867_
                                        '0))))
                                (let ((_tl124636124662_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125684125685_
                                          '1)))
                                      (_target124634124660_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125684125685_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124636124662_))
                                      (___match125933125934_
                                       _e124539124862_
                                       _hd124540124865_
                                       _tl124541124867_
                                       ___splice125684125685_
                                       _target124634124660_
                                       _tl124636124662_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124532124647_)))))
                              (let ()
                                (declare (not safe))
                                (_g124532124647_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124541124867_))
                      (let ((___splice125684125685_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124541124867_ '0))))
                        (let ((_tl124636124662_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '1)))
                              (_target124634124660_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124636124662_))
                              (___match125933125934_
                               _e124539124862_
                               _hd124540124865_
                               _tl124541124867_
                               ___splice125684125685_
                               _target124634124660_
                               _tl124636124662_)
                              (let ()
                                (declare (not safe))
                                (_g124532124647_)))))
                      (let () (declare (not safe)) (_g124532124647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124571124947_))
                                                      (if (let ((__tmp127698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp127698 'bind-method!))
                  (let ((_L124818_ _hd124576124961_)
                        (_L124819_ _hd124567124937_)
                        (_L124820_ _hd124558124913_)
                        (_L124821_ _hd124549124889_))
                    (___kont125680125681_
                     _L124818_
                     _L124819_
                     _L124820_
                     _L124821_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124541124867_))
                      (let ((___splice125684125685_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124541124867_ '0))))
                        (let ((_tl124636124662_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '1)))
                              (_target124634124660_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124636124662_))
                              (___match125933125934_
                               _e124539124862_
                               _hd124540124865_
                               _tl124541124867_
                               ___splice125684125685_
                               _target124634124660_
                               _tl124636124662_)
                              (let ()
                                (declare (not safe))
                                (_g124532124647_)))))
                      (let () (declare (not safe)) (_g124532124647_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124541124867_))
                  (let ((___splice125684125685_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124541124867_ '0))))
                    (let ((_tl124636124662_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125684125685_ '1)))
                          (_target124634124660_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125684125685_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124636124662_))
                          (___match125933125934_
                           _e124539124862_
                           _hd124540124865_
                           _tl124541124867_
                           ___splice125684125685_
                           _target124634124660_
                           _tl124636124662_)
                          (let () (declare (not safe)) (_g124532124647_)))))
                  (let () (declare (not safe)) (_g124532124647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124541124867_))
                                                  (let ((___splice125684125685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124541124867_
                                                            '0))))
                                                    (let ((_tl124636124662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '1)))
                                                          (_target124634124660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124636124662_))
                                                          (___match125933125934_
                                                           _e124539124862_
                                                           _hd124540124865_
                                                           _tl124541124867_
                                                           ___splice125684125685_
                                                           _target124634124660_
                                                           _tl124636124662_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124532124647_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124532124647_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124541124867_))
                                          (let ((___splice125684125685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124541124867_
                                                    '0))))
                                            (let ((_tl124636124662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125684125685_
                                                      '1)))
                                                  (_target124634124660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125684125685_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124636124662_))
                                                  (___match125933125934_
                                                   _e124539124862_
                                                   _hd124540124865_
                                                   _tl124541124867_
                                                   ___splice125684125685_
                                                   _target124634124660_
                                                   _tl124636124662_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124532124647_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124532124647_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124541124867_))
                                      (let ((___splice125684125685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124541124867_
                                                '0))))
                                        (let ((_tl124636124662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '1)))
                                              (_target124634124660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124636124662_))
                                              (___match125933125934_
                                               _e124539124862_
                                               _hd124540124865_
                                               _tl124541124867_
                                               ___splice125684125685_
                                               _target124634124660_
                                               _tl124636124662_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124532124647_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124541124867_))
                                  (let ((___splice125684125685_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124541124867_
                                            '0))))
                                    (let ((_tl124636124662_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125684125685_
                                              '1)))
                                          (_target124634124660_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125684125685_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124636124662_))
                                          (___match125933125934_
                                           _e124539124862_
                                           _hd124540124865_
                                           _tl124541124867_
                                           ___splice125684125685_
                                           _target124634124660_
                                           _tl124636124662_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124532124647_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124532124647_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124541124867_))
                          (let ((___splice125684125685_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124541124867_
                                    '0))))
                            (let ((_tl124636124662_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125684125685_ '1)))
                                  (_target124634124660_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125684125685_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124636124662_))
                                  (___match125933125934_
                                   _e124539124862_
                                   _hd124540124865_
                                   _tl124541124867_
                                   ___splice125684125685_
                                   _target124634124660_
                                   _tl124636124662_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124532124647_)))))
                          (let () (declare (not safe)) (_g124532124647_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124541124867_))
                  (let ((___splice125684125685_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124541124867_ '0))))
                    (let ((_tl124636124662_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125684125685_ '1)))
                          (_target124634124660_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125684125685_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124636124662_))
                          (___match125933125934_
                           _e124539124862_
                           _hd124540124865_
                           _tl124541124867_
                           ___splice125684125685_
                           _target124634124660_
                           _tl124636124662_)
                          (let () (declare (not safe)) (_g124532124647_)))))
                  (let () (declare (not safe)) (_g124532124647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124541124867_))
                                                      (let ((___splice125684125685_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124541124867_ '0))))
                (let ((_tl124636124662_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125684125685_ '1)))
                      (_target124634124660_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125684125685_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124636124662_))
                      (___match125933125934_
                       _e124539124862_
                       _hd124540124865_
                       _tl124541124867_
                       ___splice125684125685_
                       _target124634124660_
                       _tl124636124662_)
                      (let () (declare (not safe)) (_g124532124647_)))))
              (let () (declare (not safe)) (_g124532124647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124541124867_))
                                              (let ((___splice125684125685_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124541124867_
                                                        '0))))
                                                (let ((_tl124636124662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '1)))
                                                      (_target124634124660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124636124662_))
                                                      (___match125933125934_
                                                       _e124539124862_
                                                       _hd124540124865_
                                                       _tl124541124867_
                                                       ___splice125684125685_
                                                       _target124634124660_
                                                       _tl124636124662_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124532124647_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124541124867_))
                                          (let ((___splice125684125685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124541124867_
                                                    '0))))
                                            (let ((_tl124636124662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125684125685_
                                                      '1)))
                                                  (_target124634124660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125684125685_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124636124662_))
                                                  (___match125933125934_
                                                   _e124539124862_
                                                   _hd124540124865_
                                                   _tl124541124867_
                                                   ___splice125684125685_
                                                   _target124634124660_
                                                   _tl124636124662_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124532124647_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124532124647_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124541124867_))
                                      (let ((___splice125684125685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124541124867_
                                                '0))))
                                        (let ((_tl124636124662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '1)))
                                              (_target124634124660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124636124662_))
                                              (___match125933125934_
                                               _e124539124862_
                                               _hd124540124865_
                                               _tl124541124867_
                                               ___splice125684125685_
                                               _target124634124660_
                                               _tl124636124662_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124532124647_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124541124867_))
                              (let ((___splice125684125685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124541124867_
                                        '0))))
                                (let ((_tl124636124662_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125684125685_
                                          '1)))
                                      (_target124634124660_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125684125685_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124636124662_))
                                      (___match125933125934_
                                       _e124539124862_
                                       _hd124540124865_
                                       _tl124541124867_
                                       ___splice125684125685_
                                       _target124634124660_
                                       _tl124636124662_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124532124647_)))))
                              (let ()
                                (declare (not safe))
                                (_g124532124647_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124541124867_))
                      (let ((___splice125684125685_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124541124867_ '0))))
                        (let ((_tl124636124662_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '1)))
                              (_target124634124660_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124636124662_))
                              (___match125933125934_
                               _e124539124862_
                               _hd124540124865_
                               _tl124541124867_
                               ___splice125684125685_
                               _target124634124660_
                               _tl124636124662_)
                              (let ()
                                (declare (not safe))
                                (_g124532124647_)))))
                      (let () (declare (not safe)) (_g124532124647_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl124541124867_))
                  (let ((___splice125684125685_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl124541124867_ '0))))
                    (let ((_tl124636124662_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125684125685_ '1)))
                          (_target124634124660_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice125684125685_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl124636124662_))
                          (___match125933125934_
                           _e124539124862_
                           _hd124540124865_
                           _tl124541124867_
                           ___splice125684125685_
                           _target124634124660_
                           _tl124636124662_)
                          (let () (declare (not safe)) (_g124532124647_)))))
                  (let () (declare (not safe)) (_g124532124647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124541124867_))
                                                  (let ((___splice125684125685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124541124867_
                                                            '0))))
                                                    (let ((_tl124636124662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '1)))
                                                          (_target124634124660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124636124662_))
                                                          (___match125933125934_
                                                           _e124539124862_
                                                           _hd124540124865_
                                                           _tl124541124867_
                                                           ___splice125684125685_
                                                           _target124634124660_
                                                           _tl124636124662_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124532124647_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124532124647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124541124867_))
                                              (let ((___splice125684125685_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124541124867_
                                                        '0))))
                                                (let ((_tl124636124662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '1)))
                                                      (_target124634124660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124636124662_))
                                                      (___match125933125934_
                                                       _e124539124862_
                                                       _hd124540124865_
                                                       _tl124541124867_
                                                       ___splice125684125685_
                                                       _target124634124660_
                                                       _tl124636124662_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124532124647_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl124541124867_))
                                          (let ((___splice125684125685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl124541124867_
                                                    '0))))
                                            (let ((_tl124636124662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125684125685_
                                                      '1)))
                                                  (_target124634124660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice125684125685_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124636124662_))
                                                  (___match125933125934_
                                                   _e124539124862_
                                                   _hd124540124865_
                                                   _tl124541124867_
                                                   ___splice125684125685_
                                                   _target124634124660_
                                                   _tl124636124662_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124532124647_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g124532124647_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl124541124867_))
                                  (let ((___splice125684125685_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl124541124867_
                                            '0))))
                                    (let ((_tl124636124662_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125684125685_
                                              '1)))
                                          (_target124634124660_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice125684125685_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124636124662_))
                                          (___match125933125934_
                                           _e124539124862_
                                           _hd124540124865_
                                           _tl124541124867_
                                           ___splice125684125685_
                                           _target124634124660_
                                           _tl124636124662_)
                                          (let ()
                                            (declare (not safe))
                                            (_g124532124647_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124532124647_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl124541124867_))
                          (let ((___splice125684125685_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl124541124867_
                                    '0))))
                            (let ((_tl124636124662_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice125684125685_ '1)))
                                  (_target124634124660_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice125684125685_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124636124662_))
                                  (___match125933125934_
                                   _e124539124862_
                                   _hd124540124865_
                                   _tl124541124867_
                                   ___splice125684125685_
                                   _target124634124660_
                                   _tl124636124662_)
                                  (let ()
                                    (declare (not safe))
                                    (_g124532124647_)))))
                          (let () (declare (not safe)) (_g124532124647_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl124541124867_))
                      (let ((___splice125684125685_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl124541124867_ '0))))
                        (let ((_tl124636124662_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '1)))
                              (_target124634124660_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice125684125685_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl124636124662_))
                              (___match125933125934_
                               _e124539124862_
                               _hd124540124865_
                               _tl124541124867_
                               ___splice125684125685_
                               _target124634124660_
                               _tl124636124662_)
                              (let ()
                                (declare (not safe))
                                (_g124532124647_)))))
                      (let () (declare (not safe)) (_g124532124647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl124541124867_))
                                                      (let ((___splice125684125685_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl124541124867_ '0))))
                (let ((_tl124636124662_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125684125685_ '1)))
                      (_target124634124660_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice125684125685_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl124636124662_))
                      (___match125933125934_
                       _e124539124862_
                       _hd124540124865_
                       _tl124541124867_
                       ___splice125684125685_
                       _target124634124660_
                       _tl124636124662_)
                      (let () (declare (not safe)) (_g124532124647_)))))
              (let () (declare (not safe)) (_g124532124647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl124541124867_))
                                                  (let ((___splice125684125685_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124541124867_
                                                            '0))))
                                                    (let ((_tl124636124662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '1)))
                                                          (_target124634124660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125684125685_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124636124662_))
                                                          (___match125933125934_
                                                           _e124539124862_
                                                           _hd124540124865_
                                                           _tl124541124867_
                                                           ___splice125684125685_
                                                           _target124634124660_
                                                           _tl124636124662_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124532124647_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124532124647_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124541124867_))
                                              (let ((___splice125684125685_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl124541124867_
                                                        '0))))
                                                (let ((_tl124636124662_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '1)))
                                                      (_target124634124660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice125684125685_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124636124662_))
                                                      (___match125933125934_
                                                       _e124539124862_
                                                       _hd124540124865_
                                                       _tl124541124867_
                                                       ___splice125684125685_
                                                       _target124634124660_
                                                       _tl124636124662_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124532124647_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl124541124867_))
                                      (let ((___splice125684125685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl124541124867_
                                                '0))))
                                        (let ((_tl124636124662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '1)))
                                              (_target124634124660_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice125684125685_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124636124662_))
                                              (___match125933125934_
                                               _e124539124862_
                                               _hd124540124865_
                                               _tl124541124867_
                                               ___splice125684125685_
                                               _target124634124660_
                                               _tl124636124662_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124532124647_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124532124647_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl124541124867_))
                              (let ((___splice125684125685_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl124541124867_
                                        '0))))
                                (let ((_tl124636124662_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125684125685_
                                          '1)))
                                      (_target124634124660_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice125684125685_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124636124662_))
                                      (___match125933125934_
                                       _e124539124862_
                                       _hd124540124865_
                                       _tl124541124867_
                                       ___splice125684125685_
                                       _target124634124660_
                                       _tl124636124662_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124532124647_)))))
                              (let ()
                                (declare (not safe))
                                (_g124532124647_))))))
                  (let () (declare (not safe)) (_g124532124647_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self124466_ _stx124467_)
        (let* ((___stx125936125937_ _stx124467_)
               (_g124470124483_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125936125937_)))))
          (let ((___kont125938125939_
                 (lambda (_L124511_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self124466_ _L124511_))))
                (___kont125940125941_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx125936125937_))
                (let ((_e124473124495_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx125936125937_))))
                  (let ((_tl124475124500_
                         (let () (declare (not safe)) (##cdr _e124473124495_)))
                        (_hd124474124498_
                         (let ()
                           (declare (not safe))
                           (##car _e124473124495_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124475124500_))
                        (let ((_e124476124503_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124475124500_))))
                          (let ((_tl124478124508_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124476124503_)))
                                (_hd124477124506_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124476124503_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124478124508_))
                                (___kont125938125939_ _hd124477124506_)
                                (___kont125940125941_))))
                        (___kont125940125941_))))
                (___kont125940125941_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self124345_ _stx124346_)
        (let* ((_g124348124365_
                (lambda (_g124349124362_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124349124362_))))
               (_g124347124463_
                (lambda (_g124349124368_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124349124368_))
                      (let ((_e124352124370_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124349124368_))))
                        (let ((_hd124353124373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124352124370_)))
                              (_tl124354124375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124352124370_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124354124375_))
                              (let ((_e124355124378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124354124375_))))
                                (let ((_hd124356124381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124355124378_)))
                                      (_tl124357124383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124355124378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124357124383_))
                                      (let ((_e124358124386_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124357124383_))))
                                        (let ((_hd124359124389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124358124386_)))
                                              (_tl124360124391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124358124386_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124360124391_))
                                              ((lambda (_L124394_ _L124395_)
                                                 (let* ((___stx125958125959_
                                                         _L124395_)
                                                        (_g124411124422_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx125958125959_)))))
                                                   (let ((___kont125960125961_
                                                          (lambda (_L124442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L124443_)
                    (let ((_$e124455_
                           (let ((__tmp127699
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L124443_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp127699))))
                      (if _$e124455_
                          ((lambda (_type-e124458_)
                             (_type-e124458_ _stx124346_ _L124395_))
                           _$e124455_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self124345_ _L124394_))))))
                 (___kont125962125963_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self124345_ _L124394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match125969125970_
                                                            (lambda (_e124415124434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd124416124437_
                             _tl124417124439_)
                      (let ((_L124442_ _tl124417124439_)
                            (_L124443_ _hd124416124437_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L124443_))
                            (___kont125960125961_ _L124442_ _L124443_)
                            (___kont125962125963_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx125958125959_))
                   (let ((_e124415124434_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx125958125959_))))
                     (let ((_tl124417124439_
                            (let ()
                              (declare (not safe))
                              (##cdr _e124415124434_)))
                           (_hd124416124437_
                            (let ()
                              (declare (not safe))
                              (##car _e124415124434_))))
                       (___match125969125970_
                        _e124415124434_
                        _hd124416124437_
                        _tl124417124439_)))
                   (___kont125962125963_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd124359124389_
                                               _hd124356124381_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124348124365_
                                                 _g124349124368_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124348124365_ _g124349124368_)))))
                              (let ()
                                (declare (not safe))
                                (_g124348124365_ _g124349124368_)))))
                      (let ()
                        (declare (not safe))
                        (_g124348124365_ _g124349124368_))))))
          (declare (not safe))
          (_g124347124463_ _stx124346_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx124189_ _ann124190_)
        (let* ((_g124192124229_
                (lambda (_g124193124226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124193124226_))))
               (_g124191124342_
                (lambda (_g124193124232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124193124232_))
                      (let ((_e124201124234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124193124232_))))
                        (let ((_hd124202124237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124201124234_)))
                              (_tl124203124239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124201124234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124203124239_))
                              (let ((_e124204124242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124203124239_))))
                                (let ((_hd124205124245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124204124242_)))
                                      (_tl124206124247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124204124242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124206124247_))
                                      (let ((_e124207124250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124206124247_))))
                                        (let ((_hd124208124253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124207124250_)))
                                              (_tl124209124255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124207124250_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124209124255_))
                                              (let ((_e124210124258_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124209124255_))))
                                                (let ((_hd124211124261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124210124258_)))
                                                      (_tl124212124263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124210124258_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124212124263_))
                                                      (let ((_e124213124266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124212124263_))))
                (let ((_hd124214124269_
                       (let () (declare (not safe)) (##car _e124213124266_)))
                      (_tl124215124271_
                       (let () (declare (not safe)) (##cdr _e124213124266_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl124215124271_))
                      (let ((_e124216124274_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124215124271_))))
                        (let ((_hd124217124277_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124216124274_)))
                              (_tl124218124279_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124216124274_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124218124279_))
                              (let ((_e124219124282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124218124279_))))
                                (let ((_hd124220124285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124219124282_)))
                                      (_tl124221124287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124219124282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124221124287_))
                                      (let ((_e124222124290_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124221124287_))))
                                        (let ((_hd124223124293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124222124290_)))
                                              (_tl124224124295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124222124290_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124224124295_))
                                              ((lambda (_L124298_
                                                        _L124299_
                                                        _L124300_
                                                        _L124301_
                                                        _L124302_
                                                        _L124303_
                                                        _L124304_)
                                                 (let ((_type-id124334_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124304_)))
                                                       (_super124335_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124303_)))
                                                       (_slots124336_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L124302_)))
                                                       (_ctor-method124337_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124301_)))
                                                       (_struct?124338_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124300_)))
                                                       (_final?124339_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124299_)))
                                                       (_metaclass124340_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L124298_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L124298_))
                                                            '#f)))
                                                   (let ((__obj127651
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
                                                      __obj127651
                                                      _type-id124334_
                                                      _super124335_
                                                      _slots124336_
                                                      _ctor-method124337_
                                                      _struct?124338_
                                                      _final?124339_
                                                      '#f
                                                      _metaclass124340_)
                                                     __obj127651)))
                                               _hd124223124293_
                                               _hd124220124285_
                                               _hd124217124277_
                                               _hd124214124269_
                                               _hd124211124261_
                                               _hd124208124253_
                                               _hd124205124245_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124192124229_
                                                 _g124193124232_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124192124229_ _g124193124232_)))))
                              (let ()
                                (declare (not safe))
                                (_g124192124229_ _g124193124232_)))))
                      (let ()
                        (declare (not safe))
                        (_g124192124229_ _g124193124232_)))))
              (let ()
                (declare (not safe))
                (_g124192124229_ _g124193124232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g124192124229_
                                                 _g124193124232_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124192124229_ _g124193124232_)))))
                              (let ()
                                (declare (not safe))
                                (_g124192124229_ _g124193124232_)))))
                      (let ()
                        (declare (not safe))
                        (_g124192124229_ _g124193124232_))))))
          (declare (not safe))
          (_g124191124342_ _ann124190_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx124118_ _ann124119_)
        (let* ((_g124121124138_
                (lambda (_g124122124135_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124122124135_))))
               (_g124120124186_
                (lambda (_g124122124141_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124122124141_))
                      (let ((_e124125124143_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124122124141_))))
                        (let ((_hd124126124146_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124125124143_)))
                              (_tl124127124148_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124125124143_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124127124148_))
                              (let ((_e124128124151_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124127124148_))))
                                (let ((_hd124129124154_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124128124151_)))
                                      (_tl124130124156_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124128124151_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124130124156_))
                                      (let ((_e124131124159_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124130124156_))))
                                        (let ((_hd124132124162_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124131124159_)))
                                              (_tl124133124164_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124131124159_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124133124164_))
                                              ((lambda (_L124167_ _L124168_)
                                                 (let ((_type-id124183_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L124168_)))
                                                       (_super124184_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L124167_))))
                                                   (let ((__obj127652
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
                                                      __obj127652
                                                      _type-id124183_
                                                      _super124184_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj127652)))
                                               _hd124132124162_
                                               _hd124129124154_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124121124138_
                                                 _g124122124141_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124121124138_ _g124122124141_)))))
                              (let ()
                                (declare (not safe))
                                (_g124121124138_ _g124122124141_)))))
                      (let ()
                        (declare (not safe))
                        (_g124121124138_ _g124122124141_))))))
          (declare (not safe))
          (_g124120124186_ _ann124119_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx124066_ _ann124067_)
        (let* ((_g124069124082_
                (lambda (_g124070124079_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124070124079_))))
               (_g124068124115_
                (lambda (_g124070124085_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124070124085_))
                      (let ((_e124072124087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124070124085_))))
                        (let ((_hd124073124090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124072124087_)))
                              (_tl124074124092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124072124087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124074124092_))
                              (let ((_e124075124095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124074124092_))))
                                (let ((_hd124076124098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124075124095_)))
                                      (_tl124077124100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124075124095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124077124100_))
                                      ((lambda (_L124103_)
                                         (let ((__tmp127700
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124103_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp127700)))
                                       _hd124076124098_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124069124082_ _g124070124085_)))))
                              (let ()
                                (declare (not safe))
                                (_g124069124082_ _g124070124085_)))))
                      (let ()
                        (declare (not safe))
                        (_g124069124082_ _g124070124085_))))))
          (declare (not safe))
          (_g124068124115_ _ann124067_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx124014_ _ann124015_)
        (let* ((_g124017124030_
                (lambda (_g124018124027_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124018124027_))))
               (_g124016124063_
                (lambda (_g124018124033_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124018124033_))
                      (let ((_e124020124035_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124018124033_))))
                        (let ((_hd124021124038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124020124035_)))
                              (_tl124022124040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124020124035_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124022124040_))
                              (let ((_e124023124043_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124022124040_))))
                                (let ((_hd124024124046_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124023124043_)))
                                      (_tl124025124048_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124023124043_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124025124048_))
                                      ((lambda (_L124051_)
                                         (let ((__tmp127701
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124051_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp127701)))
                                       _hd124024124046_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124017124030_ _g124018124033_)))))
                              (let ()
                                (declare (not safe))
                                (_g124017124030_ _g124018124033_)))))
                      (let ()
                        (declare (not safe))
                        (_g124017124030_ _g124018124033_))))))
          (declare (not safe))
          (_g124016124063_ _ann124015_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx123930_ _ann123931_)
        (let* ((_g123933123954_
                (lambda (_g123934123951_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123934123951_))))
               (_g123932124011_
                (lambda (_g123934123957_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123934123957_))
                      (let ((_e123938123959_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123934123957_))))
                        (let ((_hd123939123962_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123938123959_)))
                              (_tl123940123964_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123938123959_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123940123964_))
                              (let ((_e123941123967_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123940123964_))))
                                (let ((_hd123942123970_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123941123967_)))
                                      (_tl123943123972_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123941123967_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123943123972_))
                                      (let ((_e123944123975_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123943123972_))))
                                        (let ((_hd123945123978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123944123975_)))
                                              (_tl123946123980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123944123975_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123946123980_))
                                              (let ((_e123947123983_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123946123980_))))
                                                (let ((_hd123948123986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123947123983_)))
                                                      (_tl123949123988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123947123983_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123949123988_))
                                                      ((lambda (_L123991_
                                                                _L123992_
                                                                _L123993_)
                                                         (let ((__tmp127704
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L123993_)))
                       (__tmp127703
                        (let () (declare (not safe)) (gx#stx-e _L123992_)))
                       (__tmp127702
                        (let () (declare (not safe)) (gx#stx-e _L123991_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp127704
                    __tmp127703
                    __tmp127702)))
               _hd123948123986_
               _hd123945123978_
               _hd123942123970_)
              (let ()
                (declare (not safe))
                (_g123933123954_ _g123934123957_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g123933123954_
                                                 _g123934123957_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123933123954_ _g123934123957_)))))
                              (let ()
                                (declare (not safe))
                                (_g123933123954_ _g123934123957_)))))
                      (let ()
                        (declare (not safe))
                        (_g123933123954_ _g123934123957_))))))
          (declare (not safe))
          (_g123932124011_ _ann123931_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx123846_ _ann123847_)
        (let* ((_g123849123870_
                (lambda (_g123850123867_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123850123867_))))
               (_g123848123927_
                (lambda (_g123850123873_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123850123873_))
                      (let ((_e123854123875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123850123873_))))
                        (let ((_hd123855123878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123854123875_)))
                              (_tl123856123880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123854123875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123856123880_))
                              (let ((_e123857123883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123856123880_))))
                                (let ((_hd123858123886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123857123883_)))
                                      (_tl123859123888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123857123883_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123859123888_))
                                      (let ((_e123860123891_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123859123888_))))
                                        (let ((_hd123861123894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123860123891_)))
                                              (_tl123862123896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123860123891_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123862123896_))
                                              (let ((_e123863123899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123862123896_))))
                                                (let ((_hd123864123902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123863123899_)))
                                                      (_tl123865123904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123863123899_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123865123904_))
                                                      ((lambda (_L123907_
                                                                _L123908_
                                                                _L123909_)
                                                         (let ((__tmp127707
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L123909_)))
                       (__tmp127706
                        (let () (declare (not safe)) (gx#stx-e _L123908_)))
                       (__tmp127705
                        (let () (declare (not safe)) (gx#stx-e _L123907_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp127707
                    __tmp127706
                    __tmp127705)))
               _hd123864123902_
               _hd123861123894_
               _hd123858123886_)
              (let ()
                (declare (not safe))
                (_g123849123870_ _g123850123873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g123849123870_
                                                 _g123850123873_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g123849123870_ _g123850123873_)))))
                              (let ()
                                (declare (not safe))
                                (_g123849123870_ _g123850123873_)))))
                      (let ()
                        (declare (not safe))
                        (_g123849123870_ _g123850123873_))))))
          (declare (not safe))
          (_g123848123927_ _ann123847_))))
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
      (lambda (_self122965_ _stx122966_)
        (let* ((___stx125972125973_ _stx122966_)
               (_g122972123168_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx125972125973_)))))
          (let ((___kont125974125975_
                 (lambda (_L123834_)
                   (let ((__obj127653
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127653
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123834_))
                      '#f)
                     __obj127653)))
                (___kont125976125977_
                 (lambda (_L123761_
                          _L123762_
                          _L123763_
                          _L123764_
                          _L123765_
                          _L123766_)
                   (let* ((_tab123816_
                           (let () (declare (not safe)) (gx#stx-e _L123763_)))
                          (_keys123818_
                           (if _tab123816_
                               (filter values (vector->list _tab123816_))
                               '#f)))
                     (let ((__tmp127708
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L123762_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys123818_
                        __tmp127708)))))
                (___kont125978125979_
                 (lambda (_L123494_
                          _L123495_
                          _L123496_
                          _L123497_
                          _L123498_
                          _L123499_
                          _L123500_
                          _L123501_
                          _L123502_
                          _L123503_)
                   (let ((__tmp127710
                          (map gx#stx-e
                               (let ((__tmp127711
                                      (lambda (_g123596123599_ _g123597123601_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g123596123599_
                                                _g123597123601_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp127711 '() _L123496_))))
                         (__tmp127709
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L123500_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp127710
                      __tmp127709))))
                (___kont125982125983_
                 (lambda (_L123204_)
                   (let ((__obj127654
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127654
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123204_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L123204_)))
                     __obj127654)))
                (___kont125984125985_
                 (lambda (_L123181_)
                   (let ((__obj127655
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj127655
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L123181_))
                      '#f)
                     __obj127655))))
            (let* ((___match126291126292_
                    (lambda (_e123157123196_ _hd123158123199_ _tl123159123201_)
                      (let ((_L123204_ _tl123159123201_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L123204_))
                            (___kont125982125983_ _L123204_)
                            (___kont125984125985_ _tl123159123201_)))))
                   (___match126285126286_
                    (lambda (_e123051123218_
                             _hd123052123221_
                             _tl123053123223_
                             _e123054123226_
                             _hd123055123229_
                             _tl123056123231_
                             _e123057123234_
                             _hd123058123237_
                             _tl123059123239_
                             _e123060123242_
                             _hd123061123245_
                             _tl123062123247_
                             _e123063123250_
                             _hd123064123253_
                             _tl123065123255_
                             _e123066123258_
                             _hd123067123261_
                             _tl123068123263_
                             _e123069123266_
                             _hd123070123269_
                             _tl123071123271_
                             _e123072123274_
                             _hd123073123277_
                             _tl123074123279_
                             _e123075123282_
                             _hd123076123285_
                             _tl123077123287_
                             _e123078123290_
                             _hd123079123293_
                             _tl123080123295_
                             _e123081123298_
                             _hd123082123301_
                             _tl123083123303_
                             _e123084123306_
                             _hd123085123309_
                             _tl123086123311_
                             _e123087123314_
                             _hd123088123317_
                             _tl123089123319_
                             _e123090123322_
                             _hd123091123325_
                             _tl123092123327_
                             ___splice125980125981_
                             _target123093123330_
                             _tl123095123332_
                             _e123108123335_
                             _hd123109123338_
                             _tl123110123340_
                             _e123111123343_
                             _hd123112123346_
                             _tl123113123348_
                             _e123114123351_
                             _hd123115123354_
                             _tl123116123356_)
                      (letrec ((_loop123096123359_
                                (lambda (_hd123094123362_
                                         _-absent-value123100123364_
                                         _key123101123366_
                                         _-xkwvar123102123368_
                                         _-hash-ref123103123370_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123094123362_))
                                      (let ((_e123097123373_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123094123362_))))
                                        (let ((_lp-tl123099123378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123097123373_)))
                                              (_lp-hd123098123376_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123097123373_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd123098123376_))
                                              (let ((_e123117123381_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd123098123376_))))
                                                (let ((_tl123119123386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123117123381_)))
                                                      (_hd123118123384_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123117123381_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd123118123384_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd123118123384_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl123119123386_))
                      (let ((_e123120123389_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl123119123386_))))
                        (let ((_tl123122123394_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123120123389_)))
                              (_hd123121123392_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123120123389_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd123121123392_))
                              (let ((_e123123123397_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd123121123392_))))
                                (let ((_tl123125123402_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123123123397_)))
                                      (_hd123124123400_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123123123397_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd123124123400_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd123124123400_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123125123402_))
                                              (let ((_e123126123405_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123125123402_))))
                                                (let ((_tl123128123410_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123126123405_)))
                                                      (_hd123127123408_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123126123405_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123128123410_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123122123394_))
                                                          (let ((_e123129123413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123122123394_))))
                    (let ((_tl123131123418_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123129123413_)))
                          (_hd123130123416_
                           (let ()
                             (declare (not safe))
                             (##car _e123129123413_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123130123416_))
                          (let ((_e123132123421_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123130123416_))))
                            (let ((_tl123134123426_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123132123421_)))
                                  (_hd123133123424_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123132123421_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123133123424_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123133123424_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123134123426_))
                                          (let ((_e123135123429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123134123426_))))
                                            (let ((_tl123137123434_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123135123429_)))
                                                  (_hd123136123432_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123135123429_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123137123434_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123131123418_))
                                                      (let ((_e123138123437_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123131123418_))))
                (let ((_tl123140123442_
                       (let () (declare (not safe)) (##cdr _e123138123437_)))
                      (_hd123139123440_
                       (let () (declare (not safe)) (##car _e123138123437_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123139123440_))
                      (let ((_e123141123445_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123139123440_))))
                        (let ((_tl123143123450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123141123445_)))
                              (_hd123142123448_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123141123445_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123142123448_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd123142123448_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123143123450_))
                                      (let ((_e123144123453_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123143123450_))))
                                        (let ((_tl123146123458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123144123453_)))
                                              (_hd123145123456_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123144123453_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123146123458_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123140123442_))
                                                  (let ((_e123147123461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123140123442_))))
                                                    (let ((_tl123149123466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123147123461_)))
                                                          (_hd123148123464_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123147123461_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123148123464_))
                                                          (let ((_e123150123469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123148123464_))))
                    (let ((_tl123152123474_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123150123469_)))
                          (_hd123151123472_
                           (let ()
                             (declare (not safe))
                             (##car _e123150123469_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123151123472_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123151123472_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123152123474_))
                                  (let ((_e123153123477_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123152123474_))))
                                    (let ((_tl123155123482_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123153123477_)))
                                          (_hd123154123480_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123153123477_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123155123482_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123149123466_))
                                              (let ((__tmp127715
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123154123480_
                                                             _-absent-value123100123364_)))
                                                    (__tmp127714
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123145123456_
                                                             _key123101123366_)))
                                                    (__tmp127713
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123136123432_
                                                             _-xkwvar123102123368_)))
                                                    (__tmp127712
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd123127123408_
                                                             _-hash-ref123103123370_))))
                                                (declare (not safe))
                                                (_loop123096123359_
                                                 _lp-tl123099123378_
                                                 __tmp127715
                                                 __tmp127714
                                                 __tmp127713
                                                 __tmp127712))
                                              (___match126291126292_
                                               _e123051123218_
                                               _hd123052123221_
                                               _tl123053123223_))
                                          (___match126291126292_
                                           _e123051123218_
                                           _hd123052123221_
                                           _tl123053123223_))))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))
                              (___match126291126292_
                               _e123051123218_
                               _hd123052123221_
                               _tl123053123223_))
                          (___match126291126292_
                           _e123051123218_
                           _hd123052123221_
                           _tl123053123223_))))
                  (___match126291126292_
                   _e123051123218_
                   _hd123052123221_
                   _tl123053123223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_))
                                              (___match126291126292_
                                               _e123051123218_
                                               _hd123052123221_
                                               _tl123053123223_))))
                                      (___match126291126292_
                                       _e123051123218_
                                       _hd123052123221_
                                       _tl123053123223_))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))
                              (___match126291126292_
                               _e123051123218_
                               _hd123052123221_
                               _tl123053123223_))))
                      (___match126291126292_
                       _e123051123218_
                       _hd123052123221_
                       _tl123053123223_))))
              (___match126291126292_
               _e123051123218_
               _hd123052123221_
               _tl123053123223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_))))
                                          (___match126291126292_
                                           _e123051123218_
                                           _hd123052123221_
                                           _tl123053123223_))
                                      (___match126291126292_
                                       _e123051123218_
                                       _hd123052123221_
                                       _tl123053123223_))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))))
                          (___match126291126292_
                           _e123051123218_
                           _hd123052123221_
                           _tl123053123223_))))
                  (___match126291126292_
                   _e123051123218_
                   _hd123052123221_
                   _tl123053123223_))
              (___match126291126292_
               _e123051123218_
               _hd123052123221_
               _tl123053123223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126291126292_
                                               _e123051123218_
                                               _hd123052123221_
                                               _tl123053123223_))
                                          (___match126291126292_
                                           _e123051123218_
                                           _hd123052123221_
                                           _tl123053123223_))
                                      (___match126291126292_
                                       _e123051123218_
                                       _hd123052123221_
                                       _tl123053123223_))))
                              (___match126291126292_
                               _e123051123218_
                               _hd123052123221_
                               _tl123053123223_))))
                      (___match126291126292_
                       _e123051123218_
                       _hd123052123221_
                       _tl123053123223_))
                  (___match126291126292_
                   _e123051123218_
                   _hd123052123221_
                   _tl123053123223_))
              (___match126291126292_
               _e123051123218_
               _hd123052123221_
               _tl123053123223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126291126292_
                                               _e123051123218_
                                               _hd123052123221_
                                               _tl123053123223_))))
                                      (let ((_-hash-ref123107123491_
                                             (reverse _-hash-ref123103123370_))
                                            (_-xkwvar123106123489_
                                             (reverse _-xkwvar123102123368_))
                                            (_key123105123487_
                                             (reverse _key123101123366_))
                                            (_-absent-value123104123485_
                                             (reverse _-absent-value123100123364_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123062123247_))
                                            (let ((_L123494_ _hd123115123354_)
                                                  (_L123495_
                                                   _-absent-value123104123485_)
                                                  (_L123496_ _key123105123487_)
                                                  (_L123497_
                                                   _-xkwvar123106123489_)
                                                  (_L123498_
                                                   _-hash-ref123107123491_)
                                                  (_L123499_ _hd123091123325_)
                                                  (_L123500_ _hd123082123301_)
                                                  (_L123501_ _hd123073123277_)
                                                  (_L123502_ _tl123059123239_)
                                                  (_L123503_ _hd123058123237_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123503_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L123502_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L123501_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L123503_
                                                          _L123499_))
                                                       (let ((__tmp127716
                                                              (let ((__tmp127717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g123556123559_ _g123557123561_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123556123559_ _g123557123561_)))))
                        (declare (not safe))
                        (foldr1 __tmp127717 '() _L123496_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp127716))
               (let ((__tmp127720
                      (lambda (_g123563123565_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123563123565_
                           'hash-ref))))
                     (__tmp127718
                      (let ((__tmp127719
                             (lambda (_g123567123570_ _g123568123572_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123567123570_ _g123568123572_)))))
                        (declare (not safe))
                        (foldr1 __tmp127719 '() _L123498_))))
                 (declare (not safe))
                 (andmap1 __tmp127720 __tmp127718))
               (let ((__tmp127723
                      (lambda (_g123574123576_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g123574123576_
                           'absent-value))))
                     (__tmp127721
                      (let ((__tmp127722
                             (lambda (_g123578123581_ _g123579123583_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123578123581_ _g123579123583_)))))
                        (declare (not safe))
                        (foldr1 __tmp127722 '() _L123495_))))
                 (declare (not safe))
                 (andmap1 __tmp127723 __tmp127721))
               (let ((__tmp127726
                      (lambda (_g123585123587_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g123585123587_ _L123503_))))
                     (__tmp127724
                      (let ((__tmp127725
                             (lambda (_g123589123592_ _g123590123594_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g123589123592_ _g123590123594_)))))
                        (declare (not safe))
                        (foldr1 __tmp127725 '() _L123497_))))
                 (declare (not safe))
                 (andmap1 __tmp127726 __tmp127724)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont125978125979_
                                                   _L123494_
                                                   _L123495_
                                                   _L123496_
                                                   _L123497_
                                                   _L123498_
                                                   _L123499_
                                                   _L123500_
                                                   _L123501_
                                                   _L123502_
                                                   _L123503_)
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_)))
                                            (___match126291126292_
                                             _e123051123218_
                                             _hd123052123221_
                                             _tl123053123223_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123096123359_
                           _target123093123330_
                           '()
                           '()
                           '()
                           '())))))
                   (___match126157126158_
                    (lambda (_e123051123218_
                             _hd123052123221_
                             _tl123053123223_
                             _e123054123226_
                             _hd123055123229_
                             _tl123056123231_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123055123229_))
                          (let ((_e123057123234_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123055123229_))))
                            (let ((_tl123059123239_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123057123234_)))
                                  (_hd123058123237_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123057123234_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123056123231_))
                                  (let ((_e123060123242_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123056123231_))))
                                    (let ((_tl123062123247_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123060123242_)))
                                          (_hd123061123245_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123060123242_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd123061123245_))
                                          (let ((_e123063123250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd123061123245_))))
                                            (let ((_tl123065123255_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123063123250_)))
                                                  (_hd123064123253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123063123250_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd123064123253_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd123064123253_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123065123255_))
                                                          (let ((_e123066123258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123065123255_))))
                    (let ((_tl123068123263_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123066123258_)))
                          (_hd123067123261_
                           (let ()
                             (declare (not safe))
                             (##car _e123066123258_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123067123261_))
                          (let ((_e123069123266_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123067123261_))))
                            (let ((_tl123071123271_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123069123266_)))
                                  (_hd123070123269_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123069123266_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123070123269_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123070123269_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123071123271_))
                                          (let ((_e123072123274_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123071123271_))))
                                            (let ((_tl123074123279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123072123274_)))
                                                  (_hd123073123277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123072123274_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123074123279_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123068123263_))
                                                      (let ((_e123075123282_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123068123263_))))
                (let ((_tl123077123287_
                       (let () (declare (not safe)) (##cdr _e123075123282_)))
                      (_hd123076123285_
                       (let () (declare (not safe)) (##car _e123075123282_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123076123285_))
                      (let ((_e123078123290_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123076123285_))))
                        (let ((_tl123080123295_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123078123290_)))
                              (_hd123079123293_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123078123290_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123079123293_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123079123293_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123080123295_))
                                      (let ((_e123081123298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123080123295_))))
                                        (let ((_tl123083123303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123081123298_)))
                                              (_hd123082123301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123081123298_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123083123303_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123077123287_))
                                                  (let ((_e123084123306_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123077123287_))))
                                                    (let ((_tl123086123311_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123084123306_)))
                                                          (_hd123085123309_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123084123306_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123085123309_))
                                                          (let ((_e123087123314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123085123309_))))
                    (let ((_tl123089123319_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123087123314_)))
                          (_hd123088123317_
                           (let ()
                             (declare (not safe))
                             (##car _e123087123314_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123088123317_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123088123317_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123089123319_))
                                  (let ((_e123090123322_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123089123319_))))
                                    (let ((_tl123092123327_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123090123322_)))
                                          (_hd123091123325_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123090123322_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123092123327_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl123086123311_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl123086123311_))
                                                        '1)
                                                  (let ((___splice125980125981_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl123086123311_
                                                            '1))))
                                                    (let ((_tl123095123332_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125980125981_
                                                              '1)))
                                                          (_target123093123330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice125980125981_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl123095123332_))
                                                          (let ((_e123108123335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl123095123332_))))
                    (let ((_tl123110123340_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123108123335_)))
                          (_hd123109123338_
                           (let ()
                             (declare (not safe))
                             (##car _e123108123335_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd123109123338_))
                          (let ((_e123111123343_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd123109123338_))))
                            (let ((_tl123113123348_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123111123343_)))
                                  (_hd123112123346_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123111123343_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123112123346_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123112123346_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123113123348_))
                                          (let ((_e123114123351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123113123348_))))
                                            (let ((_tl123116123356_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123114123351_)))
                                                  (_hd123115123354_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123114123351_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123116123356_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123110123340_))
                                                      (___match126285126286_
                                                       _e123051123218_
                                                       _hd123052123221_
                                                       _tl123053123223_
                                                       _e123054123226_
                                                       _hd123055123229_
                                                       _tl123056123231_
                                                       _e123057123234_
                                                       _hd123058123237_
                                                       _tl123059123239_
                                                       _e123060123242_
                                                       _hd123061123245_
                                                       _tl123062123247_
                                                       _e123063123250_
                                                       _hd123064123253_
                                                       _tl123065123255_
                                                       _e123066123258_
                                                       _hd123067123261_
                                                       _tl123068123263_
                                                       _e123069123266_
                                                       _hd123070123269_
                                                       _tl123071123271_
                                                       _e123072123274_
                                                       _hd123073123277_
                                                       _tl123074123279_
                                                       _e123075123282_
                                                       _hd123076123285_
                                                       _tl123077123287_
                                                       _e123078123290_
                                                       _hd123079123293_
                                                       _tl123080123295_
                                                       _e123081123298_
                                                       _hd123082123301_
                                                       _tl123083123303_
                                                       _e123084123306_
                                                       _hd123085123309_
                                                       _tl123086123311_
                                                       _e123087123314_
                                                       _hd123088123317_
                                                       _tl123089123319_
                                                       _e123090123322_
                                                       _hd123091123325_
                                                       _tl123092123327_
                                                       ___splice125980125981_
                                                       _target123093123330_
                                                       _tl123095123332_
                                                       _e123108123335_
                                                       _hd123109123338_
                                                       _tl123110123340_
                                                       _e123111123343_
                                                       _hd123112123346_
                                                       _tl123113123348_
                                                       _e123114123351_
                                                       _hd123115123354_
                                                       _tl123116123356_)
                                                      (___match126291126292_
                                                       _e123051123218_
                                                       _hd123052123221_
                                                       _tl123053123223_))
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_))))
                                          (___match126291126292_
                                           _e123051123218_
                                           _hd123052123221_
                                           _tl123053123223_))
                                      (___match126291126292_
                                       _e123051123218_
                                       _hd123052123221_
                                       _tl123053123223_))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))))
                          (___match126291126292_
                           _e123051123218_
                           _hd123052123221_
                           _tl123053123223_))))
                  (___match126291126292_
                   _e123051123218_
                   _hd123052123221_
                   _tl123053123223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_))
                                              (___match126291126292_
                                               _e123051123218_
                                               _hd123052123221_
                                               _tl123053123223_))
                                          (___match126291126292_
                                           _e123051123218_
                                           _hd123052123221_
                                           _tl123053123223_))))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))
                              (___match126291126292_
                               _e123051123218_
                               _hd123052123221_
                               _tl123053123223_))
                          (___match126291126292_
                           _e123051123218_
                           _hd123052123221_
                           _tl123053123223_))))
                  (___match126291126292_
                   _e123051123218_
                   _hd123052123221_
                   _tl123053123223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_))
                                              (___match126291126292_
                                               _e123051123218_
                                               _hd123052123221_
                                               _tl123053123223_))))
                                      (___match126291126292_
                                       _e123051123218_
                                       _hd123052123221_
                                       _tl123053123223_))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))
                              (___match126291126292_
                               _e123051123218_
                               _hd123052123221_
                               _tl123053123223_))))
                      (___match126291126292_
                       _e123051123218_
                       _hd123052123221_
                       _tl123053123223_))))
              (___match126291126292_
               _e123051123218_
               _hd123052123221_
               _tl123053123223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_))))
                                          (___match126291126292_
                                           _e123051123218_
                                           _hd123052123221_
                                           _tl123053123223_))
                                      (___match126291126292_
                                       _e123051123218_
                                       _hd123052123221_
                                       _tl123053123223_))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))))
                          (___match126291126292_
                           _e123051123218_
                           _hd123052123221_
                           _tl123053123223_))))
                  (___match126291126292_
                   _e123051123218_
                   _hd123052123221_
                   _tl123053123223_))
              (___match126291126292_
               _e123051123218_
               _hd123052123221_
               _tl123053123223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126291126292_
                                                   _e123051123218_
                                                   _hd123052123221_
                                                   _tl123053123223_))))
                                          (___match126291126292_
                                           _e123051123218_
                                           _hd123052123221_
                                           _tl123053123223_))))
                                  (___match126291126292_
                                   _e123051123218_
                                   _hd123052123221_
                                   _tl123053123223_))))
                          (___match126291126292_
                           _e123051123218_
                           _hd123052123221_
                           _tl123053123223_))))
                   (___match126145126146_
                    (lambda (_e122984123609_
                             _hd122985123612_
                             _tl122986123614_
                             _e122987123617_
                             _hd122988123620_
                             _tl122989123622_
                             _e122990123625_
                             _hd122991123628_
                             _tl122992123630_
                             _e122993123633_
                             _hd122994123636_
                             _tl122995123638_
                             _e122996123641_
                             _hd122997123644_
                             _tl122998123646_
                             _e122999123649_
                             _hd123000123652_
                             _tl123001123654_
                             _e123002123657_
                             _hd123003123660_
                             _tl123004123662_
                             _e123005123665_
                             _hd123006123668_
                             _tl123007123670_
                             _e123008123673_
                             _hd123009123676_
                             _tl123010123678_
                             _e123011123681_
                             _hd123012123684_
                             _tl123013123686_
                             _e123014123689_
                             _hd123015123692_
                             _tl123016123694_
                             _e123017123697_
                             _hd123018123700_
                             _tl123019123702_
                             _e123020123705_
                             _hd123021123708_
                             _tl123022123710_
                             _e123023123713_
                             _hd123024123716_
                             _tl123025123718_
                             _e123026123721_
                             _hd123027123724_
                             _tl123028123726_
                             _e123029123729_
                             _hd123030123732_
                             _tl123031123734_
                             _e123032123737_
                             _hd123033123740_
                             _tl123034123742_
                             _e123035123745_
                             _hd123036123748_
                             _tl123037123750_
                             _e123038123753_
                             _hd123039123756_
                             _tl123040123758_)
                      (let ((_L123761_ _hd123039123756_)
                            (_L123762_ _hd123030123732_)
                            (_L123763_ _hd123021123708_)
                            (_L123764_ _hd123012123684_)
                            (_L123765_ _hd123003123660_)
                            (_L123766_ _hd122988123620_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123766_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123765_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L123764_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123766_ _L123761_)))
                            (___kont125976125977_
                             _L123761_
                             _L123762_
                             _L123763_
                             _L123764_
                             _L123765_
                             _L123766_)
                            (___match126157126158_
                             _e122984123609_
                             _hd122985123612_
                             _tl122986123614_
                             _e122987123617_
                             _hd122988123620_
                             _tl122989123622_)))))
                   (___match125999126000_
                    (lambda (_e122984123609_ _hd122985123612_ _tl122986123614_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122986123614_))
                          (let ((_e122987123617_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122986123614_))))
                            (let ((_tl122989123622_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122987123617_)))
                                  (_hd122988123620_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122987123617_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122989123622_))
                                  (let ((_e122990123625_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122989123622_))))
                                    (let ((_tl122992123630_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122990123625_)))
                                          (_hd122991123628_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122990123625_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd122991123628_))
                                          (let ((_e122993123633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd122991123628_))))
                                            (let ((_tl122995123638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122993123633_)))
                                                  (_hd122994123636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122993123633_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd122994123636_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd122994123636_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl122995123638_))
                                                          (let ((_e122996123641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl122995123638_))))
                    (let ((_tl122998123646_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122996123641_)))
                          (_hd122997123644_
                           (let ()
                             (declare (not safe))
                             (##car _e122996123641_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd122997123644_))
                          (let ((_e122999123649_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd122997123644_))))
                            (let ((_tl123001123654_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122999123649_)))
                                  (_hd123000123652_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122999123649_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd123000123652_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd123000123652_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123001123654_))
                                          (let ((_e123002123657_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123001123654_))))
                                            (let ((_tl123004123662_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123002123657_)))
                                                  (_hd123003123660_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123002123657_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123004123662_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122998123646_))
                                                      (let ((_e123005123665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122998123646_))))
                (let ((_tl123007123670_
                       (let () (declare (not safe)) (##cdr _e123005123665_)))
                      (_hd123006123668_
                       (let () (declare (not safe)) (##car _e123005123665_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123006123668_))
                      (let ((_e123008123673_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123006123668_))))
                        (let ((_tl123010123678_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123008123673_)))
                              (_hd123009123676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123008123673_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123009123676_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123009123676_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123010123678_))
                                      (let ((_e123011123681_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123010123678_))))
                                        (let ((_tl123013123686_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123011123681_)))
                                              (_hd123012123684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123011123681_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123013123686_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123007123670_))
                                                  (let ((_e123014123689_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123007123670_))))
                                                    (let ((_tl123016123694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123014123689_)))
                                                          (_hd123015123692_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123014123689_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123015123692_))
                                                          (let ((_e123017123697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123015123692_))))
                    (let ((_tl123019123702_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123017123697_)))
                          (_hd123018123700_
                           (let ()
                             (declare (not safe))
                             (##car _e123017123697_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123018123700_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd123018123700_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123019123702_))
                                  (let ((_e123020123705_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123019123702_))))
                                    (let ((_tl123022123710_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123020123705_)))
                                          (_hd123021123708_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123020123705_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123022123710_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123016123694_))
                                              (let ((_e123023123713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123016123694_))))
                                                (let ((_tl123025123718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123023123713_)))
                                                      (_hd123024123716_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123023123713_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123024123716_))
                                                      (let ((_e123026123721_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123024123716_))))
                (let ((_tl123028123726_
                       (let () (declare (not safe)) (##cdr _e123026123721_)))
                      (_hd123027123724_
                       (let () (declare (not safe)) (##car _e123026123721_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123027123724_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123027123724_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123028123726_))
                              (let ((_e123029123729_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123028123726_))))
                                (let ((_tl123031123734_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123029123729_)))
                                      (_hd123030123732_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123029123729_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123031123734_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl123025123718_))
                                          (let ((_e123032123737_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl123025123718_))))
                                            (let ((_tl123034123742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e123032123737_)))
                                                  (_hd123033123740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e123032123737_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd123033123740_))
                                                  (let ((_e123035123745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd123033123740_))))
                                                    (let ((_tl123037123750_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123035123745_)))
                                                          (_hd123036123748_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123035123745_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd123036123748_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd123036123748_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123037123750_))
                          (let ((_e123038123753_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123037123750_))))
                            (let ((_tl123040123758_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123038123753_)))
                                  (_hd123039123756_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123038123753_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123040123758_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123034123742_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122992123630_))
                                          (___match126145126146_
                                           _e122984123609_
                                           _hd122985123612_
                                           _tl122986123614_
                                           _e122987123617_
                                           _hd122988123620_
                                           _tl122989123622_
                                           _e122990123625_
                                           _hd122991123628_
                                           _tl122992123630_
                                           _e122993123633_
                                           _hd122994123636_
                                           _tl122995123638_
                                           _e122996123641_
                                           _hd122997123644_
                                           _tl122998123646_
                                           _e122999123649_
                                           _hd123000123652_
                                           _tl123001123654_
                                           _e123002123657_
                                           _hd123003123660_
                                           _tl123004123662_
                                           _e123005123665_
                                           _hd123006123668_
                                           _tl123007123670_
                                           _e123008123673_
                                           _hd123009123676_
                                           _tl123010123678_
                                           _e123011123681_
                                           _hd123012123684_
                                           _tl123013123686_
                                           _e123014123689_
                                           _hd123015123692_
                                           _tl123016123694_
                                           _e123017123697_
                                           _hd123018123700_
                                           _tl123019123702_
                                           _e123020123705_
                                           _hd123021123708_
                                           _tl123022123710_
                                           _e123023123713_
                                           _hd123024123716_
                                           _tl123025123718_
                                           _e123026123721_
                                           _hd123027123724_
                                           _tl123028123726_
                                           _e123029123729_
                                           _hd123030123732_
                                           _tl123031123734_
                                           _e123032123737_
                                           _hd123033123740_
                                           _tl123034123742_
                                           _e123035123745_
                                           _hd123036123748_
                                           _tl123037123750_
                                           _e123038123753_
                                           _hd123039123756_
                                           _tl123040123758_)
                                          (___match126157126158_
                                           _e122984123609_
                                           _hd122985123612_
                                           _tl122986123614_
                                           _e122987123617_
                                           _hd122988123620_
                                           _tl122989123622_))
                                      (___match126157126158_
                                       _e122984123609_
                                       _hd122985123612_
                                       _tl122986123614_
                                       _e122987123617_
                                       _hd122988123620_
                                       _tl122989123622_))
                                  (___match126157126158_
                                   _e122984123609_
                                   _hd122985123612_
                                   _tl122986123614_
                                   _e122987123617_
                                   _hd122988123620_
                                   _tl122989123622_))))
                          (___match126157126158_
                           _e122984123609_
                           _hd122985123612_
                           _tl122986123614_
                           _e122987123617_
                           _hd122988123620_
                           _tl122989123622_))
                      (___match126157126158_
                       _e122984123609_
                       _hd122985123612_
                       _tl122986123614_
                       _e122987123617_
                       _hd122988123620_
                       _tl122989123622_))
                  (___match126157126158_
                   _e122984123609_
                   _hd122985123612_
                   _tl122986123614_
                   _e122987123617_
                   _hd122988123620_
                   _tl122989123622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126157126158_
                                                   _e122984123609_
                                                   _hd122985123612_
                                                   _tl122986123614_
                                                   _e122987123617_
                                                   _hd122988123620_
                                                   _tl122989123622_))))
                                          (___match126157126158_
                                           _e122984123609_
                                           _hd122985123612_
                                           _tl122986123614_
                                           _e122987123617_
                                           _hd122988123620_
                                           _tl122989123622_))
                                      (___match126157126158_
                                       _e122984123609_
                                       _hd122985123612_
                                       _tl122986123614_
                                       _e122987123617_
                                       _hd122988123620_
                                       _tl122989123622_))))
                              (___match126157126158_
                               _e122984123609_
                               _hd122985123612_
                               _tl122986123614_
                               _e122987123617_
                               _hd122988123620_
                               _tl122989123622_))
                          (___match126157126158_
                           _e122984123609_
                           _hd122985123612_
                           _tl122986123614_
                           _e122987123617_
                           _hd122988123620_
                           _tl122989123622_))
                      (___match126157126158_
                       _e122984123609_
                       _hd122985123612_
                       _tl122986123614_
                       _e122987123617_
                       _hd122988123620_
                       _tl122989123622_))))
              (___match126157126158_
               _e122984123609_
               _hd122985123612_
               _tl122986123614_
               _e122987123617_
               _hd122988123620_
               _tl122989123622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match126157126158_
                                               _e122984123609_
                                               _hd122985123612_
                                               _tl122986123614_
                                               _e122987123617_
                                               _hd122988123620_
                                               _tl122989123622_))
                                          (___match126157126158_
                                           _e122984123609_
                                           _hd122985123612_
                                           _tl122986123614_
                                           _e122987123617_
                                           _hd122988123620_
                                           _tl122989123622_))))
                                  (___match126157126158_
                                   _e122984123609_
                                   _hd122985123612_
                                   _tl122986123614_
                                   _e122987123617_
                                   _hd122988123620_
                                   _tl122989123622_))
                              (___match126157126158_
                               _e122984123609_
                               _hd122985123612_
                               _tl122986123614_
                               _e122987123617_
                               _hd122988123620_
                               _tl122989123622_))
                          (___match126157126158_
                           _e122984123609_
                           _hd122985123612_
                           _tl122986123614_
                           _e122987123617_
                           _hd122988123620_
                           _tl122989123622_))))
                  (___match126157126158_
                   _e122984123609_
                   _hd122985123612_
                   _tl122986123614_
                   _e122987123617_
                   _hd122988123620_
                   _tl122989123622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126157126158_
                                                   _e122984123609_
                                                   _hd122985123612_
                                                   _tl122986123614_
                                                   _e122987123617_
                                                   _hd122988123620_
                                                   _tl122989123622_))
                                              (___match126157126158_
                                               _e122984123609_
                                               _hd122985123612_
                                               _tl122986123614_
                                               _e122987123617_
                                               _hd122988123620_
                                               _tl122989123622_))))
                                      (___match126157126158_
                                       _e122984123609_
                                       _hd122985123612_
                                       _tl122986123614_
                                       _e122987123617_
                                       _hd122988123620_
                                       _tl122989123622_))
                                  (___match126157126158_
                                   _e122984123609_
                                   _hd122985123612_
                                   _tl122986123614_
                                   _e122987123617_
                                   _hd122988123620_
                                   _tl122989123622_))
                              (___match126157126158_
                               _e122984123609_
                               _hd122985123612_
                               _tl122986123614_
                               _e122987123617_
                               _hd122988123620_
                               _tl122989123622_))))
                      (___match126157126158_
                       _e122984123609_
                       _hd122985123612_
                       _tl122986123614_
                       _e122987123617_
                       _hd122988123620_
                       _tl122989123622_))))
              (___match126157126158_
               _e122984123609_
               _hd122985123612_
               _tl122986123614_
               _e122987123617_
               _hd122988123620_
               _tl122989123622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126157126158_
                                                   _e122984123609_
                                                   _hd122985123612_
                                                   _tl122986123614_
                                                   _e122987123617_
                                                   _hd122988123620_
                                                   _tl122989123622_))))
                                          (___match126157126158_
                                           _e122984123609_
                                           _hd122985123612_
                                           _tl122986123614_
                                           _e122987123617_
                                           _hd122988123620_
                                           _tl122989123622_))
                                      (___match126157126158_
                                       _e122984123609_
                                       _hd122985123612_
                                       _tl122986123614_
                                       _e122987123617_
                                       _hd122988123620_
                                       _tl122989123622_))
                                  (___match126157126158_
                                   _e122984123609_
                                   _hd122985123612_
                                   _tl122986123614_
                                   _e122987123617_
                                   _hd122988123620_
                                   _tl122989123622_))))
                          (___match126157126158_
                           _e122984123609_
                           _hd122985123612_
                           _tl122986123614_
                           _e122987123617_
                           _hd122988123620_
                           _tl122989123622_))))
                  (___match126157126158_
                   _e122984123609_
                   _hd122985123612_
                   _tl122986123614_
                   _e122987123617_
                   _hd122988123620_
                   _tl122989123622_))
              (___match126157126158_
               _e122984123609_
               _hd122985123612_
               _tl122986123614_
               _e122987123617_
               _hd122988123620_
               _tl122989123622_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126157126158_
                                                   _e122984123609_
                                                   _hd122985123612_
                                                   _tl122986123614_
                                                   _e122987123617_
                                                   _hd122988123620_
                                                   _tl122989123622_))))
                                          (___match126157126158_
                                           _e122984123609_
                                           _hd122985123612_
                                           _tl122986123614_
                                           _e122987123617_
                                           _hd122988123620_
                                           _tl122989123622_))))
                                  (___match126157126158_
                                   _e122984123609_
                                   _hd122985123612_
                                   _tl122986123614_
                                   _e122987123617_
                                   _hd122988123620_
                                   _tl122989123622_))))
                          (___match126291126292_
                           _e122984123609_
                           _hd122985123612_
                           _tl122986123614_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx125972125973_))
                  (let ((_e122975123826_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx125972125973_))))
                    (let ((_tl122977123831_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122975123826_)))
                          (_hd122976123829_
                           (let ()
                             (declare (not safe))
                             (##car _e122975123826_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L123834_ _tl122977123831_))
                            (___kont125974125975_ _L123834_))
                          (___match125999126000_
                           _e122975123826_
                           _hd122976123829_
                           _tl122977123831_))))
                  (let () (declare (not safe)) (_g122972123168_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self122919_ _stx122920_)
        (letrec ((_clause-e122922_
                  (lambda (_form122963_)
                    (let ((__obj127656
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
                       __obj127656
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form122963_))
                       (if (let ((__tmp127727
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp127727))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form122963_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form122963_))
                               '#f)
                           '#f))
                      __obj127656))))
          (let* ((_g122924122934_
                  (lambda (_g122925122931_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g122925122931_))))
                 (_g122923122960_
                  (lambda (_g122925122937_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g122925122937_))
                        (let ((_e122927122939_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g122925122937_))))
                          (let ((_hd122928122942_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122927122939_)))
                                (_tl122929122944_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122927122939_))))
                            ((lambda (_L122947_)
                               (let ((_clauses122958_
                                      (map _clause-e122922_ _L122947_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses122958_)))
                             _tl122929122944_)))
                        (let ()
                          (declare (not safe))
                          (_g122924122934_ _g122925122937_))))))
            (declare (not safe))
            (_g122923122960_ _stx122920_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self122850_ _stx122851_)
        (let* ((_g122853122870_
                (lambda (_g122854122867_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122854122867_))))
               (_g122852122916_
                (lambda (_g122854122873_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122854122873_))
                      (let ((_e122857122875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122854122873_))))
                        (let ((_hd122858122878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122857122875_)))
                              (_tl122859122880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122857122875_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122859122880_))
                              (let ((_e122860122883_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122859122880_))))
                                (let ((_hd122861122886_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122860122883_)))
                                      (_tl122862122888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122860122883_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122862122888_))
                                      (let ((_e122863122891_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122862122888_))))
                                        (let ((_hd122864122894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122863122891_)))
                                              (_tl122865122896_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122863122891_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122865122896_))
                                              ((lambda (_L122899_ _L122900_)
                                                 (let ((__tmp127728
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self122850_
                                                             _L122899_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp127728
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd122864122894_
                                               _hd122861122886_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122853122870_
                                                 _g122854122873_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122853122870_ _g122854122873_)))))
                              (let ()
                                (declare (not safe))
                                (_g122853122870_ _g122854122873_)))))
                      (let ()
                        (declare (not safe))
                        (_g122853122870_ _g122854122873_))))))
          (declare (not safe))
          (_g122852122916_ _stx122851_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self122754_ _stx122755_)
        (let* ((___stx126300126301_ _stx122755_)
               (_g122758122778_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126300126301_)))))
          (let ((___kont126302126303_
                 (lambda (_L122822_ _L122823_)
                   (let ((_type-e122840122842_
                          (let ((__tmp127729
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L122823_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp127729))))
                     (if _type-e122840122842_
                         (let ((_type-e122845_ _type-e122840122842_))
                           (_type-e122845_ _stx122755_ _L122822_))
                         '#f))))
                (___kont126304126305_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126300126301_))
                (let ((_e122762122790_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126300126301_))))
                  (let ((_tl122764122795_
                         (let () (declare (not safe)) (##cdr _e122762122790_)))
                        (_hd122763122793_
                         (let ()
                           (declare (not safe))
                           (##car _e122762122790_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122764122795_))
                        (let ((_e122765122798_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122764122795_))))
                          (let ((_tl122767122803_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122765122798_)))
                                (_hd122766122801_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122765122798_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122766122801_))
                                (let ((_e122768122806_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122766122801_))))
                                  (let ((_tl122770122811_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122768122806_)))
                                        (_hd122769122809_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122768122806_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122769122809_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122769122809_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122770122811_))
                                                (let ((_e122771122814_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122770122811_))))
                                                  (let ((_tl122773122819_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122771122814_)))
                                                        (_hd122772122817_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122771122814_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122773122819_))
                                                        (___kont126302126303_
                                                         _tl122767122803_
                                                         _hd122772122817_)
                                                        (___kont126304126305_))))
                                                (___kont126304126305_))
                                            (___kont126304126305_))
                                        (___kont126304126305_))))
                                (___kont126304126305_))))
                        (___kont126304126305_))))
                (___kont126304126305_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self122702_ _stx122703_)
        (let* ((_g122705122718_
                (lambda (_g122706122715_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122706122715_))))
               (_g122704122751_
                (lambda (_g122706122721_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122706122721_))
                      (let ((_e122708122723_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122706122721_))))
                        (let ((_hd122709122726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122708122723_)))
                              (_tl122710122728_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122708122723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122710122728_))
                              (let ((_e122711122731_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122710122728_))))
                                (let ((_hd122712122734_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122711122731_)))
                                      (_tl122713122736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122711122731_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122713122736_))
                                      ((lambda (_L122739_)
                                         (let ((__tmp127730
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L122739_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp127730)))
                                       _hd122712122734_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122705122718_ _g122706122721_)))))
                              (let ()
                                (declare (not safe))
                                (_g122705122718_ _g122706122721_)))))
                      (let ()
                        (declare (not safe))
                        (_g122705122718_ _g122706122721_))))))
          (declare (not safe))
          (_g122704122751_ _stx122703_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form121936_)
        (let* ((___stx126338126339_ _form121936_)
               (_g121941122098_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126338126339_)))))
          (let ((___kont126340126341_
                 (lambda (_L122622_ _L122623_ _L122624_) '#t))
                (___kont126346126347_
                 (lambda (_L122410_
                          _L122411_
                          _L122412_
                          _L122413_
                          _L122414_
                          _L122415_)
                   '#t))
                (___kont126352126353_
                 (lambda (_L122206_ _L122207_ _L122208_ _L122209_) '#t))
                (___kont126354126355_ (lambda () '#f)))
            (let* ((___match126479126480_
                    (lambda (_e122058122110_
                             _hd122059122113_
                             _tl122060122115_
                             _e122061122118_
                             _hd122062122121_
                             _tl122063122123_
                             _e122064122126_
                             _hd122065122129_
                             _tl122066122131_
                             _e122067122134_
                             _hd122068122137_
                             _tl122069122139_
                             _e122070122142_
                             _hd122071122145_
                             _tl122072122147_
                             _e122073122150_
                             _hd122074122153_
                             _tl122075122155_
                             _e122076122158_
                             _hd122077122161_
                             _tl122078122163_
                             _e122079122166_
                             _hd122080122169_
                             _tl122081122171_
                             _e122082122174_
                             _hd122083122177_
                             _tl122084122179_
                             _e122085122182_
                             _hd122086122185_
                             _tl122087122187_
                             _e122088122190_
                             _hd122089122193_
                             _tl122090122195_
                             _e122091122198_
                             _hd122092122201_
                             _tl122093122203_)
                      (let ((_L122206_ _hd122092122201_)
                            (_L122207_ _hd122083122177_)
                            (_L122208_ _hd122074122153_)
                            (_L122209_ _hd122059122113_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L122209_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L122208_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L122209_ _L122206_))
                                 (let ((__tmp127731
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L122207_
                                           _L122209_))))
                                   (declare (not safe))
                                   (not __tmp127731)))
                            (___kont126352126353_
                             _L122206_
                             _L122207_
                             _L122208_
                             _L122209_)
                            (___kont126354126355_)))))
                   (___match126451126452_
                    (lambda (_e122058122110_
                             _hd122059122113_
                             _tl122060122115_
                             _e122061122118_
                             _hd122062122121_
                             _tl122063122123_
                             _e122064122126_
                             _hd122065122129_
                             _tl122066122131_
                             _e122067122134_
                             _hd122068122137_
                             _tl122069122139_
                             _e122070122142_
                             _hd122071122145_
                             _tl122072122147_
                             _e122073122150_
                             _hd122074122153_
                             _tl122075122155_
                             _e122076122158_
                             _hd122077122161_
                             _tl122078122163_
                             _e122079122166_
                             _hd122080122169_
                             _tl122081122171_
                             _e122082122174_
                             _hd122083122177_
                             _tl122084122179_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122078122163_))
                          (let ((_e122085122182_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122078122163_))))
                            (let ((_tl122087122187_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122085122182_)))
                                  (_hd122086122185_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122085122182_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122086122185_))
                                  (let ((_e122088122190_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122086122185_))))
                                    (let ((_tl122090122195_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122088122190_)))
                                          (_hd122089122193_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122088122190_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd122089122193_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd122089122193_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122090122195_))
                                                  (let ((_e122091122198_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122090122195_))))
                                                    (let ((_tl122093122203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122091122198_)))
                                                          (_hd122092122201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122091122198_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122093122203_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl122087122187_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl122063122123_))
                          (___match126479126480_
                           _e122058122110_
                           _hd122059122113_
                           _tl122060122115_
                           _e122061122118_
                           _hd122062122121_
                           _tl122063122123_
                           _e122064122126_
                           _hd122065122129_
                           _tl122066122131_
                           _e122067122134_
                           _hd122068122137_
                           _tl122069122139_
                           _e122070122142_
                           _hd122071122145_
                           _tl122072122147_
                           _e122073122150_
                           _hd122074122153_
                           _tl122075122155_
                           _e122076122158_
                           _hd122077122161_
                           _tl122078122163_
                           _e122079122166_
                           _hd122080122169_
                           _tl122081122171_
                           _e122082122174_
                           _hd122083122177_
                           _tl122084122179_
                           _e122085122182_
                           _hd122086122185_
                           _tl122087122187_
                           _e122088122190_
                           _hd122089122193_
                           _tl122090122195_
                           _e122091122198_
                           _hd122092122201_
                           _tl122093122203_)
                          (___kont126354126355_))
                      (___kont126354126355_))
                  (___kont126354126355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126354126355_))
                                              (___kont126354126355_))
                                          (___kont126354126355_))))
                                  (___kont126354126355_))))
                          (___kont126354126355_))))
                   (___match126381126382_
                    (lambda (_e121994122250_
                             _hd121995122253_
                             _tl121996122255_
                             ___splice126348126349_
                             _target121997122258_
                             _tl121999122260_)
                      (letrec ((_loop122000122263_
                                (lambda (_hd121998122266_ _arg122004122268_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121998122266_))
                                      (let ((_e122001122271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121998122266_))))
                                        (let ((_lp-tl122003122276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122001122271_)))
                                              (_lp-hd122002122274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122001122271_))))
                                          (let ((__tmp127732
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122002122274_
                                                         _arg122004122268_))))
                                            (declare (not safe))
                                            (_loop122000122263_
                                             _lp-tl122003122276_
                                             __tmp127732))))
                                      (let ((_arg122005122279_
                                             (reverse _arg122004122268_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121996122255_))
                                            (let ((_e122006122282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121996122255_))))
                                              (let ((_tl122008122287_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122006122282_)))
                                                    (_hd122007122285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122006122282_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122007122285_))
                                                    (let ((_e122009122290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122007122285_))))
                                                      (let ((_tl122011122295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122009122290_)))
                    (_hd122010122293_
                     (let () (declare (not safe)) (##car _e122009122290_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122010122293_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122010122293_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122011122295_))
                            (let ((_e122012122298_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122011122295_))))
                              (let ((_tl122014122303_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122012122298_)))
                                    (_hd122013122301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122012122298_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122013122301_))
                                    (let ((_e122015122306_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122013122301_))))
                                      (let ((_tl122017122311_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122015122306_)))
                                            (_hd122016122309_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122015122306_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122016122309_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122016122309_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122017122311_))
                                                    (let ((_e122018122314_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122017122311_))))
                                                      (let ((_tl122020122319_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122018122314_)))
                    (_hd122019122317_
                     (let () (declare (not safe)) (##car _e122018122314_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122020122319_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122014122303_))
                        (let ((_e122021122322_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122014122303_))))
                          (let ((_tl122023122327_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122021122322_)))
                                (_hd122022122325_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122021122322_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122022122325_))
                                (let ((_e122024122330_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122022122325_))))
                                  (let ((_tl122026122335_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122024122330_)))
                                        (_hd122025122333_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122024122330_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122025122333_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122025122333_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122026122335_))
                                                (let ((_e122027122338_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122026122335_))))
                                                  (let ((_tl122029122343_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122027122338_)))
                                                        (_hd122028122341_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122027122338_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122029122343_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl122023122327_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl122023122327_))
                              '1)
                        (let ((___splice126350126351_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122023122327_
                                  '1))))
                          (let ((_tl122032122348_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126350126351_ '1)))
                                (_target122030122346_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126350126351_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122032122348_))
                                (let ((_e122039122351_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122032122348_))))
                                  (let ((_tl122041122356_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122039122351_)))
                                        (_hd122040122354_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122039122351_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122040122354_))
                                        (let ((_e122042122359_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122040122354_))))
                                          (let ((_tl122044122364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122042122359_)))
                                                (_hd122043122362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122042122359_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd122043122362_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd122043122362_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl122044122364_))
                                                        (let ((_e122045122367_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl122044122364_))))
                  (let ((_tl122047122372_
                         (let () (declare (not safe)) (##cdr _e122045122367_)))
                        (_hd122046122370_
                         (let ()
                           (declare (not safe))
                           (##car _e122045122367_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122047122372_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl122041122356_))
                            (letrec ((_loop122033122375_
                                      (lambda (_hd122031122378_
                                               _xarg122037122380_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd122031122378_))
                                            (let ((_e122034122383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd122031122378_))))
                                              (let ((_lp-tl122036122388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122034122383_)))
                                                    (_lp-hd122035122386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122034122383_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd122035122386_))
                                                    (let ((_e122048122391_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd122035122386_))))
                                                      (let ((_tl122050122396_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122048122391_)))
                    (_hd122049122394_
                     (let () (declare (not safe)) (##car _e122048122391_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122049122394_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd122049122394_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122050122396_))
                            (let ((_e122051122399_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122050122396_))))
                              (let ((_tl122053122404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122051122399_)))
                                    (_hd122052122402_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122051122399_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122053122404_))
                                    (let ((__tmp127733
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd122052122402_
                                                   _xarg122037122380_))))
                                      (declare (not safe))
                                      (_loop122033122375_
                                       _lp-tl122036122388_
                                       __tmp127733))
                                    (___match126451126452_
                                     _e121994122250_
                                     _hd121995122253_
                                     _tl121996122255_
                                     _e122006122282_
                                     _hd122007122285_
                                     _tl122008122287_
                                     _e122009122290_
                                     _hd122010122293_
                                     _tl122011122295_
                                     _e122012122298_
                                     _hd122013122301_
                                     _tl122014122303_
                                     _e122015122306_
                                     _hd122016122309_
                                     _tl122017122311_
                                     _e122018122314_
                                     _hd122019122317_
                                     _tl122020122319_
                                     _e122021122322_
                                     _hd122022122325_
                                     _tl122023122327_
                                     _e122024122330_
                                     _hd122025122333_
                                     _tl122026122335_
                                     _e122027122338_
                                     _hd122028122341_
                                     _tl122029122343_))))
                            (___match126451126452_
                             _e121994122250_
                             _hd121995122253_
                             _tl121996122255_
                             _e122006122282_
                             _hd122007122285_
                             _tl122008122287_
                             _e122009122290_
                             _hd122010122293_
                             _tl122011122295_
                             _e122012122298_
                             _hd122013122301_
                             _tl122014122303_
                             _e122015122306_
                             _hd122016122309_
                             _tl122017122311_
                             _e122018122314_
                             _hd122019122317_
                             _tl122020122319_
                             _e122021122322_
                             _hd122022122325_
                             _tl122023122327_
                             _e122024122330_
                             _hd122025122333_
                             _tl122026122335_
                             _e122027122338_
                             _hd122028122341_
                             _tl122029122343_))
                        (___match126451126452_
                         _e121994122250_
                         _hd121995122253_
                         _tl121996122255_
                         _e122006122282_
                         _hd122007122285_
                         _tl122008122287_
                         _e122009122290_
                         _hd122010122293_
                         _tl122011122295_
                         _e122012122298_
                         _hd122013122301_
                         _tl122014122303_
                         _e122015122306_
                         _hd122016122309_
                         _tl122017122311_
                         _e122018122314_
                         _hd122019122317_
                         _tl122020122319_
                         _e122021122322_
                         _hd122022122325_
                         _tl122023122327_
                         _e122024122330_
                         _hd122025122333_
                         _tl122026122335_
                         _e122027122338_
                         _hd122028122341_
                         _tl122029122343_))
                    (___match126451126452_
                     _e121994122250_
                     _hd121995122253_
                     _tl121996122255_
                     _e122006122282_
                     _hd122007122285_
                     _tl122008122287_
                     _e122009122290_
                     _hd122010122293_
                     _tl122011122295_
                     _e122012122298_
                     _hd122013122301_
                     _tl122014122303_
                     _e122015122306_
                     _hd122016122309_
                     _tl122017122311_
                     _e122018122314_
                     _hd122019122317_
                     _tl122020122319_
                     _e122021122322_
                     _hd122022122325_
                     _tl122023122327_
                     _e122024122330_
                     _hd122025122333_
                     _tl122026122335_
                     _e122027122338_
                     _hd122028122341_
                     _tl122029122343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126451126452_
                                                     _e121994122250_
                                                     _hd121995122253_
                                                     _tl121996122255_
                                                     _e122006122282_
                                                     _hd122007122285_
                                                     _tl122008122287_
                                                     _e122009122290_
                                                     _hd122010122293_
                                                     _tl122011122295_
                                                     _e122012122298_
                                                     _hd122013122301_
                                                     _tl122014122303_
                                                     _e122015122306_
                                                     _hd122016122309_
                                                     _tl122017122311_
                                                     _e122018122314_
                                                     _hd122019122317_
                                                     _tl122020122319_
                                                     _e122021122322_
                                                     _hd122022122325_
                                                     _tl122023122327_
                                                     _e122024122330_
                                                     _hd122025122333_
                                                     _tl122026122335_
                                                     _e122027122338_
                                                     _hd122028122341_
                                                     _tl122029122343_))))
                                            (let ((_xarg122038122407_
                                                   (reverse _xarg122037122380_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl122008122287_))
                                                  (let ((_L122410_
                                                         _hd122046122370_)
                                                        (_L122411_
                                                         _xarg122038122407_)
                                                        (_L122412_
                                                         _hd122028122341_)
                                                        (_L122413_
                                                         _hd122019122317_)
                                                        (_L122414_
                                                         _tl121999122260_)
                                                        (_L122415_
                                                         _arg122005122279_))
                                                    (if (and (let ((__tmp127734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127735
                                   (lambda (_g122458122461_ _g122459122463_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122458122461_
                                             _g122459122463_)))))
                              (declare (not safe))
                              (foldr1 __tmp127735 '() _L122415_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp127734))
                     (let () (declare (not safe)) (gx#identifier? _L122414_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L122413_ 'apply))
                     (fx= (length (let ((__tmp127736
                                         (lambda (_g122465122468_
                                                  _g122466122470_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122465122468_
                                                   _g122466122470_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127736 '() _L122415_)))
                          (length (let ((__tmp127737
                                         (lambda (_g122472122475_
                                                  _g122473122477_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g122472122475_
                                                   _g122473122477_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp127737 '() _L122411_))))
                     (let ((__tmp127740
                            (let ((__tmp127741
                                   (lambda (_g122479122482_ _g122480122484_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122479122482_
                                             _g122480122484_)))))
                              (declare (not safe))
                              (foldr1 __tmp127741 '() _L122415_)))
                           (__tmp127738
                            (let ((__tmp127739
                                   (lambda (_g122486122489_ _g122487122491_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g122486122489_
                                             _g122487122491_)))))
                              (declare (not safe))
                              (foldr1 __tmp127739 '() _L122411_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp127740 __tmp127738))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L122414_ _L122410_))
                     (let ((__tmp127742
                            (let ((__tmp127746
                                   (lambda (_g122493122495_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g122493122495_
                                        _L122412_))))
                                  (__tmp127743
                                   (let ((__tmp127745
                                          (lambda (_g122497122500_
                                                   _g122498122502_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g122497122500_
                                                    _g122498122502_))))
                                         (__tmp127744
                                          (let ()
                                            (declare (not safe))
                                            (cons _L122414_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp127745
                                             __tmp127744
                                             _L122415_))))
                              (declare (not safe))
                              (find __tmp127746 __tmp127743))))
                       (declare (not safe))
                       (not __tmp127742)))
                (___kont126346126347_
                 _L122410_
                 _L122411_
                 _L122412_
                 _L122413_
                 _L122414_
                 _L122415_)
                (___match126451126452_
                 _e121994122250_
                 _hd121995122253_
                 _tl121996122255_
                 _e122006122282_
                 _hd122007122285_
                 _tl122008122287_
                 _e122009122290_
                 _hd122010122293_
                 _tl122011122295_
                 _e122012122298_
                 _hd122013122301_
                 _tl122014122303_
                 _e122015122306_
                 _hd122016122309_
                 _tl122017122311_
                 _e122018122314_
                 _hd122019122317_
                 _tl122020122319_
                 _e122021122322_
                 _hd122022122325_
                 _tl122023122327_
                 _e122024122330_
                 _hd122025122333_
                 _tl122026122335_
                 _e122027122338_
                 _hd122028122341_
                 _tl122029122343_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match126451126452_
                                                   _e121994122250_
                                                   _hd121995122253_
                                                   _tl121996122255_
                                                   _e122006122282_
                                                   _hd122007122285_
                                                   _tl122008122287_
                                                   _e122009122290_
                                                   _hd122010122293_
                                                   _tl122011122295_
                                                   _e122012122298_
                                                   _hd122013122301_
                                                   _tl122014122303_
                                                   _e122015122306_
                                                   _hd122016122309_
                                                   _tl122017122311_
                                                   _e122018122314_
                                                   _hd122019122317_
                                                   _tl122020122319_
                                                   _e122021122322_
                                                   _hd122022122325_
                                                   _tl122023122327_
                                                   _e122024122330_
                                                   _hd122025122333_
                                                   _tl122026122335_
                                                   _e122027122338_
                                                   _hd122028122341_
                                                   _tl122029122343_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop122033122375_ _target122030122346_ '())))
                            (___match126451126452_
                             _e121994122250_
                             _hd121995122253_
                             _tl121996122255_
                             _e122006122282_
                             _hd122007122285_
                             _tl122008122287_
                             _e122009122290_
                             _hd122010122293_
                             _tl122011122295_
                             _e122012122298_
                             _hd122013122301_
                             _tl122014122303_
                             _e122015122306_
                             _hd122016122309_
                             _tl122017122311_
                             _e122018122314_
                             _hd122019122317_
                             _tl122020122319_
                             _e122021122322_
                             _hd122022122325_
                             _tl122023122327_
                             _e122024122330_
                             _hd122025122333_
                             _tl122026122335_
                             _e122027122338_
                             _hd122028122341_
                             _tl122029122343_))
                        (___match126451126452_
                         _e121994122250_
                         _hd121995122253_
                         _tl121996122255_
                         _e122006122282_
                         _hd122007122285_
                         _tl122008122287_
                         _e122009122290_
                         _hd122010122293_
                         _tl122011122295_
                         _e122012122298_
                         _hd122013122301_
                         _tl122014122303_
                         _e122015122306_
                         _hd122016122309_
                         _tl122017122311_
                         _e122018122314_
                         _hd122019122317_
                         _tl122020122319_
                         _e122021122322_
                         _hd122022122325_
                         _tl122023122327_
                         _e122024122330_
                         _hd122025122333_
                         _tl122026122335_
                         _e122027122338_
                         _hd122028122341_
                         _tl122029122343_))))
                (___match126451126452_
                 _e121994122250_
                 _hd121995122253_
                 _tl121996122255_
                 _e122006122282_
                 _hd122007122285_
                 _tl122008122287_
                 _e122009122290_
                 _hd122010122293_
                 _tl122011122295_
                 _e122012122298_
                 _hd122013122301_
                 _tl122014122303_
                 _e122015122306_
                 _hd122016122309_
                 _tl122017122311_
                 _e122018122314_
                 _hd122019122317_
                 _tl122020122319_
                 _e122021122322_
                 _hd122022122325_
                 _tl122023122327_
                 _e122024122330_
                 _hd122025122333_
                 _tl122026122335_
                 _e122027122338_
                 _hd122028122341_
                 _tl122029122343_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126451126452_
                                                     _e121994122250_
                                                     _hd121995122253_
                                                     _tl121996122255_
                                                     _e122006122282_
                                                     _hd122007122285_
                                                     _tl122008122287_
                                                     _e122009122290_
                                                     _hd122010122293_
                                                     _tl122011122295_
                                                     _e122012122298_
                                                     _hd122013122301_
                                                     _tl122014122303_
                                                     _e122015122306_
                                                     _hd122016122309_
                                                     _tl122017122311_
                                                     _e122018122314_
                                                     _hd122019122317_
                                                     _tl122020122319_
                                                     _e122021122322_
                                                     _hd122022122325_
                                                     _tl122023122327_
                                                     _e122024122330_
                                                     _hd122025122333_
                                                     _tl122026122335_
                                                     _e122027122338_
                                                     _hd122028122341_
                                                     _tl122029122343_))
                                                (___match126451126452_
                                                 _e121994122250_
                                                 _hd121995122253_
                                                 _tl121996122255_
                                                 _e122006122282_
                                                 _hd122007122285_
                                                 _tl122008122287_
                                                 _e122009122290_
                                                 _hd122010122293_
                                                 _tl122011122295_
                                                 _e122012122298_
                                                 _hd122013122301_
                                                 _tl122014122303_
                                                 _e122015122306_
                                                 _hd122016122309_
                                                 _tl122017122311_
                                                 _e122018122314_
                                                 _hd122019122317_
                                                 _tl122020122319_
                                                 _e122021122322_
                                                 _hd122022122325_
                                                 _tl122023122327_
                                                 _e122024122330_
                                                 _hd122025122333_
                                                 _tl122026122335_
                                                 _e122027122338_
                                                 _hd122028122341_
                                                 _tl122029122343_))))
                                        (___match126451126452_
                                         _e121994122250_
                                         _hd121995122253_
                                         _tl121996122255_
                                         _e122006122282_
                                         _hd122007122285_
                                         _tl122008122287_
                                         _e122009122290_
                                         _hd122010122293_
                                         _tl122011122295_
                                         _e122012122298_
                                         _hd122013122301_
                                         _tl122014122303_
                                         _e122015122306_
                                         _hd122016122309_
                                         _tl122017122311_
                                         _e122018122314_
                                         _hd122019122317_
                                         _tl122020122319_
                                         _e122021122322_
                                         _hd122022122325_
                                         _tl122023122327_
                                         _e122024122330_
                                         _hd122025122333_
                                         _tl122026122335_
                                         _e122027122338_
                                         _hd122028122341_
                                         _tl122029122343_))))
                                (___match126451126452_
                                 _e121994122250_
                                 _hd121995122253_
                                 _tl121996122255_
                                 _e122006122282_
                                 _hd122007122285_
                                 _tl122008122287_
                                 _e122009122290_
                                 _hd122010122293_
                                 _tl122011122295_
                                 _e122012122298_
                                 _hd122013122301_
                                 _tl122014122303_
                                 _e122015122306_
                                 _hd122016122309_
                                 _tl122017122311_
                                 _e122018122314_
                                 _hd122019122317_
                                 _tl122020122319_
                                 _e122021122322_
                                 _hd122022122325_
                                 _tl122023122327_
                                 _e122024122330_
                                 _hd122025122333_
                                 _tl122026122335_
                                 _e122027122338_
                                 _hd122028122341_
                                 _tl122029122343_))))
                        (___match126451126452_
                         _e121994122250_
                         _hd121995122253_
                         _tl121996122255_
                         _e122006122282_
                         _hd122007122285_
                         _tl122008122287_
                         _e122009122290_
                         _hd122010122293_
                         _tl122011122295_
                         _e122012122298_
                         _hd122013122301_
                         _tl122014122303_
                         _e122015122306_
                         _hd122016122309_
                         _tl122017122311_
                         _e122018122314_
                         _hd122019122317_
                         _tl122020122319_
                         _e122021122322_
                         _hd122022122325_
                         _tl122023122327_
                         _e122024122330_
                         _hd122025122333_
                         _tl122026122335_
                         _e122027122338_
                         _hd122028122341_
                         _tl122029122343_))
                    (___match126451126452_
                     _e121994122250_
                     _hd121995122253_
                     _tl121996122255_
                     _e122006122282_
                     _hd122007122285_
                     _tl122008122287_
                     _e122009122290_
                     _hd122010122293_
                     _tl122011122295_
                     _e122012122298_
                     _hd122013122301_
                     _tl122014122303_
                     _e122015122306_
                     _hd122016122309_
                     _tl122017122311_
                     _e122018122314_
                     _hd122019122317_
                     _tl122020122319_
                     _e122021122322_
                     _hd122022122325_
                     _tl122023122327_
                     _e122024122330_
                     _hd122025122333_
                     _tl122026122335_
                     _e122027122338_
                     _hd122028122341_
                     _tl122029122343_))
                (___kont126354126355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126354126355_))
                                            (___kont126354126355_))
                                        (___kont126354126355_))))
                                (___kont126354126355_))))
                        (___kont126354126355_))
                    (___kont126354126355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126354126355_))
                                                (___kont126354126355_))
                                            (___kont126354126355_))))
                                    (___kont126354126355_))))
                            (___kont126354126355_))
                        (___kont126354126355_))
                    (___kont126354126355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126354126355_))))
                                            (___kont126354126355_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122000122263_ _target121997122258_ '())))))
                   (___match126369126370_
                    (lambda (_e121946122510_
                             _hd121947122513_
                             _tl121948122515_
                             ___splice126342126343_
                             _target121949122518_
                             _tl121951122520_)
                      (letrec ((_loop121952122523_
                                (lambda (_hd121950122526_ _arg121956122528_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121950122526_))
                                      (let ((_e121953122531_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121950122526_))))
                                        (let ((_lp-tl121955122536_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121953122531_)))
                                              (_lp-hd121954122534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121953122531_))))
                                          (let ((__tmp127747
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121954122534_
                                                         _arg121956122528_))))
                                            (declare (not safe))
                                            (_loop121952122523_
                                             _lp-tl121955122536_
                                             __tmp127747))))
                                      (let ((_arg121957122539_
                                             (reverse _arg121956122528_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121948122515_))
                                            (let ((_e121958122542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121948122515_))))
                                              (let ((_tl121960122547_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121958122542_)))
                                                    (_hd121959122545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121958122542_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121959122545_))
                                                    (let ((_e121961122550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121959122545_))))
                                                      (let ((_tl121963122555_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121961122550_)))
                    (_hd121962122553_
                     (let () (declare (not safe)) (##car _e121961122550_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121962122553_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121962122553_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121963122555_))
                            (let ((_e121964122558_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121963122555_))))
                              (let ((_tl121966122563_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121964122558_)))
                                    (_hd121965122561_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121964122558_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121965122561_))
                                    (let ((_e121967122566_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121965122561_))))
                                      (let ((_tl121969122571_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121967122566_)))
                                            (_hd121968122569_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121967122566_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121968122569_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121968122569_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121969122571_))
                                                    (let ((_e121970122574_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121969122571_))))
                                                      (let ((_tl121972122579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121970122574_)))
                    (_hd121971122577_
                     (let () (declare (not safe)) (##car _e121970122574_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121972122579_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121966122563_))
                        (let ((___splice126344126345_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121966122563_
                                  '0))))
                          (let ((_tl121975122584_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126344126345_ '1)))
                                (_target121973122582_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126344126345_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121975122584_))
                                (letrec ((_loop121976122587_
                                          (lambda (_hd121974122590_
                                                   _xarg121980122592_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121974122590_))
                                                (let ((_e121977122595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121974122590_))))
                                                  (let ((_lp-tl121979122600_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121977122595_)))
                                                        (_lp-hd121978122598_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121977122595_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121978122598_))
                                                        (let ((_e121982122603_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121978122598_))))
                  (let ((_tl121984122608_
                         (let () (declare (not safe)) (##cdr _e121982122603_)))
                        (_hd121983122606_
                         (let ()
                           (declare (not safe))
                           (##car _e121982122603_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121983122606_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121983122606_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121984122608_))
                                (let ((_e121985122611_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121984122608_))))
                                  (let ((_tl121987122616_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121985122611_)))
                                        (_hd121986122614_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121985122611_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121987122616_))
                                        (let ((__tmp127748
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121986122614_
                                                       _xarg121980122592_))))
                                          (declare (not safe))
                                          (_loop121976122587_
                                           _lp-tl121979122600_
                                           __tmp127748))
                                        (___match126381126382_
                                         _e121946122510_
                                         _hd121947122513_
                                         _tl121948122515_
                                         ___splice126342126343_
                                         _target121949122518_
                                         _tl121951122520_))))
                                (___match126381126382_
                                 _e121946122510_
                                 _hd121947122513_
                                 _tl121948122515_
                                 ___splice126342126343_
                                 _target121949122518_
                                 _tl121951122520_))
                            (___match126381126382_
                             _e121946122510_
                             _hd121947122513_
                             _tl121948122515_
                             ___splice126342126343_
                             _target121949122518_
                             _tl121951122520_))
                        (___match126381126382_
                         _e121946122510_
                         _hd121947122513_
                         _tl121948122515_
                         ___splice126342126343_
                         _target121949122518_
                         _tl121951122520_))))
                (___match126381126382_
                 _e121946122510_
                 _hd121947122513_
                 _tl121948122515_
                 ___splice126342126343_
                 _target121949122518_
                 _tl121951122520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121981122619_
                                                       (reverse _xarg121980122592_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121960122547_))
                                                      (let ((_L122622_
                                                             _xarg121981122619_)
                                                            (_L122623_
                                                             _hd121971122577_)
                                                            (_L122624_
                                                             _arg121957122539_))
                                                        (if (and (let ((__tmp127749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp127750
                                       (lambda (_g122652122655_
                                                _g122653122657_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122652122655_
                                                 _g122653122657_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127750 '() _L122624_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp127749))
                         (fx= (length (let ((__tmp127751
                                             (lambda (_g122659122662_
                                                      _g122660122664_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122659122662_
                                                       _g122660122664_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127751 '() _L122624_)))
                              (length (let ((__tmp127752
                                             (lambda (_g122666122669_
                                                      _g122667122671_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g122666122669_
                                                       _g122667122671_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp127752 '() _L122622_))))
                         (let ((__tmp127755
                                (let ((__tmp127756
                                       (lambda (_g122673122676_
                                                _g122674122678_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122673122676_
                                                 _g122674122678_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127756 '() _L122624_)))
                               (__tmp127753
                                (let ((__tmp127754
                                       (lambda (_g122680122683_
                                                _g122681122685_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g122680122683_
                                                 _g122681122685_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp127754 '() _L122622_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp127755
                                    __tmp127753))
                         (let ((__tmp127757
                                (let ((__tmp127760
                                       (lambda (_g122687122689_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g122687122689_
                                            _L122623_))))
                                      (__tmp127758
                                       (let ((__tmp127759
                                              (lambda (_g122691122694_
                                                       _g122692122696_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g122691122694_
                                                        _g122692122696_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp127759 '() _L122624_))))
                                  (declare (not safe))
                                  (find __tmp127760 __tmp127758))))
                           (declare (not safe))
                           (not __tmp127757)))
                    (___kont126340126341_ _L122622_ _L122623_ _L122624_)
                    (___match126381126382_
                     _e121946122510_
                     _hd121947122513_
                     _tl121948122515_
                     ___splice126342126343_
                     _target121949122518_
                     _tl121951122520_)))
              (___match126381126382_
               _e121946122510_
               _hd121947122513_
               _tl121948122515_
               ___splice126342126343_
               _target121949122518_
               _tl121951122520_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop121976122587_
                                     _target121973122582_
                                     '())))
                                (___match126381126382_
                                 _e121946122510_
                                 _hd121947122513_
                                 _tl121948122515_
                                 ___splice126342126343_
                                 _target121949122518_
                                 _tl121951122520_))))
                        (___match126381126382_
                         _e121946122510_
                         _hd121947122513_
                         _tl121948122515_
                         ___splice126342126343_
                         _target121949122518_
                         _tl121951122520_))
                    (___match126381126382_
                     _e121946122510_
                     _hd121947122513_
                     _tl121948122515_
                     ___splice126342126343_
                     _target121949122518_
                     _tl121951122520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126381126382_
                                                     _e121946122510_
                                                     _hd121947122513_
                                                     _tl121948122515_
                                                     ___splice126342126343_
                                                     _target121949122518_
                                                     _tl121951122520_))
                                                (___match126381126382_
                                                 _e121946122510_
                                                 _hd121947122513_
                                                 _tl121948122515_
                                                 ___splice126342126343_
                                                 _target121949122518_
                                                 _tl121951122520_))
                                            (___match126381126382_
                                             _e121946122510_
                                             _hd121947122513_
                                             _tl121948122515_
                                             ___splice126342126343_
                                             _target121949122518_
                                             _tl121951122520_))))
                                    (___match126381126382_
                                     _e121946122510_
                                     _hd121947122513_
                                     _tl121948122515_
                                     ___splice126342126343_
                                     _target121949122518_
                                     _tl121951122520_))))
                            (___match126381126382_
                             _e121946122510_
                             _hd121947122513_
                             _tl121948122515_
                             ___splice126342126343_
                             _target121949122518_
                             _tl121951122520_))
                        (___match126381126382_
                         _e121946122510_
                         _hd121947122513_
                         _tl121948122515_
                         ___splice126342126343_
                         _target121949122518_
                         _tl121951122520_))
                    (___match126381126382_
                     _e121946122510_
                     _hd121947122513_
                     _tl121948122515_
                     ___splice126342126343_
                     _target121949122518_
                     _tl121951122520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126381126382_
                                                     _e121946122510_
                                                     _hd121947122513_
                                                     _tl121948122515_
                                                     ___splice126342126343_
                                                     _target121949122518_
                                                     _tl121951122520_))))
                                            (___match126381126382_
                                             _e121946122510_
                                             _hd121947122513_
                                             _tl121948122515_
                                             ___splice126342126343_
                                             _target121949122518_
                                             _tl121951122520_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121952122523_ _target121949122518_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126338126339_))
                  (let ((_e121946122510_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126338126339_))))
                    (let ((_tl121948122515_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121946122510_)))
                          (_hd121947122513_
                           (let ()
                             (declare (not safe))
                             (##car _e121946122510_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121947122513_))
                          (let ((___splice126342126343_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121947122513_
                                    '0))))
                            (let ((_tl121951122520_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126342126343_ '1)))
                                  (_target121949122518_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126342126343_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121951122520_))
                                  (___match126369126370_
                                   _e121946122510_
                                   _hd121947122513_
                                   _tl121948122515_
                                   ___splice126342126343_
                                   _target121949122518_
                                   _tl121951122520_)
                                  (___match126381126382_
                                   _e121946122510_
                                   _hd121947122513_
                                   _tl121948122515_
                                   ___splice126342126343_
                                   _target121949122518_
                                   _tl121951122520_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121948122515_))
                              (let ((_e122061122118_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121948122515_))))
                                (let ((_tl122063122123_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122061122118_)))
                                      (_hd122062122121_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122061122118_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122062122121_))
                                      (let ((_e122064122126_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122062122121_))))
                                        (let ((_tl122066122131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122064122126_)))
                                              (_hd122065122129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122064122126_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122065122129_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122065122129_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122066122131_))
                                                      (let ((_e122067122134_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122066122131_))))
                (let ((_tl122069122139_
                       (let () (declare (not safe)) (##cdr _e122067122134_)))
                      (_hd122068122137_
                       (let () (declare (not safe)) (##car _e122067122134_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122068122137_))
                      (let ((_e122070122142_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122068122137_))))
                        (let ((_tl122072122147_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122070122142_)))
                              (_hd122071122145_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122070122142_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122071122145_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122071122145_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122072122147_))
                                      (let ((_e122073122150_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122072122147_))))
                                        (let ((_tl122075122155_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122073122150_)))
                                              (_hd122074122153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122073122150_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122075122155_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122069122139_))
                                                  (let ((_e122076122158_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122069122139_))))
                                                    (let ((_tl122078122163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122076122158_)))
                                                          (_hd122077122161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122076122158_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122077122161_))
                                                          (let ((_e122079122166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122077122161_))))
                    (let ((_tl122081122171_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122079122166_)))
                          (_hd122080122169_
                           (let ()
                             (declare (not safe))
                             (##car _e122079122166_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122080122169_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122080122169_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122081122171_))
                                  (let ((_e122082122174_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122081122171_))))
                                    (let ((_tl122084122179_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122082122174_)))
                                          (_hd122083122177_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122082122174_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122084122179_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122078122163_))
                                              (let ((_e122085122182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122078122163_))))
                                                (let ((_tl122087122187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122085122182_)))
                                                      (_hd122086122185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122085122182_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd122086122185_))
                                                      (let ((_e122088122190_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd122086122185_))))
                (let ((_tl122090122195_
                       (let () (declare (not safe)) (##cdr _e122088122190_)))
                      (_hd122089122193_
                       (let () (declare (not safe)) (##car _e122088122190_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd122089122193_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd122089122193_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122090122195_))
                              (let ((_e122091122198_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122090122195_))))
                                (let ((_tl122093122203_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122091122198_)))
                                      (_hd122092122201_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122091122198_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122093122203_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122087122187_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122063122123_))
                                              (___match126479126480_
                                               _e121946122510_
                                               _hd121947122513_
                                               _tl121948122515_
                                               _e122061122118_
                                               _hd122062122121_
                                               _tl122063122123_
                                               _e122064122126_
                                               _hd122065122129_
                                               _tl122066122131_
                                               _e122067122134_
                                               _hd122068122137_
                                               _tl122069122139_
                                               _e122070122142_
                                               _hd122071122145_
                                               _tl122072122147_
                                               _e122073122150_
                                               _hd122074122153_
                                               _tl122075122155_
                                               _e122076122158_
                                               _hd122077122161_
                                               _tl122078122163_
                                               _e122079122166_
                                               _hd122080122169_
                                               _tl122081122171_
                                               _e122082122174_
                                               _hd122083122177_
                                               _tl122084122179_
                                               _e122085122182_
                                               _hd122086122185_
                                               _tl122087122187_
                                               _e122088122190_
                                               _hd122089122193_
                                               _tl122090122195_
                                               _e122091122198_
                                               _hd122092122201_
                                               _tl122093122203_)
                                              (___kont126354126355_))
                                          (___kont126354126355_))
                                      (___kont126354126355_))))
                              (___kont126354126355_))
                          (___kont126354126355_))
                      (___kont126354126355_))))
              (___kont126354126355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont126354126355_))
                                          (___kont126354126355_))))
                                  (___kont126354126355_))
                              (___kont126354126355_))
                          (___kont126354126355_))))
                  (___kont126354126355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126354126355_))
                                              (___kont126354126355_))))
                                      (___kont126354126355_))
                                  (___kont126354126355_))
                              (___kont126354126355_))))
                      (___kont126354126355_))))
              (___kont126354126355_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont126354126355_))
                                              (___kont126354126355_))))
                                      (___kont126354126355_))))
                              (___kont126354126355_)))))
                  (___kont126354126355_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form121404_)
        (let* ((___stx126482126483_ _form121404_)
               (_g121408121532_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126482126483_)))))
          (let ((___kont126484126485_
                 (lambda (_L121902_ _L121903_ _L121904_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121903_))))
                (___kont126490126491_
                 (lambda (_L121750_ _L121751_ _L121752_ _L121753_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121750_))))
                (___kont126494126495_
                 (lambda (_L121617_ _L121618_ _L121619_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L121617_)))))
            (let* ((___match126591126592_
                    (lambda (_e121498121537_
                             _hd121499121540_
                             _tl121500121542_
                             _e121501121545_
                             _hd121502121548_
                             _tl121503121550_
                             _e121504121553_
                             _hd121505121556_
                             _tl121506121558_
                             _e121507121561_
                             _hd121508121564_
                             _tl121509121566_
                             _e121510121569_
                             _hd121511121572_
                             _tl121512121574_
                             _e121513121577_
                             _hd121514121580_
                             _tl121515121582_
                             _e121516121585_
                             _hd121517121588_
                             _tl121518121590_
                             _e121519121593_
                             _hd121520121596_
                             _tl121521121598_
                             _e121522121601_
                             _hd121523121604_
                             _tl121524121606_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121518121590_))
                          (let ((_e121525121609_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121518121590_))))
                            (let ((_tl121527121614_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121525121609_)))
                                  (_hd121526121612_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121525121609_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121527121614_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121503121550_))
                                      (___kont126494126495_
                                       _hd121523121604_
                                       _hd121514121580_
                                       _hd121499121540_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121408121532_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121408121532_)))))
                          (let () (declare (not safe)) (_g121408121532_)))))
                   (___match126521126522_
                    (lambda (_e121459121654_
                             _hd121460121657_
                             _tl121461121659_
                             ___splice126492126493_
                             _target121462121662_
                             _tl121464121664_)
                      (letrec ((_loop121465121667_
                                (lambda (_hd121463121670_ _arg121469121672_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121463121670_))
                                      (let ((_e121466121675_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121463121670_))))
                                        (let ((_lp-tl121468121680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121466121675_)))
                                              (_lp-hd121467121678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121466121675_))))
                                          (let ((__tmp127761
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121467121678_
                                                         _arg121469121672_))))
                                            (declare (not safe))
                                            (_loop121465121667_
                                             _lp-tl121468121680_
                                             __tmp127761))))
                                      (let ((_arg121470121683_
                                             (reverse _arg121469121672_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121461121659_))
                                            (let ((_e121471121686_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121461121659_))))
                                              (let ((_tl121473121691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121471121686_)))
                                                    (_hd121472121689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121471121686_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121472121689_))
                                                    (let ((_e121474121694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121472121689_))))
                                                      (let ((_tl121476121699_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121474121694_)))
                    (_hd121475121697_
                     (let () (declare (not safe)) (##car _e121474121694_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121475121697_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121475121697_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121476121699_))
                            (let ((_e121477121702_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121476121699_))))
                              (let ((_tl121479121707_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121477121702_)))
                                    (_hd121478121705_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121477121702_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121478121705_))
                                    (let ((_e121480121710_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121478121705_))))
                                      (let ((_tl121482121715_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121480121710_)))
                                            (_hd121481121713_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121480121710_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121481121713_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121481121713_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121482121715_))
                                                    (let ((_e121483121718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121482121715_))))
                                                      (let ((_tl121485121723_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121483121718_)))
                    (_hd121484121721_
                     (let () (declare (not safe)) (##car _e121483121718_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121485121723_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121479121707_))
                        (let ((_e121486121726_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121479121707_))))
                          (let ((_tl121488121731_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121486121726_)))
                                (_hd121487121729_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121486121726_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121487121729_))
                                (let ((_e121489121734_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121487121729_))))
                                  (let ((_tl121491121739_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121489121734_)))
                                        (_hd121490121737_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121489121734_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121490121737_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121490121737_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121491121739_))
                                                (let ((_e121492121742_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121491121739_))))
                                                  (let ((_tl121494121747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121492121742_)))
                                                        (_hd121493121745_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121492121742_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121494121747_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121473121691_))
                                                            (___kont126490126491_
                                                             _hd121493121745_
                                                             _hd121484121721_
                                                             _tl121464121664_
                                                             _arg121470121683_)
                                                            (___match126591126592_
                                                             _e121459121654_
                                                             _hd121460121657_
                                                             _tl121461121659_
                                                             _e121471121686_
                                                             _hd121472121689_
                                                             _tl121473121691_
                                                             _e121474121694_
                                                             _hd121475121697_
                                                             _tl121476121699_
                                                             _e121477121702_
                                                             _hd121478121705_
                                                             _tl121479121707_
                                                             _e121480121710_
                                                             _hd121481121713_
                                                             _tl121482121715_
                                                             _e121483121718_
                                                             _hd121484121721_
                                                             _tl121485121723_
                                                             _e121486121726_
                                                             _hd121487121729_
                                                             _tl121488121731_
                                                             _e121489121734_
                                                             _hd121490121737_
                                                             _tl121491121739_
                                                             _e121492121742_
                                                             _hd121493121745_
                                                             _tl121494121747_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g121408121532_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121408121532_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121408121532_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g121408121532_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g121408121532_)))))
                        (let () (declare (not safe)) (_g121408121532_)))
                    (let () (declare (not safe)) (_g121408121532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121408121532_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g121408121532_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g121408121532_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g121408121532_)))))
                            (let () (declare (not safe)) (_g121408121532_)))
                        (let () (declare (not safe)) (_g121408121532_)))
                    (let () (declare (not safe)) (_g121408121532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g121408121532_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g121408121532_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop121465121667_ _target121462121662_ '())))))
                   (___match126509126510_
                    (lambda (_e121413121790_
                             _hd121414121793_
                             _tl121415121795_
                             ___splice126486126487_
                             _target121416121798_
                             _tl121418121800_)
                      (letrec ((_loop121419121803_
                                (lambda (_hd121417121806_ _arg121423121808_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121417121806_))
                                      (let ((_e121420121811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121417121806_))))
                                        (let ((_lp-tl121422121816_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121420121811_)))
                                              (_lp-hd121421121814_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121420121811_))))
                                          (let ((__tmp127762
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd121421121814_
                                                         _arg121423121808_))))
                                            (declare (not safe))
                                            (_loop121419121803_
                                             _lp-tl121422121816_
                                             __tmp127762))))
                                      (let ((_arg121424121819_
                                             (reverse _arg121423121808_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121415121795_))
                                            (let ((_e121425121822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121415121795_))))
                                              (let ((_tl121427121827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121425121822_)))
                                                    (_hd121426121825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121425121822_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121426121825_))
                                                    (let ((_e121428121830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121426121825_))))
                                                      (let ((_tl121430121835_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121428121830_)))
                    (_hd121429121833_
                     (let () (declare (not safe)) (##car _e121428121830_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121429121833_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121429121833_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121430121835_))
                            (let ((_e121431121838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121430121835_))))
                              (let ((_tl121433121843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121431121838_)))
                                    (_hd121432121841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121431121838_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121432121841_))
                                    (let ((_e121434121846_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121432121841_))))
                                      (let ((_tl121436121851_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121434121846_)))
                                            (_hd121435121849_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121434121846_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121435121849_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121435121849_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121436121851_))
                                                    (let ((_e121437121854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121436121851_))))
                                                      (let ((_tl121439121859_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121437121854_)))
                    (_hd121438121857_
                     (let () (declare (not safe)) (##car _e121437121854_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121439121859_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl121433121843_))
                        (let ((___splice126488126489_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl121433121843_
                                  '0))))
                          (let ((_tl121442121864_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126488126489_ '1)))
                                (_target121440121862_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice126488126489_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121442121864_))
                                (letrec ((_loop121443121867_
                                          (lambda (_hd121441121870_
                                                   _xarg121447121872_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121441121870_))
                                                (let ((_e121444121875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121441121870_))))
                                                  (let ((_lp-tl121446121880_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121444121875_)))
                                                        (_lp-hd121445121878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121444121875_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd121445121878_))
                                                        (let ((_e121449121883_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd121445121878_))))
                  (let ((_tl121451121888_
                         (let () (declare (not safe)) (##cdr _e121449121883_)))
                        (_hd121450121886_
                         (let ()
                           (declare (not safe))
                           (##car _e121449121883_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121450121886_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121450121886_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121451121888_))
                                (let ((_e121452121891_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121451121888_))))
                                  (let ((_tl121454121896_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121452121891_)))
                                        (_hd121453121894_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121452121891_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121454121896_))
                                        (let ((__tmp127763
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd121453121894_
                                                       _xarg121447121872_))))
                                          (declare (not safe))
                                          (_loop121443121867_
                                           _lp-tl121446121880_
                                           __tmp127763))
                                        (___match126521126522_
                                         _e121413121790_
                                         _hd121414121793_
                                         _tl121415121795_
                                         ___splice126486126487_
                                         _target121416121798_
                                         _tl121418121800_))))
                                (___match126521126522_
                                 _e121413121790_
                                 _hd121414121793_
                                 _tl121415121795_
                                 ___splice126486126487_
                                 _target121416121798_
                                 _tl121418121800_))
                            (___match126521126522_
                             _e121413121790_
                             _hd121414121793_
                             _tl121415121795_
                             ___splice126486126487_
                             _target121416121798_
                             _tl121418121800_))
                        (___match126521126522_
                         _e121413121790_
                         _hd121414121793_
                         _tl121415121795_
                         ___splice126486126487_
                         _target121416121798_
                         _tl121418121800_))))
                (___match126521126522_
                 _e121413121790_
                 _hd121414121793_
                 _tl121415121795_
                 ___splice126486126487_
                 _target121416121798_
                 _tl121418121800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg121448121899_
                                                       (reverse _xarg121447121872_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121427121827_))
                                                      (___kont126484126485_
                                                       _xarg121448121899_
                                                       _hd121438121857_
                                                       _arg121424121819_)
                                                      (___match126521126522_
                                                       _e121413121790_
                                                       _hd121414121793_
                                                       _tl121415121795_
                                                       ___splice126486126487_
                                                       _target121416121798_
                                                       _tl121418121800_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop121443121867_
                                     _target121440121862_
                                     '())))
                                (___match126521126522_
                                 _e121413121790_
                                 _hd121414121793_
                                 _tl121415121795_
                                 ___splice126486126487_
                                 _target121416121798_
                                 _tl121418121800_))))
                        (___match126521126522_
                         _e121413121790_
                         _hd121414121793_
                         _tl121415121795_
                         ___splice126486126487_
                         _target121416121798_
                         _tl121418121800_))
                    (___match126521126522_
                     _e121413121790_
                     _hd121414121793_
                     _tl121415121795_
                     ___splice126486126487_
                     _target121416121798_
                     _tl121418121800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126521126522_
                                                     _e121413121790_
                                                     _hd121414121793_
                                                     _tl121415121795_
                                                     ___splice126486126487_
                                                     _target121416121798_
                                                     _tl121418121800_))
                                                (___match126521126522_
                                                 _e121413121790_
                                                 _hd121414121793_
                                                 _tl121415121795_
                                                 ___splice126486126487_
                                                 _target121416121798_
                                                 _tl121418121800_))
                                            (___match126521126522_
                                             _e121413121790_
                                             _hd121414121793_
                                             _tl121415121795_
                                             ___splice126486126487_
                                             _target121416121798_
                                             _tl121418121800_))))
                                    (___match126521126522_
                                     _e121413121790_
                                     _hd121414121793_
                                     _tl121415121795_
                                     ___splice126486126487_
                                     _target121416121798_
                                     _tl121418121800_))))
                            (___match126521126522_
                             _e121413121790_
                             _hd121414121793_
                             _tl121415121795_
                             ___splice126486126487_
                             _target121416121798_
                             _tl121418121800_))
                        (___match126521126522_
                         _e121413121790_
                         _hd121414121793_
                         _tl121415121795_
                         ___splice126486126487_
                         _target121416121798_
                         _tl121418121800_))
                    (___match126521126522_
                     _e121413121790_
                     _hd121414121793_
                     _tl121415121795_
                     ___splice126486126487_
                     _target121416121798_
                     _tl121418121800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126521126522_
                                                     _e121413121790_
                                                     _hd121414121793_
                                                     _tl121415121795_
                                                     ___splice126486126487_
                                                     _target121416121798_
                                                     _tl121418121800_))))
                                            (___match126521126522_
                                             _e121413121790_
                                             _hd121414121793_
                                             _tl121415121795_
                                             ___splice126486126487_
                                             _target121416121798_
                                             _tl121418121800_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop121419121803_ _target121416121798_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126482126483_))
                  (let ((_e121413121790_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126482126483_))))
                    (let ((_tl121415121795_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121413121790_)))
                          (_hd121414121793_
                           (let ()
                             (declare (not safe))
                             (##car _e121413121790_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd121414121793_))
                          (let ((___splice126486126487_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd121414121793_
                                    '0))))
                            (let ((_tl121418121800_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126486126487_ '1)))
                                  (_target121416121798_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126486126487_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl121418121800_))
                                  (___match126509126510_
                                   _e121413121790_
                                   _hd121414121793_
                                   _tl121415121795_
                                   ___splice126486126487_
                                   _target121416121798_
                                   _tl121418121800_)
                                  (___match126521126522_
                                   _e121413121790_
                                   _hd121414121793_
                                   _tl121415121795_
                                   ___splice126486126487_
                                   _target121416121798_
                                   _tl121418121800_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121415121795_))
                              (let ((_e121501121545_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121415121795_))))
                                (let ((_tl121503121550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121501121545_)))
                                      (_hd121502121548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121501121545_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd121502121548_))
                                      (let ((_e121504121553_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd121502121548_))))
                                        (let ((_tl121506121558_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121504121553_)))
                                              (_hd121505121556_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121504121553_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd121505121556_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd121505121556_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl121506121558_))
                                                      (let ((_e121507121561_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl121506121558_))))
                (let ((_tl121509121566_
                       (let () (declare (not safe)) (##cdr _e121507121561_)))
                      (_hd121508121564_
                       (let () (declare (not safe)) (##car _e121507121561_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121508121564_))
                      (let ((_e121510121569_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121508121564_))))
                        (let ((_tl121512121574_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121510121569_)))
                              (_hd121511121572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121510121569_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd121511121572_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd121511121572_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121512121574_))
                                      (let ((_e121513121577_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121512121574_))))
                                        (let ((_tl121515121582_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121513121577_)))
                                              (_hd121514121580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121513121577_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121515121582_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121509121566_))
                                                  (let ((_e121516121585_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121509121566_))))
                                                    (let ((_tl121518121590_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121516121585_)))
                                                          (_hd121517121588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121516121585_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd121517121588_))
                                                          (let ((_e121519121593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd121517121588_))))
                    (let ((_tl121521121598_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121519121593_)))
                          (_hd121520121596_
                           (let ()
                             (declare (not safe))
                             (##car _e121519121593_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd121520121596_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd121520121596_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121521121598_))
                                  (let ((_e121522121601_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121521121598_))))
                                    (let ((_tl121524121606_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121522121601_)))
                                          (_hd121523121604_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121522121601_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121524121606_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl121518121590_))
                                              (let ((_e121525121609_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl121518121590_))))
                                                (let ((_tl121527121614_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121525121609_)))
                                                      (_hd121526121612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121525121609_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl121527121614_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121503121550_))
                                                          (___kont126494126495_
                                                           _hd121523121604_
                                                           _hd121514121580_
                                                           _hd121414121793_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g121408121532_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g121408121532_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g121408121532_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121408121532_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121408121532_)))
                              (let () (declare (not safe)) (_g121408121532_)))
                          (let () (declare (not safe)) (_g121408121532_)))))
                  (let () (declare (not safe)) (_g121408121532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121408121532_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121408121532_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121408121532_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g121408121532_)))
                              (let ()
                                (declare (not safe))
                                (_g121408121532_)))))
                      (let () (declare (not safe)) (_g121408121532_)))))
              (let () (declare (not safe)) (_g121408121532_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121408121532_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121408121532_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121408121532_)))))
                              (let ()
                                (declare (not safe))
                                (_g121408121532_))))))
                  (let () (declare (not safe)) (_g121408121532_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form121208_)
        (let* ((_g121210121224_
                (lambda (_g121211121221_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g121211121221_))))
               (_g121209121401_
                (lambda (_g121211121227_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g121211121227_))
                      (let ((_e121214121229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g121211121227_))))
                        (let ((_hd121215121232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121214121229_)))
                              (_tl121216121234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121214121229_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121216121234_))
                              (let ((_e121217121237_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121216121234_))))
                                (let ((_hd121218121240_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121217121237_)))
                                      (_tl121219121242_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121217121237_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121219121242_))
                                      ((lambda (_L121245_ _L121246_)
                                         (let* ((___stx126604126605_ _L121246_)
                                                (_g121261121289_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx126604126605_)))))
                                           (let ((___kont126606126607_
                                                  (lambda (_L121380_)
                                                    (length (let ((__tmp127764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g121390121393_ _g121391121395_)
                             (let ()
                               (declare (not safe))
                               (cons _g121390121393_ _g121391121395_)))))
                      (declare (not safe))
                      (foldr1 __tmp127764 '() _L121380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126610126611_
                                                  (lambda (_L121331_ _L121332_)
                                                    (let ((__tmp127765
                                                           (length (let ((__tmp127766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g121343121346_ _g121344121348_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g121343121346_
                                            _g121344121348_)))))
                             (declare (not safe))
                             (foldr1 __tmp127766 '() _L121332_)))))
              (declare (not safe))
              (cons __tmp127765 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont126614126615_
                                                  (lambda (_L121294_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match126629126630_
                                                     (lambda (___splice126612126613_
                                                              _target121275121307_
                                                              _tl121277121309_)
                                                       (letrec ((_loop121278121312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121276121315_ _arg121282121317_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121276121315_))
                               (let ((_e121279121320_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121276121315_))))
                                 (let ((_lp-tl121281121325_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121279121320_)))
                                       (_lp-hd121280121323_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121279121320_))))
                                   (let ((__tmp127767
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121280121323_
                                                  _arg121282121317_))))
                                     (declare (not safe))
                                     (_loop121278121312_
                                      _lp-tl121281121325_
                                      __tmp127767))))
                               (let ((_arg121283121328_
                                      (reverse _arg121282121317_)))
                                 (___kont126610126611_
                                  _tl121277121309_
                                  _arg121283121328_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121278121312_ _target121275121307_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match126623126624_
                                                     (lambda (___splice126608126609_
                                                              _target121264121356_
                                                              _tl121266121358_)
                                                       (letrec ((_loop121267121361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd121265121364_ _arg121271121366_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd121265121364_))
                               (let ((_e121268121369_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd121265121364_))))
                                 (let ((_lp-tl121270121374_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121268121369_)))
                                       (_lp-hd121269121372_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121268121369_))))
                                   (let ((__tmp127768
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd121269121372_
                                                  _arg121271121366_))))
                                     (declare (not safe))
                                     (_loop121267121361_
                                      _lp-tl121270121374_
                                      __tmp127768))))
                               (let ((_arg121272121377_
                                      (reverse _arg121271121366_)))
                                 (___kont126606126607_ _arg121272121377_))))))
                 (let ()
                   (declare (not safe))
                   (_loop121267121361_ _target121264121356_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx126604126605_))
                                                   (let ((___splice126608126609_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx126604126605_
                                                             '0))))
                                                     (let ((_tl121266121358_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126608126609_
                                                               '1)))
                                                           (_target121264121356_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice126608126609_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121266121358_))
                                                           (___match126623126624_
                                                            ___splice126608126609_
                                                            _target121264121356_
                                                            _tl121266121358_)
                                                           (___match126629126630_
                                                            ___splice126608126609_
                                                            _target121264121356_
                                                            _tl121266121358_))))
                                                   (___kont126614126615_
                                                    ___stx126604126605_))))))
                                       _hd121218121240_
                                       _hd121215121232_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121210121224_ _g121211121227_)))))
                              (let ()
                                (declare (not safe))
                                (_g121210121224_ _g121211121227_)))))
                      (let ()
                        (declare (not safe))
                        (_g121210121224_ _g121211121227_))))))
          (declare (not safe))
          (_g121209121401_ _form121208_))))
    (define gxc#lambda-expr?
      (lambda (_expr121161_)
        (let* ((___stx126632126633_ _expr121161_)
               (_g121164121174_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126632126633_)))))
          (let ((___kont126634126635_ (lambda (_L121194_) '#t))
                (___kont126636126637_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126632126633_))
                (let ((_e121167121186_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126632126633_))))
                  (let ((_tl121169121191_
                         (let () (declare (not safe)) (##cdr _e121167121186_)))
                        (_hd121168121189_
                         (let ()
                           (declare (not safe))
                           (##car _e121167121186_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121168121189_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd121168121189_))
                            (___kont126634126635_ _tl121169121191_)
                            (___kont126636126637_))
                        (___kont126636126637_))))
                (___kont126636126637_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr121114_)
        (let* ((___stx126650126651_ _expr121114_)
               (_g121117121127_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126650126651_)))))
          (let ((___kont126652126653_ (lambda (_L121147_) '#t))
                (___kont126654126655_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126650126651_))
                (let ((_e121120121139_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126650126651_))))
                  (let ((_tl121122121144_
                         (let () (declare (not safe)) (##cdr _e121120121139_)))
                        (_hd121121121142_
                         (let ()
                           (declare (not safe))
                           (##car _e121120121139_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121121121142_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd121121121142_))
                            (___kont126652126653_ _tl121122121144_)
                            (___kont126654126655_))
                        (___kont126654126655_))))
                (___kont126654126655_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr120983_)
        (let* ((___stx126668126669_ _expr120983_)
               (_g120986121016_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126668126669_)))))
          (let ((___kont126670126671_
                 (lambda (_L121084_ _L121085_ _L121086_)
                   (if (let () (declare (not safe)) (gx#identifier? _L121086_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L121085_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L121084_))
                           '#f)
                       '#f)))
                (___kont126672126673_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126668126669_))
                (let ((_e120991121028_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126668126669_))))
                  (let ((_tl120993121033_
                         (let () (declare (not safe)) (##cdr _e120991121028_)))
                        (_hd120992121031_
                         (let ()
                           (declare (not safe))
                           (##car _e120991121028_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120992121031_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120992121031_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120993121033_))
                                (let ((_e120994121036_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120993121033_))))
                                  (let ((_tl120996121041_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120994121036_)))
                                        (_hd120995121039_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120994121036_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120995121039_))
                                        (let ((_e120997121044_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120995121039_))))
                                          (let ((_tl120999121049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120997121044_)))
                                                (_hd120998121047_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120997121044_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120998121047_))
                                                (let ((_e121000121052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120998121047_))))
                                                  (let ((_tl121002121057_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121000121052_)))
                                                        (_hd121001121055_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121000121052_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121001121055_))
                                                        (let ((_e121003121060_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121001121055_))))
                  (let ((_tl121005121065_
                         (let () (declare (not safe)) (##cdr _e121003121060_)))
                        (_hd121004121063_
                         (let ()
                           (declare (not safe))
                           (##car _e121003121060_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121005121065_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121002121057_))
                            (let ((_e121006121068_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121002121057_))))
                              (let ((_tl121008121073_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121006121068_)))
                                    (_hd121007121071_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121006121068_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121008121073_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120999121049_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120996121041_))
                                            (let ((_e121009121076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120996121041_))))
                                              (let ((_tl121011121081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121009121076_)))
                                                    (_hd121010121079_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121009121076_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121011121081_))
                                                    (___kont126670126671_
                                                     _hd121010121079_
                                                     _hd121007121071_
                                                     _hd121004121063_)
                                                    (___kont126672126673_))))
                                            (___kont126672126673_))
                                        (___kont126672126673_))
                                    (___kont126672126673_))))
                            (___kont126672126673_))
                        (___kont126672126673_))))
                (___kont126672126673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126672126673_))))
                                        (___kont126672126673_))))
                                (___kont126672126673_))
                            (___kont126672126673_))
                        (___kont126672126673_))))
                (___kont126672126673_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr120308_)
        (let* ((___stx126730126731_ _expr120308_)
               (_g120311120469_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126730126731_)))))
          (let ((___kont126732126733_
                 (lambda (_L120857_
                          _L120858_
                          _L120859_
                          _L120860_
                          _L120861_
                          _L120862_
                          _L120863_
                          _L120864_
                          _L120865_
                          _L120866_
                          _L120867_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L120864_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L120860_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L120859_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L120867_
                                      _L120858_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L120866_
                                          _L120863_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L120861_
                                              _L120857_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L120865_
                                              _L120862_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont126734126735_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx126730126731_))
                (let ((_e120324120481_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx126730126731_))))
                  (let ((_tl120326120486_
                         (let () (declare (not safe)) (##cdr _e120324120481_)))
                        (_hd120325120484_
                         (let ()
                           (declare (not safe))
                           (##car _e120324120481_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120325120484_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd120325120484_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120326120486_))
                                (let ((_e120327120489_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120326120486_))))
                                  (let ((_tl120329120494_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120327120489_)))
                                        (_hd120328120492_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120327120489_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd120328120492_))
                                        (let ((_e120330120497_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd120328120492_))))
                                          (let ((_tl120332120502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120330120497_)))
                                                (_hd120331120500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120330120497_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120331120500_))
                                                (let ((_e120333120505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120331120500_))))
                                                  (let ((_tl120335120510_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120333120505_)))
                                                        (_hd120334120508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120333120505_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120334120508_))
                                                        (let ((_e120336120513_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120334120508_))))
                  (let ((_tl120338120518_
                         (let () (declare (not safe)) (##cdr _e120336120513_)))
                        (_hd120337120516_
                         (let ()
                           (declare (not safe))
                           (##car _e120336120513_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl120338120518_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120335120510_))
                            (let ((_e120339120521_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120335120510_))))
                              (let ((_tl120341120526_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120339120521_)))
                                    (_hd120340120524_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120339120521_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120340120524_))
                                    (let ((_e120342120529_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120340120524_))))
                                      (let ((_tl120344120534_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120342120529_)))
                                            (_hd120343120532_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120342120529_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120343120532_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd120343120532_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120344120534_))
                                                    (let ((_e120345120537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120344120534_))))
                                                      (let ((_tl120347120542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120345120537_)))
                    (_hd120346120540_
                     (let () (declare (not safe)) (##car _e120345120537_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120346120540_))
                    (let ((_e120348120545_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120346120540_))))
                      (let ((_tl120350120550_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120348120545_)))
                            (_hd120349120548_
                             (let ()
                               (declare (not safe))
                               (##car _e120348120545_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120349120548_))
                            (let ((_e120351120553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120349120548_))))
                              (let ((_tl120353120558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120351120553_)))
                                    (_hd120352120556_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120351120553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120352120556_))
                                    (let ((_e120354120561_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120352120556_))))
                                      (let ((_tl120356120566_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120354120561_)))
                                            (_hd120355120564_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120354120561_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120356120566_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120353120558_))
                                                (let ((_e120357120569_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120353120558_))))
                                                  (let ((_tl120359120574_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120357120569_)))
                                                        (_hd120358120572_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120357120569_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120359120574_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl120350120550_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120347120542_))
                        (let ((_e120360120577_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120347120542_))))
                          (let ((_tl120362120582_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120360120577_)))
                                (_hd120361120580_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120360120577_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120361120580_))
                                (let ((_e120363120585_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120361120580_))))
                                  (let ((_tl120365120590_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120363120585_)))
                                        (_hd120364120588_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120363120585_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120364120588_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd120364120588_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120365120590_))
                                                (let ((_e120366120593_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120365120590_))))
                                                  (let ((_tl120368120598_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120366120593_)))
                                                        (_hd120367120596_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120366120593_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120367120596_))
                                                        (let ((_e120369120601_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120367120596_))))
                  (let ((_tl120371120606_
                         (let () (declare (not safe)) (##cdr _e120369120601_)))
                        (_hd120370120604_
                         (let ()
                           (declare (not safe))
                           (##car _e120369120601_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120368120598_))
                        (let ((_e120372120609_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120368120598_))))
                          (let ((_tl120374120614_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120372120609_)))
                                (_hd120373120612_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120372120609_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120373120612_))
                                (let ((_e120375120617_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120373120612_))))
                                  (let ((_tl120377120622_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120375120617_)))
                                        (_hd120376120620_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120375120617_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120376120620_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd120376120620_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120377120622_))
                                                (let ((_e120378120625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120377120622_))))
                                                  (let ((_tl120380120630_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120378120625_)))
                                                        (_hd120379120628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120378120625_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd120379120628_))
                                                        (let ((_e120381120633_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd120379120628_))))
                  (let ((_tl120383120638_
                         (let () (declare (not safe)) (##cdr _e120381120633_)))
                        (_hd120382120636_
                         (let ()
                           (declare (not safe))
                           (##car _e120381120633_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd120382120636_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd120382120636_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl120383120638_))
                                (let ((_e120384120641_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl120383120638_))))
                                  (let ((_tl120386120646_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120384120641_)))
                                        (_hd120385120644_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120384120641_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120386120646_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120380120630_))
                                            (let ((_e120387120649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120380120630_))))
                                              (let ((_tl120389120654_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120387120649_)))
                                                    (_hd120388120652_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120387120649_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120388120652_))
                                                    (let ((_e120390120657_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120388120652_))))
                                                      (let ((_tl120392120662_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120390120657_)))
                    (_hd120391120660_
                     (let () (declare (not safe)) (##car _e120390120657_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120391120660_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd120391120660_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120392120662_))
                            (let ((_e120393120665_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120392120662_))))
                              (let ((_tl120395120670_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120393120665_)))
                                    (_hd120394120668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120393120665_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120395120670_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120389120654_))
                                        (let ((_e120396120673_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120389120654_))))
                                          (let ((_tl120398120678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120396120673_)))
                                                (_hd120397120676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120396120673_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd120397120676_))
                                                (let ((_e120399120681_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd120397120676_))))
                                                  (let ((_tl120401120686_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120399120681_)))
                                                        (_hd120400120684_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120399120681_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd120400120684_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd120400120684_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl120401120686_))
                        (let ((_e120402120689_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120401120686_))))
                          (let ((_tl120404120694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120402120689_)))
                                (_hd120403120692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120402120689_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120404120694_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl120374120614_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl120362120582_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120341120526_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120332120502_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120329120494_))
                                                    (let ((_e120405120697_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120329120494_))))
                                                      (let ((_tl120407120702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120405120697_)))
                    (_hd120406120700_
                     (let () (declare (not safe)) (##car _e120405120697_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120406120700_))
                    (let ((_e120408120705_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120406120700_))))
                      (let ((_tl120410120710_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120408120705_)))
                            (_hd120409120708_
                             (let ()
                               (declare (not safe))
                               (##car _e120408120705_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120409120708_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd120409120708_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120410120710_))
                                    (let ((_e120411120713_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120410120710_))))
                                      (let ((_tl120413120718_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120411120713_)))
                                            (_hd120412120716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120411120713_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120413120718_))
                                            (let ((_e120414120721_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120413120718_))))
                                              (let ((_tl120416120726_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120414120721_)))
                                                    (_hd120415120724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120414120721_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd120415120724_))
                                                    (let ((_e120417120729_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd120415120724_))))
                                                      (let ((_tl120419120734_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120417120729_)))
                    (_hd120418120732_
                     (let () (declare (not safe)) (##car _e120417120729_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd120418120732_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd120418120732_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120419120734_))
                            (let ((_e120420120737_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120419120734_))))
                              (let ((_tl120422120742_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120420120737_)))
                                    (_hd120421120740_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120420120737_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120421120740_))
                                    (let ((_e120423120745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120421120740_))))
                                      (let ((_tl120425120750_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120423120745_)))
                                            (_hd120424120748_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120423120745_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd120424120748_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd120424120748_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120425120750_))
                                                    (let ((_e120426120753_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120425120750_))))
                                                      (let ((_tl120428120758_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120426120753_)))
                    (_hd120427120756_
                     (let () (declare (not safe)) (##car _e120426120753_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl120428120758_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl120422120742_))
                        (let ((_e120429120761_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl120422120742_))))
                          (let ((_tl120431120766_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120429120761_)))
                                (_hd120430120764_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120429120761_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd120430120764_))
                                (let ((_e120432120769_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd120430120764_))))
                                  (let ((_tl120434120774_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e120432120769_)))
                                        (_hd120433120772_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e120432120769_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd120433120772_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd120433120772_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120434120774_))
                                                (let ((_e120435120777_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120434120774_))))
                                                  (let ((_tl120437120782_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120435120777_)))
                                                        (_hd120436120780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120435120777_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120437120782_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl120431120766_))
                                                            (let ((_e120438120785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl120431120766_))))
                      (let ((_tl120440120790_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120438120785_)))
                            (_hd120439120788_
                             (let ()
                               (declare (not safe))
                               (##car _e120438120785_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd120439120788_))
                            (let ((_e120441120793_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd120439120788_))))
                              (let ((_tl120443120798_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120441120793_)))
                                    (_hd120442120796_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120441120793_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd120442120796_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd120442120796_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl120443120798_))
                                            (let ((_e120444120801_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl120443120798_))))
                                              (let ((_tl120446120806_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e120444120801_)))
                                                    (_hd120445120804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e120444120801_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120446120806_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl120440120790_))
                                                        (let ((_e120447120809_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl120440120790_))))
                  (let ((_tl120449120814_
                         (let () (declare (not safe)) (##cdr _e120447120809_)))
                        (_hd120448120812_
                         (let ()
                           (declare (not safe))
                           (##car _e120447120809_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120448120812_))
                        (let ((_e120450120817_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120448120812_))))
                          (let ((_tl120452120822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120450120817_)))
                                (_hd120451120820_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120450120817_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd120451120820_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd120451120820_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120452120822_))
                                        (let ((_e120453120825_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120452120822_))))
                                          (let ((_tl120455120830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120453120825_)))
                                                (_hd120454120828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120453120825_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120455120830_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl120449120814_))
                                                    (let ((_e120456120833_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl120449120814_))))
                                                      (let ((_tl120458120838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e120456120833_)))
                    (_hd120457120836_
                     (let () (declare (not safe)) (##car _e120456120833_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd120457120836_))
                    (let ((_e120459120841_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd120457120836_))))
                      (let ((_tl120461120846_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120459120841_)))
                            (_hd120460120844_
                             (let ()
                               (declare (not safe))
                               (##car _e120459120841_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd120460120844_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd120460120844_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120461120846_))
                                    (let ((_e120462120849_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120461120846_))))
                                      (let ((_tl120464120854_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120462120849_)))
                                            (_hd120463120852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120462120849_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120464120854_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120458120838_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl120416120726_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120407120702_))
                                                        (___kont126732126733_
                                                         _hd120463120852_
                                                         _hd120454120828_
                                                         _hd120436120780_
                                                         _hd120427120756_
                                                         _hd120412120716_
                                                         _hd120403120692_
                                                         _hd120394120668_
                                                         _hd120385120644_
                                                         _hd120370120604_
                                                         _hd120355120564_
                                                         _hd120337120516_)
                                                        (___kont126734126735_))
                                                    (___kont126734126735_))
                                                (___kont126734126735_))
                                            (___kont126734126735_))))
                                    (___kont126734126735_))
                                (___kont126734126735_))
                            (___kont126734126735_))))
                    (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126734126735_))
                                                (___kont126734126735_))))
                                        (___kont126734126735_))
                                    (___kont126734126735_))
                                (___kont126734126735_))))
                        (___kont126734126735_))))
                (___kont126734126735_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126734126735_))))
                                            (___kont126734126735_))
                                        (___kont126734126735_))
                                    (___kont126734126735_))))
                            (___kont126734126735_))))
                    (___kont126734126735_))
                (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126734126735_))
                                            (___kont126734126735_))
                                        (___kont126734126735_))))
                                (___kont126734126735_))))
                        (___kont126734126735_))
                    (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126734126735_))
                                                (___kont126734126735_))
                                            (___kont126734126735_))))
                                    (___kont126734126735_))))
                            (___kont126734126735_))
                        (___kont126734126735_))
                    (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126734126735_))))
                                            (___kont126734126735_))))
                                    (___kont126734126735_))
                                (___kont126734126735_))
                            (___kont126734126735_))))
                    (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126734126735_))
                                                (___kont126734126735_))
                                            (___kont126734126735_))
                                        (___kont126734126735_))
                                    (___kont126734126735_))
                                (___kont126734126735_))))
                        (___kont126734126735_))
                    (___kont126734126735_))
                (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126734126735_))))
                                        (___kont126734126735_))
                                    (___kont126734126735_))))
                            (___kont126734126735_))
                        (___kont126734126735_))
                    (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126734126735_))))
                                            (___kont126734126735_))
                                        (___kont126734126735_))))
                                (___kont126734126735_))
                            (___kont126734126735_))
                        (___kont126734126735_))))
                (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126734126735_))
                                            (___kont126734126735_))
                                        (___kont126734126735_))))
                                (___kont126734126735_))))
                        (___kont126734126735_))))
                (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126734126735_))
                                            (___kont126734126735_))
                                        (___kont126734126735_))))
                                (___kont126734126735_))))
                        (___kont126734126735_))
                    (___kont126734126735_))
                (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126734126735_))
                                            (___kont126734126735_))))
                                    (___kont126734126735_))))
                            (___kont126734126735_))))
                    (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont126734126735_))
                                                (___kont126734126735_))
                                            (___kont126734126735_))))
                                    (___kont126734126735_))))
                            (___kont126734126735_))
                        (___kont126734126735_))))
                (___kont126734126735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont126734126735_))))
                                        (___kont126734126735_))))
                                (___kont126734126735_))
                            (___kont126734126735_))
                        (___kont126734126735_))))
                (___kont126734126735_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx120050_ _id120051_ _clauses120052_ _gensym?120053_)
        (let _lp120055_ ((_rest120057_ _clauses120052_)
                         (_ids120058_ '())
                         (_impls120059_ '())
                         (_clauses120060_ '()))
          (let* ((_rest120061120069_ _rest120057_)
                 (_else120063120077_
                  (lambda ()
                    (values (reverse _ids120058_)
                            (reverse _impls120059_)
                            (reverse _clauses120060_))))
                 (_K120065120282_
                  (lambda (_rest120080_ _clause120081_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause120081_))
                        (let ((__tmp127769
                               (let ()
                                 (declare (not safe))
                                 (cons _clause120081_ _clauses120060_))))
                          (declare (not safe))
                          (_lp120055_
                           _rest120080_
                           _ids120058_
                           _impls120059_
                           __tmp127769))
                        (let* ((_g120083120094_
                                (lambda (_g120084120091_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g120084120091_))))
                               (_g120082120279_
                                (lambda (_g120084120097_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g120084120097_))
                                      (let ((_e120087120099_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g120084120097_))))
                                        (let ((_hd120088120102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120087120099_)))
                                              (_tl120089120104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120087120099_))))
                                          ((lambda (_L120107_ _L120108_)
                                             (let* ((_id120125_
                                                     (let ((__tmp127772
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id120051_)))
                                                           (__tmp127771
                                                            (length _clauses120060_))
                                                           (__tmp127770
                                                            (if _gensym?120053_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp127772
                                                        '"__"
                                                        __tmp127771
                                                        __tmp127770)))
                                                    (_id120127_
                                                     (let ((__tmp127773
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx120050_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id120125_
                                                        __tmp127773)))
                                                    (_impl120129_
                                                     (let ((__tmp127774
                                                            (let ((__tmp127776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp127775
                           (let ()
                             (declare (not safe))
                             (cons _L120108_ _L120107_))))
                      (declare (not safe))
                      (cons __tmp127776 __tmp127775))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp127774 _stx120050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause120276_
                                                     (let* ((___stx127114127115_
                                                             _L120108_)
                                                            (_g120133120161_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx127114127115_)))))
               (let ((___kont127116127117_
                      (lambda (_L120255_)
                        (let ((__tmp127777
                               (let ((__tmp127778
                                      (let ((__tmp127779
                                             (let ((__tmp127780
                                                    (let ((__tmp127786
                                                           (let ((__tmp127787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id120127_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127787)))
                  (__tmp127781
                   (let ((__tmp127782
                          (lambda (_g120265120268_ _g120266120270_)
                            (let ((__tmp127783
                                   (let ((__tmp127785
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp127784
                                          (let ()
                                            (declare (not safe))
                                            (cons _g120265120268_ '()))))
                                     (declare (not safe))
                                     (cons __tmp127785 __tmp127784))))
                              (declare (not safe))
                              (cons __tmp127783 _g120266120270_)))))
                     (declare (not safe))
                     (foldr1 __tmp127782 '() _L120255_))))
              (declare (not safe))
              (cons __tmp127786 __tmp127781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127780))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127779
                                         _stx120050_))))
                                 (declare (not safe))
                                 (cons __tmp127778 '()))))
                          (declare (not safe))
                          (cons _L120108_ __tmp127777))))
                     (___kont127120127121_
                      (lambda (_L120206_ _L120207_)
                        (let ((__tmp127788
                               (let ((__tmp127789
                                      (let ((__tmp127790
                                             (let ((__tmp127791
                                                    (let ((__tmp127805
                                                           (let ((__tmp127806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127806)))
                  (__tmp127792
                   (let ((__tmp127803
                          (let ((__tmp127804
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120127_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127804)))
                         (__tmp127793
                          (let ((__tmp127799
                                 (let ((__tmp127800
                                        (let ((__tmp127802
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp127801
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L120206_ '()))))
                                          (declare (not safe))
                                          (cons __tmp127802 __tmp127801))))
                                   (declare (not safe))
                                   (cons __tmp127800 '())))
                                (__tmp127794
                                 (let ((__tmp127795
                                        (lambda (_g120218120221_
                                                 _g120219120223_)
                                          (let ((__tmp127796
                                                 (let ((__tmp127798
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp127797
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g120218120221_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp127798
                                                         __tmp127797))))
                                            (declare (not safe))
                                            (cons __tmp127796
                                                  _g120219120223_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp127795 '() _L120207_))))
                            (declare (not safe))
                            (foldr1 cons __tmp127799 __tmp127794))))
                     (declare (not safe))
                     (cons __tmp127803 __tmp127793))))
              (declare (not safe))
              (cons __tmp127805 __tmp127792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127791))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127790
                                         _stx120050_))))
                                 (declare (not safe))
                                 (cons __tmp127789 '()))))
                          (declare (not safe))
                          (cons _L120108_ __tmp127788))))
                     (___kont127124127125_
                      (lambda (_L120166_)
                        (let ((__tmp127807
                               (let ((__tmp127808
                                      (let ((__tmp127809
                                             (let ((__tmp127810
                                                    (let ((__tmp127818
                                                           (let ((__tmp127819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp127819)))
                  (__tmp127811
                   (let ((__tmp127816
                          (let ((__tmp127817
                                 (let ()
                                   (declare (not safe))
                                   (cons _id120127_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp127817)))
                         (__tmp127812
                          (let ((__tmp127813
                                 (let ((__tmp127815
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp127814
                                        (let ()
                                          (declare (not safe))
                                          (cons _L120166_ '()))))
                                   (declare (not safe))
                                   (cons __tmp127815 __tmp127814))))
                            (declare (not safe))
                            (cons __tmp127813 '()))))
                     (declare (not safe))
                     (cons __tmp127816 __tmp127812))))
              (declare (not safe))
              (cons __tmp127818 __tmp127811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp127810))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp127809
                                         _stx120050_))))
                                 (declare (not safe))
                                 (cons __tmp127808 '()))))
                          (declare (not safe))
                          (cons _L120108_ __tmp127807)))))
                 (let* ((___match127139127140_
                         (lambda (___splice127122127123_
                                  _target120147120182_
                                  _tl120149120184_)
                           (letrec ((_loop120150120187_
                                     (lambda (_hd120148120190_
                                              _arg120154120192_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120148120190_))
                                           (let ((_e120151120195_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120148120190_))))
                                             (let ((_lp-tl120153120200_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120151120195_)))
                                                   (_lp-hd120152120198_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120151120195_))))
                                               (let ((__tmp127820
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120152120198_
                                                              _arg120154120192_))))
                                                 (declare (not safe))
                                                 (_loop120150120187_
                                                  _lp-tl120153120200_
                                                  __tmp127820))))
                                           (let ((_arg120155120203_
                                                  (reverse _arg120154120192_)))
                                             (___kont127120127121_
                                              _tl120149120184_
                                              _arg120155120203_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120150120187_
                                _target120147120182_
                                '())))))
                        (___match127133127134_
                         (lambda (___splice127118127119_
                                  _target120136120231_
                                  _tl120138120233_)
                           (letrec ((_loop120139120236_
                                     (lambda (_hd120137120239_
                                              _arg120143120241_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd120137120239_))
                                           (let ((_e120140120244_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd120137120239_))))
                                             (let ((_lp-tl120142120249_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120140120244_)))
                                                   (_lp-hd120141120247_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120140120244_))))
                                               (let ((__tmp127821
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd120141120247_
                                                              _arg120143120241_))))
                                                 (declare (not safe))
                                                 (_loop120139120236_
                                                  _lp-tl120142120249_
                                                  __tmp127821))))
                                           (let ((_arg120144120252_
                                                  (reverse _arg120143120241_)))
                                             (___kont127116127117_
                                              _arg120144120252_))))))
                             (let ()
                               (declare (not safe))
                               (_loop120139120236_
                                _target120136120231_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx127114127115_))
                       (let ((___splice127118127119_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx127114127115_
                                 '0))))
                         (let ((_tl120138120233_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127118127119_ '1)))
                               (_target120136120231_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice127118127119_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120138120233_))
                               (___match127133127134_
                                ___splice127118127119_
                                _target120136120231_
                                _tl120138120233_)
                               (___match127139127140_
                                ___splice127118127119_
                                _target120136120231_
                                _tl120138120233_))))
                       (___kont127124127125_ ___stx127114127115_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp127824
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id120127_
                                                              _ids120058_)))
                                                     (__tmp127823
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl120129_
                                                              _impls120059_)))
                                                     (__tmp127822
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause120276_
                                                              _clauses120060_))))
                                                 (declare (not safe))
                                                 (_lp120055_
                                                  _rest120080_
                                                  __tmp127824
                                                  __tmp127823
                                                  __tmp127822))))
                                           _tl120089120104_
                                           _hd120088120102_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g120083120094_ _g120084120097_))))))
                          (declare (not safe))
                          (_g120082120279_ _clause120081_))))))
            (if (let () (declare (not safe)) (##pair? _rest120061120069_))
                (let ((_hd120066120285_
                       (let ()
                         (declare (not safe))
                         (##car _rest120061120069_)))
                      (_tl120067120287_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest120061120069_))))
                  (let* ((_clause120290_ _hd120066120285_)
                         (_rest120292_ _tl120067120287_))
                    (declare (not safe))
                    (_K120065120282_ _rest120292_ _clause120290_)))
                (let () (declare (not safe)) (_else120063120077_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx120297_ _id120298_ _clauses120299_)
        (let ((_gensym?120301_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx120297_
           _id120298_
           _clauses120299_
           _gensym?120301_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g127826_
        (let ((_g127825_ (let () (declare (not safe)) (##length _g127826_))))
          (cond ((let () (declare (not safe)) (##fx= _g127825_ 3))
                 (apply (lambda (_stx120297_ _id120298_ _clauses120299_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx120297_
                             _id120298_
                             _clauses120299_)))
                        _g127826_))
                ((let () (declare (not safe)) (##fx= _g127825_ 4))
                 (apply (lambda (_stx120303_
                                 _id120304_
                                 _clauses120305_
                                 _gensym?120306_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx120303_
                             _id120304_
                             _clauses120305_
                             _gensym?120306_)))
                        _g127826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g127826_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self119326_ _stx119327_)
        (letrec ((_case-lambda-clause-def119329_
                  (lambda (_id120046_ _impl120047_)
                    (let ((__tmp127827
                           (let ((__tmp127828
                                  (let ((__tmp127831
                                         (let ()
                                           (declare (not safe))
                                           (cons _id120046_ '())))
                                        (__tmp127829
                                         (let ((__tmp127830
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self119326_
                                                   _impl120047_))))
                                           (declare (not safe))
                                           (cons __tmp127830 '()))))
                                    (declare (not safe))
                                    (cons __tmp127831 __tmp127829))))
                             (declare (not safe))
                             (cons '%#define-values __tmp127828))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127827 _stx119327_))))
                 (_opt-lambda-dispatch-name119330_
                  (lambda (_id120042_)
                    (if (uninterned-symbol? _id120042_)
                        (let ((_str120044_ (symbol->string _id120042_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str120044_))
                              '"%"
                              _id120042_))
                        _id120042_)))
                 (_kw-lambda-dispatch-name119331_
                  (lambda (_id120037_ _name120038_)
                    (if (uninterned-symbol? _id120037_)
                        (let ((_str120040_ (symbol->string _id120037_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str120040_))
                              _name120038_
                              _id120037_))
                        _id120037_))))
          (let* ((___stx127162127163_ _stx119327_)
                 (_g119336119395_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127162127163_)))))
            (let ((___kont127164127165_
                   (lambda (_L119946_ _L119947_)
                     (let* ((___stx127142127143_ _L119946_)
                            (_g119964119978_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127142127143_)))))
                       (let ((___kont127144127145_
                              (lambda (_L120022_) _stx119327_))
                             (___kont127146127147_
                              (lambda (_L119991_)
                                (let ((_g127832_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx119327_
                                          _L119947_
                                          _L119991_))))
                                  (begin
                                    (let ((_g127833_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g127832_)
                                                 (##vector-length _g127832_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g127833_ 3)))
                                          (error "Context expects 3 values"
                                                 _g127833_)))
                                    (let ((_ids120001_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127832_ 0)))
                                          (_impls120002_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127832_ 1)))
                                          (_clauses120003_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g127832_ 2))))
                                      (let* ((_g127834_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids120001_))
                                             (_defs120006_
                                              (map _case-lambda-clause-def119329_
                                                   _ids120001_
                                                   _impls120002_)))
                                        (let ((__tmp127836
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L119947_)))
                                              (__tmp127835
                                               (map gxc#identifier-symbol
                                                    _ids120001_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp127836
                                           '" => "
                                           __tmp127835))
                                        (let ((__tmp127837
                                               (let ((__tmp127838
                                                      (let ((__tmp127839
                                                             (let ((__tmp127840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp127841
                                   (let ((__tmp127842
                                          (let ((__tmp127847
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L119947_ '())))
                                                (__tmp127843
                                                 (let ((__tmp127844
                                                        (let ((__tmp127846
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses120003_)))
                      (__tmp127845
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp127846 __tmp127845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127844 '()))))
                                            (declare (not safe))
                                            (cons __tmp127847 __tmp127843))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp127842))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127841
                               _stx119327_))))
                       (declare (not safe))
                       (cons __tmp127840 '()))))
                (declare (not safe))
                (foldr1 cons __tmp127839 _defs120006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp127838))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp127837
                                           _stx119327_)))))))))
                         (let ((___match127153127154_
                                (lambda (_e119967120014_
                                         _hd119968120017_
                                         _tl119969120019_)
                                  (let ((_L120022_ _tl119969120019_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L120022_))
                                        (___kont127144127145_ _L120022_)
                                        (___kont127146127147_
                                         _tl119969120019_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx127142127143_))
                               (let ((_e119967120014_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx127142127143_))))
                                 (let ((_tl119969120019_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119967120014_)))
                                       (_hd119968120017_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119967120014_))))
                                   (___match127153127154_
                                    _e119967120014_
                                    _hd119968120017_
                                    _tl119969120019_)))
                               (let ()
                                 (declare (not safe))
                                 (_g119964119978_))))))))
                  (___kont127166127167_
                   (lambda (_L119764_ _L119765_)
                     (let* ((_g119781119811_
                             (lambda (_g119782119808_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119782119808_))))
                            (_g119780119906_
                             (lambda (_g119782119814_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119782119814_))
                                   (let ((_e119786119816_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119782119814_))))
                                     (let ((_hd119787119819_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119786119816_)))
                                           (_tl119788119821_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119786119816_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119788119821_))
                                           (let ((_e119789119824_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119788119821_))))
                                             (let ((_hd119790119827_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119789119824_)))
                                                   (_tl119791119829_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119789119824_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119790119827_))
                                                   (let ((_e119792119832_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119790119827_))))
                                                     (let ((_hd119793119835_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119792119832_)))
                                                           (_tl119794119837_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119792119832_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119793119835_))
                                                           (let ((_e119795119840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119793119835_))))
                     (let ((_hd119796119843_
                            (let ()
                              (declare (not safe))
                              (##car _e119795119840_)))
                           (_tl119797119845_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119795119840_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119796119843_))
                           (let ((_e119798119848_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119796119843_))))
                             (let ((_hd119799119851_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119798119848_)))
                                   (_tl119800119853_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119798119848_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119800119853_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119797119845_))
                                       (let ((_e119801119856_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119797119845_))))
                                         (let ((_hd119802119859_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119801119856_)))
                                               (_tl119803119861_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119801119856_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119803119861_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl119794119837_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119791119829_))
                                                       (let ((_e119804119864_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119791119829_))))
                 (let ((_hd119805119867_
                        (let () (declare (not safe)) (##car _e119804119864_)))
                       (_tl119806119869_
                        (let () (declare (not safe)) (##cdr _e119804119864_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119806119869_))
                       ((lambda (_L119872_ _L119873_ _L119874_)
                          (let* ((_lambda-id119898_
                                  (let ((__tmp127850
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L119765_)))
                                        (__tmp127848
                                         (let ((__tmp127849
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L119874_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name119330_
                                            __tmp127849))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp127850
                                     '"__"
                                     __tmp127848)))
                                 (_lambda-id119900_
                                  (let ((__tmp127851
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx119327_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id119898_
                                     __tmp127851)))
                                 (_g127852_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id119900_)))
                                 (_new-case-lambda-expr119903_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L119872_
                                     'id:
                                     _L119874_
                                     'new-id:
                                     _lambda-id119900_))))
                            (let ((__tmp127854
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L119765_)))
                                  (__tmp127853
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id119900_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp127854
                               '" => "
                               __tmp127853))
                            (let ((__tmp127855
                                   (let ((__tmp127856
                                          (let ((__tmp127864
                                                 (let ((__tmp127865
                                                        (let ((__tmp127866
                                                               (let ((__tmp127869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id119900_ '())))
                             (__tmp127867
                              (let ((__tmp127868
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self119326_
                                        _L119873_))))
                                (declare (not safe))
                                (cons __tmp127868 '()))))
                         (declare (not safe))
                         (cons __tmp127869 __tmp127867))))
                  (declare (not safe))
                  (cons '%#define-values __tmp127866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp127865
                                                    _stx119327_)))
                                                (__tmp127857
                                                 (let ((__tmp127858
                                                        (let ((__tmp127859
                                                               (let ((__tmp127860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp127861
                                     (let ((__tmp127863
                                            (let ()
                                              (declare (not safe))
                                              (cons _L119765_ '())))
                                           (__tmp127862
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr119903_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp127863 __tmp127862))))
                                (declare (not safe))
                                (cons '%#define-values __tmp127861))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp127860 _stx119327_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self119326_
                   __tmp127859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp127858 '()))))
                                            (declare (not safe))
                                            (cons __tmp127864 __tmp127857))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp127856))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp127855
                               _stx119327_))))
                        _hd119805119867_
                        _hd119802119859_
                        _hd119799119851_)
                       (let ()
                         (declare (not safe))
                         (_g119781119811_ _g119782119814_)))))
               (let () (declare (not safe)) (_g119781119811_ _g119782119814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119781119811_
                                                      _g119782119814_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119781119811_
                                                  _g119782119814_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119781119811_ _g119782119814_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119781119811_ _g119782119814_)))))
                           (let ()
                             (declare (not safe))
                             (_g119781119811_ _g119782119814_)))))
                   (let ()
                     (declare (not safe))
                     (_g119781119811_ _g119782119814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119781119811_
                                                      _g119782119814_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119781119811_
                                              _g119782119814_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119781119811_ _g119782119814_))))))
                       (declare (not safe))
                       (_g119780119906_ _L119764_))))
                  (___kont127168127169_
                   (lambda (_L119478_ _L119479_)
                     (let* ((_g119495119548_
                             (lambda (_g119496119545_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g119496119545_))))
                            (_g119494119724_
                             (lambda (_g119496119551_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g119496119551_))
                                   (let ((_e119502119553_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g119496119551_))))
                                     (let ((_hd119503119556_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e119502119553_)))
                                           (_tl119504119558_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e119502119553_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl119504119558_))
                                           (let ((_e119505119561_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl119504119558_))))
                                             (let ((_hd119506119564_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119505119561_)))
                                                   (_tl119507119566_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119505119561_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119506119564_))
                                                   (let ((_e119508119569_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119506119564_))))
                                                     (let ((_hd119509119572_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119508119569_)))
                                                           (_tl119510119574_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119508119569_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd119509119572_))
                                                           (let ((_e119511119577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd119509119572_))))
                     (let ((_hd119512119580_
                            (let ()
                              (declare (not safe))
                              (##car _e119511119577_)))
                           (_tl119513119582_
                            (let ()
                              (declare (not safe))
                              (##cdr _e119511119577_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd119512119580_))
                           (let ((_e119514119585_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd119512119580_))))
                             (let ((_hd119515119588_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119514119585_)))
                                   (_tl119516119590_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119514119585_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119516119590_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl119513119582_))
                                       (let ((_e119517119593_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl119513119582_))))
                                         (let ((_hd119518119596_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119517119593_)))
                                               (_tl119519119598_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119517119593_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd119518119596_))
                                               (let ((_e119520119601_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd119518119596_))))
                                                 (let ((_hd119521119604_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119520119601_)))
                                                       (_tl119522119606_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119520119601_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119522119606_))
                                                       (let ((_e119523119609_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119522119606_))))
                 (let ((_hd119524119612_
                        (let () (declare (not safe)) (##car _e119523119609_)))
                       (_tl119525119614_
                        (let () (declare (not safe)) (##cdr _e119523119609_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd119524119612_))
                       (let ((_e119526119617_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd119524119612_))))
                         (let ((_hd119527119620_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119526119617_)))
                               (_tl119528119622_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119526119617_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd119527119620_))
                               (let ((_e119529119625_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd119527119620_))))
                                 (let ((_hd119530119628_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e119529119625_)))
                                       (_tl119531119630_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e119529119625_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119530119628_))
                                       (let ((_e119532119633_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119530119628_))))
                                         (let ((_hd119533119636_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119532119633_)))
                                               (_tl119534119638_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119532119633_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl119534119638_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl119531119630_))
                                                   (let ((_e119535119641_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl119531119630_))))
                                                     (let ((_hd119536119644_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119535119641_)))
                                                           (_tl119537119646_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119535119641_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119537119646_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl119528119622_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl119525119614_))
                           (let ((_e119538119649_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl119525119614_))))
                             (let ((_hd119539119652_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e119538119649_)))
                                   (_tl119540119654_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e119538119649_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl119540119654_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl119519119598_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl119510119574_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl119507119566_))
                                               (let ((_e119541119657_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl119507119566_))))
                                                 (let ((_hd119542119660_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e119541119657_)))
                                                       (_tl119543119662_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e119541119657_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl119543119662_))
                                                       ((lambda (_L119665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L119666_
                         _L119667_
                         _L119668_
                         _L119669_)
                  (let* ((_get-kws-id119709_
                          (let ((__tmp127872
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119479_)))
                                (__tmp127870
                                 (let ((__tmp127871
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119669_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119331_
                                    __tmp127871
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127872 '"__" __tmp127870)))
                         (_get-kws-id119711_
                          (let ((__tmp127873
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119327_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id119709_
                             __tmp127873)))
                         (_main-id119713_
                          (let ((__tmp127876
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L119479_)))
                                (__tmp127874
                                 (let ((__tmp127875
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L119668_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name119331_
                                    __tmp127875
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp127876 '"__" __tmp127874)))
                         (_main-id119715_
                          (let ((__tmp127877
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx119327_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id119713_
                             __tmp127877)))
                         (_g127878_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id119711_)))
                         (_g127879_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id119715_)))
                         (_new-kw-dispatch119719_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119665_
                             'id:
                             _L119669_
                             'new-id:
                             _get-kws-id119711_)))
                         (_new-get-kws119721_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L119666_
                             'id:
                             _L119668_
                             'new-id:
                             _main-id119715_))))
                    (let ((__tmp127882
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L119479_)))
                          (__tmp127881
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id119711_)))
                          (__tmp127880
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id119715_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp127882
                       '" => "
                       __tmp127881
                       '" => "
                       __tmp127880))
                    (let ((__tmp127883
                           (let ((__tmp127884
                                  (let ((__tmp127897
                                         (let ((__tmp127898
                                                (let ((__tmp127899
                                                       (let ((__tmp127900
                                                              (let ((__tmp127902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id119715_ '())))
                            (__tmp127901
                             (let ()
                               (declare (not safe))
                               (cons _L119667_ '()))))
                        (declare (not safe))
                        (cons __tmp127902 __tmp127901))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127899
                                                   _stx119327_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self119326_
                                            __tmp127898)))
                                        (__tmp127885
                                         (let ((__tmp127892
                                                (let ((__tmp127893
                                                       (let ((__tmp127894
                                                              (let ((__tmp127896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id119711_ '())))
                            (__tmp127895
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws119721_ '()))))
                        (declare (not safe))
                        (cons __tmp127896 __tmp127895))))
                 (declare (not safe))
                 (cons '%#define-values __tmp127894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127893
                                                   _stx119327_)))
                                               (__tmp127886
                                                (let ((__tmp127887
                                                       (let ((__tmp127888
                                                              (let ((__tmp127889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp127891
                                    (let ()
                                      (declare (not safe))
                                      (cons _L119479_ '())))
                                   (__tmp127890
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch119719_ '()))))
                               (declare (not safe))
                               (cons __tmp127891 __tmp127890))))
                        (declare (not safe))
                        (cons '%#define-values __tmp127889))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp127888 _stx119327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp127887 '()))))
                                           (declare (not safe))
                                           (cons __tmp127892 __tmp127886))))
                                    (declare (not safe))
                                    (cons __tmp127897 __tmp127885))))
                             (declare (not safe))
                             (cons '%#begin __tmp127884))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp127883 _stx119327_))))
                _hd119542119660_
                _hd119539119652_
                _hd119536119644_
                _hd119533119636_
                _hd119515119588_)
               (let ()
                 (declare (not safe))
                 (_g119495119548_ _g119496119551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119495119548_
                                                  _g119496119551_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g119495119548_
                                              _g119496119551_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g119495119548_ _g119496119551_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119495119548_ _g119496119551_)))))
                           (let ()
                             (declare (not safe))
                             (_g119495119548_ _g119496119551_)))
                       (let ()
                         (declare (not safe))
                         (_g119495119548_ _g119496119551_)))
                   (let ()
                     (declare (not safe))
                     (_g119495119548_ _g119496119551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119495119548_
                                                      _g119496119551_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119495119548_
                                                  _g119496119551_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119495119548_ _g119496119551_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g119495119548_ _g119496119551_)))))
                       (let ()
                         (declare (not safe))
                         (_g119495119548_ _g119496119551_)))))
               (let ()
                 (declare (not safe))
                 (_g119495119548_ _g119496119551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g119495119548_
                                                  _g119496119551_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g119495119548_ _g119496119551_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g119495119548_ _g119496119551_)))))
                           (let ()
                             (declare (not safe))
                             (_g119495119548_ _g119496119551_)))))
                   (let ()
                     (declare (not safe))
                     (_g119495119548_ _g119496119551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g119495119548_
                                                      _g119496119551_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g119495119548_
                                              _g119496119551_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g119495119548_ _g119496119551_))))))
                       (declare (not safe))
                       (_g119494119724_ _L119478_))))
                  (___kont127170127171_
                   (lambda (_L119424_ _L119425_)
                     (let ((__tmp127903
                            (let ((__tmp127904
                                   (let ((__tmp127905
                                          (let ((__tmp127906
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self119326_
                                                    _L119424_))))
                                            (declare (not safe))
                                            (cons __tmp127906 '()))))
                                     (declare (not safe))
                                     (cons _L119425_ __tmp127905))))
                              (declare (not safe))
                              (cons '%#define-values __tmp127904))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp127903 _stx119327_)))))
              (let* ((___match127255127256_
                      (lambda (_e119368119446_
                               _hd119369119449_
                               _tl119370119451_
                               _e119371119454_
                               _hd119372119457_
                               _tl119373119459_
                               _e119374119462_
                               _hd119375119465_
                               _tl119376119467_
                               _e119377119470_
                               _hd119378119473_
                               _tl119379119475_)
                        (let ((_L119478_ _hd119378119473_)
                              (_L119479_ _hd119375119465_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119479_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L119478_)))
                              (___kont127168127169_ _L119478_ _L119479_)
                              (___kont127170127171_
                               _hd119378119473_
                               _hd119372119457_)))))
                     (___match127227127228_
                      (lambda (_e119354119732_
                               _hd119355119735_
                               _tl119356119737_
                               _e119357119740_
                               _hd119358119743_
                               _tl119359119745_
                               _e119360119748_
                               _hd119361119751_
                               _tl119362119753_
                               _e119363119756_
                               _hd119364119759_
                               _tl119365119761_)
                        (let ((_L119764_ _hd119364119759_)
                              (_L119765_ _hd119361119751_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119765_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L119764_)))
                              (___kont127166127167_ _L119764_ _L119765_)
                              (___match127255127256_
                               _e119354119732_
                               _hd119355119735_
                               _tl119356119737_
                               _e119357119740_
                               _hd119358119743_
                               _tl119359119745_
                               _e119360119748_
                               _hd119361119751_
                               _tl119362119753_
                               _e119363119756_
                               _hd119364119759_
                               _tl119365119761_)))))
                     (___match127199127200_
                      (lambda (_e119340119914_
                               _hd119341119917_
                               _tl119342119919_
                               _e119343119922_
                               _hd119344119925_
                               _tl119345119927_
                               _e119346119930_
                               _hd119347119933_
                               _tl119348119935_
                               _e119349119938_
                               _hd119350119941_
                               _tl119351119943_)
                        (let ((_L119946_ _hd119350119941_)
                              (_L119947_ _hd119347119933_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L119947_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L119946_)))
                              (___kont127164127165_ _L119946_ _L119947_)
                              (___match127227127228_
                               _e119340119914_
                               _hd119341119917_
                               _tl119342119919_
                               _e119343119922_
                               _hd119344119925_
                               _tl119345119927_
                               _e119346119930_
                               _hd119347119933_
                               _tl119348119935_
                               _e119349119938_
                               _hd119350119941_
                               _tl119351119943_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127162127163_))
                    (let ((_e119340119914_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127162127163_))))
                      (let ((_tl119342119919_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119340119914_)))
                            (_hd119341119917_
                             (let ()
                               (declare (not safe))
                               (##car _e119340119914_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119342119919_))
                            (let ((_e119343119922_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119342119919_))))
                              (let ((_tl119345119927_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119343119922_)))
                                    (_hd119344119925_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119343119922_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd119344119925_))
                                    (let ((_e119346119930_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd119344119925_))))
                                      (let ((_tl119348119935_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e119346119930_)))
                                            (_hd119347119933_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e119346119930_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119348119935_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119345119927_))
                                                (let ((_e119349119938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119345119927_))))
                                                  (let ((_tl119351119943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119349119938_)))
                                                        (_hd119350119941_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119349119938_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119351119943_))
                                                        (___match127199127200_
                                                         _e119340119914_
                                                         _hd119341119917_
                                                         _tl119342119919_
                                                         _e119343119922_
                                                         _hd119344119925_
                                                         _tl119345119927_
                                                         _e119346119930_
                                                         _hd119347119933_
                                                         _tl119348119935_
                                                         _e119349119938_
                                                         _hd119350119941_
                                                         _tl119351119943_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119336119395_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119336119395_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl119345119927_))
                                                (let ((_e119388119416_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl119345119927_))))
                                                  (let ((_tl119390119421_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e119388119416_)))
                                                        (_hd119389119419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e119388119416_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl119390119421_))
                                                        (___kont127170127171_
                                                         _hd119389119419_
                                                         _hd119344119925_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g119336119395_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119336119395_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl119345119927_))
                                        (let ((_e119388119416_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl119345119927_))))
                                          (let ((_tl119390119421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e119388119416_)))
                                                (_hd119389119419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e119388119416_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl119390119421_))
                                                (___kont127170127171_
                                                 _hd119389119419_
                                                 _hd119344119925_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g119336119395_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g119336119395_))))))
                            (let () (declare (not safe)) (_g119336119395_)))))
                    (let () (declare (not safe)) (_g119336119395_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self118257_ _stx118258_)
        (letrec* ((_bind-e__125558125559_
                   (lambda (_id119310_ _expr119311_ _compile?119312_)
                     (let ((__tmp127909
                            (let ()
                              (declare (not safe))
                              (cons _id119310_ '())))
                           (__tmp127907
                            (let ((__tmp127908
                                   (if _compile?119312_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self118257_
                                          _expr119311_))
                                       _expr119311_)))
                              (declare (not safe))
                              (cons __tmp127908 '()))))
                       (declare (not safe))
                       (cons __tmp127909 __tmp127907))))
                  (_bind-e__0__125560125561_
                   (lambda (_id119317_ _expr119318_)
                     (let ((_compile?119320_ '#t))
                       (declare (not safe))
                       (_bind-e__125558125559_
                        _id119317_
                        _expr119318_
                        _compile?119320_))))
                  (_bind-e118260_
                   (lambda _g127911_
                     (let ((_g127910_
                            (let ()
                              (declare (not safe))
                              (##length _g127911_))))
                       (cond ((let () (declare (not safe)) (##fx= _g127910_ 2))
                              (apply (lambda (_id119317_ _expr119318_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125560125561_
                                          _id119317_
                                          _expr119318_)))
                                     _g127911_))
                             ((let () (declare (not safe)) (##fx= _g127910_ 3))
                              (apply (lambda (_id119322_
                                              _expr119323_
                                              _compile?119324_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125558125559_
                                          _id119322_
                                          _expr119323_
                                          _compile?119324_)))
                                     _g127911_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127911_))))))
                  (_compile-bindings118261_
                   (lambda (_bindings118894_)
                     (let _lp118896_ ((_rest118898_ _bindings118894_)
                                      (_lift1118899_ '())
                                      (_lift2118900_ '())
                                      (_bind118901_ '()))
                       (let* ((_rest118902118910_ _rest118898_)
                              (_else118904118918_
                               (lambda ()
                                 (values (reverse _lift1118899_)
                                         (reverse _lift2118900_)
                                         (reverse _bind118901_))))
                              (_K118906119297_
                               (lambda (_rest118921_ _hd118922_)
                                 (let* ((___stx127298127299_ _hd118922_)
                                        (_g118926118962_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127298127299_)))))
                                   (let ((___kont127300127301_
                                          (lambda (_L119204_ _L119205_)
                                            (let* ((___stx127278127279_
                                                    _L119204_)
                                                   (_g119220119234_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127278127279_)))))
                                              (let ((___kont127280127281_
                                                     (lambda (_L119282_)
                                                       (let ((__tmp127912
                                                              (let ((__tmp127913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125558125559_
                                _L119205_
                                _L119204_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp127913 _bind118901_))))
                 (declare (not safe))
                 (_lp118896_
                  _rest118921_
                  _lift1118899_
                  _lift2118900_
                  __tmp127912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127282127283_
                                                     (lambda (_L119247_)
                                                       (let ((_g127914_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118258_
                         _L119205_
                         _L119247_
                         '#t))))
                 (begin
                   (let ((_g127915_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g127914_)
                                (##vector-length _g127914_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g127915_ 3)))
                         (error "Context expects 3 values" _g127915_)))
                   (let ((_ids119257_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127914_ 0)))
                         (_impls119258_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127914_ 1)))
                         (_clauses119259_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127914_ 2))))
                     (let* ((_g127916_
                             (for-each gx#core-bind-runtime! _ids119257_))
                            (_xbind119262_
                             (map _bind-e118260_ _ids119257_ _impls119258_))
                            (_expr*119264_
                             (let ((__tmp127918
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119259_)))
                                   (__tmp127917
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp127918
                                __tmp127917)))
                            (_bind*119266_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125558125559_
                                _L119205_
                                _expr*119264_
                                '#f))))
                       (let ((__tmp127920
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119205_)))
                             (__tmp127919
                              (map gxc#identifier-symbol _ids119257_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp127920
                          '" => "
                          __tmp127919))
                       (let ((__tmp127922
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2118900_ _xbind119262_)))
                             (__tmp127921
                              (let ()
                                (declare (not safe))
                                (cons _bind*119266_ _bind118901_))))
                         (declare (not safe))
                         (_lp118896_
                          _rest118921_
                          _lift1118899_
                          __tmp127922
                          __tmp127921)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127289127290_
                                                       (lambda (_e119223119274_
                                                                _hd119224119277_
                                                                _tl119225119279_)
                                                         (let ((_L119282_
                                                                _tl119225119279_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119282_))
                       (___kont127280127281_ _L119282_)
                       (___kont127282127283_ _tl119225119279_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127278127279_))
                                                      (let ((_e119223119274_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127278127279_))))
                (let ((_tl119225119279_
                       (let () (declare (not safe)) (##cdr _e119223119274_)))
                      (_hd119224119277_
                       (let () (declare (not safe)) (##car _e119223119274_))))
                  (___match127289127290_
                   _e119223119274_
                   _hd119224119277_
                   _tl119225119279_)))
              (let () (declare (not safe)) (_g119220119234_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127302127303_
                                          (lambda (_L119032_ _L119033_)
                                            (let* ((_g119047119077_
                                                    (lambda (_g119048119074_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119048119074_))))
                                                   (_g119046119172_
                                                    (lambda (_g119048119080_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119048119080_))
                                                          (let ((_e119052119082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119048119080_))))
                    (let ((_hd119053119085_
                           (let ()
                             (declare (not safe))
                             (##car _e119052119082_)))
                          (_tl119054119087_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119052119082_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119054119087_))
                          (let ((_e119055119090_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119054119087_))))
                            (let ((_hd119056119093_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119055119090_)))
                                  (_tl119057119095_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119055119090_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119056119093_))
                                  (let ((_e119058119098_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119056119093_))))
                                    (let ((_hd119059119101_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119058119098_)))
                                          (_tl119060119103_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119058119098_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119059119101_))
                                          (let ((_e119061119106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119059119101_))))
                                            (let ((_hd119062119109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119061119106_)))
                                                  (_tl119063119111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119061119106_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119062119109_))
                                                  (let ((_e119064119114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119062119109_))))
                                                    (let ((_hd119065119117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119064119114_)))
                                                          (_tl119066119119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119064119114_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119066119119_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119063119111_))
                      (let ((_e119067119122_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119063119111_))))
                        (let ((_hd119068119125_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119067119122_)))
                              (_tl119069119127_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119067119122_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119069119127_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119060119103_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119057119095_))
                                      (let ((_e119070119130_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119057119095_))))
                                        (let ((_hd119071119133_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119070119130_)))
                                              (_tl119072119135_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119070119130_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119072119135_))
                                              ((lambda (_L119138_
                                                        _L119139_
                                                        _L119140_)
                                                 (let* ((_lambda-id119164_
                                                         (let ((__tmp127924
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119033_)))
                       (__tmp127923 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp127924 __tmp127923)))
                (_lambda-id119166_
                 (let ((__tmp127925
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118258_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119164_ __tmp127925)))
                (_g127926_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119166_)))
                (_new-case-lambda-expr119169_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119138_
                    'id:
                    _L119140_
                    'new-id:
                    _lambda-id119166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp127928
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119033_)))
                                                         (__tmp127927
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119166_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp127928
                                                      '" => "
                                                      __tmp127927))
                                                   (let ((__tmp127931
                                                          (let ((__tmp127932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125558125559_
                            _L119033_
                            _new-case-lambda-expr119169_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp127932 _rest118921_)))
                 (__tmp127929
                  (let ((__tmp127930
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125560125561_
                            _lambda-id119166_
                            _L119139_))))
                    (declare (not safe))
                    (cons __tmp127930 _lift1118899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118896_
                                                      __tmp127931
                                                      __tmp127929
                                                      _lift2118900_
                                                      _bind118901_))))
                                               _hd119071119133_
                                               _hd119068119125_
                                               _hd119065119117_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119047119077_
                                                 _g119048119080_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119047119077_ _g119048119080_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119047119077_ _g119048119080_)))
                              (let ()
                                (declare (not safe))
                                (_g119047119077_ _g119048119080_)))))
                      (let ()
                        (declare (not safe))
                        (_g119047119077_ _g119048119080_)))
                  (let ()
                    (declare (not safe))
                    (_g119047119077_ _g119048119080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119047119077_
                                                     _g119048119080_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119047119077_
                                             _g119048119080_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119047119077_ _g119048119080_)))))
                          (let ()
                            (declare (not safe))
                            (_g119047119077_ _g119048119080_)))))
                  (let ()
                    (declare (not safe))
                    (_g119047119077_ _g119048119080_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119046119172_ _L119032_))))
                                         (___kont127304127305_
                                          (lambda (_L118983_ _L118984_)
                                            (let ((__tmp127933
                                                   (let ((__tmp127934
                                                          (let ((__tmp127935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp127936
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self118257_ _L118983_))))
                           (declare (not safe))
                           (cons __tmp127936 '()))))
                    (declare (not safe))
                    (cons _L118984_ __tmp127935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127934
                                                           _bind118901_))))
                                              (declare (not safe))
                                              (_lp118896_
                                               _rest118921_
                                               _lift1118899_
                                               _lift2118900_
                                               __tmp127933)))))
                                     (let* ((___match127349127350_
                                             (lambda (_e118941119008_
                                                      _hd118942119011_
                                                      _tl118943119013_
                                                      _e118944119016_
                                                      _hd118945119019_
                                                      _tl118946119021_
                                                      _e118947119024_
                                                      _hd118948119027_
                                                      _tl118949119029_)
                                               (let ((_L119032_
                                                      _hd118948119027_)
                                                     (_L119033_
                                                      _hd118945119019_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119033_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119032_)))
                                                     (___kont127302127303_
                                                      _L119032_
                                                      _L119033_)
                                                     (___kont127304127305_
                                                      _hd118948119027_
                                                      _hd118942119011_)))))
                                            (___match127327127328_
                                             (lambda (_e118930119180_
                                                      _hd118931119183_
                                                      _tl118932119185_
                                                      _e118933119188_
                                                      _hd118934119191_
                                                      _tl118935119193_
                                                      _e118936119196_
                                                      _hd118937119199_
                                                      _tl118938119201_)
                                               (let ((_L119204_
                                                      _hd118937119199_)
                                                     (_L119205_
                                                      _hd118934119191_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119205_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119204_)))
                                                     (___kont127300127301_
                                                      _L119204_
                                                      _L119205_)
                                                     (___match127349127350_
                                                      _e118930119180_
                                                      _hd118931119183_
                                                      _tl118932119185_
                                                      _e118933119188_
                                                      _hd118934119191_
                                                      _tl118935119193_
                                                      _e118936119196_
                                                      _hd118937119199_
                                                      _tl118938119201_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127298127299_))
                                           (let ((_e118930119180_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127298127299_))))
                                             (let ((_tl118932119185_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118930119180_)))
                                                   (_hd118931119183_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118930119180_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118931119183_))
                                                   (let ((_e118933119188_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118931119183_))))
                                                     (let ((_tl118935119193_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118933119188_)))
                                                           (_hd118934119191_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118933119188_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118935119193_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118932119185_))
                       (let ((_e118936119196_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118932119185_))))
                         (let ((_tl118938119201_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118936119196_)))
                               (_hd118937119199_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118936119196_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118938119201_))
                               (___match127327127328_
                                _e118930119180_
                                _hd118931119183_
                                _tl118932119185_
                                _e118933119188_
                                _hd118934119191_
                                _tl118935119193_
                                _e118936119196_
                                _hd118937119199_
                                _tl118938119201_)
                               (let ()
                                 (declare (not safe))
                                 (_g118926118962_)))))
                       (let () (declare (not safe)) (_g118926118962_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118932119185_))
                       (let ((_e118955118975_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118932119185_))))
                         (let ((_tl118957118980_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118955118975_)))
                               (_hd118956118978_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118955118975_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118957118980_))
                               (___kont127304127305_
                                _hd118956118978_
                                _hd118931119183_)
                               (let ()
                                 (declare (not safe))
                                 (_g118926118962_)))))
                       (let () (declare (not safe)) (_g118926118962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118932119185_))
                                                       (let ((_e118955118975_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118932119185_))))
                 (let ((_tl118957118980_
                        (let () (declare (not safe)) (##cdr _e118955118975_)))
                       (_hd118956118978_
                        (let () (declare (not safe)) (##car _e118955118975_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118957118980_))
                       (___kont127304127305_ _hd118956118978_ _hd118931119183_)
                       (let () (declare (not safe)) (_g118926118962_)))))
               (let () (declare (not safe)) (_g118926118962_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118926118962_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118902118910_))
                             (let ((_hd118907119300_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118902118910_)))
                                   (_tl118908119302_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118902118910_))))
                               (let* ((_hd119305_ _hd118907119300_)
                                      (_rest119307_ _tl118908119302_))
                                 (declare (not safe))
                                 (_K118906119297_ _rest119307_ _hd119305_)))
                             (let ()
                               (declare (not safe))
                               (_else118904118918_)))))))
                  (_lift-kw-lambda?118262_
                   (lambda (_bind118818_)
                     (let* ((___stx127366127367_ _bind118818_)
                            (_g118821118838_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx127366127367_)))))
                       (let ((___kont127368127369_
                              (lambda (_L118874_ _L118875_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L118875_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L118874_))
                                    '#f)))
                             (___kont127370127371_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx127366127367_))
                             (let ((_e118825118850_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx127366127367_))))
                               (let ((_tl118827118855_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e118825118850_)))
                                     (_hd118826118853_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e118825118850_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd118826118853_))
                                     (let ((_e118828118858_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd118826118853_))))
                                       (let ((_tl118830118863_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e118828118858_)))
                                             (_hd118829118861_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e118828118858_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl118830118863_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl118827118855_))
                                                 (let ((_e118831118866_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl118827118855_))))
                                                   (let ((_tl118833118871_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e118831118866_)))
                                                         (_hd118832118869_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e118831118866_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl118833118871_))
                                                         (___kont127368127369_
                                                          _hd118832118869_
                                                          _hd118829118861_)
                                                         (___kont127370127371_))))
                                                 (___kont127370127371_))
                                             (___kont127370127371_))))
                                     (___kont127370127371_))))
                             (___kont127370127371_))))))
                  (_lift-kw-lambda-bindings118263_
                   (lambda (_bindings118430_)
                     (let _lp118432_ ((_rest118434_ _bindings118430_)
                                      (_lift1118435_ '())
                                      (_lift2118436_ '())
                                      (_bind118437_ '()))
                       (let* ((_rest118438118446_ _rest118434_)
                              (_else118440118454_
                               (lambda ()
                                 (values (reverse _lift1118435_)
                                         (reverse _lift2118436_)
                                         (reverse _bind118437_))))
                              (_K118442118806_
                               (lambda (_rest118457_ _hd118458_)
                                 (let* ((___stx127396127397_ _hd118458_)
                                        (_g118461118486_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127396127397_)))))
                                   (let ((___kont127398127399_
                                          (lambda (_L118556_ _L118557_)
                                            (let* ((_g118571118624_
                                                    (lambda (_g118572118621_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118572118621_))))
                                                   (_g118570118800_
                                                    (lambda (_g118572118627_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118572118627_))
                                                          (let ((_e118578118629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118572118627_))))
                    (let ((_hd118579118632_
                           (let ()
                             (declare (not safe))
                             (##car _e118578118629_)))
                          (_tl118580118634_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118578118629_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118580118634_))
                          (let ((_e118581118637_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118580118634_))))
                            (let ((_hd118582118640_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118581118637_)))
                                  (_tl118583118642_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118581118637_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118582118640_))
                                  (let ((_e118584118645_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118582118640_))))
                                    (let ((_hd118585118648_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118584118645_)))
                                          (_tl118586118650_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118584118645_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118585118648_))
                                          (let ((_e118587118653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118585118648_))))
                                            (let ((_hd118588118656_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118587118653_)))
                                                  (_tl118589118658_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118587118653_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118588118656_))
                                                  (let ((_e118590118661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118588118656_))))
                                                    (let ((_hd118591118664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118590118661_)))
                                                          (_tl118592118666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118590118661_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118592118666_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118589118658_))
                      (let ((_e118593118669_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118589118658_))))
                        (let ((_hd118594118672_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118593118669_)))
                              (_tl118595118674_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118593118669_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118594118672_))
                              (let ((_e118596118677_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118594118672_))))
                                (let ((_hd118597118680_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118596118677_)))
                                      (_tl118598118682_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118596118677_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118598118682_))
                                      (let ((_e118599118685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118598118682_))))
                                        (let ((_hd118600118688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118599118685_)))
                                              (_tl118601118690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118599118685_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118600118688_))
                                              (let ((_e118602118693_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118600118688_))))
                                                (let ((_hd118603118696_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118602118693_)))
                                                      (_tl118604118698_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118602118693_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118603118696_))
                                                      (let ((_e118605118701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118603118696_))))
                (let ((_hd118606118704_
                       (let () (declare (not safe)) (##car _e118605118701_)))
                      (_tl118607118706_
                       (let () (declare (not safe)) (##cdr _e118605118701_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118606118704_))
                      (let ((_e118608118709_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118606118704_))))
                        (let ((_hd118609118712_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118608118709_)))
                              (_tl118610118714_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118608118709_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118610118714_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118607118706_))
                                  (let ((_e118611118717_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118607118706_))))
                                    (let ((_hd118612118720_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118611118717_)))
                                          (_tl118613118722_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118611118717_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118613118722_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118604118698_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118601118690_))
                                                  (let ((_e118614118725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118601118690_))))
                                                    (let ((_hd118615118728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118614118725_)))
                                                          (_tl118616118730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118614118725_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118616118730_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118595118674_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118586118650_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118583118642_))
                              (let ((_e118617118733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118583118642_))))
                                (let ((_hd118618118736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118617118733_)))
                                      (_tl118619118738_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118617118733_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118619118738_))
                                      ((lambda (_L118741_
                                                _L118742_
                                                _L118743_
                                                _L118744_
                                                _L118745_)
                                         (let* ((_get-kws-id118785_
                                                 (let ((__tmp127938
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118557_)))
                                                       (__tmp127937
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp127938
                                                    __tmp127937)))
                                                (_get-kws-id118787_
                                                 (let ((__tmp127939
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118258_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id118785_
                                                    __tmp127939)))
                                                (_main-id118789_
                                                 (let ((__tmp127941
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118557_)))
                                                       (__tmp127940
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp127941
                                                    __tmp127940)))
                                                (_main-id118791_
                                                 (let ((__tmp127942
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118258_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id118789_
                                                    __tmp127942)))
                                                (_g127943_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id118787_)))
                                                (_g127944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id118791_)))
                                                (_new-kw-dispatch118795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118741_
                                                    'id:
                                                    _L118745_
                                                    'new-id:
                                                    _get-kws-id118787_)))
                                                (_new-get-kws118797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L118742_
                                                    'id:
                                                    _L118744_
                                                    'new-id:
                                                    _main-id118791_))))
                                           (let ((__tmp127947
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118557_)))
                                                 (__tmp127946
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id118787_)))
                                                 (__tmp127945
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id118791_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp127947
                                              '" => "
                                              __tmp127946
                                              '" => "
                                              __tmp127945))
                                           (let ((__tmp127952
                                                  (let ((__tmp127953
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125558125559_
                                                            _main-id118791_
                                                            _L118743_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp127953
                                                          _lift1118435_)))
                                                 (__tmp127950
                                                  (let ((__tmp127951
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125558125559_
                                                            _get-kws-id118787_
                                                            _new-get-kws118797_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp127951
                                                          _lift2118436_)))
                                                 (__tmp127948
                                                  (let ((__tmp127949
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125558125559_
                                                            _L118557_
                                                            _new-kw-dispatch118795_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp127949
                                                          _bind118437_))))
                                             (declare (not safe))
                                             (_lp118432_
                                              _rest118457_
                                              __tmp127952
                                              __tmp127950
                                              __tmp127948))))
                                       _hd118618118736_
                                       _hd118615118728_
                                       _hd118612118720_
                                       _hd118609118712_
                                       _hd118591118664_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118571118624_ _g118572118627_)))))
                              (let ()
                                (declare (not safe))
                                (_g118571118624_ _g118572118627_)))
                          (let ()
                            (declare (not safe))
                            (_g118571118624_ _g118572118627_)))
                      (let ()
                        (declare (not safe))
                        (_g118571118624_ _g118572118627_)))
                  (let ()
                    (declare (not safe))
                    (_g118571118624_ _g118572118627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118571118624_
                                                     _g118572118627_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118571118624_
                                                 _g118572118627_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118571118624_
                                             _g118572118627_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118571118624_ _g118572118627_)))
                              (let ()
                                (declare (not safe))
                                (_g118571118624_ _g118572118627_)))))
                      (let ()
                        (declare (not safe))
                        (_g118571118624_ _g118572118627_)))))
              (let ()
                (declare (not safe))
                (_g118571118624_ _g118572118627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118571118624_
                                                 _g118572118627_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118571118624_ _g118572118627_)))))
                              (let ()
                                (declare (not safe))
                                (_g118571118624_ _g118572118627_)))))
                      (let ()
                        (declare (not safe))
                        (_g118571118624_ _g118572118627_)))
                  (let ()
                    (declare (not safe))
                    (_g118571118624_ _g118572118627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118571118624_
                                                     _g118572118627_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118571118624_
                                             _g118572118627_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118571118624_ _g118572118627_)))))
                          (let ()
                            (declare (not safe))
                            (_g118571118624_ _g118572118627_)))))
                  (let ()
                    (declare (not safe))
                    (_g118571118624_ _g118572118627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118570118800_ _L118556_))))
                                         (___kont127400127401_
                                          (lambda (_L118507_ _L118508_)
                                            (let ((__tmp127954
                                                   (let ((__tmp127955
                                                          (let ((__tmp127956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L118507_ '()))))
                    (declare (not safe))
                    (cons _L118508_ __tmp127956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp127955
                                                           _bind118437_))))
                                              (declare (not safe))
                                              (_lp118432_
                                               _rest118457_
                                               _lift1118435_
                                               _lift2118436_
                                               __tmp127954)))))
                                     (let ((___match127423127424_
                                            (lambda (_e118465118532_
                                                     _hd118466118535_
                                                     _tl118467118537_
                                                     _e118468118540_
                                                     _hd118469118543_
                                                     _tl118470118545_
                                                     _e118471118548_
                                                     _hd118472118551_
                                                     _tl118473118553_)
                                              (let ((_L118556_
                                                     _hd118472118551_)
                                                    (_L118557_
                                                     _hd118469118543_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L118557_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L118556_)))
                                                    (___kont127398127399_
                                                     _L118556_
                                                     _L118557_)
                                                    (___kont127400127401_
                                                     _hd118472118551_
                                                     _hd118466118535_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127396127397_))
                                           (let ((_e118465118532_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127396127397_))))
                                             (let ((_tl118467118537_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118465118532_)))
                                                   (_hd118466118535_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118465118532_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118466118535_))
                                                   (let ((_e118468118540_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118466118535_))))
                                                     (let ((_tl118470118545_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118468118540_)))
                                                           (_hd118469118543_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118468118540_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118470118545_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118467118537_))
                       (let ((_e118471118548_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118467118537_))))
                         (let ((_tl118473118553_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118471118548_)))
                               (_hd118472118551_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118471118548_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118473118553_))
                               (___match127423127424_
                                _e118465118532_
                                _hd118466118535_
                                _tl118467118537_
                                _e118468118540_
                                _hd118469118543_
                                _tl118470118545_
                                _e118471118548_
                                _hd118472118551_
                                _tl118473118553_)
                               (let ()
                                 (declare (not safe))
                                 (_g118461118486_)))))
                       (let () (declare (not safe)) (_g118461118486_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118467118537_))
                       (let ((_e118479118499_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118467118537_))))
                         (let ((_tl118481118504_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118479118499_)))
                               (_hd118480118502_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118479118499_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118481118504_))
                               (___kont127400127401_
                                _hd118480118502_
                                _hd118466118535_)
                               (let ()
                                 (declare (not safe))
                                 (_g118461118486_)))))
                       (let () (declare (not safe)) (_g118461118486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118467118537_))
                                                       (let ((_e118479118499_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118467118537_))))
                 (let ((_tl118481118504_
                        (let () (declare (not safe)) (##cdr _e118479118499_)))
                       (_hd118480118502_
                        (let () (declare (not safe)) (##car _e118479118499_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118481118504_))
                       (___kont127400127401_ _hd118480118502_ _hd118466118535_)
                       (let () (declare (not safe)) (_g118461118486_)))))
               (let () (declare (not safe)) (_g118461118486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118461118486_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118438118446_))
                             (let ((_hd118443118809_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118438118446_)))
                                   (_tl118444118811_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118438118446_))))
                               (let* ((_hd118814_ _hd118443118809_)
                                      (_rest118816_ _tl118444118811_))
                                 (declare (not safe))
                                 (_K118442118806_ _rest118816_ _hd118814_)))
                             (let ()
                               (declare (not safe))
                               (_else118440118454_))))))))
          (let* ((___stx127440127441_ _stx118258_)
                 (_g118266118292_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127440127441_)))))
            (let ((___kont127442127443_
                   (lambda (_L118352_ _L118353_)
                     (let ((__tmp127958
                            (lambda ()
                              (if (let ((__tmp127959
                                         (let ((__tmp127960
                                                (lambda (_g118381118384_
                                                         _g118382118386_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g118381118384_
                                                          _g118382118386_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp127960
                                                   '()
                                                   _L118353_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?118262_
                                            __tmp127959))
                                  (let ((_g127961_
                                         (let ((__tmp127963
                                                (let ((__tmp127964
                                                       (lambda (_g118388118391_
                                                                _g118389118393_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118388118391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118389118393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp127964
                                                          '()
                                                          _L118353_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings118263_
                                            __tmp127963))))
                                    (begin
                                      (let ((_g127962_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g127961_)
                                                   (##vector-length _g127961_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g127962_ 3)))
                                            (error "Context expects 3 values"
                                                   _g127962_)))
                                      (let ((_lift1118396_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127961_ 0)))
                                            (_lift2118397_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127961_ 1)))
                                            (_hd118398_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127961_ 2))))
                                        (let* ((_expr118400_
                                                (let ((__tmp127965
                                                       (let ((__tmp127966
                                                              (let ((__tmp127967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L118352_ '()))))
                        (declare (not safe))
                        (cons _hd118398_ __tmp127967))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127965
                                                   _stx118258_)))
                                               (_expr118402_
                                                (let ((__tmp127968
                                                       (let ((__tmp127969
                                                              (let ((__tmp127970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118400_ '()))))
                        (declare (not safe))
                        (cons _lift2118397_ __tmp127970))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127968
                                                   _stx118258_)))
                                               (_expr118404_
                                                (let ((__tmp127971
                                                       (let ((__tmp127972
                                                              (let ((__tmp127973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr118402_ '()))))
                        (declare (not safe))
                        (cons _lift1118396_ __tmp127973))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127971
                                                   _stx118258_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self118257_
                                             _expr118404_))))))
                                  (let ((_g127974_
                                         (let ((__tmp127976
                                                (let ((__tmp127977
                                                       (lambda (_g118406118409_
                                                                _g118407118411_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g118406118409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g118407118411_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp127977
                                                          '()
                                                          _L118353_))))
                                           (declare (not safe))
                                           (_compile-bindings118261_
                                            __tmp127976))))
                                    (begin
                                      (let ((_g127975_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g127974_)
                                                   (##vector-length _g127974_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g127975_ 3)))
                                            (error "Context expects 3 values"
                                                   _g127975_)))
                                      (let ((_lift1118414_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127974_ 0)))
                                            (_lift2118415_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127974_ 1)))
                                            (_hd118416_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g127974_ 2))))
                                        (let* ((_body118418_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self118257_
                                                   _L118352_)))
                                               (_expr118420_
                                                (let ((__tmp127978
                                                       (let ((__tmp127979
                                                              (let ((__tmp127980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body118418_ '()))))
                        (declare (not safe))
                        (cons _hd118416_ __tmp127980))))
                 (declare (not safe))
                 (cons '%#let-values __tmp127979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp127978
                                                   _stx118258_)))
                                               (_expr118422_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2118415_))
                                                    _expr118420_
                                                    (let ((__tmp127981
                                                           (let ((__tmp127982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp127983
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118420_ '()))))
                            (declare (not safe))
                            (cons _lift2118415_ __tmp127983))))
                     (declare (not safe))
                     (cons '%#let-values __tmp127982))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp127981 _stx118258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr118424_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1118414_))
                                                    _expr118422_
                                                    (let ((__tmp127984
                                                           (let ((__tmp127985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp127986
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr118422_ '()))))
                            (declare (not safe))
                            (cons _lift1118414_ __tmp127986))))
                     (declare (not safe))
                     (cons '%#let-values __tmp127985))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp127984 _stx118258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr118424_)))))))
                           (__tmp127957
                            (let ((__obj127657
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127657)
                              __obj127657)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp127958
                        gx#current-expander-context
                        __tmp127957))))
                  (___kont127446127447_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self118257_ _stx118258_)))))
              (let ((___match127467127468_
                     (lambda (_e118270118304_
                              _hd118271118307_
                              _tl118272118309_
                              _e118273118312_
                              _hd118274118315_
                              _tl118275118317_
                              ___splice127444127445_
                              _target118276118320_
                              _tl118278118322_)
                       (letrec ((_loop118279118325_
                                 (lambda (_hd118277118328_ _bind118283118330_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118277118328_))
                                       (let ((_e118280118333_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118277118328_))))
                                         (let ((_lp-tl118282118338_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118280118333_)))
                                               (_lp-hd118281118336_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118280118333_))))
                                           (let ((__tmp127987
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118281118336_
                                                          _bind118283118330_))))
                                             (declare (not safe))
                                             (_loop118279118325_
                                              _lp-tl118282118338_
                                              __tmp127987))))
                                       (let ((_bind118284118341_
                                              (reverse _bind118283118330_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118275118317_))
                                             (let ((_e118285118344_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118275118317_))))
                                               (let ((_tl118287118349_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118285118344_)))
                                                     (_hd118286118347_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118285118344_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118287118349_))
                                                     (let ((_L118352_
                                                            _hd118286118347_)
                                                           (_L118353_
                                                            _bind118284118341_))
                                                       (if (let ((__tmp127988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp127989
                                 (lambda (_g118373118376_ _g118374118378_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118373118376_ _g118374118378_)))))
                            (declare (not safe))
                            (foldr1 __tmp127989 '() _L118353_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp127988))
                   (___kont127442127443_ _L118352_ _L118353_)
                   (___kont127446127447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127446127447_))))
                                             (___kont127446127447_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118279118325_ _target118276118320_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127440127441_))
                    (let ((_e118270118304_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127440127441_))))
                      (let ((_tl118272118309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118270118304_)))
                            (_hd118271118307_
                             (let ()
                               (declare (not safe))
                               (##car _e118270118304_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118272118309_))
                            (let ((_e118273118312_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118272118309_))))
                              (let ((_tl118275118317_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118273118312_)))
                                    (_hd118274118315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118273118312_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118274118315_))
                                    (let ((___splice127444127445_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118274118315_
                                              '0))))
                                      (let ((_tl118278118322_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127444127445_
                                                '1)))
                                            (_target118276118320_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127444127445_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118278118322_))
                                            (___match127467127468_
                                             _e118270118304_
                                             _hd118271118307_
                                             _tl118272118309_
                                             _e118273118312_
                                             _hd118274118315_
                                             _tl118275118317_
                                             ___splice127444127445_
                                             _target118276118320_
                                             _tl118278118322_)
                                            (___kont127446127447_))))
                                    (___kont127446127447_))))
                            (___kont127446127447_))))
                    (___kont127446127447_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self117400_ _stx117401_)
        (letrec* ((_bind-e__125563125564_
                   (lambda (_id118241_ _expr118242_ _compile?118243_)
                     (let ((__tmp127992
                            (let ()
                              (declare (not safe))
                              (cons _id118241_ '())))
                           (__tmp127990
                            (let ((__tmp127991
                                   (if _compile?118243_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self117400_
                                          _expr118242_))
                                       _expr118242_)))
                              (declare (not safe))
                              (cons __tmp127991 '()))))
                       (declare (not safe))
                       (cons __tmp127992 __tmp127990))))
                  (_bind-e__0__125565125566_
                   (lambda (_id118248_ _expr118249_)
                     (let ((_compile?118251_ '#t))
                       (declare (not safe))
                       (_bind-e__125563125564_
                        _id118248_
                        _expr118249_
                        _compile?118251_))))
                  (_bind-e117403_
                   (lambda _g127994_
                     (let ((_g127993_
                            (let ()
                              (declare (not safe))
                              (##length _g127994_))))
                       (cond ((let () (declare (not safe)) (##fx= _g127993_ 2))
                              (apply (lambda (_id118248_ _expr118249_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__125565125566_
                                          _id118248_
                                          _expr118249_)))
                                     _g127994_))
                             ((let () (declare (not safe)) (##fx= _g127993_ 3))
                              (apply (lambda (_id118253_
                                              _expr118254_
                                              _compile?118255_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__125563125564_
                                          _id118253_
                                          _expr118254_
                                          _compile?118255_)))
                                     _g127994_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g127994_))))))
                  (_compile-bindings117404_
                   (lambda (_rest117539_)
                     (let _lp117541_ ((_rest117543_ _rest117539_)
                                      (_bind117544_ '()))
                       (let* ((_rest117545117553_ _rest117543_)
                              (_else117547117561_
                               (lambda () (reverse _bind117544_)))
                              (_K117549118228_
                               (lambda (_rest117564_ _hd117565_)
                                 (let* ((___stx127490127491_ _hd117565_)
                                        (_g117570117617_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx127490127491_)))))
                                   (let ((___kont127492127493_
                                          (lambda (_L118135_ _L118136_)
                                            (let* ((___stx127470127471_
                                                    _L118135_)
                                                   (_g118151118165_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx127470127471_)))))
                                              (let ((___kont127472127473_
                                                     (lambda (_L118213_)
                                                       (let ((__tmp127995
                                                              (let ((__tmp127996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__125563125564_
                                _L118136_
                                _L118135_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp127996 _bind117544_))))
                 (declare (not safe))
                 (_lp117541_ _rest117564_ __tmp127995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127474127475_
                                                     (lambda (_L118178_)
                                                       (let ((_g127997_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx117401_
                         _L118136_
                         _L118178_
                         '#t))))
                 (begin
                   (let ((_g127998_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g127997_)
                                (##vector-length _g127997_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g127998_ 3)))
                         (error "Context expects 3 values" _g127998_)))
                   (let ((_ids118188_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127997_ 0)))
                         (_impls118189_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127997_ 1)))
                         (_clauses118190_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g127997_ 2))))
                     (let* ((_g127999_
                             (for-each gx#core-bind-runtime! _ids118188_))
                            (_xbind118193_
                             (map _bind-e117403_ _ids118188_ _impls118189_))
                            (_expr*118195_
                             (let ((__tmp128001
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses118190_)))
                                   (__tmp128000
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp128001
                                __tmp128000)))
                            (_bind*118197_
                             (let ()
                               (declare (not safe))
                               (_bind-e__125563125564_
                                _L118136_
                                _expr*118195_
                                '#f))))
                       (let ((__tmp128003
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L118136_)))
                             (__tmp128002
                              (map gxc#identifier-symbol _ids118188_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp128003
                          '" => "
                          __tmp128002))
                       (let ((__tmp128004
                              (let ((__tmp128005
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind117544_
                                               _xbind118193_))))
                                (declare (not safe))
                                (cons _bind*118197_ __tmp128005))))
                         (declare (not safe))
                         (_lp117541_ _rest117564_ __tmp128004)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match127481127482_
                                                       (lambda (_e118154118205_
                                                                _hd118155118208_
                                                                _tl118156118210_)
                                                         (let ((_L118213_
                                                                _tl118156118210_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L118213_))
                       (___kont127472127473_ _L118213_)
                       (___kont127474127475_ _tl118156118210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx127470127471_))
                                                      (let ((_e118154118205_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx127470127471_))))
                (let ((_tl118156118210_
                       (let () (declare (not safe)) (##cdr _e118154118205_)))
                      (_hd118155118208_
                       (let () (declare (not safe)) (##car _e118154118205_))))
                  (___match127481127482_
                   _e118154118205_
                   _hd118155118208_
                   _tl118156118210_)))
              (let () (declare (not safe)) (_g118151118165_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont127494127495_
                                          (lambda (_L117963_ _L117964_)
                                            (let* ((_g117978118008_
                                                    (lambda (_g117979118005_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117979118005_))))
                                                   (_g117977118103_
                                                    (lambda (_g117979118011_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117979118011_))
                                                          (let ((_e117983118013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117979118011_))))
                    (let ((_hd117984118016_
                           (let ()
                             (declare (not safe))
                             (##car _e117983118013_)))
                          (_tl117985118018_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117983118013_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117985118018_))
                          (let ((_e117986118021_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117985118018_))))
                            (let ((_hd117987118024_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117986118021_)))
                                  (_tl117988118026_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117986118021_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117987118024_))
                                  (let ((_e117989118029_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117987118024_))))
                                    (let ((_hd117990118032_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117989118029_)))
                                          (_tl117991118034_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117989118029_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117990118032_))
                                          (let ((_e117992118037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117990118032_))))
                                            (let ((_hd117993118040_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117992118037_)))
                                                  (_tl117994118042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117992118037_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117993118040_))
                                                  (let ((_e117995118045_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117993118040_))))
                                                    (let ((_hd117996118048_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117995118045_)))
                                                          (_tl117997118050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117995118045_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117997118050_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117994118042_))
                      (let ((_e117998118053_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117994118042_))))
                        (let ((_hd117999118056_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117998118053_)))
                              (_tl118000118058_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117998118053_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118000118058_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl117991118034_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117988118026_))
                                      (let ((_e118001118061_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117988118026_))))
                                        (let ((_hd118002118064_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118001118061_)))
                                              (_tl118003118066_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118001118061_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118003118066_))
                                              ((lambda (_L118069_
                                                        _L118070_
                                                        _L118071_)
                                                 (let* ((_lambda-id118095_
                                                         (let ((__tmp128007
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L117964_)))
                       (__tmp128006 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp128007 __tmp128006)))
                (_lambda-id118097_
                 (let ((__tmp128008
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx117401_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id118095_ __tmp128008)))
                (_g128009_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id118097_)))
                (_new-case-lambda-expr118100_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L118069_
                    'id:
                    _L118071_
                    'new-id:
                    _lambda-id118097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp128011
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L117964_)))
                                                         (__tmp128010
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id118097_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp128011
                                                      '" => "
                                                      __tmp128010))
                                                   (let ((__tmp128014
                                                          (let ((__tmp128015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__125563125564_
                            _L117964_
                            _new-case-lambda-expr118100_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp128015 _rest117564_)))
                 (__tmp128012
                  (let ((__tmp128013
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__125565125566_
                            _lambda-id118097_
                            _L118070_))))
                    (declare (not safe))
                    (cons __tmp128013 _bind117544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp117541_
                                                      __tmp128014
                                                      __tmp128012))))
                                               _hd118002118064_
                                               _hd117999118056_
                                               _hd117996118048_)
                                              (let ()
                                                (declare (not safe))
                                                (_g117978118008_
                                                 _g117979118011_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117978118008_ _g117979118011_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g117978118008_ _g117979118011_)))
                              (let ()
                                (declare (not safe))
                                (_g117978118008_ _g117979118011_)))))
                      (let ()
                        (declare (not safe))
                        (_g117978118008_ _g117979118011_)))
                  (let ()
                    (declare (not safe))
                    (_g117978118008_ _g117979118011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117978118008_
                                                     _g117979118011_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117978118008_
                                             _g117979118011_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117978118008_ _g117979118011_)))))
                          (let ()
                            (declare (not safe))
                            (_g117978118008_ _g117979118011_)))))
                  (let ()
                    (declare (not safe))
                    (_g117978118008_ _g117979118011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117977118103_ _L117963_))))
                                         (___kont127496127497_
                                          (lambda (_L117687_ _L117688_)
                                            (let* ((_g117702117755_
                                                    (lambda (_g117703117752_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g117703117752_))))
                                                   (_g117701117931_
                                                    (lambda (_g117703117758_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g117703117758_))
                                                          (let ((_e117709117760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g117703117758_))))
                    (let ((_hd117710117763_
                           (let ()
                             (declare (not safe))
                             (##car _e117709117760_)))
                          (_tl117711117765_
                           (let ()
                             (declare (not safe))
                             (##cdr _e117709117760_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl117711117765_))
                          (let ((_e117712117768_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl117711117765_))))
                            (let ((_hd117713117771_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e117712117768_)))
                                  (_tl117714117773_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e117712117768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd117713117771_))
                                  (let ((_e117715117776_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd117713117771_))))
                                    (let ((_hd117716117779_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117715117776_)))
                                          (_tl117717117781_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117715117776_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd117716117779_))
                                          (let ((_e117718117784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd117716117779_))))
                                            (let ((_hd117719117787_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e117718117784_)))
                                                  (_tl117720117789_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e117718117784_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd117719117787_))
                                                  (let ((_e117721117792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd117719117787_))))
                                                    (let ((_hd117722117795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117721117792_)))
                                                          (_tl117723117797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117721117792_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117723117797_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl117720117789_))
                      (let ((_e117724117800_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl117720117789_))))
                        (let ((_hd117725117803_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117724117800_)))
                              (_tl117726117805_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117724117800_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd117725117803_))
                              (let ((_e117727117808_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd117725117803_))))
                                (let ((_hd117728117811_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117727117808_)))
                                      (_tl117729117813_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117727117808_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl117729117813_))
                                      (let ((_e117730117816_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl117729117813_))))
                                        (let ((_hd117731117819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e117730117816_)))
                                              (_tl117732117821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e117730117816_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd117731117819_))
                                              (let ((_e117733117824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd117731117819_))))
                                                (let ((_hd117734117827_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e117733117824_)))
                                                      (_tl117735117829_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e117733117824_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd117734117827_))
                                                      (let ((_e117736117832_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd117734117827_))))
                (let ((_hd117737117835_
                       (let () (declare (not safe)) (##car _e117736117832_)))
                      (_tl117738117837_
                       (let () (declare (not safe)) (##cdr _e117736117832_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd117737117835_))
                      (let ((_e117739117840_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd117737117835_))))
                        (let ((_hd117740117843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e117739117840_)))
                              (_tl117741117845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e117739117840_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl117741117845_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl117738117837_))
                                  (let ((_e117742117848_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl117738117837_))))
                                    (let ((_hd117743117851_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e117742117848_)))
                                          (_tl117744117853_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e117742117848_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl117744117853_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl117735117829_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl117732117821_))
                                                  (let ((_e117745117856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl117732117821_))))
                                                    (let ((_hd117746117859_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e117745117856_)))
                                                          (_tl117747117861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e117745117856_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl117747117861_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl117726117805_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl117717117781_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl117714117773_))
                              (let ((_e117748117864_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl117714117773_))))
                                (let ((_hd117749117867_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e117748117864_)))
                                      (_tl117750117869_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e117748117864_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl117750117869_))
                                      ((lambda (_L117872_
                                                _L117873_
                                                _L117874_
                                                _L117875_
                                                _L117876_)
                                         (let* ((_get-kws-id117916_
                                                 (let ((__tmp128017
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117688_)))
                                                       (__tmp128016
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128017
                                                    __tmp128016)))
                                                (_get-kws-id117918_
                                                 (let ((__tmp128018
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117401_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id117916_
                                                    __tmp128018)))
                                                (_main-id117920_
                                                 (let ((__tmp128020
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L117688_)))
                                                       (__tmp128019
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp128020
                                                    __tmp128019)))
                                                (_main-id117922_
                                                 (let ((__tmp128021
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx117401_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id117920_
                                                    __tmp128021)))
                                                (_g128022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id117918_)))
                                                (_g128023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id117922_)))
                                                (_new-kw-dispatch117926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L117872_
                                                    'id:
                                                    _L117876_
                                                    'new-id:
                                                    _get-kws-id117918_)))
                                                (_new-get-kws117928_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L117873_
                                                    'id:
                                                    _L117875_
                                                    'new-id:
                                                    _main-id117922_))))
                                           (let ((__tmp128026
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L117688_)))
                                                 (__tmp128025
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id117918_)))
                                                 (__tmp128024
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id117922_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp128026
                                              '" => "
                                              __tmp128025
                                              '" => "
                                              __tmp128024))
                                           (let ((__tmp128027
                                                  (let ((__tmp128032
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__125563125564_
                                                            _main-id117922_
                                                            _L117874_
                                                            '#f)))
                                                        (__tmp128028
                                                         (let ((__tmp128031
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__125563125564_
                           _get-kws-id117918_
                           _new-get-kws117928_
                           '#f)))
                       (__tmp128029
                        (let ((__tmp128030
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__125563125564_
                                  _L117688_
                                  _new-kw-dispatch117926_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp128030 _rest117564_))))
                   (declare (not safe))
                   (cons __tmp128031 __tmp128029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp128032
                                                          __tmp128028))))
                                             (declare (not safe))
                                             (_lp117541_
                                              __tmp128027
                                              _bind117544_))))
                                       _hd117749117867_
                                       _hd117746117859_
                                       _hd117743117851_
                                       _hd117740117843_
                                       _hd117722117795_)
                                      (let ()
                                        (declare (not safe))
                                        (_g117702117755_ _g117703117758_)))))
                              (let ()
                                (declare (not safe))
                                (_g117702117755_ _g117703117758_)))
                          (let ()
                            (declare (not safe))
                            (_g117702117755_ _g117703117758_)))
                      (let ()
                        (declare (not safe))
                        (_g117702117755_ _g117703117758_)))
                  (let ()
                    (declare (not safe))
                    (_g117702117755_ _g117703117758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117702117755_
                                                     _g117703117758_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g117702117755_
                                                 _g117703117758_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g117702117755_
                                             _g117703117758_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117702117755_ _g117703117758_)))
                              (let ()
                                (declare (not safe))
                                (_g117702117755_ _g117703117758_)))))
                      (let ()
                        (declare (not safe))
                        (_g117702117755_ _g117703117758_)))))
              (let ()
                (declare (not safe))
                (_g117702117755_ _g117703117758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g117702117755_
                                                 _g117703117758_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g117702117755_ _g117703117758_)))))
                              (let ()
                                (declare (not safe))
                                (_g117702117755_ _g117703117758_)))))
                      (let ()
                        (declare (not safe))
                        (_g117702117755_ _g117703117758_)))
                  (let ()
                    (declare (not safe))
                    (_g117702117755_ _g117703117758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g117702117755_
                                                     _g117703117758_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g117702117755_
                                             _g117703117758_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g117702117755_ _g117703117758_)))))
                          (let ()
                            (declare (not safe))
                            (_g117702117755_ _g117703117758_)))))
                  (let ()
                    (declare (not safe))
                    (_g117702117755_ _g117703117758_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g117701117931_ _L117687_))))
                                         (___kont127498127499_
                                          (lambda (_L117638_ _L117639_)
                                            (let ((__tmp128033
                                                   (let ((__tmp128034
                                                          (let ((__tmp128035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp128036
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self117400_ _L117638_))))
                           (declare (not safe))
                           (cons __tmp128036 '()))))
                    (declare (not safe))
                    (cons _L117639_ __tmp128035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp128034
                                                           _bind117544_))))
                                              (declare (not safe))
                                              (_lp117541_
                                               _rest117564_
                                               __tmp128033)))))
                                     (let* ((___match127565127566_
                                             (lambda (_e117596117663_
                                                      _hd117597117666_
                                                      _tl117598117668_
                                                      _e117599117671_
                                                      _hd117600117674_
                                                      _tl117601117676_
                                                      _e117602117679_
                                                      _hd117603117682_
                                                      _tl117604117684_)
                                               (let ((_L117687_
                                                      _hd117603117682_)
                                                     (_L117688_
                                                      _hd117600117674_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117688_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L117687_)))
                                                     (___kont127496127497_
                                                      _L117687_
                                                      _L117688_)
                                                     (___kont127498127499_
                                                      _hd117603117682_
                                                      _hd117597117666_)))))
                                            (___match127543127544_
                                             (lambda (_e117585117939_
                                                      _hd117586117942_
                                                      _tl117587117944_
                                                      _e117588117947_
                                                      _hd117589117950_
                                                      _tl117590117952_
                                                      _e117591117955_
                                                      _hd117592117958_
                                                      _tl117593117960_)
                                               (let ((_L117963_
                                                      _hd117592117958_)
                                                     (_L117964_
                                                      _hd117589117950_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L117964_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L117963_)))
                                                     (___kont127494127495_
                                                      _L117963_
                                                      _L117964_)
                                                     (___match127565127566_
                                                      _e117585117939_
                                                      _hd117586117942_
                                                      _tl117587117944_
                                                      _e117588117947_
                                                      _hd117589117950_
                                                      _tl117590117952_
                                                      _e117591117955_
                                                      _hd117592117958_
                                                      _tl117593117960_)))))
                                            (___match127521127522_
                                             (lambda (_e117574118111_
                                                      _hd117575118114_
                                                      _tl117576118116_
                                                      _e117577118119_
                                                      _hd117578118122_
                                                      _tl117579118124_
                                                      _e117580118127_
                                                      _hd117581118130_
                                                      _tl117582118132_)
                                               (let ((_L118135_
                                                      _hd117581118130_)
                                                     (_L118136_
                                                      _hd117578118122_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118136_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L118135_)))
                                                     (___kont127492127493_
                                                      _L118135_
                                                      _L118136_)
                                                     (___match127543127544_
                                                      _e117574118111_
                                                      _hd117575118114_
                                                      _tl117576118116_
                                                      _e117577118119_
                                                      _hd117578118122_
                                                      _tl117579118124_
                                                      _e117580118127_
                                                      _hd117581118130_
                                                      _tl117582118132_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx127490127491_))
                                           (let ((_e117574118111_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx127490127491_))))
                                             (let ((_tl117576118116_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e117574118111_)))
                                                   (_hd117575118114_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e117574118111_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd117575118114_))
                                                   (let ((_e117577118119_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd117575118114_))))
                                                     (let ((_tl117579118124_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e117577118119_)))
                                                           (_hd117578118122_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e117577118119_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl117579118124_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl117576118116_))
                       (let ((_e117580118127_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117576118116_))))
                         (let ((_tl117582118132_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117580118127_)))
                               (_hd117581118130_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117580118127_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117582118132_))
                               (___match127521127522_
                                _e117574118111_
                                _hd117575118114_
                                _tl117576118116_
                                _e117577118119_
                                _hd117578118122_
                                _tl117579118124_
                                _e117580118127_
                                _hd117581118130_
                                _tl117582118132_)
                               (let ()
                                 (declare (not safe))
                                 (_g117570117617_)))))
                       (let () (declare (not safe)) (_g117570117617_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl117576118116_))
                       (let ((_e117610117630_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl117576118116_))))
                         (let ((_tl117612117635_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e117610117630_)))
                               (_hd117611117633_
                                (let ()
                                  (declare (not safe))
                                  (##car _e117610117630_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl117612117635_))
                               (___kont127498127499_
                                _hd117611117633_
                                _hd117575118114_)
                               (let ()
                                 (declare (not safe))
                                 (_g117570117617_)))))
                       (let () (declare (not safe)) (_g117570117617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl117576118116_))
                                                       (let ((_e117610117630_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl117576118116_))))
                 (let ((_tl117612117635_
                        (let () (declare (not safe)) (##cdr _e117610117630_)))
                       (_hd117611117633_
                        (let () (declare (not safe)) (##car _e117610117630_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl117612117635_))
                       (___kont127498127499_ _hd117611117633_ _hd117575118114_)
                       (let () (declare (not safe)) (_g117570117617_)))))
               (let () (declare (not safe)) (_g117570117617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g117570117617_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest117545117553_))
                             (let ((_hd117550118231_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest117545117553_)))
                                   (_tl117551118233_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest117545117553_))))
                               (let* ((_hd118236_ _hd117550118231_)
                                      (_rest118238_ _tl117551118233_))
                                 (declare (not safe))
                                 (_K117549118228_ _rest118238_ _hd118236_)))
                             (let ()
                               (declare (not safe))
                               (_else117547117561_))))))))
          (let* ((___stx127582127583_ _stx117401_)
                 (_g117407117434_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx127582127583_)))))
            (let ((___kont127584127585_
                   (lambda (_L117494_ _L117495_ _L117496_)
                     (let ((__tmp128038
                            (lambda ()
                              (let ((_hd117533_
                                     (let ((__tmp128039
                                            (let ((__tmp128040
                                                   (lambda (_g117525117528_
                                                            _g117526117530_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g117525117528_
                                                             _g117526117530_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128040
                                                      '()
                                                      _L117495_))))
                                       (declare (not safe))
                                       (_compile-bindings117404_ __tmp128039)))
                                    (_body117534_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self117400_
                                        _L117494_))))
                                (let ((__tmp128041
                                       (let ((__tmp128042
                                              (let ((__tmp128043
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body117534_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd117533_
                                                      __tmp128043))))
                                         (declare (not safe))
                                         (cons _L117496_ __tmp128042))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp128041
                                   _stx117401_)))))
                           (__tmp128037
                            (let ((__obj127658
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj127658)
                              __obj127658)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp128038
                        gx#current-expander-context
                        __tmp128037))))
                  (___kont127588127589_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self117400_ _stx117401_)))))
              (let ((___match127609127610_
                     (lambda (_e117412117446_
                              _hd117413117449_
                              _tl117414117451_
                              _e117415117454_
                              _hd117416117457_
                              _tl117417117459_
                              ___splice127586127587_
                              _target117418117462_
                              _tl117420117464_)
                       (letrec ((_loop117421117467_
                                 (lambda (_hd117419117470_ _bind117425117472_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd117419117470_))
                                       (let ((_e117422117475_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd117419117470_))))
                                         (let ((_lp-tl117424117480_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e117422117475_)))
                                               (_lp-hd117423117478_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e117422117475_))))
                                           (let ((__tmp128044
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd117423117478_
                                                          _bind117425117472_))))
                                             (declare (not safe))
                                             (_loop117421117467_
                                              _lp-tl117424117480_
                                              __tmp128044))))
                                       (let ((_bind117426117483_
                                              (reverse _bind117425117472_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl117417117459_))
                                             (let ((_e117427117486_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl117417117459_))))
                                               (let ((_tl117429117491_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e117427117486_)))
                                                     (_hd117428117489_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e117427117486_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl117429117491_))
                                                     (let ((_L117494_
                                                            _hd117428117489_)
                                                           (_L117495_
                                                            _bind117426117483_)
                                                           (_L117496_
                                                            _hd117413117449_))
                                                       (if (let ((__tmp128045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp128046
                                 (lambda (_g117517117520_ _g117518117522_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g117517117520_ _g117518117522_)))))
                            (declare (not safe))
                            (foldr1 __tmp128046 '() _L117495_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp128045))
                   (___kont127584127585_ _L117494_ _L117495_ _L117496_)
                   (___kont127588127589_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont127588127589_))))
                                             (___kont127588127589_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop117421117467_ _target117418117462_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx127582127583_))
                    (let ((_e117412117446_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx127582127583_))))
                      (let ((_tl117414117451_
                             (let ()
                               (declare (not safe))
                               (##cdr _e117412117446_)))
                            (_hd117413117449_
                             (let ()
                               (declare (not safe))
                               (##car _e117412117446_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl117414117451_))
                            (let ((_e117415117454_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl117414117451_))))
                              (let ((_tl117417117459_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e117415117454_)))
                                    (_hd117416117457_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e117415117454_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd117416117457_))
                                    (let ((___splice127586127587_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd117416117457_
                                              '0))))
                                      (let ((_tl117420117464_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127586127587_
                                                '1)))
                                            (_target117418117462_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice127586127587_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117420117464_))
                                            (___match127609127610_
                                             _e117412117446_
                                             _hd117413117449_
                                             _tl117414117451_
                                             _e117415117454_
                                             _hd117416117457_
                                             _tl117417117459_
                                             ___splice127586127587_
                                             _target117418117462_
                                             _tl117420117464_)
                                            (___kont127588127589_))))
                                    (___kont127588127589_))))
                            (___kont127588127589_))))
                    (___kont127588127589_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind117318_)
        (let* ((___stx127612127613_ _bind117318_)
               (_g117321117338_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127612127613_)))))
          (let ((___kont127614127615_
                 (lambda (_L117374_ _L117375_)
                   (if (let () (declare (not safe)) (gx#identifier? _L117375_))
                       (let ((_$e117391_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L117374_))))
                         (if _$e117391_
                             _$e117391_
                             (let ((_$e117394_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L117374_))))
                               (if _$e117394_
                                   _$e117394_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L117374_))))))
                       '#f)))
                (___kont127616127617_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127612127613_))
                (let ((_e117325117350_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127612127613_))))
                  (let ((_tl117327117355_
                         (let () (declare (not safe)) (##cdr _e117325117350_)))
                        (_hd117326117353_
                         (let ()
                           (declare (not safe))
                           (##car _e117325117350_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd117326117353_))
                        (let ((_e117328117358_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd117326117353_))))
                          (let ((_tl117330117363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e117328117358_)))
                                (_hd117329117361_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e117328117358_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl117330117363_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl117327117355_))
                                    (let ((_e117331117366_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl117327117355_))))
                                      (let ((_tl117333117371_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e117331117366_)))
                                            (_hd117332117369_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e117331117366_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl117333117371_))
                                            (___kont127614127615_
                                             _hd117332117369_
                                             _hd117329117361_)
                                            (___kont127616127617_))))
                                    (___kont127616127617_))
                                (___kont127616127617_))))
                        (___kont127616127617_))))
                (___kont127616127617_))))))))
