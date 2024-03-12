(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710237312)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp128936 (list gxc#::void::t))
            (__tmp128934
             (let ((__tmp128935
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128935 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp128936
         '()
         __tmp128934
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args126831_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args126831_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (let ((__tmp128937
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
        (declare (not safe))
        (make-promise __tmp128937)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126823_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self126826_
                (let ((__obj128918
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj128918))
               (__tmp128938
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126826_ _stx126823_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128938
           gxc#current-compile-method
           _self126826_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp128941 (list gxc#::false::t))
            (__tmp128939
             (let ((__tmp128940
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128940 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp128941
         '()
         __tmp128939
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args126820_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args126820_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (let ((__tmp128942
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
        (declare (not safe))
        (make-promise __tmp128942)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126812_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self126815_
                (let ((__obj128920
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj128920))
               (__tmp128943
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126815_ _stx126812_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128943
           gxc#current-compile-method
           _self126815_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp128946 (list gxc#::void::t))
            (__tmp128944
             (let ((__tmp128945
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128945 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp128946
         '()
         __tmp128944
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args126809_
        (apply make-instance gxc#::collect-type-info::t _$args126809_)))
    (define gxc#::collect-type-info-bind-methods!
      (let ((__tmp128947
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
        (declare (not safe))
        (make-promise __tmp128947)))
    (define gxc#apply-collect-type-info
      (lambda (_stx126801_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self126804_
                (let ((__obj128922
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj128922))
               (__tmp128948
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126804_ _stx126801_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128948
           gxc#current-compile-method
           _self126804_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp128951 (list gxc#::false::t))
            (__tmp128949
             (let ((__tmp128950
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128950 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp128951
         '()
         __tmp128949
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args126798_
        (apply make-instance gxc#::basic-expression-type::t _$args126798_)))
    (define gxc#::basic-expression-type-bind-methods!
      (let ((__tmp128952
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
        (declare (not safe))
        (make-promise __tmp128952)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126790_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self126793_
                (let ((__obj128924
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj128924))
               (__tmp128953
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126793_ _stx126790_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128953
           gxc#current-compile-method
           _self126793_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp128956 (list gxc#::basic-xform::t))
            (__tmp128954
             (let ((__tmp128955
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128955 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp128956
         '()
         __tmp128954
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args126787_
        (apply make-instance gxc#::lift-top-lambdas::t _$args126787_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (let ((__tmp128957
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
        (declare (not safe))
        (make-promise __tmp128957)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126779_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self126782_
                (let ((__obj128926
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj128926))
               (__tmp128958
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126782_ _stx126779_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128958
           gxc#current-compile-method
           _self126782_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self126681_ _stx126682_)
        (let* ((___stx126844126845_ _stx126682_)
               (_g126685126705_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126844126845_)))))
          (let ((___kont126846126847_
                 (lambda (_L126749_ _L126750_)
                   (let ((_sym126768_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126750_))))
                     (if (let ((__tmp128959 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128959 _sym126768_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126768_))
                         (let ((_type126769126771_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126749_))))
                           (if _type126769126771_
                               (let ((_type126774_ _type126769126771_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126768_
                                  _type126774_))
                               '#f))))))
                (___kont126848126849_ (lambda () '#!void)))
            (let ((___match126877126878_
                   (lambda (_e126691126717_
                            _hd126690126720_
                            _tl126689126722_
                            _e126694126725_
                            _hd126693126728_
                            _tl126692126730_
                            _e126697126733_
                            _hd126696126736_
                            _tl126695126738_
                            _e126700126741_
                            _hd126699126744_
                            _tl126698126746_)
                     (let ((_L126749_ _hd126699126744_)
                           (_L126750_ _hd126696126736_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126750_))
                           (___kont126846126847_ _L126749_ _L126750_)
                           (___kont126848126849_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126844126845_))
                  (let ((_e126691126717_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126844126845_))))
                    (let ((_tl126689126722_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126691126717_)))
                          (_hd126690126720_
                           (let ()
                             (declare (not safe))
                             (##car _e126691126717_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126689126722_))
                          (let ((_e126694126725_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126689126722_))))
                            (let ((_tl126692126730_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126694126725_)))
                                  (_hd126693126728_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126694126725_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126693126728_))
                                  (let ((_e126697126733_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126693126728_))))
                                    (let ((_tl126695126738_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126697126733_)))
                                          (_hd126696126736_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126697126733_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126695126738_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126692126730_))
                                              (let ((_e126700126741_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126692126730_))))
                                                (let ((_tl126698126746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126700126741_)))
                                                      (_hd126699126744_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126700126741_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126698126746_))
                                                      (___match126877126878_
                                                       _e126691126717_
                                                       _hd126690126720_
                                                       _tl126689126722_
                                                       _e126694126725_
                                                       _hd126693126728_
                                                       _tl126692126730_
                                                       _e126697126733_
                                                       _hd126696126736_
                                                       _tl126695126738_
                                                       _e126700126741_
                                                       _hd126699126744_
                                                       _tl126698126746_)
                                                      (___kont126848126849_))))
                                              (___kont126848126849_))
                                          (___kont126848126849_))))
                                  (___kont126848126849_))))
                          (___kont126848126849_))))
                  (___kont126848126849_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self126536_ _stx126537_)
        (let* ((___stx126880126881_ _stx126537_)
               (_g126540126571_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126880126881_)))))
          (let ((___kont126882126883_
                 (lambda (_L126653_ _L126654_)
                   (let ((_sym126670_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126654_))))
                     (if (let ((__tmp128960 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128960 _sym126670_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126670_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126670_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126670_))
                             (let ((_type126671126673_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126653_))))
                               (if _type126671126673_
                                   (let ((_type126676_ _type126671126673_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126670_
                                      _type126676_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self126536_ _L126653_)))))
                (___kont126884126885_
                 (lambda (_L126600_ _L126601_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self126536_ _L126600_)))))
            (let ((___match126913126914_
                   (lambda (_e126546126621_
                            _hd126545126624_
                            _tl126544126626_
                            _e126549126629_
                            _hd126548126632_
                            _tl126547126634_
                            _e126552126637_
                            _hd126551126640_
                            _tl126550126642_
                            _e126555126645_
                            _hd126554126648_
                            _tl126553126650_)
                     (let ((_L126653_ _hd126554126648_)
                           (_L126654_ _hd126551126640_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126654_))
                           (___kont126882126883_ _L126653_ _L126654_)
                           (___kont126884126885_
                            _hd126554126648_
                            _hd126548126632_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126880126881_))
                  (let ((_e126546126621_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126880126881_))))
                    (let ((_tl126544126626_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126546126621_)))
                          (_hd126545126624_
                           (let ()
                             (declare (not safe))
                             (##car _e126546126621_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126544126626_))
                          (let ((_e126549126629_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126544126626_))))
                            (let ((_tl126547126634_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126549126629_)))
                                  (_hd126548126632_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126549126629_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126548126632_))
                                  (let ((_e126552126637_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126548126632_))))
                                    (let ((_tl126550126642_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126552126637_)))
                                          (_hd126551126640_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126552126637_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126550126642_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126547126634_))
                                              (let ((_e126555126645_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126547126634_))))
                                                (let ((_tl126553126650_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126555126645_)))
                                                      (_hd126554126648_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126555126645_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126553126650_))
                                                      (___match126913126914_
                                                       _e126546126621_
                                                       _hd126545126624_
                                                       _tl126544126626_
                                                       _e126549126629_
                                                       _hd126548126632_
                                                       _tl126547126634_
                                                       _e126552126637_
                                                       _hd126551126640_
                                                       _tl126550126642_
                                                       _e126555126645_
                                                       _hd126554126648_
                                                       _tl126553126650_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126540126571_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126540126571_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126547126634_))
                                              (let ((_e126566126592_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126547126634_))))
                                                (let ((_tl126564126597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126566126592_)))
                                                      (_hd126565126595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126566126592_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126564126597_))
                                                      (___kont126884126885_
                                                       _hd126565126595_
                                                       _hd126548126632_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126540126571_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126540126571_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126547126634_))
                                      (let ((_e126566126592_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126547126634_))))
                                        (let ((_tl126564126597_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126566126592_)))
                                              (_hd126565126595_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126566126592_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126564126597_))
                                              (___kont126884126885_
                                               _hd126565126595_
                                               _hd126548126632_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126540126571_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126540126571_))))))
                          (let () (declare (not safe)) (_g126540126571_)))))
                  (let () (declare (not safe)) (_g126540126571_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self126316_ _stx126317_)
        (letrec ((_collect-e126319_
                  (lambda (_hd126480_ _expr126481_)
                    (let* ((___stx126936126937_ _hd126480_)
                           (_g126484126494_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126936126937_)))))
                      (let ((___kont126938126939_
                             (lambda (_L126514_)
                               (let ((_sym126525_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126514_))))
                                 (if (let ((__tmp128961
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128961 _sym126525_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126525_))
                                     (let ((_type126526126528_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126481_))))
                                       (if _type126526126528_
                                           (let ((_type126531_
                                                  _type126526126528_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126525_
                                              _type126531_
                                              '#t))
                                           '#f))))))
                            (___kont126940126941_ (lambda () '#!void)))
                        (let ((___match126949126950_
                               (lambda (_e126489126506_
                                        _hd126488126509_
                                        _tl126487126511_)
                                 (let ((_L126514_ _hd126488126509_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126514_))
                                       (___kont126938126939_ _L126514_)
                                       (___kont126940126941_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126936126937_))
                              (let ((_e126489126506_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126936126937_))))
                                (let ((_tl126487126511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126489126506_)))
                                      (_hd126488126509_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126489126506_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126487126511_))
                                      (___match126949126950_
                                       _e126489126506_
                                       _hd126488126509_
                                       _tl126487126511_)
                                      (___kont126940126941_))))
                              (___kont126940126941_))))))))
          (let* ((_g126321126356_
                  (lambda (_g126322126353_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126322126353_))))
                 (_g126320126477_
                  (lambda (_g126322126359_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126322126359_))
                        (let ((_e126328126361_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126322126359_))))
                          (let ((_hd126327126364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126328126361_)))
                                (_tl126326126366_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126328126361_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126326126366_))
                                (let ((_e126331126369_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126326126366_))))
                                  (let ((_hd126330126372_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126331126369_)))
                                        (_tl126329126374_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126331126369_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126330126372_))
                                        (let ((_g128962_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126330126372_
                                                  '0))))
                                          (begin
                                            (let ((_g128963_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128962_)
                                                         (##vector-length
                                                          _g128962_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128963_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128963_)))
                                            (let ((_target126332126377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128962_
                                                      0)))
                                                  (_tl126334126379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128962_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126334126379_))
                                                  (letrec ((_loop126335126382_
                                                            (lambda (_hd126333126385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126339126387_
                             _hd126340126389_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126333126385_))
                          (let ((_e126336126392_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126333126385_))))
                            (let ((_lp-hd126337126395_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126336126392_)))
                                  (_lp-tl126338126397_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126336126392_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126337126395_))
                                  (let ((_e126345126400_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126337126395_))))
                                    (let ((_hd126344126403_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126345126400_)))
                                          (_tl126343126405_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126345126400_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126343126405_))
                                          (let ((_e126348126408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126343126405_))))
                                            (let ((_hd126347126411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126348126408_)))
                                                  (_tl126346126413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126348126408_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126346126413_))
                                                  (let ((__tmp128968
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126347126411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126339126387_)))
                (__tmp128967
                 (let ()
                   (declare (not safe))
                   (cons _hd126344126403_ _hd126340126389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126335126382_
                                                     _lp-tl126338126397_
                                                     __tmp128968
                                                     __tmp128967))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126321126356_
                                                     _g126322126359_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126321126356_
                                             _g126322126359_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126321126356_ _g126322126359_)))))
                          (let ((_expr126341126416_
                                 (reverse _expr126339126387_))
                                (_hd126342126418_ (reverse _hd126340126389_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126329126374_))
                                (let ((_e126351126421_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126329126374_))))
                                  (let ((_hd126350126424_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126351126421_)))
                                        (_tl126349126426_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126351126421_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126349126426_))
                                        ((lambda (_L126429_
                                                  _L126430_
                                                  _L126431_)
                                           (for-each
                                            _collect-e126319_
                                            (let ((__tmp128964
                                                   (lambda (_g126451126454_
                                                            _g126452126456_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126451126454_
                                                             _g126452126456_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128964
                                                      '()
                                                      _L126431_))
                                            (let ((__tmp128965
                                                   (lambda (_g126458126461_
                                                            _g126459126463_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126458126461_
                                                             _g126459126463_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128965
                                                      '()
                                                      _L126430_)))
                                           (for-each
                                            (lambda (_g126465126467_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self126316_
                                                 _g126465126467_)))
                                            (let ((__tmp128966
                                                   (lambda (_g126469126472_
                                                            _g126470126474_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126469126472_
                                                             _g126470126474_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128966
                                                      '()
                                                      _L126430_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self126316_
                                              _L126429_)))
                                         _hd126350126424_
                                         _expr126341126416_
                                         _hd126342126418_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126321126356_ _g126322126359_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126321126356_ _g126322126359_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126335126382_
                                                       _target126332126377_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126321126356_
                                                     _g126322126359_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126321126356_ _g126322126359_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126321126356_ _g126322126359_)))))
                        (let ()
                          (declare (not safe))
                          (_g126321126356_ _g126322126359_))))))
            (declare (not safe))
            (_g126320126477_ _stx126317_)))))
    (define gxc#collect-type-call%
      (lambda (_self125803_ _stx125804_)
        (let* ((___stx126952126953_ _stx125804_)
               (_g125808125923_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126952126953_)))))
          (let ((___kont126954126955_
                 (lambda (_L126266_ _L126267_ _L126268_ _L126269_ _L126270_)
                   (let ((__tmp128972
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126269_)))
                         (__tmp128971
                          (let () (declare (not safe)) (gx#stx-e _L126268_)))
                         (__tmp128970
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126267_)))
                         (__tmp128969
                          (let () (declare (not safe)) (gx#stx-e _L126266_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128972
                      __tmp128971
                      __tmp128970
                      __tmp128969))))
                (___kont126956126957_
                 (lambda (_L126094_ _L126095_ _L126096_ _L126097_)
                   (let ((__tmp128975
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126096_)))
                         (__tmp128974
                          (let () (declare (not safe)) (gx#stx-e _L126095_)))
                         (__tmp128973
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126094_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128975
                      __tmp128974
                      __tmp128973
                      '#f))))
                (___kont126958126959_
                 (lambda (_L125960_)
                   (for-each
                    (lambda (_g125973125975_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self125803_ _g125973125975_)))
                    (let ((__tmp128976
                           (lambda (_g125977125980_ _g125978125982_)
                             (let ()
                               (declare (not safe))
                               (cons _g125977125980_ _g125978125982_)))))
                      (declare (not safe))
                      (foldr1 __tmp128976 '() _L125960_))))))
            (let* ((___match127209127210_
                    (lambda (_e125909125928_
                             _hd125908125931_
                             _tl125907125933_
                             ___splice126960126961_
                             _target125910125936_
                             _tl125912125938_)
                      (letrec ((_loop125913125941_
                                (lambda (_hd125911125944_ _expr125917125946_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125911125944_))
                                      (let ((_e125914125949_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125911125944_))))
                                        (let ((_lp-tl125916125954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125914125949_)))
                                              (_lp-hd125915125952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125914125949_))))
                                          (let ((__tmp128977
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125915125952_
                                                         _expr125917125946_))))
                                            (declare (not safe))
                                            (_loop125913125941_
                                             _lp-tl125916125954_
                                             __tmp128977))))
                                      (let ((_expr125918125957_
                                             (reverse _expr125917125946_)))
                                        (___kont126958126959_
                                         _expr125918125957_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125913125941_ _target125910125936_ '())))))
                   (___match127089127090_
                    (lambda (_e125817126138_
                             _hd125816126141_
                             _tl125815126143_
                             _e125820126146_
                             _hd125819126149_
                             _tl125818126151_
                             _e125823126154_
                             _hd125822126157_
                             _tl125821126159_
                             _e125826126162_
                             _hd125825126165_
                             _tl125824126167_
                             _e125829126170_
                             _hd125828126173_
                             _tl125827126175_
                             _e125832126178_
                             _hd125831126181_
                             _tl125830126183_
                             _e125835126186_
                             _hd125834126189_
                             _tl125833126191_
                             _e125838126194_
                             _hd125837126197_
                             _tl125836126199_
                             _e125841126202_
                             _hd125840126205_
                             _tl125839126207_
                             _e125844126210_
                             _hd125843126213_
                             _tl125842126215_
                             _e125847126218_
                             _hd125846126221_
                             _tl125845126223_
                             _e125850126226_
                             _hd125849126229_
                             _tl125848126231_
                             _e125853126234_
                             _hd125852126237_
                             _tl125851126239_
                             _e125856126242_
                             _hd125855126245_
                             _tl125854126247_
                             _e125859126250_
                             _hd125858126253_
                             _tl125857126255_
                             _e125862126258_
                             _hd125861126261_
                             _tl125860126263_)
                      (let ((_L126266_ _hd125861126261_)
                            (_L126267_ _hd125852126237_)
                            (_L126268_ _hd125843126213_)
                            (_L126269_ _hd125834126189_)
                            (_L126270_ _hd125825126165_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126270_
                               'bind-method!))
                            (___kont126954126955_
                             _L126266_
                             _L126267_
                             _L126268_
                             _L126269_
                             _L126270_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125815126143_))
                                (let ((___splice126960126961_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125815126143_
                                          '0))))
                                  (let ((_tl125912125938_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126960126961_
                                            '1)))
                                        (_target125910125936_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126960126961_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125912125938_))
                                        (___match127209127210_
                                         _e125817126138_
                                         _hd125816126141_
                                         _tl125815126143_
                                         ___splice126960126961_
                                         _target125910125936_
                                         _tl125912125938_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125808125923_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125808125923_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126952126953_))
                  (let ((_e125817126138_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126952126953_))))
                    (let ((_tl125815126143_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125817126138_)))
                          (_hd125816126141_
                           (let ()
                             (declare (not safe))
                             (##car _e125817126138_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125815126143_))
                          (let ((_e125820126146_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125815126143_))))
                            (let ((_tl125818126151_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125820126146_)))
                                  (_hd125819126149_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125820126146_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125819126149_))
                                  (let ((_e125823126154_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125819126149_))))
                                    (let ((_tl125821126159_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125823126154_)))
                                          (_hd125822126157_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125823126154_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125822126157_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125822126157_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125821126159_))
                                                  (let ((_e125826126162_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125821126159_))))
                                                    (let ((_tl125824126167_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125826126162_)))
                                                          (_hd125825126165_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125826126162_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125824126167_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125818126151_))
                      (let ((_e125829126170_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125818126151_))))
                        (let ((_tl125827126175_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125829126170_)))
                              (_hd125828126173_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125829126170_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125828126173_))
                              (let ((_e125832126178_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125828126173_))))
                                (let ((_tl125830126183_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125832126178_)))
                                      (_hd125831126181_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125832126178_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125831126181_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125831126181_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125830126183_))
                                              (let ((_e125835126186_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125830126183_))))
                                                (let ((_tl125833126191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125835126186_)))
                                                      (_hd125834126189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125835126186_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125833126191_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125827126175_))
                                                          (let ((_e125838126194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125827126175_))))
                    (let ((_tl125836126199_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125838126194_)))
                          (_hd125837126197_
                           (let ()
                             (declare (not safe))
                             (##car _e125838126194_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125837126197_))
                          (let ((_e125841126202_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125837126197_))))
                            (let ((_tl125839126207_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125841126202_)))
                                  (_hd125840126205_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125841126202_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125840126205_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125840126205_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125839126207_))
                                          (let ((_e125844126210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125839126207_))))
                                            (let ((_tl125842126215_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125844126210_)))
                                                  (_hd125843126213_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125844126210_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125842126215_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125836126199_))
                                                      (let ((_e125847126218_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125836126199_))))
                (let ((_tl125845126223_
                       (let () (declare (not safe)) (##cdr _e125847126218_)))
                      (_hd125846126221_
                       (let () (declare (not safe)) (##car _e125847126218_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125846126221_))
                      (let ((_e125850126226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125846126221_))))
                        (let ((_tl125848126231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125850126226_)))
                              (_hd125849126229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125850126226_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125849126229_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125849126229_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125848126231_))
                                      (let ((_e125853126234_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125848126231_))))
                                        (let ((_tl125851126239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125853126234_)))
                                              (_hd125852126237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125853126234_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125851126239_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125845126223_))
                                                  (let ((_e125856126242_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125845126223_))))
                                                    (let ((_tl125854126247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125856126242_)))
                                                          (_hd125855126245_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125856126242_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125855126245_))
                                                          (let ((_e125859126250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125855126245_))))
                    (let ((_tl125857126255_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125859126250_)))
                          (_hd125858126253_
                           (let ()
                             (declare (not safe))
                             (##car _e125859126250_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125858126253_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125858126253_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125857126255_))
                                  (let ((_e125862126258_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125857126255_))))
                                    (let ((_tl125860126263_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125862126258_)))
                                          (_hd125861126261_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125862126258_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125860126263_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125854126247_))
                                              (___match127089127090_
                                               _e125817126138_
                                               _hd125816126141_
                                               _tl125815126143_
                                               _e125820126146_
                                               _hd125819126149_
                                               _tl125818126151_
                                               _e125823126154_
                                               _hd125822126157_
                                               _tl125821126159_
                                               _e125826126162_
                                               _hd125825126165_
                                               _tl125824126167_
                                               _e125829126170_
                                               _hd125828126173_
                                               _tl125827126175_
                                               _e125832126178_
                                               _hd125831126181_
                                               _tl125830126183_
                                               _e125835126186_
                                               _hd125834126189_
                                               _tl125833126191_
                                               _e125838126194_
                                               _hd125837126197_
                                               _tl125836126199_
                                               _e125841126202_
                                               _hd125840126205_
                                               _tl125839126207_
                                               _e125844126210_
                                               _hd125843126213_
                                               _tl125842126215_
                                               _e125847126218_
                                               _hd125846126221_
                                               _tl125845126223_
                                               _e125850126226_
                                               _hd125849126229_
                                               _tl125848126231_
                                               _e125853126234_
                                               _hd125852126237_
                                               _tl125851126239_
                                               _e125856126242_
                                               _hd125855126245_
                                               _tl125854126247_
                                               _e125859126250_
                                               _hd125858126253_
                                               _tl125857126255_
                                               _e125862126258_
                                               _hd125861126261_
                                               _tl125860126263_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125815126143_))
                                                  (let ((___splice126960126961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125815126143_
                                                            '0))))
                                                    (let ((_tl125912125938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '1)))
                                                          (_target125910125936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125912125938_))
                                                          (___match127209127210_
                                                           _e125817126138_
                                                           _hd125816126141_
                                                           _tl125815126143_
                                                           ___splice126960126961_
                                                           _target125910125936_
                                                           _tl125912125938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125808125923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125808125923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125815126143_))
                                              (let ((___splice126960126961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125815126143_
                                                        '0))))
                                                (let ((_tl125912125938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '1)))
                                                      (_target125910125936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125912125938_))
                                                      (___match127209127210_
                                                       _e125817126138_
                                                       _hd125816126141_
                                                       _tl125815126143_
                                                       ___splice126960126961_
                                                       _target125910125936_
                                                       _tl125912125938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125808125923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125815126143_))
                                      (let ((___splice126960126961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125815126143_
                                                '0))))
                                        (let ((_tl125912125938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '1)))
                                              (_target125910125936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125912125938_))
                                              (___match127209127210_
                                               _e125817126138_
                                               _hd125816126141_
                                               _tl125815126143_
                                               ___splice126960126961_
                                               _target125910125936_
                                               _tl125912125938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125808125923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125815126143_))
                                  (let ((___splice126960126961_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125815126143_
                                            '0))))
                                    (let ((_tl125912125938_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126960126961_
                                              '1)))
                                          (_target125910125936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126960126961_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125912125938_))
                                          (___match127209127210_
                                           _e125817126138_
                                           _hd125816126141_
                                           _tl125815126143_
                                           ___splice126960126961_
                                           _target125910125936_
                                           _tl125912125938_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125808125923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125808125923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125815126143_))
                              (let ((___splice126960126961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125815126143_
                                        '0))))
                                (let ((_tl125912125938_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126960126961_
                                          '1)))
                                      (_target125910125936_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126960126961_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125912125938_))
                                      (___match127209127210_
                                       _e125817126138_
                                       _hd125816126141_
                                       _tl125815126143_
                                       ___splice126960126961_
                                       _target125910125936_
                                       _tl125912125938_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125808125923_)))))
                              (let ()
                                (declare (not safe))
                                (_g125808125923_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125815126143_))
                      (let ((___splice126960126961_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125815126143_ '0))))
                        (let ((_tl125912125938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '1)))
                              (_target125910125936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125912125938_))
                              (___match127209127210_
                               _e125817126138_
                               _hd125816126141_
                               _tl125815126143_
                               ___splice126960126961_
                               _target125910125936_
                               _tl125912125938_)
                              (let ()
                                (declare (not safe))
                                (_g125808125923_)))))
                      (let () (declare (not safe)) (_g125808125923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125845126223_))
                                                      (if (let ((__tmp128978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128978 'bind-method!))
                  (let ((_L126094_ _hd125852126237_)
                        (_L126095_ _hd125843126213_)
                        (_L126096_ _hd125834126189_)
                        (_L126097_ _hd125825126165_))
                    (___kont126956126957_
                     _L126094_
                     _L126095_
                     _L126096_
                     _L126097_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125815126143_))
                      (let ((___splice126960126961_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125815126143_ '0))))
                        (let ((_tl125912125938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '1)))
                              (_target125910125936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125912125938_))
                              (___match127209127210_
                               _e125817126138_
                               _hd125816126141_
                               _tl125815126143_
                               ___splice126960126961_
                               _target125910125936_
                               _tl125912125938_)
                              (let ()
                                (declare (not safe))
                                (_g125808125923_)))))
                      (let () (declare (not safe)) (_g125808125923_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125815126143_))
                  (let ((___splice126960126961_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125815126143_ '0))))
                    (let ((_tl125912125938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126960126961_ '1)))
                          (_target125910125936_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126960126961_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125912125938_))
                          (___match127209127210_
                           _e125817126138_
                           _hd125816126141_
                           _tl125815126143_
                           ___splice126960126961_
                           _target125910125936_
                           _tl125912125938_)
                          (let () (declare (not safe)) (_g125808125923_)))))
                  (let () (declare (not safe)) (_g125808125923_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125815126143_))
                                                  (let ((___splice126960126961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125815126143_
                                                            '0))))
                                                    (let ((_tl125912125938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '1)))
                                                          (_target125910125936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125912125938_))
                                                          (___match127209127210_
                                                           _e125817126138_
                                                           _hd125816126141_
                                                           _tl125815126143_
                                                           ___splice126960126961_
                                                           _target125910125936_
                                                           _tl125912125938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125808125923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125808125923_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125815126143_))
                                          (let ((___splice126960126961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125815126143_
                                                    '0))))
                                            (let ((_tl125912125938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126960126961_
                                                      '1)))
                                                  (_target125910125936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126960126961_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125912125938_))
                                                  (___match127209127210_
                                                   _e125817126138_
                                                   _hd125816126141_
                                                   _tl125815126143_
                                                   ___splice126960126961_
                                                   _target125910125936_
                                                   _tl125912125938_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125808125923_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125808125923_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125815126143_))
                                      (let ((___splice126960126961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125815126143_
                                                '0))))
                                        (let ((_tl125912125938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '1)))
                                              (_target125910125936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125912125938_))
                                              (___match127209127210_
                                               _e125817126138_
                                               _hd125816126141_
                                               _tl125815126143_
                                               ___splice126960126961_
                                               _target125910125936_
                                               _tl125912125938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125808125923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125815126143_))
                                  (let ((___splice126960126961_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125815126143_
                                            '0))))
                                    (let ((_tl125912125938_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126960126961_
                                              '1)))
                                          (_target125910125936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126960126961_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125912125938_))
                                          (___match127209127210_
                                           _e125817126138_
                                           _hd125816126141_
                                           _tl125815126143_
                                           ___splice126960126961_
                                           _target125910125936_
                                           _tl125912125938_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125808125923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125808125923_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125815126143_))
                          (let ((___splice126960126961_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125815126143_
                                    '0))))
                            (let ((_tl125912125938_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126960126961_ '1)))
                                  (_target125910125936_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126960126961_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125912125938_))
                                  (___match127209127210_
                                   _e125817126138_
                                   _hd125816126141_
                                   _tl125815126143_
                                   ___splice126960126961_
                                   _target125910125936_
                                   _tl125912125938_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125808125923_)))))
                          (let () (declare (not safe)) (_g125808125923_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125815126143_))
                  (let ((___splice126960126961_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125815126143_ '0))))
                    (let ((_tl125912125938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126960126961_ '1)))
                          (_target125910125936_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126960126961_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125912125938_))
                          (___match127209127210_
                           _e125817126138_
                           _hd125816126141_
                           _tl125815126143_
                           ___splice126960126961_
                           _target125910125936_
                           _tl125912125938_)
                          (let () (declare (not safe)) (_g125808125923_)))))
                  (let () (declare (not safe)) (_g125808125923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125815126143_))
                                                      (let ((___splice126960126961_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125815126143_ '0))))
                (let ((_tl125912125938_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126960126961_ '1)))
                      (_target125910125936_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126960126961_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125912125938_))
                      (___match127209127210_
                       _e125817126138_
                       _hd125816126141_
                       _tl125815126143_
                       ___splice126960126961_
                       _target125910125936_
                       _tl125912125938_)
                      (let () (declare (not safe)) (_g125808125923_)))))
              (let () (declare (not safe)) (_g125808125923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125815126143_))
                                              (let ((___splice126960126961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125815126143_
                                                        '0))))
                                                (let ((_tl125912125938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '1)))
                                                      (_target125910125936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125912125938_))
                                                      (___match127209127210_
                                                       _e125817126138_
                                                       _hd125816126141_
                                                       _tl125815126143_
                                                       ___splice126960126961_
                                                       _target125910125936_
                                                       _tl125912125938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125808125923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125815126143_))
                                          (let ((___splice126960126961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125815126143_
                                                    '0))))
                                            (let ((_tl125912125938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126960126961_
                                                      '1)))
                                                  (_target125910125936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126960126961_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125912125938_))
                                                  (___match127209127210_
                                                   _e125817126138_
                                                   _hd125816126141_
                                                   _tl125815126143_
                                                   ___splice126960126961_
                                                   _target125910125936_
                                                   _tl125912125938_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125808125923_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125808125923_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125815126143_))
                                      (let ((___splice126960126961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125815126143_
                                                '0))))
                                        (let ((_tl125912125938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '1)))
                                              (_target125910125936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125912125938_))
                                              (___match127209127210_
                                               _e125817126138_
                                               _hd125816126141_
                                               _tl125815126143_
                                               ___splice126960126961_
                                               _target125910125936_
                                               _tl125912125938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125808125923_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125815126143_))
                              (let ((___splice126960126961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125815126143_
                                        '0))))
                                (let ((_tl125912125938_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126960126961_
                                          '1)))
                                      (_target125910125936_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126960126961_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125912125938_))
                                      (___match127209127210_
                                       _e125817126138_
                                       _hd125816126141_
                                       _tl125815126143_
                                       ___splice126960126961_
                                       _target125910125936_
                                       _tl125912125938_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125808125923_)))))
                              (let ()
                                (declare (not safe))
                                (_g125808125923_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125815126143_))
                      (let ((___splice126960126961_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125815126143_ '0))))
                        (let ((_tl125912125938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '1)))
                              (_target125910125936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125912125938_))
                              (___match127209127210_
                               _e125817126138_
                               _hd125816126141_
                               _tl125815126143_
                               ___splice126960126961_
                               _target125910125936_
                               _tl125912125938_)
                              (let ()
                                (declare (not safe))
                                (_g125808125923_)))))
                      (let () (declare (not safe)) (_g125808125923_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125815126143_))
                  (let ((___splice126960126961_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125815126143_ '0))))
                    (let ((_tl125912125938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126960126961_ '1)))
                          (_target125910125936_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126960126961_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125912125938_))
                          (___match127209127210_
                           _e125817126138_
                           _hd125816126141_
                           _tl125815126143_
                           ___splice126960126961_
                           _target125910125936_
                           _tl125912125938_)
                          (let () (declare (not safe)) (_g125808125923_)))))
                  (let () (declare (not safe)) (_g125808125923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125815126143_))
                                                  (let ((___splice126960126961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125815126143_
                                                            '0))))
                                                    (let ((_tl125912125938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '1)))
                                                          (_target125910125936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125912125938_))
                                                          (___match127209127210_
                                                           _e125817126138_
                                                           _hd125816126141_
                                                           _tl125815126143_
                                                           ___splice126960126961_
                                                           _target125910125936_
                                                           _tl125912125938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125808125923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125808125923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125815126143_))
                                              (let ((___splice126960126961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125815126143_
                                                        '0))))
                                                (let ((_tl125912125938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '1)))
                                                      (_target125910125936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125912125938_))
                                                      (___match127209127210_
                                                       _e125817126138_
                                                       _hd125816126141_
                                                       _tl125815126143_
                                                       ___splice126960126961_
                                                       _target125910125936_
                                                       _tl125912125938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125808125923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125815126143_))
                                          (let ((___splice126960126961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125815126143_
                                                    '0))))
                                            (let ((_tl125912125938_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126960126961_
                                                      '1)))
                                                  (_target125910125936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126960126961_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125912125938_))
                                                  (___match127209127210_
                                                   _e125817126138_
                                                   _hd125816126141_
                                                   _tl125815126143_
                                                   ___splice126960126961_
                                                   _target125910125936_
                                                   _tl125912125938_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125808125923_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125808125923_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125815126143_))
                                  (let ((___splice126960126961_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125815126143_
                                            '0))))
                                    (let ((_tl125912125938_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126960126961_
                                              '1)))
                                          (_target125910125936_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126960126961_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125912125938_))
                                          (___match127209127210_
                                           _e125817126138_
                                           _hd125816126141_
                                           _tl125815126143_
                                           ___splice126960126961_
                                           _target125910125936_
                                           _tl125912125938_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125808125923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125808125923_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125815126143_))
                          (let ((___splice126960126961_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125815126143_
                                    '0))))
                            (let ((_tl125912125938_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126960126961_ '1)))
                                  (_target125910125936_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126960126961_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125912125938_))
                                  (___match127209127210_
                                   _e125817126138_
                                   _hd125816126141_
                                   _tl125815126143_
                                   ___splice126960126961_
                                   _target125910125936_
                                   _tl125912125938_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125808125923_)))))
                          (let () (declare (not safe)) (_g125808125923_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125815126143_))
                      (let ((___splice126960126961_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125815126143_ '0))))
                        (let ((_tl125912125938_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '1)))
                              (_target125910125936_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126960126961_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125912125938_))
                              (___match127209127210_
                               _e125817126138_
                               _hd125816126141_
                               _tl125815126143_
                               ___splice126960126961_
                               _target125910125936_
                               _tl125912125938_)
                              (let ()
                                (declare (not safe))
                                (_g125808125923_)))))
                      (let () (declare (not safe)) (_g125808125923_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125815126143_))
                                                      (let ((___splice126960126961_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125815126143_ '0))))
                (let ((_tl125912125938_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126960126961_ '1)))
                      (_target125910125936_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126960126961_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125912125938_))
                      (___match127209127210_
                       _e125817126138_
                       _hd125816126141_
                       _tl125815126143_
                       ___splice126960126961_
                       _target125910125936_
                       _tl125912125938_)
                      (let () (declare (not safe)) (_g125808125923_)))))
              (let () (declare (not safe)) (_g125808125923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125815126143_))
                                                  (let ((___splice126960126961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125815126143_
                                                            '0))))
                                                    (let ((_tl125912125938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '1)))
                                                          (_target125910125936_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126960126961_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125912125938_))
                                                          (___match127209127210_
                                                           _e125817126138_
                                                           _hd125816126141_
                                                           _tl125815126143_
                                                           ___splice126960126961_
                                                           _target125910125936_
                                                           _tl125912125938_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125808125923_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125808125923_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125815126143_))
                                              (let ((___splice126960126961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125815126143_
                                                        '0))))
                                                (let ((_tl125912125938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '1)))
                                                      (_target125910125936_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126960126961_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125912125938_))
                                                      (___match127209127210_
                                                       _e125817126138_
                                                       _hd125816126141_
                                                       _tl125815126143_
                                                       ___splice126960126961_
                                                       _target125910125936_
                                                       _tl125912125938_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125808125923_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125815126143_))
                                      (let ((___splice126960126961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125815126143_
                                                '0))))
                                        (let ((_tl125912125938_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '1)))
                                              (_target125910125936_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126960126961_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125912125938_))
                                              (___match127209127210_
                                               _e125817126138_
                                               _hd125816126141_
                                               _tl125815126143_
                                               ___splice126960126961_
                                               _target125910125936_
                                               _tl125912125938_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125808125923_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125808125923_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125815126143_))
                              (let ((___splice126960126961_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125815126143_
                                        '0))))
                                (let ((_tl125912125938_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126960126961_
                                          '1)))
                                      (_target125910125936_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126960126961_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125912125938_))
                                      (___match127209127210_
                                       _e125817126138_
                                       _hd125816126141_
                                       _tl125815126143_
                                       ___splice126960126961_
                                       _target125910125936_
                                       _tl125912125938_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125808125923_)))))
                              (let ()
                                (declare (not safe))
                                (_g125808125923_))))))
                  (let () (declare (not safe)) (_g125808125923_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self125742_ _stx125743_)
        (let* ((___stx127212127213_ _stx125743_)
               (_g125746125759_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127212127213_)))))
          (let ((___kont127214127215_
                 (lambda (_L125787_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self125742_ _L125787_))))
                (___kont127216127217_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127212127213_))
                (let ((_e125751125771_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127212127213_))))
                  (let ((_tl125749125776_
                         (let () (declare (not safe)) (##cdr _e125751125771_)))
                        (_hd125750125774_
                         (let ()
                           (declare (not safe))
                           (##car _e125751125771_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125749125776_))
                        (let ((_e125754125779_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125749125776_))))
                          (let ((_tl125752125784_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125754125779_)))
                                (_hd125753125782_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125754125779_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125752125784_))
                                (___kont127214127215_ _hd125753125782_)
                                (___kont127216127217_))))
                        (___kont127216127217_))))
                (___kont127216127217_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self125621_ _stx125622_)
        (let* ((_g125624125641_
                (lambda (_g125625125638_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125625125638_))))
               (_g125623125739_
                (lambda (_g125625125644_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125625125644_))
                      (let ((_e125630125646_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125625125644_))))
                        (let ((_hd125629125649_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125630125646_)))
                              (_tl125628125651_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125630125646_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125628125651_))
                              (let ((_e125633125654_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125628125651_))))
                                (let ((_hd125632125657_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125633125654_)))
                                      (_tl125631125659_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125633125654_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125631125659_))
                                      (let ((_e125636125662_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125631125659_))))
                                        (let ((_hd125635125665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125636125662_)))
                                              (_tl125634125667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125636125662_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125634125667_))
                                              ((lambda (_L125670_ _L125671_)
                                                 (let* ((___stx127234127235_
                                                         _L125671_)
                                                        (_g125687125698_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127234127235_)))))
                                                   (let ((___kont127236127237_
                                                          (lambda (_L125718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125719_)
                    (let ((_$e125731_
                           (let ((__tmp128979
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125719_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128979))))
                      (if _$e125731_
                          ((lambda (_type-e125734_)
                             (_type-e125734_ _stx125622_ _L125671_))
                           _$e125731_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self125621_ _L125670_))))))
                 (___kont127238127239_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self125621_ _L125670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127245127246_
                                                            (lambda (_e125693125710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125692125713_
                             _tl125691125715_)
                      (let ((_L125718_ _tl125691125715_)
                            (_L125719_ _hd125692125713_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125719_))
                            (___kont127236127237_ _L125718_ _L125719_)
                            (___kont127238127239_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127234127235_))
                   (let ((_e125693125710_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127234127235_))))
                     (let ((_tl125691125715_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125693125710_)))
                           (_hd125692125713_
                            (let ()
                              (declare (not safe))
                              (##car _e125693125710_))))
                       (___match127245127246_
                        _e125693125710_
                        _hd125692125713_
                        _tl125691125715_)))
                   (___kont127238127239_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125635125665_
                                               _hd125632125657_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125624125641_
                                                 _g125625125644_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125624125641_ _g125625125644_)))))
                              (let ()
                                (declare (not safe))
                                (_g125624125641_ _g125625125644_)))))
                      (let ()
                        (declare (not safe))
                        (_g125624125641_ _g125625125644_))))))
          (declare (not safe))
          (_g125623125739_ _stx125622_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125465_ _ann125466_)
        (let* ((_g125468125505_
                (lambda (_g125469125502_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125469125502_))))
               (_g125467125618_
                (lambda (_g125469125508_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125469125508_))
                      (let ((_e125479125510_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125469125508_))))
                        (let ((_hd125478125513_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125479125510_)))
                              (_tl125477125515_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125479125510_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125477125515_))
                              (let ((_e125482125518_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125477125515_))))
                                (let ((_hd125481125521_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125482125518_)))
                                      (_tl125480125523_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125482125518_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125480125523_))
                                      (let ((_e125485125526_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125480125523_))))
                                        (let ((_hd125484125529_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125485125526_)))
                                              (_tl125483125531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125485125526_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125483125531_))
                                              (let ((_e125488125534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125483125531_))))
                                                (let ((_hd125487125537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125488125534_)))
                                                      (_tl125486125539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125488125534_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125486125539_))
                                                      (let ((_e125491125542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125486125539_))))
                (let ((_hd125490125545_
                       (let () (declare (not safe)) (##car _e125491125542_)))
                      (_tl125489125547_
                       (let () (declare (not safe)) (##cdr _e125491125542_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125489125547_))
                      (let ((_e125494125550_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125489125547_))))
                        (let ((_hd125493125553_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125494125550_)))
                              (_tl125492125555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125494125550_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125492125555_))
                              (let ((_e125497125558_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125492125555_))))
                                (let ((_hd125496125561_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125497125558_)))
                                      (_tl125495125563_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125497125558_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125495125563_))
                                      (let ((_e125500125566_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125495125563_))))
                                        (let ((_hd125499125569_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125500125566_)))
                                              (_tl125498125571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125500125566_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125498125571_))
                                              ((lambda (_L125574_
                                                        _L125575_
                                                        _L125576_
                                                        _L125577_
                                                        _L125578_
                                                        _L125579_
                                                        _L125580_)
                                                 (let ((_type-id125610_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125580_)))
                                                       (_super125611_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125579_)))
                                                       (_slots125612_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125578_)))
                                                       (_ctor-method125613_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125577_)))
                                                       (_struct?125614_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125576_)))
                                                       (_final?125615_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125575_)))
                                                       (_metaclass125616_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125574_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125574_))
                                                            '#f)))
                                                   (let ((__obj128927
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
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj128927
                                                      _type-id125610_
                                                      _super125611_
                                                      _slots125612_
                                                      _ctor-method125613_
                                                      _struct?125614_
                                                      _final?125615_
                                                      _metaclass125616_)
                                                     __obj128927)))
                                               _hd125499125569_
                                               _hd125496125561_
                                               _hd125493125553_
                                               _hd125490125545_
                                               _hd125487125537_
                                               _hd125484125529_
                                               _hd125481125521_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125468125505_
                                                 _g125469125508_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125468125505_ _g125469125508_)))))
                              (let ()
                                (declare (not safe))
                                (_g125468125505_ _g125469125508_)))))
                      (let ()
                        (declare (not safe))
                        (_g125468125505_ _g125469125508_)))))
              (let ()
                (declare (not safe))
                (_g125468125505_ _g125469125508_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125468125505_
                                                 _g125469125508_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125468125505_ _g125469125508_)))))
                              (let ()
                                (declare (not safe))
                                (_g125468125505_ _g125469125508_)))))
                      (let ()
                        (declare (not safe))
                        (_g125468125505_ _g125469125508_))))))
          (declare (not safe))
          (_g125467125618_ _ann125466_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125413_ _ann125414_)
        (let* ((_g125416125429_
                (lambda (_g125417125426_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125417125426_))))
               (_g125415125462_
                (lambda (_g125417125432_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125417125432_))
                      (let ((_e125421125434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125417125432_))))
                        (let ((_hd125420125437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125421125434_)))
                              (_tl125419125439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125421125434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125419125439_))
                              (let ((_e125424125442_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125419125439_))))
                                (let ((_hd125423125445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125424125442_)))
                                      (_tl125422125447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125424125442_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125422125447_))
                                      ((lambda (_L125450_)
                                         (let ((__tmp128980
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125450_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128980)))
                                       _hd125423125445_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125416125429_ _g125417125432_)))))
                              (let ()
                                (declare (not safe))
                                (_g125416125429_ _g125417125432_)))))
                      (let ()
                        (declare (not safe))
                        (_g125416125429_ _g125417125432_))))))
          (declare (not safe))
          (_g125415125462_ _ann125414_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125361_ _ann125362_)
        (let* ((_g125364125377_
                (lambda (_g125365125374_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125365125374_))))
               (_g125363125410_
                (lambda (_g125365125380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125365125380_))
                      (let ((_e125369125382_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125365125380_))))
                        (let ((_hd125368125385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125369125382_)))
                              (_tl125367125387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125369125382_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125367125387_))
                              (let ((_e125372125390_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125367125387_))))
                                (let ((_hd125371125393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125372125390_)))
                                      (_tl125370125395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125372125390_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125370125395_))
                                      ((lambda (_L125398_)
                                         (let ((__tmp128981
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125398_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128981)))
                                       _hd125371125393_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125364125377_ _g125365125380_)))))
                              (let ()
                                (declare (not safe))
                                (_g125364125377_ _g125365125380_)))))
                      (let ()
                        (declare (not safe))
                        (_g125364125377_ _g125365125380_))))))
          (declare (not safe))
          (_g125363125410_ _ann125362_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125277_ _ann125278_)
        (let* ((_g125280125301_
                (lambda (_g125281125298_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125281125298_))))
               (_g125279125358_
                (lambda (_g125281125304_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125281125304_))
                      (let ((_e125287125306_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125281125304_))))
                        (let ((_hd125286125309_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125287125306_)))
                              (_tl125285125311_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125287125306_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125285125311_))
                              (let ((_e125290125314_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125285125311_))))
                                (let ((_hd125289125317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125290125314_)))
                                      (_tl125288125319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125290125314_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125288125319_))
                                      (let ((_e125293125322_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125288125319_))))
                                        (let ((_hd125292125325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125293125322_)))
                                              (_tl125291125327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125293125322_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125291125327_))
                                              (let ((_e125296125330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125291125327_))))
                                                (let ((_hd125295125333_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125296125330_)))
                                                      (_tl125294125335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125296125330_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125294125335_))
                                                      ((lambda (_L125338_
                                                                _L125339_
                                                                _L125340_)
                                                         (let ((__tmp128984
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125340_)))
                       (__tmp128983
                        (let () (declare (not safe)) (gx#stx-e _L125339_)))
                       (__tmp128982
                        (let () (declare (not safe)) (gx#stx-e _L125338_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128984
                    __tmp128983
                    __tmp128982)))
               _hd125295125333_
               _hd125292125325_
               _hd125289125317_)
              (let ()
                (declare (not safe))
                (_g125280125301_ _g125281125304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125280125301_
                                                 _g125281125304_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125280125301_ _g125281125304_)))))
                              (let ()
                                (declare (not safe))
                                (_g125280125301_ _g125281125304_)))))
                      (let ()
                        (declare (not safe))
                        (_g125280125301_ _g125281125304_))))))
          (declare (not safe))
          (_g125279125358_ _ann125278_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125193_ _ann125194_)
        (let* ((_g125196125217_
                (lambda (_g125197125214_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125197125214_))))
               (_g125195125274_
                (lambda (_g125197125220_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125197125220_))
                      (let ((_e125203125222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125197125220_))))
                        (let ((_hd125202125225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125203125222_)))
                              (_tl125201125227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125203125222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125201125227_))
                              (let ((_e125206125230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125201125227_))))
                                (let ((_hd125205125233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125206125230_)))
                                      (_tl125204125235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125206125230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125204125235_))
                                      (let ((_e125209125238_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125204125235_))))
                                        (let ((_hd125208125241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125209125238_)))
                                              (_tl125207125243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125209125238_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125207125243_))
                                              (let ((_e125212125246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125207125243_))))
                                                (let ((_hd125211125249_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125212125246_)))
                                                      (_tl125210125251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125212125246_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125210125251_))
                                                      ((lambda (_L125254_
                                                                _L125255_
                                                                _L125256_)
                                                         (let ((__tmp128987
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125256_)))
                       (__tmp128986
                        (let () (declare (not safe)) (gx#stx-e _L125255_)))
                       (__tmp128985
                        (let () (declare (not safe)) (gx#stx-e _L125254_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128987
                    __tmp128986
                    __tmp128985)))
               _hd125211125249_
               _hd125208125241_
               _hd125205125233_)
              (let ()
                (declare (not safe))
                (_g125196125217_ _g125197125220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125196125217_
                                                 _g125197125220_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125196125217_ _g125197125220_)))))
                              (let ()
                                (declare (not safe))
                                (_g125196125217_ _g125197125220_)))))
                      (let ()
                        (declare (not safe))
                        (_g125196125217_ _g125197125220_))))))
          (declare (not safe))
          (_g125195125274_ _ann125194_))))
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
    (define gxc#basic-expression-type-lambda%
      (lambda (_self124312_ _stx124313_)
        (let* ((___stx127248127249_ _stx124313_)
               (_g124319124515_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127248127249_)))))
          (let ((___kont127250127251_
                 (lambda (_L125181_)
                   (let ((__obj128928
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128928
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125181_))
                      '#f)
                     __obj128928)))
                (___kont127252127253_
                 (lambda (_L125108_
                          _L125109_
                          _L125110_
                          _L125111_
                          _L125112_
                          _L125113_)
                   (let* ((_tab125163_
                           (let () (declare (not safe)) (gx#stx-e _L125110_)))
                          (_keys125165_
                           (if _tab125163_
                               (filter values (vector->list _tab125163_))
                               '#f)))
                     (let ((__tmp128988
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L125109_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125165_
                        __tmp128988)))))
                (___kont127254127255_
                 (lambda (_L124841_
                          _L124842_
                          _L124843_
                          _L124844_
                          _L124845_
                          _L124846_
                          _L124847_
                          _L124848_
                          _L124849_
                          _L124850_)
                   (let ((__tmp128990
                          (map gx#stx-e
                               (let ((__tmp128991
                                      (lambda (_g124943124946_ _g124944124948_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124943124946_
                                                _g124944124948_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128991 '() _L124843_))))
                         (__tmp128989
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124847_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128990
                      __tmp128989))))
                (___kont127258127259_
                 (lambda (_L124551_)
                   (let ((__obj128929
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128929
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124551_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124551_)))
                     __obj128929)))
                (___kont127260127261_
                 (lambda (_L124528_)
                   (let ((__obj128930
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128930
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124528_))
                      '#f)
                     __obj128930))))
            (let* ((___match127567127568_
                    (lambda (_e124506124543_ _hd124505124546_ _tl124504124548_)
                      (let ((_L124551_ _tl124504124548_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124551_))
                            (___kont127258127259_ _L124551_)
                            (___kont127260127261_ _tl124504124548_)))))
                   (___match127561127562_
                    (lambda (_e124400124565_
                             _hd124399124568_
                             _tl124398124570_
                             _e124403124573_
                             _hd124402124576_
                             _tl124401124578_
                             _e124406124581_
                             _hd124405124584_
                             _tl124404124586_
                             _e124409124589_
                             _hd124408124592_
                             _tl124407124594_
                             _e124412124597_
                             _hd124411124600_
                             _tl124410124602_
                             _e124415124605_
                             _hd124414124608_
                             _tl124413124610_
                             _e124418124613_
                             _hd124417124616_
                             _tl124416124618_
                             _e124421124621_
                             _hd124420124624_
                             _tl124419124626_
                             _e124424124629_
                             _hd124423124632_
                             _tl124422124634_
                             _e124427124637_
                             _hd124426124640_
                             _tl124425124642_
                             _e124430124645_
                             _hd124429124648_
                             _tl124428124650_
                             _e124433124653_
                             _hd124432124656_
                             _tl124431124658_
                             _e124436124661_
                             _hd124435124664_
                             _tl124434124666_
                             _e124439124669_
                             _hd124438124672_
                             _tl124437124674_
                             ___splice127256127257_
                             _target124440124677_
                             _tl124442124679_
                             _e124457124682_
                             _hd124456124685_
                             _tl124455124687_
                             _e124460124690_
                             _hd124459124693_
                             _tl124458124695_
                             _e124463124698_
                             _hd124462124701_
                             _tl124461124703_)
                      (letrec ((_loop124443124706_
                                (lambda (_hd124441124709_
                                         _-absent-value124447124711_
                                         _key124448124713_
                                         _-xkwvar124449124715_
                                         _-hash-ref124450124717_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124441124709_))
                                      (let ((_e124444124720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124441124709_))))
                                        (let ((_lp-tl124446124725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124444124720_)))
                                              (_lp-hd124445124723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124444124720_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124445124723_))
                                              (let ((_e124466124728_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124445124723_))))
                                                (let ((_tl124464124733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124466124728_)))
                                                      (_hd124465124731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124466124728_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124465124731_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124465124731_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124464124733_))
                      (let ((_e124469124736_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124464124733_))))
                        (let ((_tl124467124741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124469124736_)))
                              (_hd124468124739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124469124736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124468124739_))
                              (let ((_e124472124744_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124468124739_))))
                                (let ((_tl124470124749_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124472124744_)))
                                      (_hd124471124747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124472124744_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124471124747_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124471124747_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124470124749_))
                                              (let ((_e124475124752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124470124749_))))
                                                (let ((_tl124473124757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124475124752_)))
                                                      (_hd124474124755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124475124752_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124473124757_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124467124741_))
                                                          (let ((_e124478124760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124467124741_))))
                    (let ((_tl124476124765_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124478124760_)))
                          (_hd124477124763_
                           (let ()
                             (declare (not safe))
                             (##car _e124478124760_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124477124763_))
                          (let ((_e124481124768_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124477124763_))))
                            (let ((_tl124479124773_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124481124768_)))
                                  (_hd124480124771_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124481124768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124480124771_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124480124771_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124479124773_))
                                          (let ((_e124484124776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124479124773_))))
                                            (let ((_tl124482124781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124484124776_)))
                                                  (_hd124483124779_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124484124776_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124482124781_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124476124765_))
                                                      (let ((_e124487124784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124476124765_))))
                (let ((_tl124485124789_
                       (let () (declare (not safe)) (##cdr _e124487124784_)))
                      (_hd124486124787_
                       (let () (declare (not safe)) (##car _e124487124784_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124486124787_))
                      (let ((_e124490124792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124486124787_))))
                        (let ((_tl124488124797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124490124792_)))
                              (_hd124489124795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124490124792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124489124795_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124489124795_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124488124797_))
                                      (let ((_e124493124800_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124488124797_))))
                                        (let ((_tl124491124805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124493124800_)))
                                              (_hd124492124803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124493124800_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124491124805_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124485124789_))
                                                  (let ((_e124496124808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124485124789_))))
                                                    (let ((_tl124494124813_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124496124808_)))
                                                          (_hd124495124811_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124496124808_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124495124811_))
                                                          (let ((_e124499124816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124495124811_))))
                    (let ((_tl124497124821_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124499124816_)))
                          (_hd124498124819_
                           (let ()
                             (declare (not safe))
                             (##car _e124499124816_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124498124819_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124498124819_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124497124821_))
                                  (let ((_e124502124824_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124497124821_))))
                                    (let ((_tl124500124829_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124502124824_)))
                                          (_hd124501124827_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124502124824_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124500124829_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124494124813_))
                                              (let ((__tmp129006
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124501124827_
                                                             _-absent-value124447124711_)))
                                                    (__tmp129005
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124492124803_
                                                             _key124448124713_)))
                                                    (__tmp129004
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124483124779_
                                                             _-xkwvar124449124715_)))
                                                    (__tmp129003
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124474124755_
                                                             _-hash-ref124450124717_))))
                                                (declare (not safe))
                                                (_loop124443124706_
                                                 _lp-tl124446124725_
                                                 __tmp129006
                                                 __tmp129005
                                                 __tmp129004
                                                 __tmp129003))
                                              (___match127567127568_
                                               _e124400124565_
                                               _hd124399124568_
                                               _tl124398124570_))
                                          (___match127567127568_
                                           _e124400124565_
                                           _hd124399124568_
                                           _tl124398124570_))))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))
                              (___match127567127568_
                               _e124400124565_
                               _hd124399124568_
                               _tl124398124570_))
                          (___match127567127568_
                           _e124400124565_
                           _hd124399124568_
                           _tl124398124570_))))
                  (___match127567127568_
                   _e124400124565_
                   _hd124399124568_
                   _tl124398124570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_))
                                              (___match127567127568_
                                               _e124400124565_
                                               _hd124399124568_
                                               _tl124398124570_))))
                                      (___match127567127568_
                                       _e124400124565_
                                       _hd124399124568_
                                       _tl124398124570_))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))
                              (___match127567127568_
                               _e124400124565_
                               _hd124399124568_
                               _tl124398124570_))))
                      (___match127567127568_
                       _e124400124565_
                       _hd124399124568_
                       _tl124398124570_))))
              (___match127567127568_
               _e124400124565_
               _hd124399124568_
               _tl124398124570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_))))
                                          (___match127567127568_
                                           _e124400124565_
                                           _hd124399124568_
                                           _tl124398124570_))
                                      (___match127567127568_
                                       _e124400124565_
                                       _hd124399124568_
                                       _tl124398124570_))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))))
                          (___match127567127568_
                           _e124400124565_
                           _hd124399124568_
                           _tl124398124570_))))
                  (___match127567127568_
                   _e124400124565_
                   _hd124399124568_
                   _tl124398124570_))
              (___match127567127568_
               _e124400124565_
               _hd124399124568_
               _tl124398124570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127567127568_
                                               _e124400124565_
                                               _hd124399124568_
                                               _tl124398124570_))
                                          (___match127567127568_
                                           _e124400124565_
                                           _hd124399124568_
                                           _tl124398124570_))
                                      (___match127567127568_
                                       _e124400124565_
                                       _hd124399124568_
                                       _tl124398124570_))))
                              (___match127567127568_
                               _e124400124565_
                               _hd124399124568_
                               _tl124398124570_))))
                      (___match127567127568_
                       _e124400124565_
                       _hd124399124568_
                       _tl124398124570_))
                  (___match127567127568_
                   _e124400124565_
                   _hd124399124568_
                   _tl124398124570_))
              (___match127567127568_
               _e124400124565_
               _hd124399124568_
               _tl124398124570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127567127568_
                                               _e124400124565_
                                               _hd124399124568_
                                               _tl124398124570_))))
                                      (let ((_-hash-ref124454124838_
                                             (reverse _-hash-ref124450124717_))
                                            (_-xkwvar124453124836_
                                             (reverse _-xkwvar124449124715_))
                                            (_key124452124834_
                                             (reverse _key124448124713_))
                                            (_-absent-value124451124832_
                                             (reverse _-absent-value124447124711_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124407124594_))
                                            (let ((_L124841_ _hd124462124701_)
                                                  (_L124842_
                                                   _-absent-value124451124832_)
                                                  (_L124843_ _key124452124834_)
                                                  (_L124844_
                                                   _-xkwvar124453124836_)
                                                  (_L124845_
                                                   _-hash-ref124454124838_)
                                                  (_L124846_ _hd124438124672_)
                                                  (_L124847_ _hd124429124648_)
                                                  (_L124848_ _hd124420124624_)
                                                  (_L124849_ _tl124404124586_)
                                                  (_L124850_ _hd124405124584_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124850_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124849_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124848_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124850_
                                                          _L124846_))
                                                       (let ((__tmp129001
                                                              (let ((__tmp129002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124903124906_ _g124904124908_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124903124906_ _g124904124908_)))))
                        (declare (not safe))
                        (foldr1 __tmp129002 '() _L124843_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp129001))
               (let ((__tmp129000
                      (lambda (_g124910124912_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124910124912_
                           'hash-ref))))
                     (__tmp128998
                      (let ((__tmp128999
                             (lambda (_g124914124917_ _g124915124919_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124914124917_ _g124915124919_)))))
                        (declare (not safe))
                        (foldr1 __tmp128999 '() _L124845_))))
                 (declare (not safe))
                 (andmap1 __tmp129000 __tmp128998))
               (let ((__tmp128997
                      (lambda (_g124921124923_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124921124923_
                           'absent-value))))
                     (__tmp128995
                      (let ((__tmp128996
                             (lambda (_g124925124928_ _g124926124930_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124925124928_ _g124926124930_)))))
                        (declare (not safe))
                        (foldr1 __tmp128996 '() _L124842_))))
                 (declare (not safe))
                 (andmap1 __tmp128997 __tmp128995))
               (let ((__tmp128994
                      (lambda (_g124932124934_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124932124934_ _L124850_))))
                     (__tmp128992
                      (let ((__tmp128993
                             (lambda (_g124936124939_ _g124937124941_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124936124939_ _g124937124941_)))))
                        (declare (not safe))
                        (foldr1 __tmp128993 '() _L124844_))))
                 (declare (not safe))
                 (andmap1 __tmp128994 __tmp128992)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127254127255_
                                                   _L124841_
                                                   _L124842_
                                                   _L124843_
                                                   _L124844_
                                                   _L124845_
                                                   _L124846_
                                                   _L124847_
                                                   _L124848_
                                                   _L124849_
                                                   _L124850_)
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_)))
                                            (___match127567127568_
                                             _e124400124565_
                                             _hd124399124568_
                                             _tl124398124570_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124443124706_
                           _target124440124677_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127433127434_
                    (lambda (_e124400124565_
                             _hd124399124568_
                             _tl124398124570_
                             _e124403124573_
                             _hd124402124576_
                             _tl124401124578_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124402124576_))
                          (let ((_e124406124581_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124402124576_))))
                            (let ((_tl124404124586_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124406124581_)))
                                  (_hd124405124584_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124406124581_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124401124578_))
                                  (let ((_e124409124589_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124401124578_))))
                                    (let ((_tl124407124594_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124409124589_)))
                                          (_hd124408124592_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124409124589_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124408124592_))
                                          (let ((_e124412124597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124408124592_))))
                                            (let ((_tl124410124602_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124412124597_)))
                                                  (_hd124411124600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124412124597_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124411124600_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124411124600_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124410124602_))
                                                          (let ((_e124415124605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124410124602_))))
                    (let ((_tl124413124610_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124415124605_)))
                          (_hd124414124608_
                           (let ()
                             (declare (not safe))
                             (##car _e124415124605_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124414124608_))
                          (let ((_e124418124613_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124414124608_))))
                            (let ((_tl124416124618_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124418124613_)))
                                  (_hd124417124616_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124418124613_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124417124616_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124417124616_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124416124618_))
                                          (let ((_e124421124621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124416124618_))))
                                            (let ((_tl124419124626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124421124621_)))
                                                  (_hd124420124624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124421124621_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124419124626_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124413124610_))
                                                      (let ((_e124424124629_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124413124610_))))
                (let ((_tl124422124634_
                       (let () (declare (not safe)) (##cdr _e124424124629_)))
                      (_hd124423124632_
                       (let () (declare (not safe)) (##car _e124424124629_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124423124632_))
                      (let ((_e124427124637_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124423124632_))))
                        (let ((_tl124425124642_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124427124637_)))
                              (_hd124426124640_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124427124637_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124426124640_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124426124640_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124425124642_))
                                      (let ((_e124430124645_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124425124642_))))
                                        (let ((_tl124428124650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124430124645_)))
                                              (_hd124429124648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124430124645_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124428124650_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124422124634_))
                                                  (let ((_e124433124653_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124422124634_))))
                                                    (let ((_tl124431124658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124433124653_)))
                                                          (_hd124432124656_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124433124653_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124432124656_))
                                                          (let ((_e124436124661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124432124656_))))
                    (let ((_tl124434124666_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124436124661_)))
                          (_hd124435124664_
                           (let ()
                             (declare (not safe))
                             (##car _e124436124661_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124435124664_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124435124664_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124434124666_))
                                  (let ((_e124439124669_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124434124666_))))
                                    (let ((_tl124437124674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124439124669_)))
                                          (_hd124438124672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124439124669_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124437124674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124431124658_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124431124658_))
                                                        '1)
                                                  (let ((___splice127256127257_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124431124658_
                                                            '1))))
                                                    (let ((_tl124442124679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127256127257_
                                                              '1)))
                                                          (_target124440124677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127256127257_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124442124679_))
                                                          (let ((_e124457124682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124442124679_))))
                    (let ((_tl124455124687_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124457124682_)))
                          (_hd124456124685_
                           (let ()
                             (declare (not safe))
                             (##car _e124457124682_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124456124685_))
                          (let ((_e124460124690_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124456124685_))))
                            (let ((_tl124458124695_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124460124690_)))
                                  (_hd124459124693_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124460124690_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124459124693_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124459124693_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124458124695_))
                                          (let ((_e124463124698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124458124695_))))
                                            (let ((_tl124461124703_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124463124698_)))
                                                  (_hd124462124701_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124463124698_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124461124703_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124455124687_))
                                                      (___match127561127562_
                                                       _e124400124565_
                                                       _hd124399124568_
                                                       _tl124398124570_
                                                       _e124403124573_
                                                       _hd124402124576_
                                                       _tl124401124578_
                                                       _e124406124581_
                                                       _hd124405124584_
                                                       _tl124404124586_
                                                       _e124409124589_
                                                       _hd124408124592_
                                                       _tl124407124594_
                                                       _e124412124597_
                                                       _hd124411124600_
                                                       _tl124410124602_
                                                       _e124415124605_
                                                       _hd124414124608_
                                                       _tl124413124610_
                                                       _e124418124613_
                                                       _hd124417124616_
                                                       _tl124416124618_
                                                       _e124421124621_
                                                       _hd124420124624_
                                                       _tl124419124626_
                                                       _e124424124629_
                                                       _hd124423124632_
                                                       _tl124422124634_
                                                       _e124427124637_
                                                       _hd124426124640_
                                                       _tl124425124642_
                                                       _e124430124645_
                                                       _hd124429124648_
                                                       _tl124428124650_
                                                       _e124433124653_
                                                       _hd124432124656_
                                                       _tl124431124658_
                                                       _e124436124661_
                                                       _hd124435124664_
                                                       _tl124434124666_
                                                       _e124439124669_
                                                       _hd124438124672_
                                                       _tl124437124674_
                                                       ___splice127256127257_
                                                       _target124440124677_
                                                       _tl124442124679_
                                                       _e124457124682_
                                                       _hd124456124685_
                                                       _tl124455124687_
                                                       _e124460124690_
                                                       _hd124459124693_
                                                       _tl124458124695_
                                                       _e124463124698_
                                                       _hd124462124701_
                                                       _tl124461124703_)
                                                      (___match127567127568_
                                                       _e124400124565_
                                                       _hd124399124568_
                                                       _tl124398124570_))
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_))))
                                          (___match127567127568_
                                           _e124400124565_
                                           _hd124399124568_
                                           _tl124398124570_))
                                      (___match127567127568_
                                       _e124400124565_
                                       _hd124399124568_
                                       _tl124398124570_))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))))
                          (___match127567127568_
                           _e124400124565_
                           _hd124399124568_
                           _tl124398124570_))))
                  (___match127567127568_
                   _e124400124565_
                   _hd124399124568_
                   _tl124398124570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_))
                                              (___match127567127568_
                                               _e124400124565_
                                               _hd124399124568_
                                               _tl124398124570_))
                                          (___match127567127568_
                                           _e124400124565_
                                           _hd124399124568_
                                           _tl124398124570_))))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))
                              (___match127567127568_
                               _e124400124565_
                               _hd124399124568_
                               _tl124398124570_))
                          (___match127567127568_
                           _e124400124565_
                           _hd124399124568_
                           _tl124398124570_))))
                  (___match127567127568_
                   _e124400124565_
                   _hd124399124568_
                   _tl124398124570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_))
                                              (___match127567127568_
                                               _e124400124565_
                                               _hd124399124568_
                                               _tl124398124570_))))
                                      (___match127567127568_
                                       _e124400124565_
                                       _hd124399124568_
                                       _tl124398124570_))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))
                              (___match127567127568_
                               _e124400124565_
                               _hd124399124568_
                               _tl124398124570_))))
                      (___match127567127568_
                       _e124400124565_
                       _hd124399124568_
                       _tl124398124570_))))
              (___match127567127568_
               _e124400124565_
               _hd124399124568_
               _tl124398124570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_))))
                                          (___match127567127568_
                                           _e124400124565_
                                           _hd124399124568_
                                           _tl124398124570_))
                                      (___match127567127568_
                                       _e124400124565_
                                       _hd124399124568_
                                       _tl124398124570_))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))))
                          (___match127567127568_
                           _e124400124565_
                           _hd124399124568_
                           _tl124398124570_))))
                  (___match127567127568_
                   _e124400124565_
                   _hd124399124568_
                   _tl124398124570_))
              (___match127567127568_
               _e124400124565_
               _hd124399124568_
               _tl124398124570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127567127568_
                                                   _e124400124565_
                                                   _hd124399124568_
                                                   _tl124398124570_))))
                                          (___match127567127568_
                                           _e124400124565_
                                           _hd124399124568_
                                           _tl124398124570_))))
                                  (___match127567127568_
                                   _e124400124565_
                                   _hd124399124568_
                                   _tl124398124570_))))
                          (___match127567127568_
                           _e124400124565_
                           _hd124399124568_
                           _tl124398124570_))))
                   (___match127421127422_
                    (lambda (_e124333124956_
                             _hd124332124959_
                             _tl124331124961_
                             _e124336124964_
                             _hd124335124967_
                             _tl124334124969_
                             _e124339124972_
                             _hd124338124975_
                             _tl124337124977_
                             _e124342124980_
                             _hd124341124983_
                             _tl124340124985_
                             _e124345124988_
                             _hd124344124991_
                             _tl124343124993_
                             _e124348124996_
                             _hd124347124999_
                             _tl124346125001_
                             _e124351125004_
                             _hd124350125007_
                             _tl124349125009_
                             _e124354125012_
                             _hd124353125015_
                             _tl124352125017_
                             _e124357125020_
                             _hd124356125023_
                             _tl124355125025_
                             _e124360125028_
                             _hd124359125031_
                             _tl124358125033_
                             _e124363125036_
                             _hd124362125039_
                             _tl124361125041_
                             _e124366125044_
                             _hd124365125047_
                             _tl124364125049_
                             _e124369125052_
                             _hd124368125055_
                             _tl124367125057_
                             _e124372125060_
                             _hd124371125063_
                             _tl124370125065_
                             _e124375125068_
                             _hd124374125071_
                             _tl124373125073_
                             _e124378125076_
                             _hd124377125079_
                             _tl124376125081_
                             _e124381125084_
                             _hd124380125087_
                             _tl124379125089_
                             _e124384125092_
                             _hd124383125095_
                             _tl124382125097_
                             _e124387125100_
                             _hd124386125103_
                             _tl124385125105_)
                      (let ((_L125108_ _hd124386125103_)
                            (_L125109_ _hd124377125079_)
                            (_L125110_ _hd124368125055_)
                            (_L125111_ _hd124359125031_)
                            (_L125112_ _hd124350125007_)
                            (_L125113_ _hd124335124967_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125113_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125112_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L125111_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125113_ _L125108_)))
                            (___kont127252127253_
                             _L125108_
                             _L125109_
                             _L125110_
                             _L125111_
                             _L125112_
                             _L125113_)
                            (___match127433127434_
                             _e124333124956_
                             _hd124332124959_
                             _tl124331124961_
                             _e124336124964_
                             _hd124335124967_
                             _tl124334124969_)))))
                   (___match127275127276_
                    (lambda (_e124333124956_ _hd124332124959_ _tl124331124961_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124331124961_))
                          (let ((_e124336124964_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124331124961_))))
                            (let ((_tl124334124969_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124336124964_)))
                                  (_hd124335124967_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124336124964_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124334124969_))
                                  (let ((_e124339124972_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124334124969_))))
                                    (let ((_tl124337124977_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124339124972_)))
                                          (_hd124338124975_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124339124972_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124338124975_))
                                          (let ((_e124342124980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124338124975_))))
                                            (let ((_tl124340124985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124342124980_)))
                                                  (_hd124341124983_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124342124980_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124341124983_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124341124983_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124340124985_))
                                                          (let ((_e124345124988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124340124985_))))
                    (let ((_tl124343124993_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124345124988_)))
                          (_hd124344124991_
                           (let ()
                             (declare (not safe))
                             (##car _e124345124988_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124344124991_))
                          (let ((_e124348124996_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124344124991_))))
                            (let ((_tl124346125001_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124348124996_)))
                                  (_hd124347124999_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124348124996_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124347124999_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124347124999_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124346125001_))
                                          (let ((_e124351125004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124346125001_))))
                                            (let ((_tl124349125009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124351125004_)))
                                                  (_hd124350125007_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124351125004_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124349125009_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124343124993_))
                                                      (let ((_e124354125012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124343124993_))))
                (let ((_tl124352125017_
                       (let () (declare (not safe)) (##cdr _e124354125012_)))
                      (_hd124353125015_
                       (let () (declare (not safe)) (##car _e124354125012_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124353125015_))
                      (let ((_e124357125020_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124353125015_))))
                        (let ((_tl124355125025_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124357125020_)))
                              (_hd124356125023_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124357125020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124356125023_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124356125023_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124355125025_))
                                      (let ((_e124360125028_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124355125025_))))
                                        (let ((_tl124358125033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124360125028_)))
                                              (_hd124359125031_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124360125028_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124358125033_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124352125017_))
                                                  (let ((_e124363125036_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124352125017_))))
                                                    (let ((_tl124361125041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124363125036_)))
                                                          (_hd124362125039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124363125036_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124362125039_))
                                                          (let ((_e124366125044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124362125039_))))
                    (let ((_tl124364125049_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124366125044_)))
                          (_hd124365125047_
                           (let ()
                             (declare (not safe))
                             (##car _e124366125044_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124365125047_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124365125047_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124364125049_))
                                  (let ((_e124369125052_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124364125049_))))
                                    (let ((_tl124367125057_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124369125052_)))
                                          (_hd124368125055_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124369125052_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124367125057_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124361125041_))
                                              (let ((_e124372125060_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124361125041_))))
                                                (let ((_tl124370125065_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124372125060_)))
                                                      (_hd124371125063_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124372125060_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124371125063_))
                                                      (let ((_e124375125068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124371125063_))))
                (let ((_tl124373125073_
                       (let () (declare (not safe)) (##cdr _e124375125068_)))
                      (_hd124374125071_
                       (let () (declare (not safe)) (##car _e124375125068_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124374125071_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124374125071_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124373125073_))
                              (let ((_e124378125076_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124373125073_))))
                                (let ((_tl124376125081_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124378125076_)))
                                      (_hd124377125079_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124378125076_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124376125081_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124370125065_))
                                          (let ((_e124381125084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124370125065_))))
                                            (let ((_tl124379125089_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124381125084_)))
                                                  (_hd124380125087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124381125084_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124380125087_))
                                                  (let ((_e124384125092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124380125087_))))
                                                    (let ((_tl124382125097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124384125092_)))
                                                          (_hd124383125095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124384125092_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124383125095_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124383125095_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124382125097_))
                          (let ((_e124387125100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124382125097_))))
                            (let ((_tl124385125105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124387125100_)))
                                  (_hd124386125103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124387125100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124385125105_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124379125089_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124337124977_))
                                          (___match127421127422_
                                           _e124333124956_
                                           _hd124332124959_
                                           _tl124331124961_
                                           _e124336124964_
                                           _hd124335124967_
                                           _tl124334124969_
                                           _e124339124972_
                                           _hd124338124975_
                                           _tl124337124977_
                                           _e124342124980_
                                           _hd124341124983_
                                           _tl124340124985_
                                           _e124345124988_
                                           _hd124344124991_
                                           _tl124343124993_
                                           _e124348124996_
                                           _hd124347124999_
                                           _tl124346125001_
                                           _e124351125004_
                                           _hd124350125007_
                                           _tl124349125009_
                                           _e124354125012_
                                           _hd124353125015_
                                           _tl124352125017_
                                           _e124357125020_
                                           _hd124356125023_
                                           _tl124355125025_
                                           _e124360125028_
                                           _hd124359125031_
                                           _tl124358125033_
                                           _e124363125036_
                                           _hd124362125039_
                                           _tl124361125041_
                                           _e124366125044_
                                           _hd124365125047_
                                           _tl124364125049_
                                           _e124369125052_
                                           _hd124368125055_
                                           _tl124367125057_
                                           _e124372125060_
                                           _hd124371125063_
                                           _tl124370125065_
                                           _e124375125068_
                                           _hd124374125071_
                                           _tl124373125073_
                                           _e124378125076_
                                           _hd124377125079_
                                           _tl124376125081_
                                           _e124381125084_
                                           _hd124380125087_
                                           _tl124379125089_
                                           _e124384125092_
                                           _hd124383125095_
                                           _tl124382125097_
                                           _e124387125100_
                                           _hd124386125103_
                                           _tl124385125105_)
                                          (___match127433127434_
                                           _e124333124956_
                                           _hd124332124959_
                                           _tl124331124961_
                                           _e124336124964_
                                           _hd124335124967_
                                           _tl124334124969_))
                                      (___match127433127434_
                                       _e124333124956_
                                       _hd124332124959_
                                       _tl124331124961_
                                       _e124336124964_
                                       _hd124335124967_
                                       _tl124334124969_))
                                  (___match127433127434_
                                   _e124333124956_
                                   _hd124332124959_
                                   _tl124331124961_
                                   _e124336124964_
                                   _hd124335124967_
                                   _tl124334124969_))))
                          (___match127433127434_
                           _e124333124956_
                           _hd124332124959_
                           _tl124331124961_
                           _e124336124964_
                           _hd124335124967_
                           _tl124334124969_))
                      (___match127433127434_
                       _e124333124956_
                       _hd124332124959_
                       _tl124331124961_
                       _e124336124964_
                       _hd124335124967_
                       _tl124334124969_))
                  (___match127433127434_
                   _e124333124956_
                   _hd124332124959_
                   _tl124331124961_
                   _e124336124964_
                   _hd124335124967_
                   _tl124334124969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127433127434_
                                                   _e124333124956_
                                                   _hd124332124959_
                                                   _tl124331124961_
                                                   _e124336124964_
                                                   _hd124335124967_
                                                   _tl124334124969_))))
                                          (___match127433127434_
                                           _e124333124956_
                                           _hd124332124959_
                                           _tl124331124961_
                                           _e124336124964_
                                           _hd124335124967_
                                           _tl124334124969_))
                                      (___match127433127434_
                                       _e124333124956_
                                       _hd124332124959_
                                       _tl124331124961_
                                       _e124336124964_
                                       _hd124335124967_
                                       _tl124334124969_))))
                              (___match127433127434_
                               _e124333124956_
                               _hd124332124959_
                               _tl124331124961_
                               _e124336124964_
                               _hd124335124967_
                               _tl124334124969_))
                          (___match127433127434_
                           _e124333124956_
                           _hd124332124959_
                           _tl124331124961_
                           _e124336124964_
                           _hd124335124967_
                           _tl124334124969_))
                      (___match127433127434_
                       _e124333124956_
                       _hd124332124959_
                       _tl124331124961_
                       _e124336124964_
                       _hd124335124967_
                       _tl124334124969_))))
              (___match127433127434_
               _e124333124956_
               _hd124332124959_
               _tl124331124961_
               _e124336124964_
               _hd124335124967_
               _tl124334124969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127433127434_
                                               _e124333124956_
                                               _hd124332124959_
                                               _tl124331124961_
                                               _e124336124964_
                                               _hd124335124967_
                                               _tl124334124969_))
                                          (___match127433127434_
                                           _e124333124956_
                                           _hd124332124959_
                                           _tl124331124961_
                                           _e124336124964_
                                           _hd124335124967_
                                           _tl124334124969_))))
                                  (___match127433127434_
                                   _e124333124956_
                                   _hd124332124959_
                                   _tl124331124961_
                                   _e124336124964_
                                   _hd124335124967_
                                   _tl124334124969_))
                              (___match127433127434_
                               _e124333124956_
                               _hd124332124959_
                               _tl124331124961_
                               _e124336124964_
                               _hd124335124967_
                               _tl124334124969_))
                          (___match127433127434_
                           _e124333124956_
                           _hd124332124959_
                           _tl124331124961_
                           _e124336124964_
                           _hd124335124967_
                           _tl124334124969_))))
                  (___match127433127434_
                   _e124333124956_
                   _hd124332124959_
                   _tl124331124961_
                   _e124336124964_
                   _hd124335124967_
                   _tl124334124969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127433127434_
                                                   _e124333124956_
                                                   _hd124332124959_
                                                   _tl124331124961_
                                                   _e124336124964_
                                                   _hd124335124967_
                                                   _tl124334124969_))
                                              (___match127433127434_
                                               _e124333124956_
                                               _hd124332124959_
                                               _tl124331124961_
                                               _e124336124964_
                                               _hd124335124967_
                                               _tl124334124969_))))
                                      (___match127433127434_
                                       _e124333124956_
                                       _hd124332124959_
                                       _tl124331124961_
                                       _e124336124964_
                                       _hd124335124967_
                                       _tl124334124969_))
                                  (___match127433127434_
                                   _e124333124956_
                                   _hd124332124959_
                                   _tl124331124961_
                                   _e124336124964_
                                   _hd124335124967_
                                   _tl124334124969_))
                              (___match127433127434_
                               _e124333124956_
                               _hd124332124959_
                               _tl124331124961_
                               _e124336124964_
                               _hd124335124967_
                               _tl124334124969_))))
                      (___match127433127434_
                       _e124333124956_
                       _hd124332124959_
                       _tl124331124961_
                       _e124336124964_
                       _hd124335124967_
                       _tl124334124969_))))
              (___match127433127434_
               _e124333124956_
               _hd124332124959_
               _tl124331124961_
               _e124336124964_
               _hd124335124967_
               _tl124334124969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127433127434_
                                                   _e124333124956_
                                                   _hd124332124959_
                                                   _tl124331124961_
                                                   _e124336124964_
                                                   _hd124335124967_
                                                   _tl124334124969_))))
                                          (___match127433127434_
                                           _e124333124956_
                                           _hd124332124959_
                                           _tl124331124961_
                                           _e124336124964_
                                           _hd124335124967_
                                           _tl124334124969_))
                                      (___match127433127434_
                                       _e124333124956_
                                       _hd124332124959_
                                       _tl124331124961_
                                       _e124336124964_
                                       _hd124335124967_
                                       _tl124334124969_))
                                  (___match127433127434_
                                   _e124333124956_
                                   _hd124332124959_
                                   _tl124331124961_
                                   _e124336124964_
                                   _hd124335124967_
                                   _tl124334124969_))))
                          (___match127433127434_
                           _e124333124956_
                           _hd124332124959_
                           _tl124331124961_
                           _e124336124964_
                           _hd124335124967_
                           _tl124334124969_))))
                  (___match127433127434_
                   _e124333124956_
                   _hd124332124959_
                   _tl124331124961_
                   _e124336124964_
                   _hd124335124967_
                   _tl124334124969_))
              (___match127433127434_
               _e124333124956_
               _hd124332124959_
               _tl124331124961_
               _e124336124964_
               _hd124335124967_
               _tl124334124969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127433127434_
                                                   _e124333124956_
                                                   _hd124332124959_
                                                   _tl124331124961_
                                                   _e124336124964_
                                                   _hd124335124967_
                                                   _tl124334124969_))))
                                          (___match127433127434_
                                           _e124333124956_
                                           _hd124332124959_
                                           _tl124331124961_
                                           _e124336124964_
                                           _hd124335124967_
                                           _tl124334124969_))))
                                  (___match127433127434_
                                   _e124333124956_
                                   _hd124332124959_
                                   _tl124331124961_
                                   _e124336124964_
                                   _hd124335124967_
                                   _tl124334124969_))))
                          (___match127567127568_
                           _e124333124956_
                           _hd124332124959_
                           _tl124331124961_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127248127249_))
                  (let ((_e124324125173_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127248127249_))))
                    (let ((_tl124322125178_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124324125173_)))
                          (_hd124323125176_
                           (let ()
                             (declare (not safe))
                             (##car _e124324125173_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125181_ _tl124322125178_))
                            (___kont127250127251_ _L125181_))
                          (___match127275127276_
                           _e124324125173_
                           _hd124323125176_
                           _tl124322125178_))))
                  (let () (declare (not safe)) (_g124319124515_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self124266_ _stx124267_)
        (letrec ((_clause-e124269_
                  (lambda (_form124310_)
                    (let ((__obj128931
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
                       __obj128931
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124310_))
                       (if (let ((__tmp129007
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp129007))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124310_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124310_))
                               '#f)
                           '#f))
                      __obj128931))))
          (let* ((_g124271124281_
                  (lambda (_g124272124278_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124272124278_))))
                 (_g124270124307_
                  (lambda (_g124272124284_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124272124284_))
                        (let ((_e124276124286_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124272124284_))))
                          (let ((_hd124275124289_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124276124286_)))
                                (_tl124274124291_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124276124286_))))
                            ((lambda (_L124294_)
                               (let ((_clauses124305_
                                      (map _clause-e124269_ _L124294_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124305_)))
                             _tl124274124291_)))
                        (let ()
                          (declare (not safe))
                          (_g124271124281_ _g124272124284_))))))
            (declare (not safe))
            (_g124270124307_ _stx124267_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self124197_ _stx124198_)
        (let* ((_g124200124217_
                (lambda (_g124201124214_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124201124214_))))
               (_g124199124263_
                (lambda (_g124201124220_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124201124220_))
                      (let ((_e124206124222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124201124220_))))
                        (let ((_hd124205124225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124206124222_)))
                              (_tl124204124227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124206124222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124204124227_))
                              (let ((_e124209124230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124204124227_))))
                                (let ((_hd124208124233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124209124230_)))
                                      (_tl124207124235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124209124230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124207124235_))
                                      (let ((_e124212124238_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124207124235_))))
                                        (let ((_hd124211124241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124212124238_)))
                                              (_tl124210124243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124212124238_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124210124243_))
                                              ((lambda (_L124246_ _L124247_)
                                                 (let ((__tmp129008
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self124197_
                                                             _L124246_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp129008
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124211124241_
                                               _hd124208124233_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124200124217_
                                                 _g124201124220_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124200124217_ _g124201124220_)))))
                              (let ()
                                (declare (not safe))
                                (_g124200124217_ _g124201124220_)))))
                      (let ()
                        (declare (not safe))
                        (_g124200124217_ _g124201124220_))))))
          (declare (not safe))
          (_g124199124263_ _stx124198_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self124101_ _stx124102_)
        (let* ((___stx127576127577_ _stx124102_)
               (_g124105124125_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127576127577_)))))
          (let ((___kont127578127579_
                 (lambda (_L124169_ _L124170_)
                   (let ((_type-e124187124189_
                          (let ((__tmp129009
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124170_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp129009))))
                     (if _type-e124187124189_
                         (let ((_type-e124192_ _type-e124187124189_))
                           (_type-e124192_ _stx124102_ _L124169_))
                         '#f))))
                (___kont127580127581_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127576127577_))
                (let ((_e124111124137_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127576127577_))))
                  (let ((_tl124109124142_
                         (let () (declare (not safe)) (##cdr _e124111124137_)))
                        (_hd124110124140_
                         (let ()
                           (declare (not safe))
                           (##car _e124111124137_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124109124142_))
                        (let ((_e124114124145_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124109124142_))))
                          (let ((_tl124112124150_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124114124145_)))
                                (_hd124113124148_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124114124145_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124113124148_))
                                (let ((_e124117124153_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124113124148_))))
                                  (let ((_tl124115124158_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124117124153_)))
                                        (_hd124116124156_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124117124153_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124116124156_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124116124156_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124115124158_))
                                                (let ((_e124120124161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124115124158_))))
                                                  (let ((_tl124118124166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124120124161_)))
                                                        (_hd124119124164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124120124161_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124118124166_))
                                                        (___kont127578127579_
                                                         _tl124112124150_
                                                         _hd124119124164_)
                                                        (___kont127580127581_))))
                                                (___kont127580127581_))
                                            (___kont127580127581_))
                                        (___kont127580127581_))))
                                (___kont127580127581_))))
                        (___kont127580127581_))))
                (___kont127580127581_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self124049_ _stx124050_)
        (let* ((_g124052124065_
                (lambda (_g124053124062_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124053124062_))))
               (_g124051124098_
                (lambda (_g124053124068_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124053124068_))
                      (let ((_e124057124070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124053124068_))))
                        (let ((_hd124056124073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124057124070_)))
                              (_tl124055124075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124057124070_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124055124075_))
                              (let ((_e124060124078_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124055124075_))))
                                (let ((_hd124059124081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124060124078_)))
                                      (_tl124058124083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124060124078_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124058124083_))
                                      ((lambda (_L124086_)
                                         (let ((__tmp129010
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124086_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp129010)))
                                       _hd124059124081_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124052124065_ _g124053124068_)))))
                              (let ()
                                (declare (not safe))
                                (_g124052124065_ _g124053124068_)))))
                      (let ()
                        (declare (not safe))
                        (_g124052124065_ _g124053124068_))))))
          (declare (not safe))
          (_g124051124098_ _stx124050_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123283_)
        (let* ((___stx127614127615_ _form123283_)
               (_g123288123445_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127614127615_)))))
          (let ((___kont127616127617_
                 (lambda (_L123969_ _L123970_ _L123971_) '#t))
                (___kont127622127623_
                 (lambda (_L123757_
                          _L123758_
                          _L123759_
                          _L123760_
                          _L123761_
                          _L123762_)
                   '#t))
                (___kont127628127629_
                 (lambda (_L123553_ _L123554_ _L123555_ _L123556_) '#t))
                (___kont127630127631_ (lambda () '#f)))
            (let* ((___match127755127756_
                    (lambda (_e123407123457_
                             _hd123406123460_
                             _tl123405123462_
                             _e123410123465_
                             _hd123409123468_
                             _tl123408123470_
                             _e123413123473_
                             _hd123412123476_
                             _tl123411123478_
                             _e123416123481_
                             _hd123415123484_
                             _tl123414123486_
                             _e123419123489_
                             _hd123418123492_
                             _tl123417123494_
                             _e123422123497_
                             _hd123421123500_
                             _tl123420123502_
                             _e123425123505_
                             _hd123424123508_
                             _tl123423123510_
                             _e123428123513_
                             _hd123427123516_
                             _tl123426123518_
                             _e123431123521_
                             _hd123430123524_
                             _tl123429123526_
                             _e123434123529_
                             _hd123433123532_
                             _tl123432123534_
                             _e123437123537_
                             _hd123436123540_
                             _tl123435123542_
                             _e123440123545_
                             _hd123439123548_
                             _tl123438123550_)
                      (let ((_L123553_ _hd123439123548_)
                            (_L123554_ _hd123430123524_)
                            (_L123555_ _hd123421123500_)
                            (_L123556_ _hd123406123460_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123556_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123555_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123556_ _L123553_))
                                 (let ((__tmp129011
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123554_
                                           _L123556_))))
                                   (declare (not safe))
                                   (not __tmp129011)))
                            (___kont127628127629_
                             _L123553_
                             _L123554_
                             _L123555_
                             _L123556_)
                            (___kont127630127631_)))))
                   (___match127727127728_
                    (lambda (_e123407123457_
                             _hd123406123460_
                             _tl123405123462_
                             _e123410123465_
                             _hd123409123468_
                             _tl123408123470_
                             _e123413123473_
                             _hd123412123476_
                             _tl123411123478_
                             _e123416123481_
                             _hd123415123484_
                             _tl123414123486_
                             _e123419123489_
                             _hd123418123492_
                             _tl123417123494_
                             _e123422123497_
                             _hd123421123500_
                             _tl123420123502_
                             _e123425123505_
                             _hd123424123508_
                             _tl123423123510_
                             _e123428123513_
                             _hd123427123516_
                             _tl123426123518_
                             _e123431123521_
                             _hd123430123524_
                             _tl123429123526_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123423123510_))
                          (let ((_e123434123529_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123423123510_))))
                            (let ((_tl123432123534_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123434123529_)))
                                  (_hd123433123532_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123434123529_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123433123532_))
                                  (let ((_e123437123537_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123433123532_))))
                                    (let ((_tl123435123542_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123437123537_)))
                                          (_hd123436123540_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123437123537_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123436123540_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123436123540_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123435123542_))
                                                  (let ((_e123440123545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123435123542_))))
                                                    (let ((_tl123438123550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123440123545_)))
                                                          (_hd123439123548_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123440123545_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123438123550_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123432123534_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123408123470_))
                          (___match127755127756_
                           _e123407123457_
                           _hd123406123460_
                           _tl123405123462_
                           _e123410123465_
                           _hd123409123468_
                           _tl123408123470_
                           _e123413123473_
                           _hd123412123476_
                           _tl123411123478_
                           _e123416123481_
                           _hd123415123484_
                           _tl123414123486_
                           _e123419123489_
                           _hd123418123492_
                           _tl123417123494_
                           _e123422123497_
                           _hd123421123500_
                           _tl123420123502_
                           _e123425123505_
                           _hd123424123508_
                           _tl123423123510_
                           _e123428123513_
                           _hd123427123516_
                           _tl123426123518_
                           _e123431123521_
                           _hd123430123524_
                           _tl123429123526_
                           _e123434123529_
                           _hd123433123532_
                           _tl123432123534_
                           _e123437123537_
                           _hd123436123540_
                           _tl123435123542_
                           _e123440123545_
                           _hd123439123548_
                           _tl123438123550_)
                          (___kont127630127631_))
                      (___kont127630127631_))
                  (___kont127630127631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127630127631_))
                                              (___kont127630127631_))
                                          (___kont127630127631_))))
                                  (___kont127630127631_))))
                          (___kont127630127631_))))
                   (___match127657127658_
                    (lambda (_e123343123597_
                             _hd123342123600_
                             _tl123341123602_
                             ___splice127624127625_
                             _target123344123605_
                             _tl123346123607_)
                      (letrec ((_loop123347123610_
                                (lambda (_hd123345123613_ _arg123351123615_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123345123613_))
                                      (let ((_e123348123618_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123345123613_))))
                                        (let ((_lp-tl123350123623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123348123618_)))
                                              (_lp-hd123349123621_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123348123618_))))
                                          (let ((__tmp129026
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123349123621_
                                                         _arg123351123615_))))
                                            (declare (not safe))
                                            (_loop123347123610_
                                             _lp-tl123350123623_
                                             __tmp129026))))
                                      (let ((_arg123352123626_
                                             (reverse _arg123351123615_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123341123602_))
                                            (let ((_e123355123629_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123341123602_))))
                                              (let ((_tl123353123634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123355123629_)))
                                                    (_hd123354123632_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123355123629_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123354123632_))
                                                    (let ((_e123358123637_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123354123632_))))
                                                      (let ((_tl123356123642_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123358123637_)))
                    (_hd123357123640_
                     (let () (declare (not safe)) (##car _e123358123637_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123357123640_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123357123640_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123356123642_))
                            (let ((_e123361123645_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123356123642_))))
                              (let ((_tl123359123650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123361123645_)))
                                    (_hd123360123648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123361123645_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123360123648_))
                                    (let ((_e123364123653_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123360123648_))))
                                      (let ((_tl123362123658_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123364123653_)))
                                            (_hd123363123656_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123364123653_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123363123656_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123363123656_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123362123658_))
                                                    (let ((_e123367123661_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123362123658_))))
                                                      (let ((_tl123365123666_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123367123661_)))
                    (_hd123366123664_
                     (let () (declare (not safe)) (##car _e123367123661_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123365123666_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123359123650_))
                        (let ((_e123370123669_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123359123650_))))
                          (let ((_tl123368123674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123370123669_)))
                                (_hd123369123672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123370123669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123369123672_))
                                (let ((_e123373123677_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123369123672_))))
                                  (let ((_tl123371123682_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123373123677_)))
                                        (_hd123372123680_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123373123677_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123372123680_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123372123680_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123371123682_))
                                                (let ((_e123376123685_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123371123682_))))
                                                  (let ((_tl123374123690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123376123685_)))
                                                        (_hd123375123688_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123376123685_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123374123690_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123368123674_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123368123674_))
                              '1)
                        (let ((___splice127626127627_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123368123674_
                                  '1))))
                          (let ((_tl123379123695_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127626127627_ '1)))
                                (_target123377123693_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127626127627_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123379123695_))
                                (let ((_e123388123698_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123379123695_))))
                                  (let ((_tl123386123703_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123388123698_)))
                                        (_hd123387123701_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123388123698_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123387123701_))
                                        (let ((_e123391123706_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123387123701_))))
                                          (let ((_tl123389123711_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123391123706_)))
                                                (_hd123390123709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123391123706_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123390123709_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123390123709_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123389123711_))
                                                        (let ((_e123394123714_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123389123711_))))
                  (let ((_tl123392123719_
                         (let () (declare (not safe)) (##cdr _e123394123714_)))
                        (_hd123393123717_
                         (let ()
                           (declare (not safe))
                           (##car _e123394123714_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123392123719_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123386123703_))
                            (letrec ((_loop123380123722_
                                      (lambda (_hd123378123725_
                                               _xarg123384123727_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123378123725_))
                                            (let ((_e123381123730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123378123725_))))
                                              (let ((_lp-tl123383123735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123381123730_)))
                                                    (_lp-hd123382123733_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123381123730_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123382123733_))
                                                    (let ((_e123397123738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123382123733_))))
                                                      (let ((_tl123395123743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123397123738_)))
                    (_hd123396123741_
                     (let () (declare (not safe)) (##car _e123397123738_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123396123741_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123396123741_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123395123743_))
                            (let ((_e123400123746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123395123743_))))
                              (let ((_tl123398123751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123400123746_)))
                                    (_hd123399123749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123400123746_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123398123751_))
                                    (let ((__tmp129025
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123399123749_
                                                   _xarg123384123727_))))
                                      (declare (not safe))
                                      (_loop123380123722_
                                       _lp-tl123383123735_
                                       __tmp129025))
                                    (___match127727127728_
                                     _e123343123597_
                                     _hd123342123600_
                                     _tl123341123602_
                                     _e123355123629_
                                     _hd123354123632_
                                     _tl123353123634_
                                     _e123358123637_
                                     _hd123357123640_
                                     _tl123356123642_
                                     _e123361123645_
                                     _hd123360123648_
                                     _tl123359123650_
                                     _e123364123653_
                                     _hd123363123656_
                                     _tl123362123658_
                                     _e123367123661_
                                     _hd123366123664_
                                     _tl123365123666_
                                     _e123370123669_
                                     _hd123369123672_
                                     _tl123368123674_
                                     _e123373123677_
                                     _hd123372123680_
                                     _tl123371123682_
                                     _e123376123685_
                                     _hd123375123688_
                                     _tl123374123690_))))
                            (___match127727127728_
                             _e123343123597_
                             _hd123342123600_
                             _tl123341123602_
                             _e123355123629_
                             _hd123354123632_
                             _tl123353123634_
                             _e123358123637_
                             _hd123357123640_
                             _tl123356123642_
                             _e123361123645_
                             _hd123360123648_
                             _tl123359123650_
                             _e123364123653_
                             _hd123363123656_
                             _tl123362123658_
                             _e123367123661_
                             _hd123366123664_
                             _tl123365123666_
                             _e123370123669_
                             _hd123369123672_
                             _tl123368123674_
                             _e123373123677_
                             _hd123372123680_
                             _tl123371123682_
                             _e123376123685_
                             _hd123375123688_
                             _tl123374123690_))
                        (___match127727127728_
                         _e123343123597_
                         _hd123342123600_
                         _tl123341123602_
                         _e123355123629_
                         _hd123354123632_
                         _tl123353123634_
                         _e123358123637_
                         _hd123357123640_
                         _tl123356123642_
                         _e123361123645_
                         _hd123360123648_
                         _tl123359123650_
                         _e123364123653_
                         _hd123363123656_
                         _tl123362123658_
                         _e123367123661_
                         _hd123366123664_
                         _tl123365123666_
                         _e123370123669_
                         _hd123369123672_
                         _tl123368123674_
                         _e123373123677_
                         _hd123372123680_
                         _tl123371123682_
                         _e123376123685_
                         _hd123375123688_
                         _tl123374123690_))
                    (___match127727127728_
                     _e123343123597_
                     _hd123342123600_
                     _tl123341123602_
                     _e123355123629_
                     _hd123354123632_
                     _tl123353123634_
                     _e123358123637_
                     _hd123357123640_
                     _tl123356123642_
                     _e123361123645_
                     _hd123360123648_
                     _tl123359123650_
                     _e123364123653_
                     _hd123363123656_
                     _tl123362123658_
                     _e123367123661_
                     _hd123366123664_
                     _tl123365123666_
                     _e123370123669_
                     _hd123369123672_
                     _tl123368123674_
                     _e123373123677_
                     _hd123372123680_
                     _tl123371123682_
                     _e123376123685_
                     _hd123375123688_
                     _tl123374123690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127727127728_
                                                     _e123343123597_
                                                     _hd123342123600_
                                                     _tl123341123602_
                                                     _e123355123629_
                                                     _hd123354123632_
                                                     _tl123353123634_
                                                     _e123358123637_
                                                     _hd123357123640_
                                                     _tl123356123642_
                                                     _e123361123645_
                                                     _hd123360123648_
                                                     _tl123359123650_
                                                     _e123364123653_
                                                     _hd123363123656_
                                                     _tl123362123658_
                                                     _e123367123661_
                                                     _hd123366123664_
                                                     _tl123365123666_
                                                     _e123370123669_
                                                     _hd123369123672_
                                                     _tl123368123674_
                                                     _e123373123677_
                                                     _hd123372123680_
                                                     _tl123371123682_
                                                     _e123376123685_
                                                     _hd123375123688_
                                                     _tl123374123690_))))
                                            (let ((_xarg123385123754_
                                                   (reverse _xarg123384123727_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123353123634_))
                                                  (let ((_L123757_
                                                         _hd123393123717_)
                                                        (_L123758_
                                                         _xarg123385123754_)
                                                        (_L123759_
                                                         _hd123375123688_)
                                                        (_L123760_
                                                         _hd123366123664_)
                                                        (_L123761_
                                                         _tl123346123607_)
                                                        (_L123762_
                                                         _arg123352123626_))
                                                    (if (and (let ((__tmp129023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129024
                                   (lambda (_g123805123808_ _g123806123810_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123805123808_
                                             _g123806123810_)))))
                              (declare (not safe))
                              (foldr1 __tmp129024 '() _L123762_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp129023))
                     (let () (declare (not safe)) (gx#identifier? _L123761_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123760_ 'apply))
                     (fx= (length (let ((__tmp129021
                                         (lambda (_g123812123815_
                                                  _g123813123817_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123812123815_
                                                   _g123813123817_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129021 '() _L123762_)))
                          (length (let ((__tmp129022
                                         (lambda (_g123819123822_
                                                  _g123820123824_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123819123822_
                                                   _g123820123824_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp129022 '() _L123758_))))
                     (let ((__tmp129019
                            (let ((__tmp129020
                                   (lambda (_g123826123829_ _g123827123831_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123826123829_
                                             _g123827123831_)))))
                              (declare (not safe))
                              (foldr1 __tmp129020 '() _L123762_)))
                           (__tmp129017
                            (let ((__tmp129018
                                   (lambda (_g123833123836_ _g123834123838_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123833123836_
                                             _g123834123838_)))))
                              (declare (not safe))
                              (foldr1 __tmp129018 '() _L123758_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp129019 __tmp129017))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123761_ _L123757_))
                     (let ((__tmp129012
                            (let ((__tmp129016
                                   (lambda (_g123840123842_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123840123842_
                                        _L123759_))))
                                  (__tmp129013
                                   (let ((__tmp129015
                                          (lambda (_g123844123847_
                                                   _g123845123849_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123844123847_
                                                    _g123845123849_))))
                                         (__tmp129014
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123761_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp129015
                                             __tmp129014
                                             _L123762_))))
                              (declare (not safe))
                              (find __tmp129016 __tmp129013))))
                       (declare (not safe))
                       (not __tmp129012)))
                (___kont127622127623_
                 _L123757_
                 _L123758_
                 _L123759_
                 _L123760_
                 _L123761_
                 _L123762_)
                (___match127727127728_
                 _e123343123597_
                 _hd123342123600_
                 _tl123341123602_
                 _e123355123629_
                 _hd123354123632_
                 _tl123353123634_
                 _e123358123637_
                 _hd123357123640_
                 _tl123356123642_
                 _e123361123645_
                 _hd123360123648_
                 _tl123359123650_
                 _e123364123653_
                 _hd123363123656_
                 _tl123362123658_
                 _e123367123661_
                 _hd123366123664_
                 _tl123365123666_
                 _e123370123669_
                 _hd123369123672_
                 _tl123368123674_
                 _e123373123677_
                 _hd123372123680_
                 _tl123371123682_
                 _e123376123685_
                 _hd123375123688_
                 _tl123374123690_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127727127728_
                                                   _e123343123597_
                                                   _hd123342123600_
                                                   _tl123341123602_
                                                   _e123355123629_
                                                   _hd123354123632_
                                                   _tl123353123634_
                                                   _e123358123637_
                                                   _hd123357123640_
                                                   _tl123356123642_
                                                   _e123361123645_
                                                   _hd123360123648_
                                                   _tl123359123650_
                                                   _e123364123653_
                                                   _hd123363123656_
                                                   _tl123362123658_
                                                   _e123367123661_
                                                   _hd123366123664_
                                                   _tl123365123666_
                                                   _e123370123669_
                                                   _hd123369123672_
                                                   _tl123368123674_
                                                   _e123373123677_
                                                   _hd123372123680_
                                                   _tl123371123682_
                                                   _e123376123685_
                                                   _hd123375123688_
                                                   _tl123374123690_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123380123722_ _target123377123693_ '())))
                            (___match127727127728_
                             _e123343123597_
                             _hd123342123600_
                             _tl123341123602_
                             _e123355123629_
                             _hd123354123632_
                             _tl123353123634_
                             _e123358123637_
                             _hd123357123640_
                             _tl123356123642_
                             _e123361123645_
                             _hd123360123648_
                             _tl123359123650_
                             _e123364123653_
                             _hd123363123656_
                             _tl123362123658_
                             _e123367123661_
                             _hd123366123664_
                             _tl123365123666_
                             _e123370123669_
                             _hd123369123672_
                             _tl123368123674_
                             _e123373123677_
                             _hd123372123680_
                             _tl123371123682_
                             _e123376123685_
                             _hd123375123688_
                             _tl123374123690_))
                        (___match127727127728_
                         _e123343123597_
                         _hd123342123600_
                         _tl123341123602_
                         _e123355123629_
                         _hd123354123632_
                         _tl123353123634_
                         _e123358123637_
                         _hd123357123640_
                         _tl123356123642_
                         _e123361123645_
                         _hd123360123648_
                         _tl123359123650_
                         _e123364123653_
                         _hd123363123656_
                         _tl123362123658_
                         _e123367123661_
                         _hd123366123664_
                         _tl123365123666_
                         _e123370123669_
                         _hd123369123672_
                         _tl123368123674_
                         _e123373123677_
                         _hd123372123680_
                         _tl123371123682_
                         _e123376123685_
                         _hd123375123688_
                         _tl123374123690_))))
                (___match127727127728_
                 _e123343123597_
                 _hd123342123600_
                 _tl123341123602_
                 _e123355123629_
                 _hd123354123632_
                 _tl123353123634_
                 _e123358123637_
                 _hd123357123640_
                 _tl123356123642_
                 _e123361123645_
                 _hd123360123648_
                 _tl123359123650_
                 _e123364123653_
                 _hd123363123656_
                 _tl123362123658_
                 _e123367123661_
                 _hd123366123664_
                 _tl123365123666_
                 _e123370123669_
                 _hd123369123672_
                 _tl123368123674_
                 _e123373123677_
                 _hd123372123680_
                 _tl123371123682_
                 _e123376123685_
                 _hd123375123688_
                 _tl123374123690_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127727127728_
                                                     _e123343123597_
                                                     _hd123342123600_
                                                     _tl123341123602_
                                                     _e123355123629_
                                                     _hd123354123632_
                                                     _tl123353123634_
                                                     _e123358123637_
                                                     _hd123357123640_
                                                     _tl123356123642_
                                                     _e123361123645_
                                                     _hd123360123648_
                                                     _tl123359123650_
                                                     _e123364123653_
                                                     _hd123363123656_
                                                     _tl123362123658_
                                                     _e123367123661_
                                                     _hd123366123664_
                                                     _tl123365123666_
                                                     _e123370123669_
                                                     _hd123369123672_
                                                     _tl123368123674_
                                                     _e123373123677_
                                                     _hd123372123680_
                                                     _tl123371123682_
                                                     _e123376123685_
                                                     _hd123375123688_
                                                     _tl123374123690_))
                                                (___match127727127728_
                                                 _e123343123597_
                                                 _hd123342123600_
                                                 _tl123341123602_
                                                 _e123355123629_
                                                 _hd123354123632_
                                                 _tl123353123634_
                                                 _e123358123637_
                                                 _hd123357123640_
                                                 _tl123356123642_
                                                 _e123361123645_
                                                 _hd123360123648_
                                                 _tl123359123650_
                                                 _e123364123653_
                                                 _hd123363123656_
                                                 _tl123362123658_
                                                 _e123367123661_
                                                 _hd123366123664_
                                                 _tl123365123666_
                                                 _e123370123669_
                                                 _hd123369123672_
                                                 _tl123368123674_
                                                 _e123373123677_
                                                 _hd123372123680_
                                                 _tl123371123682_
                                                 _e123376123685_
                                                 _hd123375123688_
                                                 _tl123374123690_))))
                                        (___match127727127728_
                                         _e123343123597_
                                         _hd123342123600_
                                         _tl123341123602_
                                         _e123355123629_
                                         _hd123354123632_
                                         _tl123353123634_
                                         _e123358123637_
                                         _hd123357123640_
                                         _tl123356123642_
                                         _e123361123645_
                                         _hd123360123648_
                                         _tl123359123650_
                                         _e123364123653_
                                         _hd123363123656_
                                         _tl123362123658_
                                         _e123367123661_
                                         _hd123366123664_
                                         _tl123365123666_
                                         _e123370123669_
                                         _hd123369123672_
                                         _tl123368123674_
                                         _e123373123677_
                                         _hd123372123680_
                                         _tl123371123682_
                                         _e123376123685_
                                         _hd123375123688_
                                         _tl123374123690_))))
                                (___match127727127728_
                                 _e123343123597_
                                 _hd123342123600_
                                 _tl123341123602_
                                 _e123355123629_
                                 _hd123354123632_
                                 _tl123353123634_
                                 _e123358123637_
                                 _hd123357123640_
                                 _tl123356123642_
                                 _e123361123645_
                                 _hd123360123648_
                                 _tl123359123650_
                                 _e123364123653_
                                 _hd123363123656_
                                 _tl123362123658_
                                 _e123367123661_
                                 _hd123366123664_
                                 _tl123365123666_
                                 _e123370123669_
                                 _hd123369123672_
                                 _tl123368123674_
                                 _e123373123677_
                                 _hd123372123680_
                                 _tl123371123682_
                                 _e123376123685_
                                 _hd123375123688_
                                 _tl123374123690_))))
                        (___match127727127728_
                         _e123343123597_
                         _hd123342123600_
                         _tl123341123602_
                         _e123355123629_
                         _hd123354123632_
                         _tl123353123634_
                         _e123358123637_
                         _hd123357123640_
                         _tl123356123642_
                         _e123361123645_
                         _hd123360123648_
                         _tl123359123650_
                         _e123364123653_
                         _hd123363123656_
                         _tl123362123658_
                         _e123367123661_
                         _hd123366123664_
                         _tl123365123666_
                         _e123370123669_
                         _hd123369123672_
                         _tl123368123674_
                         _e123373123677_
                         _hd123372123680_
                         _tl123371123682_
                         _e123376123685_
                         _hd123375123688_
                         _tl123374123690_))
                    (___match127727127728_
                     _e123343123597_
                     _hd123342123600_
                     _tl123341123602_
                     _e123355123629_
                     _hd123354123632_
                     _tl123353123634_
                     _e123358123637_
                     _hd123357123640_
                     _tl123356123642_
                     _e123361123645_
                     _hd123360123648_
                     _tl123359123650_
                     _e123364123653_
                     _hd123363123656_
                     _tl123362123658_
                     _e123367123661_
                     _hd123366123664_
                     _tl123365123666_
                     _e123370123669_
                     _hd123369123672_
                     _tl123368123674_
                     _e123373123677_
                     _hd123372123680_
                     _tl123371123682_
                     _e123376123685_
                     _hd123375123688_
                     _tl123374123690_))
                (___kont127630127631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127630127631_))
                                            (___kont127630127631_))
                                        (___kont127630127631_))))
                                (___kont127630127631_))))
                        (___kont127630127631_))
                    (___kont127630127631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127630127631_))
                                                (___kont127630127631_))
                                            (___kont127630127631_))))
                                    (___kont127630127631_))))
                            (___kont127630127631_))
                        (___kont127630127631_))
                    (___kont127630127631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127630127631_))))
                                            (___kont127630127631_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123347123610_ _target123344123605_ '())))))
                   (___match127645127646_
                    (lambda (_e123295123857_
                             _hd123294123860_
                             _tl123293123862_
                             ___splice127618127619_
                             _target123296123865_
                             _tl123298123867_)
                      (letrec ((_loop123299123870_
                                (lambda (_hd123297123873_ _arg123303123875_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123297123873_))
                                      (let ((_e123300123878_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123297123873_))))
                                        (let ((_lp-tl123302123883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123300123878_)))
                                              (_lp-hd123301123881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123300123878_))))
                                          (let ((__tmp129040
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123301123881_
                                                         _arg123303123875_))))
                                            (declare (not safe))
                                            (_loop123299123870_
                                             _lp-tl123302123883_
                                             __tmp129040))))
                                      (let ((_arg123304123886_
                                             (reverse _arg123303123875_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123293123862_))
                                            (let ((_e123307123889_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123293123862_))))
                                              (let ((_tl123305123894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123307123889_)))
                                                    (_hd123306123892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123307123889_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123306123892_))
                                                    (let ((_e123310123897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123306123892_))))
                                                      (let ((_tl123308123902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123310123897_)))
                    (_hd123309123900_
                     (let () (declare (not safe)) (##car _e123310123897_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123309123900_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123309123900_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123308123902_))
                            (let ((_e123313123905_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123308123902_))))
                              (let ((_tl123311123910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123313123905_)))
                                    (_hd123312123908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123313123905_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123312123908_))
                                    (let ((_e123316123913_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123312123908_))))
                                      (let ((_tl123314123918_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123316123913_)))
                                            (_hd123315123916_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123316123913_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123315123916_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123315123916_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123314123918_))
                                                    (let ((_e123319123921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123314123918_))))
                                                      (let ((_tl123317123926_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123319123921_)))
                    (_hd123318123924_
                     (let () (declare (not safe)) (##car _e123319123921_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123317123926_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123311123910_))
                        (let ((___splice127620127621_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123311123910_
                                  '0))))
                          (let ((_tl123322123931_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127620127621_ '1)))
                                (_target123320123929_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127620127621_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123322123931_))
                                (letrec ((_loop123323123934_
                                          (lambda (_hd123321123937_
                                                   _xarg123327123939_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123321123937_))
                                                (let ((_e123324123942_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123321123937_))))
                                                  (let ((_lp-tl123326123947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123324123942_)))
                                                        (_lp-hd123325123945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123324123942_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123325123945_))
                                                        (let ((_e123331123950_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123325123945_))))
                  (let ((_tl123329123955_
                         (let () (declare (not safe)) (##cdr _e123331123950_)))
                        (_hd123330123953_
                         (let ()
                           (declare (not safe))
                           (##car _e123331123950_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123330123953_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123330123953_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123329123955_))
                                (let ((_e123334123958_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123329123955_))))
                                  (let ((_tl123332123963_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123334123958_)))
                                        (_hd123333123961_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123334123958_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123332123963_))
                                        (let ((__tmp129039
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123333123961_
                                                       _xarg123327123939_))))
                                          (declare (not safe))
                                          (_loop123323123934_
                                           _lp-tl123326123947_
                                           __tmp129039))
                                        (___match127657127658_
                                         _e123295123857_
                                         _hd123294123860_
                                         _tl123293123862_
                                         ___splice127618127619_
                                         _target123296123865_
                                         _tl123298123867_))))
                                (___match127657127658_
                                 _e123295123857_
                                 _hd123294123860_
                                 _tl123293123862_
                                 ___splice127618127619_
                                 _target123296123865_
                                 _tl123298123867_))
                            (___match127657127658_
                             _e123295123857_
                             _hd123294123860_
                             _tl123293123862_
                             ___splice127618127619_
                             _target123296123865_
                             _tl123298123867_))
                        (___match127657127658_
                         _e123295123857_
                         _hd123294123860_
                         _tl123293123862_
                         ___splice127618127619_
                         _target123296123865_
                         _tl123298123867_))))
                (___match127657127658_
                 _e123295123857_
                 _hd123294123860_
                 _tl123293123862_
                 ___splice127618127619_
                 _target123296123865_
                 _tl123298123867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123328123966_
                                                       (reverse _xarg123327123939_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123305123894_))
                                                      (let ((_L123969_
                                                             _xarg123328123966_)
                                                            (_L123970_
                                                             _hd123318123924_)
                                                            (_L123971_
                                                             _arg123304123886_))
                                                        (if (and (let ((__tmp129037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp129038
                                       (lambda (_g123999124002_
                                                _g124000124004_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123999124002_
                                                 _g124000124004_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129038 '() _L123971_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp129037))
                         (fx= (length (let ((__tmp129035
                                             (lambda (_g124006124009_
                                                      _g124007124011_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124006124009_
                                                       _g124007124011_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129035 '() _L123971_)))
                              (length (let ((__tmp129036
                                             (lambda (_g124013124016_
                                                      _g124014124018_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g124013124016_
                                                       _g124014124018_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp129036 '() _L123969_))))
                         (let ((__tmp129033
                                (let ((__tmp129034
                                       (lambda (_g124020124023_
                                                _g124021124025_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124020124023_
                                                 _g124021124025_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129034 '() _L123971_)))
                               (__tmp129031
                                (let ((__tmp129032
                                       (lambda (_g124027124030_
                                                _g124028124032_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g124027124030_
                                                 _g124028124032_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp129032 '() _L123969_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp129033
                                    __tmp129031))
                         (let ((__tmp129027
                                (let ((__tmp129030
                                       (lambda (_g124034124036_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g124034124036_
                                            _L123970_))))
                                      (__tmp129028
                                       (let ((__tmp129029
                                              (lambda (_g124038124041_
                                                       _g124039124043_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g124038124041_
                                                        _g124039124043_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp129029 '() _L123971_))))
                                  (declare (not safe))
                                  (find __tmp129030 __tmp129028))))
                           (declare (not safe))
                           (not __tmp129027)))
                    (___kont127616127617_ _L123969_ _L123970_ _L123971_)
                    (___match127657127658_
                     _e123295123857_
                     _hd123294123860_
                     _tl123293123862_
                     ___splice127618127619_
                     _target123296123865_
                     _tl123298123867_)))
              (___match127657127658_
               _e123295123857_
               _hd123294123860_
               _tl123293123862_
               ___splice127618127619_
               _target123296123865_
               _tl123298123867_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123323123934_
                                     _target123320123929_
                                     '())))
                                (___match127657127658_
                                 _e123295123857_
                                 _hd123294123860_
                                 _tl123293123862_
                                 ___splice127618127619_
                                 _target123296123865_
                                 _tl123298123867_))))
                        (___match127657127658_
                         _e123295123857_
                         _hd123294123860_
                         _tl123293123862_
                         ___splice127618127619_
                         _target123296123865_
                         _tl123298123867_))
                    (___match127657127658_
                     _e123295123857_
                     _hd123294123860_
                     _tl123293123862_
                     ___splice127618127619_
                     _target123296123865_
                     _tl123298123867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127657127658_
                                                     _e123295123857_
                                                     _hd123294123860_
                                                     _tl123293123862_
                                                     ___splice127618127619_
                                                     _target123296123865_
                                                     _tl123298123867_))
                                                (___match127657127658_
                                                 _e123295123857_
                                                 _hd123294123860_
                                                 _tl123293123862_
                                                 ___splice127618127619_
                                                 _target123296123865_
                                                 _tl123298123867_))
                                            (___match127657127658_
                                             _e123295123857_
                                             _hd123294123860_
                                             _tl123293123862_
                                             ___splice127618127619_
                                             _target123296123865_
                                             _tl123298123867_))))
                                    (___match127657127658_
                                     _e123295123857_
                                     _hd123294123860_
                                     _tl123293123862_
                                     ___splice127618127619_
                                     _target123296123865_
                                     _tl123298123867_))))
                            (___match127657127658_
                             _e123295123857_
                             _hd123294123860_
                             _tl123293123862_
                             ___splice127618127619_
                             _target123296123865_
                             _tl123298123867_))
                        (___match127657127658_
                         _e123295123857_
                         _hd123294123860_
                         _tl123293123862_
                         ___splice127618127619_
                         _target123296123865_
                         _tl123298123867_))
                    (___match127657127658_
                     _e123295123857_
                     _hd123294123860_
                     _tl123293123862_
                     ___splice127618127619_
                     _target123296123865_
                     _tl123298123867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127657127658_
                                                     _e123295123857_
                                                     _hd123294123860_
                                                     _tl123293123862_
                                                     ___splice127618127619_
                                                     _target123296123865_
                                                     _tl123298123867_))))
                                            (___match127657127658_
                                             _e123295123857_
                                             _hd123294123860_
                                             _tl123293123862_
                                             ___splice127618127619_
                                             _target123296123865_
                                             _tl123298123867_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123299123870_ _target123296123865_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127614127615_))
                  (let ((_e123295123857_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127614127615_))))
                    (let ((_tl123293123862_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123295123857_)))
                          (_hd123294123860_
                           (let ()
                             (declare (not safe))
                             (##car _e123295123857_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123294123860_))
                          (let ((___splice127618127619_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123294123860_
                                    '0))))
                            (let ((_tl123298123867_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127618127619_ '1)))
                                  (_target123296123865_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127618127619_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123298123867_))
                                  (___match127645127646_
                                   _e123295123857_
                                   _hd123294123860_
                                   _tl123293123862_
                                   ___splice127618127619_
                                   _target123296123865_
                                   _tl123298123867_)
                                  (___match127657127658_
                                   _e123295123857_
                                   _hd123294123860_
                                   _tl123293123862_
                                   ___splice127618127619_
                                   _target123296123865_
                                   _tl123298123867_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123293123862_))
                              (let ((_e123410123465_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123293123862_))))
                                (let ((_tl123408123470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123410123465_)))
                                      (_hd123409123468_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123410123465_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123409123468_))
                                      (let ((_e123413123473_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123409123468_))))
                                        (let ((_tl123411123478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123413123473_)))
                                              (_hd123412123476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123413123473_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123412123476_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123412123476_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123411123478_))
                                                      (let ((_e123416123481_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123411123478_))))
                (let ((_tl123414123486_
                       (let () (declare (not safe)) (##cdr _e123416123481_)))
                      (_hd123415123484_
                       (let () (declare (not safe)) (##car _e123416123481_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123415123484_))
                      (let ((_e123419123489_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123415123484_))))
                        (let ((_tl123417123494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123419123489_)))
                              (_hd123418123492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123419123489_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123418123492_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123418123492_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123417123494_))
                                      (let ((_e123422123497_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123417123494_))))
                                        (let ((_tl123420123502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123422123497_)))
                                              (_hd123421123500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123422123497_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123420123502_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123414123486_))
                                                  (let ((_e123425123505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123414123486_))))
                                                    (let ((_tl123423123510_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123425123505_)))
                                                          (_hd123424123508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123425123505_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123424123508_))
                                                          (let ((_e123428123513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123424123508_))))
                    (let ((_tl123426123518_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123428123513_)))
                          (_hd123427123516_
                           (let ()
                             (declare (not safe))
                             (##car _e123428123513_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123427123516_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123427123516_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123426123518_))
                                  (let ((_e123431123521_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123426123518_))))
                                    (let ((_tl123429123526_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123431123521_)))
                                          (_hd123430123524_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123431123521_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123429123526_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123423123510_))
                                              (let ((_e123434123529_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123423123510_))))
                                                (let ((_tl123432123534_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123434123529_)))
                                                      (_hd123433123532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123434123529_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123433123532_))
                                                      (let ((_e123437123537_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123433123532_))))
                (let ((_tl123435123542_
                       (let () (declare (not safe)) (##cdr _e123437123537_)))
                      (_hd123436123540_
                       (let () (declare (not safe)) (##car _e123437123537_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123436123540_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123436123540_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123435123542_))
                              (let ((_e123440123545_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123435123542_))))
                                (let ((_tl123438123550_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123440123545_)))
                                      (_hd123439123548_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123440123545_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123438123550_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123432123534_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123408123470_))
                                              (___match127755127756_
                                               _e123295123857_
                                               _hd123294123860_
                                               _tl123293123862_
                                               _e123410123465_
                                               _hd123409123468_
                                               _tl123408123470_
                                               _e123413123473_
                                               _hd123412123476_
                                               _tl123411123478_
                                               _e123416123481_
                                               _hd123415123484_
                                               _tl123414123486_
                                               _e123419123489_
                                               _hd123418123492_
                                               _tl123417123494_
                                               _e123422123497_
                                               _hd123421123500_
                                               _tl123420123502_
                                               _e123425123505_
                                               _hd123424123508_
                                               _tl123423123510_
                                               _e123428123513_
                                               _hd123427123516_
                                               _tl123426123518_
                                               _e123431123521_
                                               _hd123430123524_
                                               _tl123429123526_
                                               _e123434123529_
                                               _hd123433123532_
                                               _tl123432123534_
                                               _e123437123537_
                                               _hd123436123540_
                                               _tl123435123542_
                                               _e123440123545_
                                               _hd123439123548_
                                               _tl123438123550_)
                                              (___kont127630127631_))
                                          (___kont127630127631_))
                                      (___kont127630127631_))))
                              (___kont127630127631_))
                          (___kont127630127631_))
                      (___kont127630127631_))))
              (___kont127630127631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127630127631_))
                                          (___kont127630127631_))))
                                  (___kont127630127631_))
                              (___kont127630127631_))
                          (___kont127630127631_))))
                  (___kont127630127631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127630127631_))
                                              (___kont127630127631_))))
                                      (___kont127630127631_))
                                  (___kont127630127631_))
                              (___kont127630127631_))))
                      (___kont127630127631_))))
              (___kont127630127631_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127630127631_))
                                              (___kont127630127631_))))
                                      (___kont127630127631_))))
                              (___kont127630127631_)))))
                  (___kont127630127631_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122751_)
        (let* ((___stx127758127759_ _form122751_)
               (_g122755122879_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127758127759_)))))
          (let ((___kont127760127761_
                 (lambda (_L123249_ _L123250_ _L123251_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123250_))))
                (___kont127766127767_
                 (lambda (_L123097_ _L123098_ _L123099_ _L123100_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123097_))))
                (___kont127770127771_
                 (lambda (_L122964_ _L122965_ _L122966_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122964_)))))
            (let* ((___match127867127868_
                    (lambda (_e122847122884_
                             _hd122846122887_
                             _tl122845122889_
                             _e122850122892_
                             _hd122849122895_
                             _tl122848122897_
                             _e122853122900_
                             _hd122852122903_
                             _tl122851122905_
                             _e122856122908_
                             _hd122855122911_
                             _tl122854122913_
                             _e122859122916_
                             _hd122858122919_
                             _tl122857122921_
                             _e122862122924_
                             _hd122861122927_
                             _tl122860122929_
                             _e122865122932_
                             _hd122864122935_
                             _tl122863122937_
                             _e122868122940_
                             _hd122867122943_
                             _tl122866122945_
                             _e122871122948_
                             _hd122870122951_
                             _tl122869122953_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122863122937_))
                          (let ((_e122874122956_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122863122937_))))
                            (let ((_tl122872122961_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122874122956_)))
                                  (_hd122873122959_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122874122956_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122872122961_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122848122897_))
                                      (___kont127770127771_
                                       _hd122870122951_
                                       _hd122861122927_
                                       _hd122846122887_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122755122879_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122755122879_)))))
                          (let () (declare (not safe)) (_g122755122879_)))))
                   (___match127797127798_
                    (lambda (_e122808123001_
                             _hd122807123004_
                             _tl122806123006_
                             ___splice127768127769_
                             _target122809123009_
                             _tl122811123011_)
                      (letrec ((_loop122812123014_
                                (lambda (_hd122810123017_ _arg122816123019_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122810123017_))
                                      (let ((_e122813123022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122810123017_))))
                                        (let ((_lp-tl122815123027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122813123022_)))
                                              (_lp-hd122814123025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122813123022_))))
                                          (let ((__tmp129041
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122814123025_
                                                         _arg122816123019_))))
                                            (declare (not safe))
                                            (_loop122812123014_
                                             _lp-tl122815123027_
                                             __tmp129041))))
                                      (let ((_arg122817123030_
                                             (reverse _arg122816123019_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122806123006_))
                                            (let ((_e122820123033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122806123006_))))
                                              (let ((_tl122818123038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122820123033_)))
                                                    (_hd122819123036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122820123033_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122819123036_))
                                                    (let ((_e122823123041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122819123036_))))
                                                      (let ((_tl122821123046_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122823123041_)))
                    (_hd122822123044_
                     (let () (declare (not safe)) (##car _e122823123041_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122822123044_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122822123044_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122821123046_))
                            (let ((_e122826123049_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122821123046_))))
                              (let ((_tl122824123054_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122826123049_)))
                                    (_hd122825123052_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122826123049_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122825123052_))
                                    (let ((_e122829123057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122825123052_))))
                                      (let ((_tl122827123062_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122829123057_)))
                                            (_hd122828123060_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122829123057_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122828123060_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122828123060_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122827123062_))
                                                    (let ((_e122832123065_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122827123062_))))
                                                      (let ((_tl122830123070_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122832123065_)))
                    (_hd122831123068_
                     (let () (declare (not safe)) (##car _e122832123065_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122830123070_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122824123054_))
                        (let ((_e122835123073_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122824123054_))))
                          (let ((_tl122833123078_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122835123073_)))
                                (_hd122834123076_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122835123073_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122834123076_))
                                (let ((_e122838123081_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122834123076_))))
                                  (let ((_tl122836123086_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122838123081_)))
                                        (_hd122837123084_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122838123081_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122837123084_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122837123084_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122836123086_))
                                                (let ((_e122841123089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122836123086_))))
                                                  (let ((_tl122839123094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122841123089_)))
                                                        (_hd122840123092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122841123089_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122839123094_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122818123038_))
                                                            (___kont127766127767_
                                                             _hd122840123092_
                                                             _hd122831123068_
                                                             _tl122811123011_
                                                             _arg122817123030_)
                                                            (___match127867127868_
                                                             _e122808123001_
                                                             _hd122807123004_
                                                             _tl122806123006_
                                                             _e122820123033_
                                                             _hd122819123036_
                                                             _tl122818123038_
                                                             _e122823123041_
                                                             _hd122822123044_
                                                             _tl122821123046_
                                                             _e122826123049_
                                                             _hd122825123052_
                                                             _tl122824123054_
                                                             _e122829123057_
                                                             _hd122828123060_
                                                             _tl122827123062_
                                                             _e122832123065_
                                                             _hd122831123068_
                                                             _tl122830123070_
                                                             _e122835123073_
                                                             _hd122834123076_
                                                             _tl122833123078_
                                                             _e122838123081_
                                                             _hd122837123084_
                                                             _tl122836123086_
                                                             _e122841123089_
                                                             _hd122840123092_
                                                             _tl122839123094_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122755122879_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122755122879_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122755122879_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122755122879_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122755122879_)))))
                        (let () (declare (not safe)) (_g122755122879_)))
                    (let () (declare (not safe)) (_g122755122879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122755122879_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122755122879_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122755122879_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122755122879_)))))
                            (let () (declare (not safe)) (_g122755122879_)))
                        (let () (declare (not safe)) (_g122755122879_)))
                    (let () (declare (not safe)) (_g122755122879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122755122879_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122755122879_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122812123014_ _target122809123009_ '())))))
                   (___match127785127786_
                    (lambda (_e122762123137_
                             _hd122761123140_
                             _tl122760123142_
                             ___splice127762127763_
                             _target122763123145_
                             _tl122765123147_)
                      (letrec ((_loop122766123150_
                                (lambda (_hd122764123153_ _arg122770123155_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122764123153_))
                                      (let ((_e122767123158_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122764123153_))))
                                        (let ((_lp-tl122769123163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122767123158_)))
                                              (_lp-hd122768123161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122767123158_))))
                                          (let ((__tmp129043
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122768123161_
                                                         _arg122770123155_))))
                                            (declare (not safe))
                                            (_loop122766123150_
                                             _lp-tl122769123163_
                                             __tmp129043))))
                                      (let ((_arg122771123166_
                                             (reverse _arg122770123155_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122760123142_))
                                            (let ((_e122774123169_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122760123142_))))
                                              (let ((_tl122772123174_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122774123169_)))
                                                    (_hd122773123172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122774123169_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122773123172_))
                                                    (let ((_e122777123177_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122773123172_))))
                                                      (let ((_tl122775123182_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122777123177_)))
                    (_hd122776123180_
                     (let () (declare (not safe)) (##car _e122777123177_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122776123180_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122776123180_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122775123182_))
                            (let ((_e122780123185_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122775123182_))))
                              (let ((_tl122778123190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122780123185_)))
                                    (_hd122779123188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122780123185_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122779123188_))
                                    (let ((_e122783123193_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122779123188_))))
                                      (let ((_tl122781123198_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122783123193_)))
                                            (_hd122782123196_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122783123193_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122782123196_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122782123196_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122781123198_))
                                                    (let ((_e122786123201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122781123198_))))
                                                      (let ((_tl122784123206_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122786123201_)))
                    (_hd122785123204_
                     (let () (declare (not safe)) (##car _e122786123201_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122784123206_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122778123190_))
                        (let ((___splice127764127765_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122778123190_
                                  '0))))
                          (let ((_tl122789123211_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127764127765_ '1)))
                                (_target122787123209_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127764127765_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122789123211_))
                                (letrec ((_loop122790123214_
                                          (lambda (_hd122788123217_
                                                   _xarg122794123219_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122788123217_))
                                                (let ((_e122791123222_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122788123217_))))
                                                  (let ((_lp-tl122793123227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122791123222_)))
                                                        (_lp-hd122792123225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122791123222_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122792123225_))
                                                        (let ((_e122798123230_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122792123225_))))
                  (let ((_tl122796123235_
                         (let () (declare (not safe)) (##cdr _e122798123230_)))
                        (_hd122797123233_
                         (let ()
                           (declare (not safe))
                           (##car _e122798123230_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122797123233_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122797123233_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122796123235_))
                                (let ((_e122801123238_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122796123235_))))
                                  (let ((_tl122799123243_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122801123238_)))
                                        (_hd122800123241_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122801123238_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122799123243_))
                                        (let ((__tmp129042
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122800123241_
                                                       _xarg122794123219_))))
                                          (declare (not safe))
                                          (_loop122790123214_
                                           _lp-tl122793123227_
                                           __tmp129042))
                                        (___match127797127798_
                                         _e122762123137_
                                         _hd122761123140_
                                         _tl122760123142_
                                         ___splice127762127763_
                                         _target122763123145_
                                         _tl122765123147_))))
                                (___match127797127798_
                                 _e122762123137_
                                 _hd122761123140_
                                 _tl122760123142_
                                 ___splice127762127763_
                                 _target122763123145_
                                 _tl122765123147_))
                            (___match127797127798_
                             _e122762123137_
                             _hd122761123140_
                             _tl122760123142_
                             ___splice127762127763_
                             _target122763123145_
                             _tl122765123147_))
                        (___match127797127798_
                         _e122762123137_
                         _hd122761123140_
                         _tl122760123142_
                         ___splice127762127763_
                         _target122763123145_
                         _tl122765123147_))))
                (___match127797127798_
                 _e122762123137_
                 _hd122761123140_
                 _tl122760123142_
                 ___splice127762127763_
                 _target122763123145_
                 _tl122765123147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122795123246_
                                                       (reverse _xarg122794123219_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122772123174_))
                                                      (___kont127760127761_
                                                       _xarg122795123246_
                                                       _hd122785123204_
                                                       _arg122771123166_)
                                                      (___match127797127798_
                                                       _e122762123137_
                                                       _hd122761123140_
                                                       _tl122760123142_
                                                       ___splice127762127763_
                                                       _target122763123145_
                                                       _tl122765123147_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122790123214_
                                     _target122787123209_
                                     '())))
                                (___match127797127798_
                                 _e122762123137_
                                 _hd122761123140_
                                 _tl122760123142_
                                 ___splice127762127763_
                                 _target122763123145_
                                 _tl122765123147_))))
                        (___match127797127798_
                         _e122762123137_
                         _hd122761123140_
                         _tl122760123142_
                         ___splice127762127763_
                         _target122763123145_
                         _tl122765123147_))
                    (___match127797127798_
                     _e122762123137_
                     _hd122761123140_
                     _tl122760123142_
                     ___splice127762127763_
                     _target122763123145_
                     _tl122765123147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127797127798_
                                                     _e122762123137_
                                                     _hd122761123140_
                                                     _tl122760123142_
                                                     ___splice127762127763_
                                                     _target122763123145_
                                                     _tl122765123147_))
                                                (___match127797127798_
                                                 _e122762123137_
                                                 _hd122761123140_
                                                 _tl122760123142_
                                                 ___splice127762127763_
                                                 _target122763123145_
                                                 _tl122765123147_))
                                            (___match127797127798_
                                             _e122762123137_
                                             _hd122761123140_
                                             _tl122760123142_
                                             ___splice127762127763_
                                             _target122763123145_
                                             _tl122765123147_))))
                                    (___match127797127798_
                                     _e122762123137_
                                     _hd122761123140_
                                     _tl122760123142_
                                     ___splice127762127763_
                                     _target122763123145_
                                     _tl122765123147_))))
                            (___match127797127798_
                             _e122762123137_
                             _hd122761123140_
                             _tl122760123142_
                             ___splice127762127763_
                             _target122763123145_
                             _tl122765123147_))
                        (___match127797127798_
                         _e122762123137_
                         _hd122761123140_
                         _tl122760123142_
                         ___splice127762127763_
                         _target122763123145_
                         _tl122765123147_))
                    (___match127797127798_
                     _e122762123137_
                     _hd122761123140_
                     _tl122760123142_
                     ___splice127762127763_
                     _target122763123145_
                     _tl122765123147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127797127798_
                                                     _e122762123137_
                                                     _hd122761123140_
                                                     _tl122760123142_
                                                     ___splice127762127763_
                                                     _target122763123145_
                                                     _tl122765123147_))))
                                            (___match127797127798_
                                             _e122762123137_
                                             _hd122761123140_
                                             _tl122760123142_
                                             ___splice127762127763_
                                             _target122763123145_
                                             _tl122765123147_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122766123150_ _target122763123145_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127758127759_))
                  (let ((_e122762123137_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127758127759_))))
                    (let ((_tl122760123142_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122762123137_)))
                          (_hd122761123140_
                           (let ()
                             (declare (not safe))
                             (##car _e122762123137_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122761123140_))
                          (let ((___splice127762127763_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122761123140_
                                    '0))))
                            (let ((_tl122765123147_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127762127763_ '1)))
                                  (_target122763123145_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127762127763_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122765123147_))
                                  (___match127785127786_
                                   _e122762123137_
                                   _hd122761123140_
                                   _tl122760123142_
                                   ___splice127762127763_
                                   _target122763123145_
                                   _tl122765123147_)
                                  (___match127797127798_
                                   _e122762123137_
                                   _hd122761123140_
                                   _tl122760123142_
                                   ___splice127762127763_
                                   _target122763123145_
                                   _tl122765123147_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122760123142_))
                              (let ((_e122850122892_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122760123142_))))
                                (let ((_tl122848122897_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122850122892_)))
                                      (_hd122849122895_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122850122892_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122849122895_))
                                      (let ((_e122853122900_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122849122895_))))
                                        (let ((_tl122851122905_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122853122900_)))
                                              (_hd122852122903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122853122900_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122852122903_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122852122903_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122851122905_))
                                                      (let ((_e122856122908_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122851122905_))))
                (let ((_tl122854122913_
                       (let () (declare (not safe)) (##cdr _e122856122908_)))
                      (_hd122855122911_
                       (let () (declare (not safe)) (##car _e122856122908_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122855122911_))
                      (let ((_e122859122916_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122855122911_))))
                        (let ((_tl122857122921_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122859122916_)))
                              (_hd122858122919_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122859122916_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122858122919_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122858122919_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122857122921_))
                                      (let ((_e122862122924_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122857122921_))))
                                        (let ((_tl122860122929_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122862122924_)))
                                              (_hd122861122927_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122862122924_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122860122929_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122854122913_))
                                                  (let ((_e122865122932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122854122913_))))
                                                    (let ((_tl122863122937_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122865122932_)))
                                                          (_hd122864122935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122865122932_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122864122935_))
                                                          (let ((_e122868122940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122864122935_))))
                    (let ((_tl122866122945_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122868122940_)))
                          (_hd122867122943_
                           (let ()
                             (declare (not safe))
                             (##car _e122868122940_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122867122943_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122867122943_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122866122945_))
                                  (let ((_e122871122948_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122866122945_))))
                                    (let ((_tl122869122953_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122871122948_)))
                                          (_hd122870122951_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122871122948_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122869122953_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122863122937_))
                                              (let ((_e122874122956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122863122937_))))
                                                (let ((_tl122872122961_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122874122956_)))
                                                      (_hd122873122959_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122874122956_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122872122961_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122848122897_))
                                                          (___kont127770127771_
                                                           _hd122870122951_
                                                           _hd122861122927_
                                                           _hd122761123140_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122755122879_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122755122879_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122755122879_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122755122879_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122755122879_)))
                              (let () (declare (not safe)) (_g122755122879_)))
                          (let () (declare (not safe)) (_g122755122879_)))))
                  (let () (declare (not safe)) (_g122755122879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122755122879_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122755122879_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122755122879_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122755122879_)))
                              (let ()
                                (declare (not safe))
                                (_g122755122879_)))))
                      (let () (declare (not safe)) (_g122755122879_)))))
              (let () (declare (not safe)) (_g122755122879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122755122879_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122755122879_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122755122879_)))))
                              (let ()
                                (declare (not safe))
                                (_g122755122879_))))))
                  (let () (declare (not safe)) (_g122755122879_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122555_)
        (let* ((_g122557122571_
                (lambda (_g122558122568_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122558122568_))))
               (_g122556122748_
                (lambda (_g122558122574_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122558122574_))
                      (let ((_e122563122576_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122558122574_))))
                        (let ((_hd122562122579_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122563122576_)))
                              (_tl122561122581_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122563122576_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122561122581_))
                              (let ((_e122566122584_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122561122581_))))
                                (let ((_hd122565122587_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122566122584_)))
                                      (_tl122564122589_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122566122584_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122564122589_))
                                      ((lambda (_L122592_ _L122593_)
                                         (let* ((___stx127880127881_ _L122593_)
                                                (_g122608122636_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127880127881_)))))
                                           (let ((___kont127882127883_
                                                  (lambda (_L122727_)
                                                    (length (let ((__tmp129044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122737122740_ _g122738122742_)
                             (let ()
                               (declare (not safe))
                               (cons _g122737122740_ _g122738122742_)))))
                      (declare (not safe))
                      (foldr1 __tmp129044 '() _L122727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127886127887_
                                                  (lambda (_L122678_ _L122679_)
                                                    (let ((__tmp129045
                                                           (length (let ((__tmp129046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122690122693_ _g122691122695_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122690122693_
                                            _g122691122695_)))))
                             (declare (not safe))
                             (foldr1 __tmp129046 '() _L122679_)))))
              (declare (not safe))
              (cons __tmp129045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127890127891_
                                                  (lambda (_L122641_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127905127906_
                                                     (lambda (___splice127888127889_
                                                              _target122622122654_
                                                              _tl122624122656_)
                                                       (letrec ((_loop122625122659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122623122662_ _arg122629122664_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122623122662_))
                               (let ((_e122626122667_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122623122662_))))
                                 (let ((_lp-tl122628122672_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122626122667_)))
                                       (_lp-hd122627122670_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122626122667_))))
                                   (let ((__tmp129047
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122627122670_
                                                  _arg122629122664_))))
                                     (declare (not safe))
                                     (_loop122625122659_
                                      _lp-tl122628122672_
                                      __tmp129047))))
                               (let ((_arg122630122675_
                                      (reverse _arg122629122664_)))
                                 (___kont127886127887_
                                  _tl122624122656_
                                  _arg122630122675_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122625122659_ _target122622122654_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127899127900_
                                                     (lambda (___splice127884127885_
                                                              _target122611122703_
                                                              _tl122613122705_)
                                                       (letrec ((_loop122614122708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122612122711_ _arg122618122713_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122612122711_))
                               (let ((_e122615122716_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122612122711_))))
                                 (let ((_lp-tl122617122721_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122615122716_)))
                                       (_lp-hd122616122719_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122615122716_))))
                                   (let ((__tmp129048
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122616122719_
                                                  _arg122618122713_))))
                                     (declare (not safe))
                                     (_loop122614122708_
                                      _lp-tl122617122721_
                                      __tmp129048))))
                               (let ((_arg122619122724_
                                      (reverse _arg122618122713_)))
                                 (___kont127882127883_ _arg122619122724_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122614122708_ _target122611122703_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127880127881_))
                                                   (let ((___splice127884127885_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127880127881_
                                                             '0))))
                                                     (let ((_tl122613122705_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127884127885_
                                                               '1)))
                                                           (_target122611122703_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127884127885_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122613122705_))
                                                           (___match127899127900_
                                                            ___splice127884127885_
                                                            _target122611122703_
                                                            _tl122613122705_)
                                                           (___match127905127906_
                                                            ___splice127884127885_
                                                            _target122611122703_
                                                            _tl122613122705_))))
                                                   (___kont127890127891_
                                                    ___stx127880127881_))))))
                                       _hd122565122587_
                                       _hd122562122579_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122557122571_ _g122558122574_)))))
                              (let ()
                                (declare (not safe))
                                (_g122557122571_ _g122558122574_)))))
                      (let ()
                        (declare (not safe))
                        (_g122557122571_ _g122558122574_))))))
          (declare (not safe))
          (_g122556122748_ _form122555_))))
    (define gxc#lambda-expr?
      (lambda (_expr122508_)
        (let* ((___stx127908127909_ _expr122508_)
               (_g122511122521_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127908127909_)))))
          (let ((___kont127910127911_ (lambda (_L122541_) '#t))
                (___kont127912127913_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127908127909_))
                (let ((_e122516122533_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127908127909_))))
                  (let ((_tl122514122538_
                         (let () (declare (not safe)) (##cdr _e122516122533_)))
                        (_hd122515122536_
                         (let ()
                           (declare (not safe))
                           (##car _e122516122533_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122515122536_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122515122536_))
                            (___kont127910127911_ _tl122514122538_)
                            (___kont127912127913_))
                        (___kont127912127913_))))
                (___kont127912127913_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122461_)
        (let* ((___stx127926127927_ _expr122461_)
               (_g122464122474_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127926127927_)))))
          (let ((___kont127928127929_ (lambda (_L122494_) '#t))
                (___kont127930127931_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127926127927_))
                (let ((_e122469122486_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127926127927_))))
                  (let ((_tl122467122491_
                         (let () (declare (not safe)) (##cdr _e122469122486_)))
                        (_hd122468122489_
                         (let ()
                           (declare (not safe))
                           (##car _e122469122486_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122468122489_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122468122489_))
                            (___kont127928127929_ _tl122467122491_)
                            (___kont127930127931_))
                        (___kont127930127931_))))
                (___kont127930127931_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122330_)
        (let* ((___stx127944127945_ _expr122330_)
               (_g122333122363_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127944127945_)))))
          (let ((___kont127946127947_
                 (lambda (_L122431_ _L122432_ _L122433_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122433_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122432_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122431_))
                           '#f)
                       '#f)))
                (___kont127948127949_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127944127945_))
                (let ((_e122340122375_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127944127945_))))
                  (let ((_tl122338122380_
                         (let () (declare (not safe)) (##cdr _e122340122375_)))
                        (_hd122339122378_
                         (let ()
                           (declare (not safe))
                           (##car _e122340122375_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122339122378_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122339122378_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122338122380_))
                                (let ((_e122343122383_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122338122380_))))
                                  (let ((_tl122341122388_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122343122383_)))
                                        (_hd122342122386_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122343122383_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122342122386_))
                                        (let ((_e122346122391_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122342122386_))))
                                          (let ((_tl122344122396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122346122391_)))
                                                (_hd122345122394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122346122391_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122345122394_))
                                                (let ((_e122349122399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122345122394_))))
                                                  (let ((_tl122347122404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122349122399_)))
                                                        (_hd122348122402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122349122399_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122348122402_))
                                                        (let ((_e122352122407_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122348122402_))))
                  (let ((_tl122350122412_
                         (let () (declare (not safe)) (##cdr _e122352122407_)))
                        (_hd122351122410_
                         (let ()
                           (declare (not safe))
                           (##car _e122352122407_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122350122412_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122347122404_))
                            (let ((_e122355122415_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122347122404_))))
                              (let ((_tl122353122420_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122355122415_)))
                                    (_hd122354122418_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122355122415_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122353122420_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122344122396_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122341122388_))
                                            (let ((_e122358122423_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122341122388_))))
                                              (let ((_tl122356122428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122358122423_)))
                                                    (_hd122357122426_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122358122423_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122356122428_))
                                                    (___kont127946127947_
                                                     _hd122357122426_
                                                     _hd122354122418_
                                                     _hd122351122410_)
                                                    (___kont127948127949_))))
                                            (___kont127948127949_))
                                        (___kont127948127949_))
                                    (___kont127948127949_))))
                            (___kont127948127949_))
                        (___kont127948127949_))))
                (___kont127948127949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127948127949_))))
                                        (___kont127948127949_))))
                                (___kont127948127949_))
                            (___kont127948127949_))
                        (___kont127948127949_))))
                (___kont127948127949_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121655_)
        (let* ((___stx128006128007_ _expr121655_)
               (_g121658121816_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128006128007_)))))
          (let ((___kont128008128009_
                 (lambda (_L122204_
                          _L122205_
                          _L122206_
                          _L122207_
                          _L122208_
                          _L122209_
                          _L122210_
                          _L122211_
                          _L122212_
                          _L122213_
                          _L122214_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122211_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122207_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122206_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122214_
                                      _L122205_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122213_
                                          _L122210_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122208_
                                              _L122204_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122212_
                                              _L122209_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont128010128011_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128006128007_))
                (let ((_e121673121828_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128006128007_))))
                  (let ((_tl121671121833_
                         (let () (declare (not safe)) (##cdr _e121673121828_)))
                        (_hd121672121831_
                         (let ()
                           (declare (not safe))
                           (##car _e121673121828_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121672121831_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121672121831_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121671121833_))
                                (let ((_e121676121836_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121671121833_))))
                                  (let ((_tl121674121841_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121676121836_)))
                                        (_hd121675121839_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121676121836_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121675121839_))
                                        (let ((_e121679121844_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121675121839_))))
                                          (let ((_tl121677121849_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121679121844_)))
                                                (_hd121678121847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121679121844_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121678121847_))
                                                (let ((_e121682121852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121678121847_))))
                                                  (let ((_tl121680121857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121682121852_)))
                                                        (_hd121681121855_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121682121852_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121681121855_))
                                                        (let ((_e121685121860_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121681121855_))))
                  (let ((_tl121683121865_
                         (let () (declare (not safe)) (##cdr _e121685121860_)))
                        (_hd121684121863_
                         (let ()
                           (declare (not safe))
                           (##car _e121685121860_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121683121865_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121680121857_))
                            (let ((_e121688121868_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121680121857_))))
                              (let ((_tl121686121873_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121688121868_)))
                                    (_hd121687121871_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121688121868_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121687121871_))
                                    (let ((_e121691121876_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121687121871_))))
                                      (let ((_tl121689121881_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121691121876_)))
                                            (_hd121690121879_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121691121876_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121690121879_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121690121879_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121689121881_))
                                                    (let ((_e121694121884_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121689121881_))))
                                                      (let ((_tl121692121889_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121694121884_)))
                    (_hd121693121887_
                     (let () (declare (not safe)) (##car _e121694121884_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121693121887_))
                    (let ((_e121697121892_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121693121887_))))
                      (let ((_tl121695121897_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121697121892_)))
                            (_hd121696121895_
                             (let ()
                               (declare (not safe))
                               (##car _e121697121892_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121696121895_))
                            (let ((_e121700121900_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121696121895_))))
                              (let ((_tl121698121905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121700121900_)))
                                    (_hd121699121903_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121700121900_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121699121903_))
                                    (let ((_e121703121908_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121699121903_))))
                                      (let ((_tl121701121913_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121703121908_)))
                                            (_hd121702121911_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121703121908_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121701121913_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121698121905_))
                                                (let ((_e121706121916_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121698121905_))))
                                                  (let ((_tl121704121921_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121706121916_)))
                                                        (_hd121705121919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121706121916_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121704121921_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121695121897_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121692121889_))
                        (let ((_e121709121924_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121692121889_))))
                          (let ((_tl121707121929_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121709121924_)))
                                (_hd121708121927_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121709121924_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121708121927_))
                                (let ((_e121712121932_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121708121927_))))
                                  (let ((_tl121710121937_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121712121932_)))
                                        (_hd121711121935_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121712121932_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121711121935_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121711121935_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121710121937_))
                                                (let ((_e121715121940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121710121937_))))
                                                  (let ((_tl121713121945_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121715121940_)))
                                                        (_hd121714121943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121715121940_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121714121943_))
                                                        (let ((_e121718121948_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121714121943_))))
                  (let ((_tl121716121953_
                         (let () (declare (not safe)) (##cdr _e121718121948_)))
                        (_hd121717121951_
                         (let ()
                           (declare (not safe))
                           (##car _e121718121948_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121713121945_))
                        (let ((_e121721121956_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121713121945_))))
                          (let ((_tl121719121961_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121721121956_)))
                                (_hd121720121959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121721121956_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121720121959_))
                                (let ((_e121724121964_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121720121959_))))
                                  (let ((_tl121722121969_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121724121964_)))
                                        (_hd121723121967_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121724121964_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121723121967_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121723121967_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121722121969_))
                                                (let ((_e121727121972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121722121969_))))
                                                  (let ((_tl121725121977_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121727121972_)))
                                                        (_hd121726121975_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121727121972_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121726121975_))
                                                        (let ((_e121730121980_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121726121975_))))
                  (let ((_tl121728121985_
                         (let () (declare (not safe)) (##cdr _e121730121980_)))
                        (_hd121729121983_
                         (let ()
                           (declare (not safe))
                           (##car _e121730121980_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121729121983_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121729121983_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121728121985_))
                                (let ((_e121733121988_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121728121985_))))
                                  (let ((_tl121731121993_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121733121988_)))
                                        (_hd121732121991_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121733121988_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121731121993_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121725121977_))
                                            (let ((_e121736121996_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121725121977_))))
                                              (let ((_tl121734122001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121736121996_)))
                                                    (_hd121735121999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121736121996_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121735121999_))
                                                    (let ((_e121739122004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121735121999_))))
                                                      (let ((_tl121737122009_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121739122004_)))
                    (_hd121738122007_
                     (let () (declare (not safe)) (##car _e121739122004_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121738122007_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121738122007_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121737122009_))
                            (let ((_e121742122012_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121737122009_))))
                              (let ((_tl121740122017_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121742122012_)))
                                    (_hd121741122015_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121742122012_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121740122017_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121734122001_))
                                        (let ((_e121745122020_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121734122001_))))
                                          (let ((_tl121743122025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121745122020_)))
                                                (_hd121744122023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121745122020_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121744122023_))
                                                (let ((_e121748122028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121744122023_))))
                                                  (let ((_tl121746122033_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121748122028_)))
                                                        (_hd121747122031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121748122028_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121747122031_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121747122031_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121746122033_))
                        (let ((_e121751122036_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121746122033_))))
                          (let ((_tl121749122041_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121751122036_)))
                                (_hd121750122039_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121751122036_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121749122041_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121719121961_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121707121929_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121686121873_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121677121849_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121674121841_))
                                                    (let ((_e121754122044_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121674121841_))))
                                                      (let ((_tl121752122049_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121754122044_)))
                    (_hd121753122047_
                     (let () (declare (not safe)) (##car _e121754122044_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121753122047_))
                    (let ((_e121757122052_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121753122047_))))
                      (let ((_tl121755122057_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121757122052_)))
                            (_hd121756122055_
                             (let ()
                               (declare (not safe))
                               (##car _e121757122052_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121756122055_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121756122055_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121755122057_))
                                    (let ((_e121760122060_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121755122057_))))
                                      (let ((_tl121758122065_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121760122060_)))
                                            (_hd121759122063_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121760122060_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121758122065_))
                                            (let ((_e121763122068_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121758122065_))))
                                              (let ((_tl121761122073_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121763122068_)))
                                                    (_hd121762122071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121763122068_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121762122071_))
                                                    (let ((_e121766122076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121762122071_))))
                                                      (let ((_tl121764122081_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121766122076_)))
                    (_hd121765122079_
                     (let () (declare (not safe)) (##car _e121766122076_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121765122079_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121765122079_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121764122081_))
                            (let ((_e121769122084_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121764122081_))))
                              (let ((_tl121767122089_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121769122084_)))
                                    (_hd121768122087_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121769122084_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121768122087_))
                                    (let ((_e121772122092_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121768122087_))))
                                      (let ((_tl121770122097_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121772122092_)))
                                            (_hd121771122095_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121772122092_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121771122095_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121771122095_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121770122097_))
                                                    (let ((_e121775122100_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121770122097_))))
                                                      (let ((_tl121773122105_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121775122100_)))
                    (_hd121774122103_
                     (let () (declare (not safe)) (##car _e121775122100_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121773122105_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121767122089_))
                        (let ((_e121778122108_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121767122089_))))
                          (let ((_tl121776122113_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121778122108_)))
                                (_hd121777122111_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121778122108_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121777122111_))
                                (let ((_e121781122116_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121777122111_))))
                                  (let ((_tl121779122121_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121781122116_)))
                                        (_hd121780122119_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121781122116_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121780122119_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121780122119_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121779122121_))
                                                (let ((_e121784122124_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121779122121_))))
                                                  (let ((_tl121782122129_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121784122124_)))
                                                        (_hd121783122127_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121784122124_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121782122129_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121776122113_))
                                                            (let ((_e121787122132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121776122113_))))
                      (let ((_tl121785122137_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121787122132_)))
                            (_hd121786122135_
                             (let ()
                               (declare (not safe))
                               (##car _e121787122132_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121786122135_))
                            (let ((_e121790122140_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121786122135_))))
                              (let ((_tl121788122145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121790122140_)))
                                    (_hd121789122143_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121790122140_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121789122143_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121789122143_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121788122145_))
                                            (let ((_e121793122148_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121788122145_))))
                                              (let ((_tl121791122153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121793122148_)))
                                                    (_hd121792122151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121793122148_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121791122153_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121785122137_))
                                                        (let ((_e121796122156_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121785122137_))))
                  (let ((_tl121794122161_
                         (let () (declare (not safe)) (##cdr _e121796122156_)))
                        (_hd121795122159_
                         (let ()
                           (declare (not safe))
                           (##car _e121796122156_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121795122159_))
                        (let ((_e121799122164_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121795122159_))))
                          (let ((_tl121797122169_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121799122164_)))
                                (_hd121798122167_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121799122164_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121798122167_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121798122167_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121797122169_))
                                        (let ((_e121802122172_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121797122169_))))
                                          (let ((_tl121800122177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121802122172_)))
                                                (_hd121801122175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121802122172_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121800122177_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121794122161_))
                                                    (let ((_e121805122180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121794122161_))))
                                                      (let ((_tl121803122185_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121805122180_)))
                    (_hd121804122183_
                     (let () (declare (not safe)) (##car _e121805122180_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121804122183_))
                    (let ((_e121808122188_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121804122183_))))
                      (let ((_tl121806122193_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121808122188_)))
                            (_hd121807122191_
                             (let ()
                               (declare (not safe))
                               (##car _e121808122188_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121807122191_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121807122191_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121806122193_))
                                    (let ((_e121811122196_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121806122193_))))
                                      (let ((_tl121809122201_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121811122196_)))
                                            (_hd121810122199_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121811122196_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121809122201_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121803122185_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121761122073_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121752122049_))
                                                        (___kont128008128009_
                                                         _hd121810122199_
                                                         _hd121801122175_
                                                         _hd121783122127_
                                                         _hd121774122103_
                                                         _hd121759122063_
                                                         _hd121750122039_
                                                         _hd121741122015_
                                                         _hd121732121991_
                                                         _hd121717121951_
                                                         _hd121702121911_
                                                         _hd121684121863_)
                                                        (___kont128010128011_))
                                                    (___kont128010128011_))
                                                (___kont128010128011_))
                                            (___kont128010128011_))))
                                    (___kont128010128011_))
                                (___kont128010128011_))
                            (___kont128010128011_))))
                    (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128010128011_))
                                                (___kont128010128011_))))
                                        (___kont128010128011_))
                                    (___kont128010128011_))
                                (___kont128010128011_))))
                        (___kont128010128011_))))
                (___kont128010128011_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128010128011_))))
                                            (___kont128010128011_))
                                        (___kont128010128011_))
                                    (___kont128010128011_))))
                            (___kont128010128011_))))
                    (___kont128010128011_))
                (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128010128011_))
                                            (___kont128010128011_))
                                        (___kont128010128011_))))
                                (___kont128010128011_))))
                        (___kont128010128011_))
                    (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128010128011_))
                                                (___kont128010128011_))
                                            (___kont128010128011_))))
                                    (___kont128010128011_))))
                            (___kont128010128011_))
                        (___kont128010128011_))
                    (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128010128011_))))
                                            (___kont128010128011_))))
                                    (___kont128010128011_))
                                (___kont128010128011_))
                            (___kont128010128011_))))
                    (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128010128011_))
                                                (___kont128010128011_))
                                            (___kont128010128011_))
                                        (___kont128010128011_))
                                    (___kont128010128011_))
                                (___kont128010128011_))))
                        (___kont128010128011_))
                    (___kont128010128011_))
                (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128010128011_))))
                                        (___kont128010128011_))
                                    (___kont128010128011_))))
                            (___kont128010128011_))
                        (___kont128010128011_))
                    (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128010128011_))))
                                            (___kont128010128011_))
                                        (___kont128010128011_))))
                                (___kont128010128011_))
                            (___kont128010128011_))
                        (___kont128010128011_))))
                (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128010128011_))
                                            (___kont128010128011_))
                                        (___kont128010128011_))))
                                (___kont128010128011_))))
                        (___kont128010128011_))))
                (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128010128011_))
                                            (___kont128010128011_))
                                        (___kont128010128011_))))
                                (___kont128010128011_))))
                        (___kont128010128011_))
                    (___kont128010128011_))
                (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128010128011_))
                                            (___kont128010128011_))))
                                    (___kont128010128011_))))
                            (___kont128010128011_))))
                    (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128010128011_))
                                                (___kont128010128011_))
                                            (___kont128010128011_))))
                                    (___kont128010128011_))))
                            (___kont128010128011_))
                        (___kont128010128011_))))
                (___kont128010128011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont128010128011_))))
                                        (___kont128010128011_))))
                                (___kont128010128011_))
                            (___kont128010128011_))
                        (___kont128010128011_))))
                (___kont128010128011_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121397_ _id121398_ _clauses121399_ _gensym?121400_)
        (let _lp121402_ ((_rest121404_ _clauses121399_)
                         (_ids121405_ '())
                         (_impls121406_ '())
                         (_clauses121407_ '()))
          (let* ((_rest121408121416_ _rest121404_)
                 (_else121410121424_
                  (lambda ()
                    (values (reverse _ids121405_)
                            (reverse _impls121406_)
                            (reverse _clauses121407_))))
                 (_K121412121629_
                  (lambda (_rest121427_ _clause121428_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121428_))
                        (let ((__tmp129104
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121428_ _clauses121407_))))
                          (declare (not safe))
                          (_lp121402_
                           _rest121427_
                           _ids121405_
                           _impls121406_
                           __tmp129104))
                        (let* ((_g121430121441_
                                (lambda (_g121431121438_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121431121438_))))
                               (_g121429121626_
                                (lambda (_g121431121444_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121431121444_))
                                      (let ((_e121436121446_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121431121444_))))
                                        (let ((_hd121435121449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121436121446_)))
                                              (_tl121434121451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121436121446_))))
                                          ((lambda (_L121454_ _L121455_)
                                             (let* ((_id121472_
                                                     (let ((__tmp129051
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121398_)))
                                                           (__tmp129050
                                                            (length _clauses121407_))
                                                           (__tmp129049
                                                            (if _gensym?121400_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp129051
                                                        '"__"
                                                        __tmp129050
                                                        __tmp129049)))
                                                    (_id121474_
                                                     (let ((__tmp129052
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121397_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121472_
                                                        __tmp129052)))
                                                    (_impl121476_
                                                     (let ((__tmp129053
                                                            (let ((__tmp129055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp129054
                           (let ()
                             (declare (not safe))
                             (cons _L121455_ _L121454_))))
                      (declare (not safe))
                      (cons __tmp129055 __tmp129054))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp129053 _stx121397_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121623_
                                                     (let* ((___stx128390128391_
                                                             _L121455_)
                                                            (_g121480121508_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128390128391_)))))
               (let ((___kont128392128393_
                      (lambda (_L121602_)
                        (let ((__tmp129056
                               (let ((__tmp129057
                                      (let ((__tmp129058
                                             (let ((__tmp129059
                                                    (let ((__tmp129065
                                                           (let ((__tmp129066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121474_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129066)))
                  (__tmp129060
                   (let ((__tmp129061
                          (lambda (_g121612121615_ _g121613121617_)
                            (let ((__tmp129062
                                   (let ((__tmp129064
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp129063
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121612121615_ '()))))
                                     (declare (not safe))
                                     (cons __tmp129064 __tmp129063))))
                              (declare (not safe))
                              (cons __tmp129062 _g121613121617_)))))
                     (declare (not safe))
                     (foldr1 __tmp129061 '() _L121602_))))
              (declare (not safe))
              (cons __tmp129065 __tmp129060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129059))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129058
                                         _stx121397_))))
                                 (declare (not safe))
                                 (cons __tmp129057 '()))))
                          (declare (not safe))
                          (cons _L121455_ __tmp129056))))
                     (___kont128396128397_
                      (lambda (_L121553_ _L121554_)
                        (let ((__tmp129067
                               (let ((__tmp129068
                                      (let ((__tmp129069
                                             (let ((__tmp129070
                                                    (let ((__tmp129084
                                                           (let ((__tmp129085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129085)))
                  (__tmp129071
                   (let ((__tmp129082
                          (let ((__tmp129083
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121474_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129083)))
                         (__tmp129072
                          (let ((__tmp129078
                                 (let ((__tmp129079
                                        (let ((__tmp129081
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp129080
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121553_ '()))))
                                          (declare (not safe))
                                          (cons __tmp129081 __tmp129080))))
                                   (declare (not safe))
                                   (cons __tmp129079 '())))
                                (__tmp129073
                                 (let ((__tmp129074
                                        (lambda (_g121565121568_
                                                 _g121566121570_)
                                          (let ((__tmp129075
                                                 (let ((__tmp129077
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp129076
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121565121568_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp129077
                                                         __tmp129076))))
                                            (declare (not safe))
                                            (cons __tmp129075
                                                  _g121566121570_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp129074 '() _L121554_))))
                            (declare (not safe))
                            (foldr1 cons __tmp129078 __tmp129073))))
                     (declare (not safe))
                     (cons __tmp129082 __tmp129072))))
              (declare (not safe))
              (cons __tmp129084 __tmp129071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129070))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129069
                                         _stx121397_))))
                                 (declare (not safe))
                                 (cons __tmp129068 '()))))
                          (declare (not safe))
                          (cons _L121455_ __tmp129067))))
                     (___kont128400128401_
                      (lambda (_L121513_)
                        (let ((__tmp129086
                               (let ((__tmp129087
                                      (let ((__tmp129088
                                             (let ((__tmp129089
                                                    (let ((__tmp129097
                                                           (let ((__tmp129098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129098)))
                  (__tmp129090
                   (let ((__tmp129095
                          (let ((__tmp129096
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121474_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129096)))
                         (__tmp129091
                          (let ((__tmp129092
                                 (let ((__tmp129094
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp129093
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121513_ '()))))
                                   (declare (not safe))
                                   (cons __tmp129094 __tmp129093))))
                            (declare (not safe))
                            (cons __tmp129092 '()))))
                     (declare (not safe))
                     (cons __tmp129095 __tmp129091))))
              (declare (not safe))
              (cons __tmp129097 __tmp129090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129089))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129088
                                         _stx121397_))))
                                 (declare (not safe))
                                 (cons __tmp129087 '()))))
                          (declare (not safe))
                          (cons _L121455_ __tmp129086)))))
                 (let* ((___match128415128416_
                         (lambda (___splice128398128399_
                                  _target121494121529_
                                  _tl121496121531_)
                           (letrec ((_loop121497121534_
                                     (lambda (_hd121495121537_
                                              _arg121501121539_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121495121537_))
                                           (let ((_e121498121542_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121495121537_))))
                                             (let ((_lp-tl121500121547_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121498121542_)))
                                                   (_lp-hd121499121545_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121498121542_))))
                                               (let ((__tmp129099
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121499121545_
                                                              _arg121501121539_))))
                                                 (declare (not safe))
                                                 (_loop121497121534_
                                                  _lp-tl121500121547_
                                                  __tmp129099))))
                                           (let ((_arg121502121550_
                                                  (reverse _arg121501121539_)))
                                             (___kont128396128397_
                                              _tl121496121531_
                                              _arg121502121550_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121497121534_
                                _target121494121529_
                                '())))))
                        (___match128409128410_
                         (lambda (___splice128394128395_
                                  _target121483121578_
                                  _tl121485121580_)
                           (letrec ((_loop121486121583_
                                     (lambda (_hd121484121586_
                                              _arg121490121588_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121484121586_))
                                           (let ((_e121487121591_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121484121586_))))
                                             (let ((_lp-tl121489121596_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121487121591_)))
                                                   (_lp-hd121488121594_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121487121591_))))
                                               (let ((__tmp129100
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121488121594_
                                                              _arg121490121588_))))
                                                 (declare (not safe))
                                                 (_loop121486121583_
                                                  _lp-tl121489121596_
                                                  __tmp129100))))
                                           (let ((_arg121491121599_
                                                  (reverse _arg121490121588_)))
                                             (___kont128392128393_
                                              _arg121491121599_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121486121583_
                                _target121483121578_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128390128391_))
                       (let ((___splice128394128395_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128390128391_
                                 '0))))
                         (let ((_tl121485121580_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128394128395_ '1)))
                               (_target121483121578_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128394128395_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121485121580_))
                               (___match128409128410_
                                ___splice128394128395_
                                _target121483121578_
                                _tl121485121580_)
                               (___match128415128416_
                                ___splice128394128395_
                                _target121483121578_
                                _tl121485121580_))))
                       (___kont128400128401_ ___stx128390128391_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp129103
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121474_
                                                              _ids121405_)))
                                                     (__tmp129102
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121476_
                                                              _impls121406_)))
                                                     (__tmp129101
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121623_
                                                              _clauses121407_))))
                                                 (declare (not safe))
                                                 (_lp121402_
                                                  _rest121427_
                                                  __tmp129103
                                                  __tmp129102
                                                  __tmp129101))))
                                           _tl121434121451_
                                           _hd121435121449_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121430121441_ _g121431121444_))))))
                          (declare (not safe))
                          (_g121429121626_ _clause121428_))))))
            (if (let () (declare (not safe)) (##pair? _rest121408121416_))
                (let ((_hd121413121632_
                       (let ()
                         (declare (not safe))
                         (##car _rest121408121416_)))
                      (_tl121414121634_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121408121416_))))
                  (let* ((_clause121637_ _hd121413121632_)
                         (_rest121639_ _tl121414121634_))
                    (declare (not safe))
                    (_K121412121629_ _rest121639_ _clause121637_)))
                (let () (declare (not safe)) (_else121410121424_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121644_ _id121645_ _clauses121646_)
        (let ((_gensym?121648_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121644_
           _id121645_
           _clauses121646_
           _gensym?121648_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g129106_
        (let ((_g129105_ (let () (declare (not safe)) (##length _g129106_))))
          (cond ((let () (declare (not safe)) (##fx= _g129105_ 3))
                 (apply (lambda (_stx121644_ _id121645_ _clauses121646_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121644_
                             _id121645_
                             _clauses121646_)))
                        _g129106_))
                ((let () (declare (not safe)) (##fx= _g129105_ 4))
                 (apply (lambda (_stx121650_
                                 _id121651_
                                 _clauses121652_
                                 _gensym?121653_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121650_
                             _id121651_
                             _clauses121652_
                             _gensym?121653_)))
                        _g129106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g129106_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self120673_ _stx120674_)
        (letrec ((_case-lambda-clause-def120676_
                  (lambda (_id121393_ _impl121394_)
                    (let ((__tmp129107
                           (let ((__tmp129108
                                  (let ((__tmp129111
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121393_ '())))
                                        (__tmp129109
                                         (let ((__tmp129110
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120673_
                                                   _impl121394_))))
                                           (declare (not safe))
                                           (cons __tmp129110 '()))))
                                    (declare (not safe))
                                    (cons __tmp129111 __tmp129109))))
                             (declare (not safe))
                             (cons '%#define-values __tmp129108))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129107 _stx120674_))))
                 (_opt-lambda-dispatch-name120677_
                  (lambda (_id121389_)
                    (if (uninterned-symbol? _id121389_)
                        (let ((_str121391_ (symbol->string _id121389_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121391_))
                              '"%"
                              _id121389_))
                        _id121389_)))
                 (_kw-lambda-dispatch-name120678_
                  (lambda (_id121384_ _name121385_)
                    (if (uninterned-symbol? _id121384_)
                        (let ((_str121387_ (symbol->string _id121384_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121387_))
                              _name121385_
                              _id121384_))
                        _id121384_))))
          (let* ((___stx128438128439_ _stx120674_)
                 (_g120683120742_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128438128439_)))))
            (let ((___kont128440128441_
                   (lambda (_L121293_ _L121294_)
                     (let* ((___stx128418128419_ _L121293_)
                            (_g121311121325_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128418128419_)))))
                       (let ((___kont128420128421_
                              (lambda (_L121369_) _stx120674_))
                             (___kont128422128423_
                              (lambda (_L121338_)
                                (let ((_g129112_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120674_
                                          _L121294_
                                          _L121338_))))
                                  (begin
                                    (let ((_g129113_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129112_)
                                                 (##vector-length _g129112_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129113_ 3)))
                                          (error "Context expects 3 values"
                                                 _g129113_)))
                                    (let ((_ids121348_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129112_ 0)))
                                          (_impls121349_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129112_ 1)))
                                          (_clauses121350_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129112_ 2))))
                                      (let* ((_g129114_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121348_))
                                             (_defs121353_
                                              (map _case-lambda-clause-def120676_
                                                   _ids121348_
                                                   _impls121349_)))
                                        (let ((__tmp129116
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121294_)))
                                              (__tmp129115
                                               (map gxc#identifier-symbol
                                                    _ids121348_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp129116
                                           '" => "
                                           __tmp129115))
                                        (let ((__tmp129117
                                               (let ((__tmp129118
                                                      (let ((__tmp129119
                                                             (let ((__tmp129120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129121
                                   (let ((__tmp129122
                                          (let ((__tmp129127
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121294_ '())))
                                                (__tmp129123
                                                 (let ((__tmp129124
                                                        (let ((__tmp129126
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121350_)))
                      (__tmp129125
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp129126 __tmp129125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129124 '()))))
                                            (declare (not safe))
                                            (cons __tmp129127 __tmp129123))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp129122))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129121
                               _stx120674_))))
                       (declare (not safe))
                       (cons __tmp129120 '()))))
                (declare (not safe))
                (foldr1 cons __tmp129119 _defs121353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp129118))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp129117
                                           _stx120674_)))))))))
                         (let ((___match128429128430_
                                (lambda (_e121316121361_
                                         _hd121315121364_
                                         _tl121314121366_)
                                  (let ((_L121369_ _tl121314121366_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121369_))
                                        (___kont128420128421_ _L121369_)
                                        (___kont128422128423_
                                         _tl121314121366_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128418128419_))
                               (let ((_e121316121361_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128418128419_))))
                                 (let ((_tl121314121366_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121316121361_)))
                                       (_hd121315121364_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121316121361_))))
                                   (___match128429128430_
                                    _e121316121361_
                                    _hd121315121364_
                                    _tl121314121366_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121311121325_))))))))
                  (___kont128442128443_
                   (lambda (_L121111_ _L121112_)
                     (let* ((_g121128121158_
                             (lambda (_g121129121155_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121129121155_))))
                            (_g121127121253_
                             (lambda (_g121129121161_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121129121161_))
                                   (let ((_e121135121163_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121129121161_))))
                                     (let ((_hd121134121166_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121135121163_)))
                                           (_tl121133121168_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121135121163_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121133121168_))
                                           (let ((_e121138121171_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121133121168_))))
                                             (let ((_hd121137121174_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121138121171_)))
                                                   (_tl121136121176_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121138121171_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121137121174_))
                                                   (let ((_e121141121179_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121137121174_))))
                                                     (let ((_hd121140121182_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121141121179_)))
                                                           (_tl121139121184_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121141121179_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121140121182_))
                                                           (let ((_e121144121187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121140121182_))))
                     (let ((_hd121143121190_
                            (let ()
                              (declare (not safe))
                              (##car _e121144121187_)))
                           (_tl121142121192_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121144121187_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121143121190_))
                           (let ((_e121147121195_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121143121190_))))
                             (let ((_hd121146121198_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121147121195_)))
                                   (_tl121145121200_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121147121195_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121145121200_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121142121192_))
                                       (let ((_e121150121203_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121142121192_))))
                                         (let ((_hd121149121206_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121150121203_)))
                                               (_tl121148121208_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121150121203_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121148121208_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121139121184_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121136121176_))
                                                       (let ((_e121153121211_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121136121176_))))
                 (let ((_hd121152121214_
                        (let () (declare (not safe)) (##car _e121153121211_)))
                       (_tl121151121216_
                        (let () (declare (not safe)) (##cdr _e121153121211_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121151121216_))
                       ((lambda (_L121219_ _L121220_ _L121221_)
                          (let* ((_lambda-id121245_
                                  (let ((__tmp129130
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L121112_)))
                                        (__tmp129128
                                         (let ((__tmp129129
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121221_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120677_
                                            __tmp129129))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129130
                                     '"__"
                                     __tmp129128)))
                                 (_lambda-id121247_
                                  (let ((__tmp129131
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120674_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121245_
                                     __tmp129131)))
                                 (_g129132_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121247_)))
                                 (_new-case-lambda-expr121250_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121219_
                                     'id:
                                     _L121221_
                                     'new-id:
                                     _lambda-id121247_))))
                            (let ((__tmp129134
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L121112_)))
                                  (__tmp129133
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121247_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129134
                               '" => "
                               __tmp129133))
                            (let ((__tmp129135
                                   (let ((__tmp129136
                                          (let ((__tmp129144
                                                 (let ((__tmp129145
                                                        (let ((__tmp129146
                                                               (let ((__tmp129149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121247_ '())))
                             (__tmp129147
                              (let ((__tmp129148
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120673_
                                        _L121220_))))
                                (declare (not safe))
                                (cons __tmp129148 '()))))
                         (declare (not safe))
                         (cons __tmp129149 __tmp129147))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129145
                                                    _stx120674_)))
                                                (__tmp129137
                                                 (let ((__tmp129138
                                                        (let ((__tmp129139
                                                               (let ((__tmp129140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129141
                                     (let ((__tmp129143
                                            (let ()
                                              (declare (not safe))
                                              (cons _L121112_ '())))
                                           (__tmp129142
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121250_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129143 __tmp129142))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129141))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129140 _stx120674_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self120673_
                   __tmp129139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129138 '()))))
                                            (declare (not safe))
                                            (cons __tmp129144 __tmp129137))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129136))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129135
                               _stx120674_))))
                        _hd121152121214_
                        _hd121149121206_
                        _hd121146121198_)
                       (let ()
                         (declare (not safe))
                         (_g121128121158_ _g121129121161_)))))
               (let () (declare (not safe)) (_g121128121158_ _g121129121161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121128121158_
                                                      _g121129121161_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121128121158_
                                                  _g121129121161_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121128121158_ _g121129121161_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121128121158_ _g121129121161_)))))
                           (let ()
                             (declare (not safe))
                             (_g121128121158_ _g121129121161_)))))
                   (let ()
                     (declare (not safe))
                     (_g121128121158_ _g121129121161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121128121158_
                                                      _g121129121161_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121128121158_
                                              _g121129121161_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121128121158_ _g121129121161_))))))
                       (declare (not safe))
                       (_g121127121253_ _L121111_))))
                  (___kont128444128445_
                   (lambda (_L120825_ _L120826_)
                     (let* ((_g120842120895_
                             (lambda (_g120843120892_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120843120892_))))
                            (_g120841121071_
                             (lambda (_g120843120898_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120843120898_))
                                   (let ((_e120851120900_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120843120898_))))
                                     (let ((_hd120850120903_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120851120900_)))
                                           (_tl120849120905_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120851120900_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120849120905_))
                                           (let ((_e120854120908_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120849120905_))))
                                             (let ((_hd120853120911_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120854120908_)))
                                                   (_tl120852120913_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120854120908_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120853120911_))
                                                   (let ((_e120857120916_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120853120911_))))
                                                     (let ((_hd120856120919_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120857120916_)))
                                                           (_tl120855120921_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120857120916_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120856120919_))
                                                           (let ((_e120860120924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120856120919_))))
                     (let ((_hd120859120927_
                            (let ()
                              (declare (not safe))
                              (##car _e120860120924_)))
                           (_tl120858120929_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120860120924_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120859120927_))
                           (let ((_e120863120932_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120859120927_))))
                             (let ((_hd120862120935_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120863120932_)))
                                   (_tl120861120937_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120863120932_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120861120937_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120858120929_))
                                       (let ((_e120866120940_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120858120929_))))
                                         (let ((_hd120865120943_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120866120940_)))
                                               (_tl120864120945_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120866120940_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120865120943_))
                                               (let ((_e120869120948_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120865120943_))))
                                                 (let ((_hd120868120951_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120869120948_)))
                                                       (_tl120867120953_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120869120948_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120867120953_))
                                                       (let ((_e120872120956_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120867120953_))))
                 (let ((_hd120871120959_
                        (let () (declare (not safe)) (##car _e120872120956_)))
                       (_tl120870120961_
                        (let () (declare (not safe)) (##cdr _e120872120956_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120871120959_))
                       (let ((_e120875120964_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120871120959_))))
                         (let ((_hd120874120967_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120875120964_)))
                               (_tl120873120969_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120875120964_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120874120967_))
                               (let ((_e120878120972_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120874120967_))))
                                 (let ((_hd120877120975_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120878120972_)))
                                       (_tl120876120977_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120878120972_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120877120975_))
                                       (let ((_e120881120980_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120877120975_))))
                                         (let ((_hd120880120983_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120881120980_)))
                                               (_tl120879120985_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120881120980_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120879120985_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120876120977_))
                                                   (let ((_e120884120988_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120876120977_))))
                                                     (let ((_hd120883120991_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120884120988_)))
                                                           (_tl120882120993_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120884120988_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120882120993_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120873120969_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120870120961_))
                           (let ((_e120887120996_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120870120961_))))
                             (let ((_hd120886120999_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120887120996_)))
                                   (_tl120885121001_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120887120996_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120885121001_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120864120945_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120855120921_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120852120913_))
                                               (let ((_e120890121004_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120852120913_))))
                                                 (let ((_hd120889121007_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120890121004_)))
                                                       (_tl120888121009_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120890121004_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120888121009_))
                                                       ((lambda (_L121012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L121013_
                         _L121014_
                         _L121015_
                         _L121016_)
                  (let* ((_get-kws-id121056_
                          (let ((__tmp129152
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120826_)))
                                (__tmp129150
                                 (let ((__tmp129151
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121016_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120678_
                                    __tmp129151
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129152 '"__" __tmp129150)))
                         (_get-kws-id121058_
                          (let ((__tmp129153
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120674_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id121056_
                             __tmp129153)))
                         (_main-id121060_
                          (let ((__tmp129156
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120826_)))
                                (__tmp129154
                                 (let ((__tmp129155
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L121015_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120678_
                                    __tmp129155
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129156 '"__" __tmp129154)))
                         (_main-id121062_
                          (let ((__tmp129157
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120674_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id121060_
                             __tmp129157)))
                         (_g129158_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id121058_)))
                         (_g129159_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id121062_)))
                         (_new-kw-dispatch121066_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121012_
                             'id:
                             _L121016_
                             'new-id:
                             _get-kws-id121058_)))
                         (_new-get-kws121068_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L121013_
                             'id:
                             _L121015_
                             'new-id:
                             _main-id121062_))))
                    (let ((__tmp129162
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120826_)))
                          (__tmp129161
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id121058_)))
                          (__tmp129160
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id121062_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129162
                       '" => "
                       __tmp129161
                       '" => "
                       __tmp129160))
                    (let ((__tmp129163
                           (let ((__tmp129164
                                  (let ((__tmp129177
                                         (let ((__tmp129178
                                                (let ((__tmp129179
                                                       (let ((__tmp129180
                                                              (let ((__tmp129182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id121062_ '())))
                            (__tmp129181
                             (let ()
                               (declare (not safe))
                               (cons _L121014_ '()))))
                        (declare (not safe))
                        (cons __tmp129182 __tmp129181))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129179
                                                   _stx120674_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self120673_
                                            __tmp129178)))
                                        (__tmp129165
                                         (let ((__tmp129172
                                                (let ((__tmp129173
                                                       (let ((__tmp129174
                                                              (let ((__tmp129176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id121058_ '())))
                            (__tmp129175
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws121068_ '()))))
                        (declare (not safe))
                        (cons __tmp129176 __tmp129175))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129173
                                                   _stx120674_)))
                                               (__tmp129166
                                                (let ((__tmp129167
                                                       (let ((__tmp129168
                                                              (let ((__tmp129169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129171
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120826_ '())))
                                   (__tmp129170
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch121066_ '()))))
                               (declare (not safe))
                               (cons __tmp129171 __tmp129170))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129169))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129168 _stx120674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129167 '()))))
                                           (declare (not safe))
                                           (cons __tmp129172 __tmp129166))))
                                    (declare (not safe))
                                    (cons __tmp129177 __tmp129165))))
                             (declare (not safe))
                             (cons '%#begin __tmp129164))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129163 _stx120674_))))
                _hd120889121007_
                _hd120886120999_
                _hd120883120991_
                _hd120880120983_
                _hd120862120935_)
               (let ()
                 (declare (not safe))
                 (_g120842120895_ _g120843120898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120842120895_
                                                  _g120843120898_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120842120895_
                                              _g120843120898_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120842120895_ _g120843120898_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120842120895_ _g120843120898_)))))
                           (let ()
                             (declare (not safe))
                             (_g120842120895_ _g120843120898_)))
                       (let ()
                         (declare (not safe))
                         (_g120842120895_ _g120843120898_)))
                   (let ()
                     (declare (not safe))
                     (_g120842120895_ _g120843120898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120842120895_
                                                      _g120843120898_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120842120895_
                                                  _g120843120898_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120842120895_ _g120843120898_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120842120895_ _g120843120898_)))))
                       (let ()
                         (declare (not safe))
                         (_g120842120895_ _g120843120898_)))))
               (let ()
                 (declare (not safe))
                 (_g120842120895_ _g120843120898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120842120895_
                                                  _g120843120898_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120842120895_ _g120843120898_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120842120895_ _g120843120898_)))))
                           (let ()
                             (declare (not safe))
                             (_g120842120895_ _g120843120898_)))))
                   (let ()
                     (declare (not safe))
                     (_g120842120895_ _g120843120898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120842120895_
                                                      _g120843120898_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120842120895_
                                              _g120843120898_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120842120895_ _g120843120898_))))))
                       (declare (not safe))
                       (_g120841121071_ _L120825_))))
                  (___kont128446128447_
                   (lambda (_L120771_ _L120772_)
                     (let ((__tmp129183
                            (let ((__tmp129184
                                   (let ((__tmp129185
                                          (let ((__tmp129186
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self120673_
                                                    _L120771_))))
                                            (declare (not safe))
                                            (cons __tmp129186 '()))))
                                     (declare (not safe))
                                     (cons _L120772_ __tmp129185))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129184))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129183 _stx120674_)))))
              (let* ((___match128531128532_
                      (lambda (_e120717120793_
                               _hd120716120796_
                               _tl120715120798_
                               _e120720120801_
                               _hd120719120804_
                               _tl120718120806_
                               _e120723120809_
                               _hd120722120812_
                               _tl120721120814_
                               _e120726120817_
                               _hd120725120820_
                               _tl120724120822_)
                        (let ((_L120825_ _hd120725120820_)
                              (_L120826_ _hd120722120812_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120826_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120825_)))
                              (___kont128444128445_ _L120825_ _L120826_)
                              (___kont128446128447_
                               _hd120725120820_
                               _hd120719120804_)))))
                     (___match128503128504_
                      (lambda (_e120703121079_
                               _hd120702121082_
                               _tl120701121084_
                               _e120706121087_
                               _hd120705121090_
                               _tl120704121092_
                               _e120709121095_
                               _hd120708121098_
                               _tl120707121100_
                               _e120712121103_
                               _hd120711121106_
                               _tl120710121108_)
                        (let ((_L121111_ _hd120711121106_)
                              (_L121112_ _hd120708121098_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121112_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L121111_)))
                              (___kont128442128443_ _L121111_ _L121112_)
                              (___match128531128532_
                               _e120703121079_
                               _hd120702121082_
                               _tl120701121084_
                               _e120706121087_
                               _hd120705121090_
                               _tl120704121092_
                               _e120709121095_
                               _hd120708121098_
                               _tl120707121100_
                               _e120712121103_
                               _hd120711121106_
                               _tl120710121108_)))))
                     (___match128475128476_
                      (lambda (_e120689121261_
                               _hd120688121264_
                               _tl120687121266_
                               _e120692121269_
                               _hd120691121272_
                               _tl120690121274_
                               _e120695121277_
                               _hd120694121280_
                               _tl120693121282_
                               _e120698121285_
                               _hd120697121288_
                               _tl120696121290_)
                        (let ((_L121293_ _hd120697121288_)
                              (_L121294_ _hd120694121280_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121294_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121293_)))
                              (___kont128440128441_ _L121293_ _L121294_)
                              (___match128503128504_
                               _e120689121261_
                               _hd120688121264_
                               _tl120687121266_
                               _e120692121269_
                               _hd120691121272_
                               _tl120690121274_
                               _e120695121277_
                               _hd120694121280_
                               _tl120693121282_
                               _e120698121285_
                               _hd120697121288_
                               _tl120696121290_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128438128439_))
                    (let ((_e120689121261_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128438128439_))))
                      (let ((_tl120687121266_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120689121261_)))
                            (_hd120688121264_
                             (let ()
                               (declare (not safe))
                               (##car _e120689121261_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120687121266_))
                            (let ((_e120692121269_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120687121266_))))
                              (let ((_tl120690121274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120692121269_)))
                                    (_hd120691121272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120692121269_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120691121272_))
                                    (let ((_e120695121277_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120691121272_))))
                                      (let ((_tl120693121282_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120695121277_)))
                                            (_hd120694121280_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120695121277_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120693121282_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120690121274_))
                                                (let ((_e120698121285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120690121274_))))
                                                  (let ((_tl120696121290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120698121285_)))
                                                        (_hd120697121288_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120698121285_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120696121290_))
                                                        (___match128475128476_
                                                         _e120689121261_
                                                         _hd120688121264_
                                                         _tl120687121266_
                                                         _e120692121269_
                                                         _hd120691121272_
                                                         _tl120690121274_
                                                         _e120695121277_
                                                         _hd120694121280_
                                                         _tl120693121282_
                                                         _e120698121285_
                                                         _hd120697121288_
                                                         _tl120696121290_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120683120742_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120683120742_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120690121274_))
                                                (let ((_e120737120763_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120690121274_))))
                                                  (let ((_tl120735120768_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120737120763_)))
                                                        (_hd120736120766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120737120763_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120735120768_))
                                                        (___kont128446128447_
                                                         _hd120736120766_
                                                         _hd120691121272_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120683120742_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120683120742_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120690121274_))
                                        (let ((_e120737120763_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120690121274_))))
                                          (let ((_tl120735120768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120737120763_)))
                                                (_hd120736120766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120737120763_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120735120768_))
                                                (___kont128446128447_
                                                 _hd120736120766_
                                                 _hd120691121272_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120683120742_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120683120742_))))))
                            (let () (declare (not safe)) (_g120683120742_)))))
                    (let () (declare (not safe)) (_g120683120742_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self119604_ _stx119605_)
        (letrec* ((_bind-e__126834126835_
                   (lambda (_id120657_ _expr120658_ _compile?120659_)
                     (let ((__tmp129189
                            (let ()
                              (declare (not safe))
                              (cons _id120657_ '())))
                           (__tmp129187
                            (let ((__tmp129188
                                   (if _compile?120659_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self119604_
                                          _expr120658_))
                                       _expr120658_)))
                              (declare (not safe))
                              (cons __tmp129188 '()))))
                       (declare (not safe))
                       (cons __tmp129189 __tmp129187))))
                  (_bind-e__0__126836126837_
                   (lambda (_id120664_ _expr120665_)
                     (let ((_compile?120667_ '#t))
                       (declare (not safe))
                       (_bind-e__126834126835_
                        _id120664_
                        _expr120665_
                        _compile?120667_))))
                  (_bind-e119607_
                   (lambda _g129191_
                     (let ((_g129190_
                            (let ()
                              (declare (not safe))
                              (##length _g129191_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129190_ 2))
                              (apply (lambda (_id120664_ _expr120665_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126836126837_
                                          _id120664_
                                          _expr120665_)))
                                     _g129191_))
                             ((let () (declare (not safe)) (##fx= _g129190_ 3))
                              (apply (lambda (_id120669_
                                              _expr120670_
                                              _compile?120671_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126834126835_
                                          _id120669_
                                          _expr120670_
                                          _compile?120671_)))
                                     _g129191_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129191_))))))
                  (_compile-bindings119608_
                   (lambda (_bindings120241_)
                     (let _lp120243_ ((_rest120245_ _bindings120241_)
                                      (_lift1120246_ '())
                                      (_lift2120247_ '())
                                      (_bind120248_ '()))
                       (let* ((_rest120249120257_ _rest120245_)
                              (_else120251120265_
                               (lambda ()
                                 (values (reverse _lift1120246_)
                                         (reverse _lift2120247_)
                                         (reverse _bind120248_))))
                              (_K120253120644_
                               (lambda (_rest120268_ _hd120269_)
                                 (let* ((___stx128574128575_ _hd120269_)
                                        (_g120273120309_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128574128575_)))))
                                   (let ((___kont128576128577_
                                          (lambda (_L120551_ _L120552_)
                                            (let* ((___stx128554128555_
                                                    _L120551_)
                                                   (_g120567120581_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128554128555_)))))
                                              (let ((___kont128556128557_
                                                     (lambda (_L120629_)
                                                       (let ((__tmp129192
                                                              (let ((__tmp129193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126834126835_
                                _L120552_
                                _L120551_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129193 _bind120248_))))
                 (declare (not safe))
                 (_lp120243_
                  _rest120268_
                  _lift1120246_
                  _lift2120247_
                  __tmp129192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128558128559_
                                                     (lambda (_L120594_)
                                                       (let ((_g129194_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119605_
                         _L120552_
                         _L120594_
                         '#t))))
                 (begin
                   (let ((_g129195_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129194_)
                                (##vector-length _g129194_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129195_ 3)))
                         (error "Context expects 3 values" _g129195_)))
                   (let ((_ids120604_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129194_ 0)))
                         (_impls120605_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129194_ 1)))
                         (_clauses120606_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129194_ 2))))
                     (let* ((_g129196_
                             (for-each gx#core-bind-runtime! _ids120604_))
                            (_xbind120609_
                             (map _bind-e119607_ _ids120604_ _impls120605_))
                            (_expr*120611_
                             (let ((__tmp129198
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120606_)))
                                   (__tmp129197
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129198
                                __tmp129197)))
                            (_bind*120613_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126834126835_
                                _L120552_
                                _expr*120611_
                                '#f))))
                       (let ((__tmp129200
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120552_)))
                             (__tmp129199
                              (map gxc#identifier-symbol _ids120604_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129200
                          '" => "
                          __tmp129199))
                       (let ((__tmp129202
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120247_ _xbind120609_)))
                             (__tmp129201
                              (let ()
                                (declare (not safe))
                                (cons _bind*120613_ _bind120248_))))
                         (declare (not safe))
                         (_lp120243_
                          _rest120268_
                          _lift1120246_
                          __tmp129202
                          __tmp129201)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128565128566_
                                                       (lambda (_e120572120621_
                                                                _hd120571120624_
                                                                _tl120570120626_)
                                                         (let ((_L120629_
                                                                _tl120570120626_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120629_))
                       (___kont128556128557_ _L120629_)
                       (___kont128558128559_ _tl120570120626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128554128555_))
                                                      (let ((_e120572120621_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128554128555_))))
                (let ((_tl120570120626_
                       (let () (declare (not safe)) (##cdr _e120572120621_)))
                      (_hd120571120624_
                       (let () (declare (not safe)) (##car _e120572120621_))))
                  (___match128565128566_
                   _e120572120621_
                   _hd120571120624_
                   _tl120570120626_)))
              (let () (declare (not safe)) (_g120567120581_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128578128579_
                                          (lambda (_L120379_ _L120380_)
                                            (let* ((_g120394120424_
                                                    (lambda (_g120395120421_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120395120421_))))
                                                   (_g120393120519_
                                                    (lambda (_g120395120427_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120395120427_))
                                                          (let ((_e120401120429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120395120427_))))
                    (let ((_hd120400120432_
                           (let ()
                             (declare (not safe))
                             (##car _e120401120429_)))
                          (_tl120399120434_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120401120429_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120399120434_))
                          (let ((_e120404120437_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120399120434_))))
                            (let ((_hd120403120440_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120404120437_)))
                                  (_tl120402120442_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120404120437_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120403120440_))
                                  (let ((_e120407120445_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120403120440_))))
                                    (let ((_hd120406120448_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120407120445_)))
                                          (_tl120405120450_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120407120445_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120406120448_))
                                          (let ((_e120410120453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120406120448_))))
                                            (let ((_hd120409120456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120410120453_)))
                                                  (_tl120408120458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120410120453_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120409120456_))
                                                  (let ((_e120413120461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120409120456_))))
                                                    (let ((_hd120412120464_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120413120461_)))
                                                          (_tl120411120466_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120413120461_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120411120466_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120408120458_))
                      (let ((_e120416120469_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120408120458_))))
                        (let ((_hd120415120472_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120416120469_)))
                              (_tl120414120474_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120416120469_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120414120474_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120405120450_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120402120442_))
                                      (let ((_e120419120477_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120402120442_))))
                                        (let ((_hd120418120480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120419120477_)))
                                              (_tl120417120482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120419120477_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120417120482_))
                                              ((lambda (_L120485_
                                                        _L120486_
                                                        _L120487_)
                                                 (let* ((_lambda-id120511_
                                                         (let ((__tmp129204
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120380_)))
                       (__tmp129203 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129204 __tmp129203)))
                (_lambda-id120513_
                 (let ((__tmp129205
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119605_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120511_ __tmp129205)))
                (_g129206_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120513_)))
                (_new-case-lambda-expr120516_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120485_
                    'id:
                    _L120487_
                    'new-id:
                    _lambda-id120513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129208
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120380_)))
                                                         (__tmp129207
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120513_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129208
                                                      '" => "
                                                      __tmp129207))
                                                   (let ((__tmp129211
                                                          (let ((__tmp129212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126834126835_
                            _L120380_
                            _new-case-lambda-expr120516_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129212 _rest120268_)))
                 (__tmp129209
                  (let ((__tmp129210
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126836126837_
                            _lambda-id120513_
                            _L120486_))))
                    (declare (not safe))
                    (cons __tmp129210 _lift1120246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120243_
                                                      __tmp129211
                                                      __tmp129209
                                                      _lift2120247_
                                                      _bind120248_))))
                                               _hd120418120480_
                                               _hd120415120472_
                                               _hd120412120464_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120394120424_
                                                 _g120395120427_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120394120424_ _g120395120427_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120394120424_ _g120395120427_)))
                              (let ()
                                (declare (not safe))
                                (_g120394120424_ _g120395120427_)))))
                      (let ()
                        (declare (not safe))
                        (_g120394120424_ _g120395120427_)))
                  (let ()
                    (declare (not safe))
                    (_g120394120424_ _g120395120427_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120394120424_
                                                     _g120395120427_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120394120424_
                                             _g120395120427_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120394120424_ _g120395120427_)))))
                          (let ()
                            (declare (not safe))
                            (_g120394120424_ _g120395120427_)))))
                  (let ()
                    (declare (not safe))
                    (_g120394120424_ _g120395120427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120393120519_ _L120379_))))
                                         (___kont128580128581_
                                          (lambda (_L120330_ _L120331_)
                                            (let ((__tmp129213
                                                   (let ((__tmp129214
                                                          (let ((__tmp129215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129216
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self119604_ _L120330_))))
                           (declare (not safe))
                           (cons __tmp129216 '()))))
                    (declare (not safe))
                    (cons _L120331_ __tmp129215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129214
                                                           _bind120248_))))
                                              (declare (not safe))
                                              (_lp120243_
                                               _rest120268_
                                               _lift1120246_
                                               _lift2120247_
                                               __tmp129213)))))
                                     (let* ((___match128625128626_
                                             (lambda (_e120290120355_
                                                      _hd120289120358_
                                                      _tl120288120360_
                                                      _e120293120363_
                                                      _hd120292120366_
                                                      _tl120291120368_
                                                      _e120296120371_
                                                      _hd120295120374_
                                                      _tl120294120376_)
                                               (let ((_L120379_
                                                      _hd120295120374_)
                                                     (_L120380_
                                                      _hd120292120366_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120380_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120379_)))
                                                     (___kont128578128579_
                                                      _L120379_
                                                      _L120380_)
                                                     (___kont128580128581_
                                                      _hd120295120374_
                                                      _hd120289120358_)))))
                                            (___match128603128604_
                                             (lambda (_e120279120527_
                                                      _hd120278120530_
                                                      _tl120277120532_
                                                      _e120282120535_
                                                      _hd120281120538_
                                                      _tl120280120540_
                                                      _e120285120543_
                                                      _hd120284120546_
                                                      _tl120283120548_)
                                               (let ((_L120551_
                                                      _hd120284120546_)
                                                     (_L120552_
                                                      _hd120281120538_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120552_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120551_)))
                                                     (___kont128576128577_
                                                      _L120551_
                                                      _L120552_)
                                                     (___match128625128626_
                                                      _e120279120527_
                                                      _hd120278120530_
                                                      _tl120277120532_
                                                      _e120282120535_
                                                      _hd120281120538_
                                                      _tl120280120540_
                                                      _e120285120543_
                                                      _hd120284120546_
                                                      _tl120283120548_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128574128575_))
                                           (let ((_e120279120527_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128574128575_))))
                                             (let ((_tl120277120532_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120279120527_)))
                                                   (_hd120278120530_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120279120527_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120278120530_))
                                                   (let ((_e120282120535_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120278120530_))))
                                                     (let ((_tl120280120540_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120282120535_)))
                                                           (_hd120281120538_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120282120535_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120280120540_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120277120532_))
                       (let ((_e120285120543_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120277120532_))))
                         (let ((_tl120283120548_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120285120543_)))
                               (_hd120284120546_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120285120543_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120283120548_))
                               (___match128603128604_
                                _e120279120527_
                                _hd120278120530_
                                _tl120277120532_
                                _e120282120535_
                                _hd120281120538_
                                _tl120280120540_
                                _e120285120543_
                                _hd120284120546_
                                _tl120283120548_)
                               (let ()
                                 (declare (not safe))
                                 (_g120273120309_)))))
                       (let () (declare (not safe)) (_g120273120309_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120277120532_))
                       (let ((_e120304120322_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120277120532_))))
                         (let ((_tl120302120327_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120304120322_)))
                               (_hd120303120325_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120304120322_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120302120327_))
                               (___kont128580128581_
                                _hd120303120325_
                                _hd120278120530_)
                               (let ()
                                 (declare (not safe))
                                 (_g120273120309_)))))
                       (let () (declare (not safe)) (_g120273120309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120277120532_))
                                                       (let ((_e120304120322_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120277120532_))))
                 (let ((_tl120302120327_
                        (let () (declare (not safe)) (##cdr _e120304120322_)))
                       (_hd120303120325_
                        (let () (declare (not safe)) (##car _e120304120322_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120302120327_))
                       (___kont128580128581_ _hd120303120325_ _hd120278120530_)
                       (let () (declare (not safe)) (_g120273120309_)))))
               (let () (declare (not safe)) (_g120273120309_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120273120309_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120249120257_))
                             (let ((_hd120254120647_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120249120257_)))
                                   (_tl120255120649_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120249120257_))))
                               (let* ((_hd120652_ _hd120254120647_)
                                      (_rest120654_ _tl120255120649_))
                                 (declare (not safe))
                                 (_K120253120644_ _rest120654_ _hd120652_)))
                             (let ()
                               (declare (not safe))
                               (_else120251120265_)))))))
                  (_lift-kw-lambda?119609_
                   (lambda (_bind120165_)
                     (let* ((___stx128642128643_ _bind120165_)
                            (_g120168120185_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128642128643_)))))
                       (let ((___kont128644128645_
                              (lambda (_L120221_ _L120222_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120222_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120221_))
                                    '#f)))
                             (___kont128646128647_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128642128643_))
                             (let ((_e120174120197_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128642128643_))))
                               (let ((_tl120172120202_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120174120197_)))
                                     (_hd120173120200_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120174120197_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120173120200_))
                                     (let ((_e120177120205_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120173120200_))))
                                       (let ((_tl120175120210_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120177120205_)))
                                             (_hd120176120208_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120177120205_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120175120210_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120172120202_))
                                                 (let ((_e120180120213_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120172120202_))))
                                                   (let ((_tl120178120218_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120180120213_)))
                                                         (_hd120179120216_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120180120213_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120178120218_))
                                                         (___kont128644128645_
                                                          _hd120179120216_
                                                          _hd120176120208_)
                                                         (___kont128646128647_))))
                                                 (___kont128646128647_))
                                             (___kont128646128647_))))
                                     (___kont128646128647_))))
                             (___kont128646128647_))))))
                  (_lift-kw-lambda-bindings119610_
                   (lambda (_bindings119777_)
                     (let _lp119779_ ((_rest119781_ _bindings119777_)
                                      (_lift1119782_ '())
                                      (_lift2119783_ '())
                                      (_bind119784_ '()))
                       (let* ((_rest119785119793_ _rest119781_)
                              (_else119787119801_
                               (lambda ()
                                 (values (reverse _lift1119782_)
                                         (reverse _lift2119783_)
                                         (reverse _bind119784_))))
                              (_K119789120153_
                               (lambda (_rest119804_ _hd119805_)
                                 (let* ((___stx128672128673_ _hd119805_)
                                        (_g119808119833_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128672128673_)))))
                                   (let ((___kont128674128675_
                                          (lambda (_L119903_ _L119904_)
                                            (let* ((_g119918119971_
                                                    (lambda (_g119919119968_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119919119968_))))
                                                   (_g119917120147_
                                                    (lambda (_g119919119974_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119919119974_))
                                                          (let ((_e119927119976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119919119974_))))
                    (let ((_hd119926119979_
                           (let ()
                             (declare (not safe))
                             (##car _e119927119976_)))
                          (_tl119925119981_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119927119976_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119925119981_))
                          (let ((_e119930119984_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119925119981_))))
                            (let ((_hd119929119987_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119930119984_)))
                                  (_tl119928119989_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119930119984_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119929119987_))
                                  (let ((_e119933119992_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119929119987_))))
                                    (let ((_hd119932119995_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119933119992_)))
                                          (_tl119931119997_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119933119992_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119932119995_))
                                          (let ((_e119936120000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119932119995_))))
                                            (let ((_hd119935120003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119936120000_)))
                                                  (_tl119934120005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119936120000_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119935120003_))
                                                  (let ((_e119939120008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119935120003_))))
                                                    (let ((_hd119938120011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119939120008_)))
                                                          (_tl119937120013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119939120008_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119937120013_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119934120005_))
                      (let ((_e119942120016_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119934120005_))))
                        (let ((_hd119941120019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119942120016_)))
                              (_tl119940120021_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119942120016_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119941120019_))
                              (let ((_e119945120024_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119941120019_))))
                                (let ((_hd119944120027_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119945120024_)))
                                      (_tl119943120029_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119945120024_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119943120029_))
                                      (let ((_e119948120032_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119943120029_))))
                                        (let ((_hd119947120035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119948120032_)))
                                              (_tl119946120037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119948120032_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119947120035_))
                                              (let ((_e119951120040_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119947120035_))))
                                                (let ((_hd119950120043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119951120040_)))
                                                      (_tl119949120045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119951120040_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119950120043_))
                                                      (let ((_e119954120048_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119950120043_))))
                (let ((_hd119953120051_
                       (let () (declare (not safe)) (##car _e119954120048_)))
                      (_tl119952120053_
                       (let () (declare (not safe)) (##cdr _e119954120048_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119953120051_))
                      (let ((_e119957120056_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119953120051_))))
                        (let ((_hd119956120059_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119957120056_)))
                              (_tl119955120061_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119957120056_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119955120061_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119952120053_))
                                  (let ((_e119960120064_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119952120053_))))
                                    (let ((_hd119959120067_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119960120064_)))
                                          (_tl119958120069_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119960120064_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119958120069_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119949120045_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119946120037_))
                                                  (let ((_e119963120072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119946120037_))))
                                                    (let ((_hd119962120075_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119963120072_)))
                                                          (_tl119961120077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119963120072_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119961120077_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119940120021_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119931119997_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119928119989_))
                              (let ((_e119966120080_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119928119989_))))
                                (let ((_hd119965120083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119966120080_)))
                                      (_tl119964120085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119966120080_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119964120085_))
                                      ((lambda (_L120088_
                                                _L120089_
                                                _L120090_
                                                _L120091_
                                                _L120092_)
                                         (let* ((_get-kws-id120132_
                                                 (let ((__tmp129218
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119904_)))
                                                       (__tmp129217
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129218
                                                    __tmp129217)))
                                                (_get-kws-id120134_
                                                 (let ((__tmp129219
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119605_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120132_
                                                    __tmp129219)))
                                                (_main-id120136_
                                                 (let ((__tmp129221
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119904_)))
                                                       (__tmp129220
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129221
                                                    __tmp129220)))
                                                (_main-id120138_
                                                 (let ((__tmp129222
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119605_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120136_
                                                    __tmp129222)))
                                                (_g129223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120134_)))
                                                (_g129224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120138_)))
                                                (_new-kw-dispatch120142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120088_
                                                    'id:
                                                    _L120092_
                                                    'new-id:
                                                    _get-kws-id120134_)))
                                                (_new-get-kws120144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120089_
                                                    'id:
                                                    _L120091_
                                                    'new-id:
                                                    _main-id120138_))))
                                           (let ((__tmp129227
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119904_)))
                                                 (__tmp129226
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120134_)))
                                                 (__tmp129225
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120138_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129227
                                              '" => "
                                              __tmp129226
                                              '" => "
                                              __tmp129225))
                                           (let ((__tmp129232
                                                  (let ((__tmp129233
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126834126835_
                                                            _main-id120138_
                                                            _L120090_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129233
                                                          _lift1119782_)))
                                                 (__tmp129230
                                                  (let ((__tmp129231
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126834126835_
                                                            _get-kws-id120134_
                                                            _new-get-kws120144_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129231
                                                          _lift2119783_)))
                                                 (__tmp129228
                                                  (let ((__tmp129229
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126834126835_
                                                            _L119904_
                                                            _new-kw-dispatch120142_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129229
                                                          _bind119784_))))
                                             (declare (not safe))
                                             (_lp119779_
                                              _rest119804_
                                              __tmp129232
                                              __tmp129230
                                              __tmp129228))))
                                       _hd119965120083_
                                       _hd119962120075_
                                       _hd119959120067_
                                       _hd119956120059_
                                       _hd119938120011_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119918119971_ _g119919119974_)))))
                              (let ()
                                (declare (not safe))
                                (_g119918119971_ _g119919119974_)))
                          (let ()
                            (declare (not safe))
                            (_g119918119971_ _g119919119974_)))
                      (let ()
                        (declare (not safe))
                        (_g119918119971_ _g119919119974_)))
                  (let ()
                    (declare (not safe))
                    (_g119918119971_ _g119919119974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119918119971_
                                                     _g119919119974_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119918119971_
                                                 _g119919119974_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119918119971_
                                             _g119919119974_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119918119971_ _g119919119974_)))
                              (let ()
                                (declare (not safe))
                                (_g119918119971_ _g119919119974_)))))
                      (let ()
                        (declare (not safe))
                        (_g119918119971_ _g119919119974_)))))
              (let ()
                (declare (not safe))
                (_g119918119971_ _g119919119974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119918119971_
                                                 _g119919119974_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119918119971_ _g119919119974_)))))
                              (let ()
                                (declare (not safe))
                                (_g119918119971_ _g119919119974_)))))
                      (let ()
                        (declare (not safe))
                        (_g119918119971_ _g119919119974_)))
                  (let ()
                    (declare (not safe))
                    (_g119918119971_ _g119919119974_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119918119971_
                                                     _g119919119974_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119918119971_
                                             _g119919119974_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119918119971_ _g119919119974_)))))
                          (let ()
                            (declare (not safe))
                            (_g119918119971_ _g119919119974_)))))
                  (let ()
                    (declare (not safe))
                    (_g119918119971_ _g119919119974_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119917120147_ _L119903_))))
                                         (___kont128676128677_
                                          (lambda (_L119854_ _L119855_)
                                            (let ((__tmp129234
                                                   (let ((__tmp129235
                                                          (let ((__tmp129236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119854_ '()))))
                    (declare (not safe))
                    (cons _L119855_ __tmp129236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129235
                                                           _bind119784_))))
                                              (declare (not safe))
                                              (_lp119779_
                                               _rest119804_
                                               _lift1119782_
                                               _lift2119783_
                                               __tmp129234)))))
                                     (let ((___match128699128700_
                                            (lambda (_e119814119879_
                                                     _hd119813119882_
                                                     _tl119812119884_
                                                     _e119817119887_
                                                     _hd119816119890_
                                                     _tl119815119892_
                                                     _e119820119895_
                                                     _hd119819119898_
                                                     _tl119818119900_)
                                              (let ((_L119903_
                                                     _hd119819119898_)
                                                    (_L119904_
                                                     _hd119816119890_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119904_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119903_)))
                                                    (___kont128674128675_
                                                     _L119903_
                                                     _L119904_)
                                                    (___kont128676128677_
                                                     _hd119819119898_
                                                     _hd119813119882_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128672128673_))
                                           (let ((_e119814119879_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128672128673_))))
                                             (let ((_tl119812119884_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119814119879_)))
                                                   (_hd119813119882_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119814119879_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119813119882_))
                                                   (let ((_e119817119887_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119813119882_))))
                                                     (let ((_tl119815119892_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119817119887_)))
                                                           (_hd119816119890_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119817119887_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119815119892_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119812119884_))
                       (let ((_e119820119895_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119812119884_))))
                         (let ((_tl119818119900_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119820119895_)))
                               (_hd119819119898_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119820119895_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119818119900_))
                               (___match128699128700_
                                _e119814119879_
                                _hd119813119882_
                                _tl119812119884_
                                _e119817119887_
                                _hd119816119890_
                                _tl119815119892_
                                _e119820119895_
                                _hd119819119898_
                                _tl119818119900_)
                               (let ()
                                 (declare (not safe))
                                 (_g119808119833_)))))
                       (let () (declare (not safe)) (_g119808119833_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119812119884_))
                       (let ((_e119828119846_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119812119884_))))
                         (let ((_tl119826119851_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119828119846_)))
                               (_hd119827119849_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119828119846_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119826119851_))
                               (___kont128676128677_
                                _hd119827119849_
                                _hd119813119882_)
                               (let ()
                                 (declare (not safe))
                                 (_g119808119833_)))))
                       (let () (declare (not safe)) (_g119808119833_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119812119884_))
                                                       (let ((_e119828119846_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119812119884_))))
                 (let ((_tl119826119851_
                        (let () (declare (not safe)) (##cdr _e119828119846_)))
                       (_hd119827119849_
                        (let () (declare (not safe)) (##car _e119828119846_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119826119851_))
                       (___kont128676128677_ _hd119827119849_ _hd119813119882_)
                       (let () (declare (not safe)) (_g119808119833_)))))
               (let () (declare (not safe)) (_g119808119833_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119808119833_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119785119793_))
                             (let ((_hd119790120156_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119785119793_)))
                                   (_tl119791120158_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119785119793_))))
                               (let* ((_hd120161_ _hd119790120156_)
                                      (_rest120163_ _tl119791120158_))
                                 (declare (not safe))
                                 (_K119789120153_ _rest120163_ _hd120161_)))
                             (let ()
                               (declare (not safe))
                               (_else119787119801_))))))))
          (let* ((___stx128716128717_ _stx119605_)
                 (_g119613119639_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128716128717_)))))
            (let ((___kont128718128719_
                   (lambda (_L119699_ _L119700_)
                     (let ((__tmp129238
                            (lambda ()
                              (if (let ((__tmp129265
                                         (let ((__tmp129266
                                                (lambda (_g119728119731_
                                                         _g119729119733_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119728119731_
                                                          _g119729119733_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129266
                                                   '()
                                                   _L119700_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119609_
                                            __tmp129265))
                                  (let ((_g129252_
                                         (let ((__tmp129254
                                                (let ((__tmp129255
                                                       (lambda (_g119735119738_
                                                                _g119736119740_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119735119738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119736119740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129255
                                                          '()
                                                          _L119700_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119610_
                                            __tmp129254))))
                                    (begin
                                      (let ((_g129253_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129252_)
                                                   (##vector-length _g129252_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129253_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129253_)))
                                      (let ((_lift1119743_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129252_ 0)))
                                            (_lift2119744_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129252_ 1)))
                                            (_hd119745_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129252_ 2))))
                                        (let* ((_expr119747_
                                                (let ((__tmp129256
                                                       (let ((__tmp129257
                                                              (let ((__tmp129258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119699_ '()))))
                        (declare (not safe))
                        (cons _hd119745_ __tmp129258))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129256
                                                   _stx119605_)))
                                               (_expr119749_
                                                (let ((__tmp129259
                                                       (let ((__tmp129260
                                                              (let ((__tmp129261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119747_ '()))))
                        (declare (not safe))
                        (cons _lift2119744_ __tmp129261))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129259
                                                   _stx119605_)))
                                               (_expr119751_
                                                (let ((__tmp129262
                                                       (let ((__tmp129263
                                                              (let ((__tmp129264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119749_ '()))))
                        (declare (not safe))
                        (cons _lift1119743_ __tmp129264))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129262
                                                   _stx119605_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self119604_
                                             _expr119751_))))))
                                  (let ((_g129239_
                                         (let ((__tmp129241
                                                (let ((__tmp129242
                                                       (lambda (_g119753119756_
                                                                _g119754119758_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119753119756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119754119758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129242
                                                          '()
                                                          _L119700_))))
                                           (declare (not safe))
                                           (_compile-bindings119608_
                                            __tmp129241))))
                                    (begin
                                      (let ((_g129240_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129239_)
                                                   (##vector-length _g129239_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129240_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129240_)))
                                      (let ((_lift1119761_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129239_ 0)))
                                            (_lift2119762_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129239_ 1)))
                                            (_hd119763_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129239_ 2))))
                                        (let* ((_body119765_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self119604_
                                                   _L119699_)))
                                               (_expr119767_
                                                (let ((__tmp129243
                                                       (let ((__tmp129244
                                                              (let ((__tmp129245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119765_ '()))))
                        (declare (not safe))
                        (cons _hd119763_ __tmp129245))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129243
                                                   _stx119605_)))
                                               (_expr119769_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119762_))
                                                    _expr119767_
                                                    (let ((__tmp129246
                                                           (let ((__tmp129247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129248
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119767_ '()))))
                            (declare (not safe))
                            (cons _lift2119762_ __tmp129248))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129247))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129246 _stx119605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119771_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119761_))
                                                    _expr119769_
                                                    (let ((__tmp129249
                                                           (let ((__tmp129250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129251
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119769_ '()))))
                            (declare (not safe))
                            (cons _lift1119761_ __tmp129251))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129250))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129249 _stx119605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119771_)))))))
                           (__tmp129237
                            (let ((__obj128932
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128932)
                              __obj128932)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129238
                        gx#current-expander-context
                        __tmp129237))))
                  (___kont128722128723_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self119604_ _stx119605_)))))
              (let ((___match128743128744_
                     (lambda (_e119619119651_
                              _hd119618119654_
                              _tl119617119656_
                              _e119622119659_
                              _hd119621119662_
                              _tl119620119664_
                              ___splice128720128721_
                              _target119623119667_
                              _tl119625119669_)
                       (letrec ((_loop119626119672_
                                 (lambda (_hd119624119675_ _bind119630119677_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119624119675_))
                                       (let ((_e119627119680_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119624119675_))))
                                         (let ((_lp-tl119629119685_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119627119680_)))
                                               (_lp-hd119628119683_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119627119680_))))
                                           (let ((__tmp129269
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119628119683_
                                                          _bind119630119677_))))
                                             (declare (not safe))
                                             (_loop119626119672_
                                              _lp-tl119629119685_
                                              __tmp129269))))
                                       (let ((_bind119631119688_
                                              (reverse _bind119630119677_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119620119664_))
                                             (let ((_e119634119691_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119620119664_))))
                                               (let ((_tl119632119696_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119634119691_)))
                                                     (_hd119633119694_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119634119691_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119632119696_))
                                                     (let ((_L119699_
                                                            _hd119633119694_)
                                                           (_L119700_
                                                            _bind119631119688_))
                                                       (if (let ((__tmp129267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129268
                                 (lambda (_g119720119723_ _g119721119725_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119720119723_ _g119721119725_)))))
                            (declare (not safe))
                            (foldr1 __tmp129268 '() _L119700_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129267))
                   (___kont128718128719_ _L119699_ _L119700_)
                   (___kont128722128723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128722128723_))))
                                             (___kont128722128723_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119626119672_ _target119623119667_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128716128717_))
                    (let ((_e119619119651_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128716128717_))))
                      (let ((_tl119617119656_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119619119651_)))
                            (_hd119618119654_
                             (let ()
                               (declare (not safe))
                               (##car _e119619119651_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119617119656_))
                            (let ((_e119622119659_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119617119656_))))
                              (let ((_tl119620119664_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119622119659_)))
                                    (_hd119621119662_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119622119659_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119621119662_))
                                    (let ((___splice128720128721_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119621119662_
                                              '0))))
                                      (let ((_tl119625119669_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128720128721_
                                                '1)))
                                            (_target119623119667_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128720128721_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119625119669_))
                                            (___match128743128744_
                                             _e119619119651_
                                             _hd119618119654_
                                             _tl119617119656_
                                             _e119622119659_
                                             _hd119621119662_
                                             _tl119620119664_
                                             ___splice128720128721_
                                             _target119623119667_
                                             _tl119625119669_)
                                            (___kont128722128723_))))
                                    (___kont128722128723_))))
                            (___kont128722128723_))))
                    (___kont128722128723_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self118747_ _stx118748_)
        (letrec* ((_bind-e__126839126840_
                   (lambda (_id119588_ _expr119589_ _compile?119590_)
                     (let ((__tmp129272
                            (let ()
                              (declare (not safe))
                              (cons _id119588_ '())))
                           (__tmp129270
                            (let ((__tmp129271
                                   (if _compile?119590_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self118747_
                                          _expr119589_))
                                       _expr119589_)))
                              (declare (not safe))
                              (cons __tmp129271 '()))))
                       (declare (not safe))
                       (cons __tmp129272 __tmp129270))))
                  (_bind-e__0__126841126842_
                   (lambda (_id119595_ _expr119596_)
                     (let ((_compile?119598_ '#t))
                       (declare (not safe))
                       (_bind-e__126839126840_
                        _id119595_
                        _expr119596_
                        _compile?119598_))))
                  (_bind-e118750_
                   (lambda _g129274_
                     (let ((_g129273_
                            (let ()
                              (declare (not safe))
                              (##length _g129274_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129273_ 2))
                              (apply (lambda (_id119595_ _expr119596_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126841126842_
                                          _id119595_
                                          _expr119596_)))
                                     _g129274_))
                             ((let () (declare (not safe)) (##fx= _g129273_ 3))
                              (apply (lambda (_id119600_
                                              _expr119601_
                                              _compile?119602_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126839126840_
                                          _id119600_
                                          _expr119601_
                                          _compile?119602_)))
                                     _g129274_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129274_))))))
                  (_compile-bindings118751_
                   (lambda (_rest118886_)
                     (let _lp118888_ ((_rest118890_ _rest118886_)
                                      (_bind118891_ '()))
                       (let* ((_rest118892118900_ _rest118890_)
                              (_else118894118908_
                               (lambda () (reverse _bind118891_)))
                              (_K118896119575_
                               (lambda (_rest118911_ _hd118912_)
                                 (let* ((___stx128766128767_ _hd118912_)
                                        (_g118917118964_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128766128767_)))))
                                   (let ((___kont128768128769_
                                          (lambda (_L119482_ _L119483_)
                                            (let* ((___stx128746128747_
                                                    _L119482_)
                                                   (_g119498119512_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128746128747_)))))
                                              (let ((___kont128748128749_
                                                     (lambda (_L119560_)
                                                       (let ((__tmp129275
                                                              (let ((__tmp129276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126839126840_
                                _L119483_
                                _L119482_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129276 _bind118891_))))
                 (declare (not safe))
                 (_lp118888_ _rest118911_ __tmp129275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128750128751_
                                                     (lambda (_L119525_)
                                                       (let ((_g129277_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118748_
                         _L119483_
                         _L119525_
                         '#t))))
                 (begin
                   (let ((_g129278_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129277_)
                                (##vector-length _g129277_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129278_ 3)))
                         (error "Context expects 3 values" _g129278_)))
                   (let ((_ids119535_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129277_ 0)))
                         (_impls119536_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129277_ 1)))
                         (_clauses119537_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129277_ 2))))
                     (let* ((_g129279_
                             (for-each gx#core-bind-runtime! _ids119535_))
                            (_xbind119540_
                             (map _bind-e118750_ _ids119535_ _impls119536_))
                            (_expr*119542_
                             (let ((__tmp129281
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119537_)))
                                   (__tmp129280
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129281
                                __tmp129280)))
                            (_bind*119544_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126839126840_
                                _L119483_
                                _expr*119542_
                                '#f))))
                       (let ((__tmp129283
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119483_)))
                             (__tmp129282
                              (map gxc#identifier-symbol _ids119535_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129283
                          '" => "
                          __tmp129282))
                       (let ((__tmp129284
                              (let ((__tmp129285
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118891_
                                               _xbind119540_))))
                                (declare (not safe))
                                (cons _bind*119544_ __tmp129285))))
                         (declare (not safe))
                         (_lp118888_ _rest118911_ __tmp129284)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128757128758_
                                                       (lambda (_e119503119552_
                                                                _hd119502119555_
                                                                _tl119501119557_)
                                                         (let ((_L119560_
                                                                _tl119501119557_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119560_))
                       (___kont128748128749_ _L119560_)
                       (___kont128750128751_ _tl119501119557_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128746128747_))
                                                      (let ((_e119503119552_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128746128747_))))
                (let ((_tl119501119557_
                       (let () (declare (not safe)) (##cdr _e119503119552_)))
                      (_hd119502119555_
                       (let () (declare (not safe)) (##car _e119503119552_))))
                  (___match128757128758_
                   _e119503119552_
                   _hd119502119555_
                   _tl119501119557_)))
              (let () (declare (not safe)) (_g119498119512_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128770128771_
                                          (lambda (_L119310_ _L119311_)
                                            (let* ((_g119325119355_
                                                    (lambda (_g119326119352_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119326119352_))))
                                                   (_g119324119450_
                                                    (lambda (_g119326119358_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119326119358_))
                                                          (let ((_e119332119360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119326119358_))))
                    (let ((_hd119331119363_
                           (let ()
                             (declare (not safe))
                             (##car _e119332119360_)))
                          (_tl119330119365_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119332119360_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119330119365_))
                          (let ((_e119335119368_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119330119365_))))
                            (let ((_hd119334119371_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119335119368_)))
                                  (_tl119333119373_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119335119368_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119334119371_))
                                  (let ((_e119338119376_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119334119371_))))
                                    (let ((_hd119337119379_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119338119376_)))
                                          (_tl119336119381_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119338119376_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119337119379_))
                                          (let ((_e119341119384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119337119379_))))
                                            (let ((_hd119340119387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119341119384_)))
                                                  (_tl119339119389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119341119384_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119340119387_))
                                                  (let ((_e119344119392_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119340119387_))))
                                                    (let ((_hd119343119395_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119344119392_)))
                                                          (_tl119342119397_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119344119392_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119342119397_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119339119389_))
                      (let ((_e119347119400_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119339119389_))))
                        (let ((_hd119346119403_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119347119400_)))
                              (_tl119345119405_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119347119400_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119345119405_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119336119381_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119333119373_))
                                      (let ((_e119350119408_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119333119373_))))
                                        (let ((_hd119349119411_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119350119408_)))
                                              (_tl119348119413_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119350119408_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119348119413_))
                                              ((lambda (_L119416_
                                                        _L119417_
                                                        _L119418_)
                                                 (let* ((_lambda-id119442_
                                                         (let ((__tmp129287
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119311_)))
                       (__tmp129286 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129287 __tmp129286)))
                (_lambda-id119444_
                 (let ((__tmp129288
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118748_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119442_ __tmp129288)))
                (_g129289_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119444_)))
                (_new-case-lambda-expr119447_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119416_
                    'id:
                    _L119418_
                    'new-id:
                    _lambda-id119444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129291
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119311_)))
                                                         (__tmp129290
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119444_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129291
                                                      '" => "
                                                      __tmp129290))
                                                   (let ((__tmp129294
                                                          (let ((__tmp129295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126839126840_
                            _L119311_
                            _new-case-lambda-expr119447_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129295 _rest118911_)))
                 (__tmp129292
                  (let ((__tmp129293
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126841126842_
                            _lambda-id119444_
                            _L119417_))))
                    (declare (not safe))
                    (cons __tmp129293 _bind118891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118888_
                                                      __tmp129294
                                                      __tmp129292))))
                                               _hd119349119411_
                                               _hd119346119403_
                                               _hd119343119395_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119325119355_
                                                 _g119326119358_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119325119355_ _g119326119358_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119325119355_ _g119326119358_)))
                              (let ()
                                (declare (not safe))
                                (_g119325119355_ _g119326119358_)))))
                      (let ()
                        (declare (not safe))
                        (_g119325119355_ _g119326119358_)))
                  (let ()
                    (declare (not safe))
                    (_g119325119355_ _g119326119358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119325119355_
                                                     _g119326119358_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119325119355_
                                             _g119326119358_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119325119355_ _g119326119358_)))))
                          (let ()
                            (declare (not safe))
                            (_g119325119355_ _g119326119358_)))))
                  (let ()
                    (declare (not safe))
                    (_g119325119355_ _g119326119358_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119324119450_ _L119310_))))
                                         (___kont128772128773_
                                          (lambda (_L119034_ _L119035_)
                                            (let* ((_g119049119102_
                                                    (lambda (_g119050119099_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119050119099_))))
                                                   (_g119048119278_
                                                    (lambda (_g119050119105_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119050119105_))
                                                          (let ((_e119058119107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119050119105_))))
                    (let ((_hd119057119110_
                           (let ()
                             (declare (not safe))
                             (##car _e119058119107_)))
                          (_tl119056119112_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119058119107_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119056119112_))
                          (let ((_e119061119115_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119056119112_))))
                            (let ((_hd119060119118_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119061119115_)))
                                  (_tl119059119120_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119061119115_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119060119118_))
                                  (let ((_e119064119123_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119060119118_))))
                                    (let ((_hd119063119126_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119064119123_)))
                                          (_tl119062119128_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119064119123_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119063119126_))
                                          (let ((_e119067119131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119063119126_))))
                                            (let ((_hd119066119134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119067119131_)))
                                                  (_tl119065119136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119067119131_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119066119134_))
                                                  (let ((_e119070119139_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119066119134_))))
                                                    (let ((_hd119069119142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119070119139_)))
                                                          (_tl119068119144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119070119139_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119068119144_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119065119136_))
                      (let ((_e119073119147_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119065119136_))))
                        (let ((_hd119072119150_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119073119147_)))
                              (_tl119071119152_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119073119147_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119072119150_))
                              (let ((_e119076119155_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119072119150_))))
                                (let ((_hd119075119158_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119076119155_)))
                                      (_tl119074119160_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119076119155_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119074119160_))
                                      (let ((_e119079119163_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119074119160_))))
                                        (let ((_hd119078119166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119079119163_)))
                                              (_tl119077119168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119079119163_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119078119166_))
                                              (let ((_e119082119171_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119078119166_))))
                                                (let ((_hd119081119174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119082119171_)))
                                                      (_tl119080119176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119082119171_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119081119174_))
                                                      (let ((_e119085119179_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119081119174_))))
                (let ((_hd119084119182_
                       (let () (declare (not safe)) (##car _e119085119179_)))
                      (_tl119083119184_
                       (let () (declare (not safe)) (##cdr _e119085119179_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119084119182_))
                      (let ((_e119088119187_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119084119182_))))
                        (let ((_hd119087119190_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119088119187_)))
                              (_tl119086119192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119088119187_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119086119192_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119083119184_))
                                  (let ((_e119091119195_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119083119184_))))
                                    (let ((_hd119090119198_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119091119195_)))
                                          (_tl119089119200_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119091119195_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119089119200_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119080119176_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119077119168_))
                                                  (let ((_e119094119203_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119077119168_))))
                                                    (let ((_hd119093119206_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119094119203_)))
                                                          (_tl119092119208_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119094119203_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119092119208_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119071119152_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119062119128_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119059119120_))
                              (let ((_e119097119211_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119059119120_))))
                                (let ((_hd119096119214_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119097119211_)))
                                      (_tl119095119216_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119097119211_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119095119216_))
                                      ((lambda (_L119219_
                                                _L119220_
                                                _L119221_
                                                _L119222_
                                                _L119223_)
                                         (let* ((_get-kws-id119263_
                                                 (let ((__tmp129297
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119035_)))
                                                       (__tmp129296
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129297
                                                    __tmp129296)))
                                                (_get-kws-id119265_
                                                 (let ((__tmp129298
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118748_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119263_
                                                    __tmp129298)))
                                                (_main-id119267_
                                                 (let ((__tmp129300
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119035_)))
                                                       (__tmp129299
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129300
                                                    __tmp129299)))
                                                (_main-id119269_
                                                 (let ((__tmp129301
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118748_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119267_
                                                    __tmp129301)))
                                                (_g129302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119265_)))
                                                (_g129303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119269_)))
                                                (_new-kw-dispatch119273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119219_
                                                    'id:
                                                    _L119223_
                                                    'new-id:
                                                    _get-kws-id119265_)))
                                                (_new-get-kws119275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119220_
                                                    'id:
                                                    _L119222_
                                                    'new-id:
                                                    _main-id119269_))))
                                           (let ((__tmp129306
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119035_)))
                                                 (__tmp129305
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119265_)))
                                                 (__tmp129304
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119269_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129306
                                              '" => "
                                              __tmp129305
                                              '" => "
                                              __tmp129304))
                                           (let ((__tmp129307
                                                  (let ((__tmp129312
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126839126840_
                                                            _main-id119269_
                                                            _L119221_
                                                            '#f)))
                                                        (__tmp129308
                                                         (let ((__tmp129311
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126839126840_
                           _get-kws-id119265_
                           _new-get-kws119275_
                           '#f)))
                       (__tmp129309
                        (let ((__tmp129310
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126839126840_
                                  _L119035_
                                  _new-kw-dispatch119273_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129310 _rest118911_))))
                   (declare (not safe))
                   (cons __tmp129311 __tmp129309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129312
                                                          __tmp129308))))
                                             (declare (not safe))
                                             (_lp118888_
                                              __tmp129307
                                              _bind118891_))))
                                       _hd119096119214_
                                       _hd119093119206_
                                       _hd119090119198_
                                       _hd119087119190_
                                       _hd119069119142_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119049119102_ _g119050119105_)))))
                              (let ()
                                (declare (not safe))
                                (_g119049119102_ _g119050119105_)))
                          (let ()
                            (declare (not safe))
                            (_g119049119102_ _g119050119105_)))
                      (let ()
                        (declare (not safe))
                        (_g119049119102_ _g119050119105_)))
                  (let ()
                    (declare (not safe))
                    (_g119049119102_ _g119050119105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119049119102_
                                                     _g119050119105_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119049119102_
                                                 _g119050119105_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119049119102_
                                             _g119050119105_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119049119102_ _g119050119105_)))
                              (let ()
                                (declare (not safe))
                                (_g119049119102_ _g119050119105_)))))
                      (let ()
                        (declare (not safe))
                        (_g119049119102_ _g119050119105_)))))
              (let ()
                (declare (not safe))
                (_g119049119102_ _g119050119105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119049119102_
                                                 _g119050119105_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119049119102_ _g119050119105_)))))
                              (let ()
                                (declare (not safe))
                                (_g119049119102_ _g119050119105_)))))
                      (let ()
                        (declare (not safe))
                        (_g119049119102_ _g119050119105_)))
                  (let ()
                    (declare (not safe))
                    (_g119049119102_ _g119050119105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119049119102_
                                                     _g119050119105_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119049119102_
                                             _g119050119105_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119049119102_ _g119050119105_)))))
                          (let ()
                            (declare (not safe))
                            (_g119049119102_ _g119050119105_)))))
                  (let ()
                    (declare (not safe))
                    (_g119049119102_ _g119050119105_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119048119278_ _L119034_))))
                                         (___kont128774128775_
                                          (lambda (_L118985_ _L118986_)
                                            (let ((__tmp129313
                                                   (let ((__tmp129314
                                                          (let ((__tmp129315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129316
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self118747_ _L118985_))))
                           (declare (not safe))
                           (cons __tmp129316 '()))))
                    (declare (not safe))
                    (cons _L118986_ __tmp129315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129314
                                                           _bind118891_))))
                                              (declare (not safe))
                                              (_lp118888_
                                               _rest118911_
                                               __tmp129313)))))
                                     (let* ((___match128841128842_
                                             (lambda (_e118945119010_
                                                      _hd118944119013_
                                                      _tl118943119015_
                                                      _e118948119018_
                                                      _hd118947119021_
                                                      _tl118946119023_
                                                      _e118951119026_
                                                      _hd118950119029_
                                                      _tl118949119031_)
                                               (let ((_L119034_
                                                      _hd118950119029_)
                                                     (_L119035_
                                                      _hd118947119021_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119035_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L119034_)))
                                                     (___kont128772128773_
                                                      _L119034_
                                                      _L119035_)
                                                     (___kont128774128775_
                                                      _hd118950119029_
                                                      _hd118944119013_)))))
                                            (___match128819128820_
                                             (lambda (_e118934119286_
                                                      _hd118933119289_
                                                      _tl118932119291_
                                                      _e118937119294_
                                                      _hd118936119297_
                                                      _tl118935119299_
                                                      _e118940119302_
                                                      _hd118939119305_
                                                      _tl118938119307_)
                                               (let ((_L119310_
                                                      _hd118939119305_)
                                                     (_L119311_
                                                      _hd118936119297_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119311_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119310_)))
                                                     (___kont128770128771_
                                                      _L119310_
                                                      _L119311_)
                                                     (___match128841128842_
                                                      _e118934119286_
                                                      _hd118933119289_
                                                      _tl118932119291_
                                                      _e118937119294_
                                                      _hd118936119297_
                                                      _tl118935119299_
                                                      _e118940119302_
                                                      _hd118939119305_
                                                      _tl118938119307_)))))
                                            (___match128797128798_
                                             (lambda (_e118923119458_
                                                      _hd118922119461_
                                                      _tl118921119463_
                                                      _e118926119466_
                                                      _hd118925119469_
                                                      _tl118924119471_
                                                      _e118929119474_
                                                      _hd118928119477_
                                                      _tl118927119479_)
                                               (let ((_L119482_
                                                      _hd118928119477_)
                                                     (_L119483_
                                                      _hd118925119469_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119483_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119482_)))
                                                     (___kont128768128769_
                                                      _L119482_
                                                      _L119483_)
                                                     (___match128819128820_
                                                      _e118923119458_
                                                      _hd118922119461_
                                                      _tl118921119463_
                                                      _e118926119466_
                                                      _hd118925119469_
                                                      _tl118924119471_
                                                      _e118929119474_
                                                      _hd118928119477_
                                                      _tl118927119479_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128766128767_))
                                           (let ((_e118923119458_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128766128767_))))
                                             (let ((_tl118921119463_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118923119458_)))
                                                   (_hd118922119461_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118923119458_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118922119461_))
                                                   (let ((_e118926119466_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118922119461_))))
                                                     (let ((_tl118924119471_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118926119466_)))
                                                           (_hd118925119469_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118926119466_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118924119471_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118921119463_))
                       (let ((_e118929119474_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118921119463_))))
                         (let ((_tl118927119479_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118929119474_)))
                               (_hd118928119477_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118929119474_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118927119479_))
                               (___match128797128798_
                                _e118923119458_
                                _hd118922119461_
                                _tl118921119463_
                                _e118926119466_
                                _hd118925119469_
                                _tl118924119471_
                                _e118929119474_
                                _hd118928119477_
                                _tl118927119479_)
                               (let ()
                                 (declare (not safe))
                                 (_g118917118964_)))))
                       (let () (declare (not safe)) (_g118917118964_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118921119463_))
                       (let ((_e118959118977_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118921119463_))))
                         (let ((_tl118957118982_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118959118977_)))
                               (_hd118958118980_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118959118977_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118957118982_))
                               (___kont128774128775_
                                _hd118958118980_
                                _hd118922119461_)
                               (let ()
                                 (declare (not safe))
                                 (_g118917118964_)))))
                       (let () (declare (not safe)) (_g118917118964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118921119463_))
                                                       (let ((_e118959118977_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118921119463_))))
                 (let ((_tl118957118982_
                        (let () (declare (not safe)) (##cdr _e118959118977_)))
                       (_hd118958118980_
                        (let () (declare (not safe)) (##car _e118959118977_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118957118982_))
                       (___kont128774128775_ _hd118958118980_ _hd118922119461_)
                       (let () (declare (not safe)) (_g118917118964_)))))
               (let () (declare (not safe)) (_g118917118964_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118917118964_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118892118900_))
                             (let ((_hd118897119578_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118892118900_)))
                                   (_tl118898119580_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118892118900_))))
                               (let* ((_hd119583_ _hd118897119578_)
                                      (_rest119585_ _tl118898119580_))
                                 (declare (not safe))
                                 (_K118896119575_ _rest119585_ _hd119583_)))
                             (let ()
                               (declare (not safe))
                               (_else118894118908_))))))))
          (let* ((___stx128858128859_ _stx118748_)
                 (_g118754118781_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128858128859_)))))
            (let ((___kont128860128861_
                   (lambda (_L118841_ _L118842_ _L118843_)
                     (let ((__tmp129318
                            (lambda ()
                              (let ((_hd118880_
                                     (let ((__tmp129319
                                            (let ((__tmp129320
                                                   (lambda (_g118872118875_
                                                            _g118873118877_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118872118875_
                                                             _g118873118877_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129320
                                                      '()
                                                      _L118842_))))
                                       (declare (not safe))
                                       (_compile-bindings118751_ __tmp129319)))
                                    (_body118881_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self118747_
                                        _L118841_))))
                                (let ((__tmp129321
                                       (let ((__tmp129322
                                              (let ((__tmp129323
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118881_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118880_
                                                      __tmp129323))))
                                         (declare (not safe))
                                         (cons _L118843_ __tmp129322))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129321
                                   _stx118748_)))))
                           (__tmp129317
                            (let ((__obj128933
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128933)
                              __obj128933)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129318
                        gx#current-expander-context
                        __tmp129317))))
                  (___kont128864128865_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self118747_ _stx118748_)))))
              (let ((___match128885128886_
                     (lambda (_e118761118793_
                              _hd118760118796_
                              _tl118759118798_
                              _e118764118801_
                              _hd118763118804_
                              _tl118762118806_
                              ___splice128862128863_
                              _target118765118809_
                              _tl118767118811_)
                       (letrec ((_loop118768118814_
                                 (lambda (_hd118766118817_ _bind118772118819_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118766118817_))
                                       (let ((_e118769118822_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118766118817_))))
                                         (let ((_lp-tl118771118827_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118769118822_)))
                                               (_lp-hd118770118825_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118769118822_))))
                                           (let ((__tmp129326
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118770118825_
                                                          _bind118772118819_))))
                                             (declare (not safe))
                                             (_loop118768118814_
                                              _lp-tl118771118827_
                                              __tmp129326))))
                                       (let ((_bind118773118830_
                                              (reverse _bind118772118819_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118762118806_))
                                             (let ((_e118776118833_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118762118806_))))
                                               (let ((_tl118774118838_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118776118833_)))
                                                     (_hd118775118836_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118776118833_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118774118838_))
                                                     (let ((_L118841_
                                                            _hd118775118836_)
                                                           (_L118842_
                                                            _bind118773118830_)
                                                           (_L118843_
                                                            _hd118760118796_))
                                                       (if (let ((__tmp129324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129325
                                 (lambda (_g118864118867_ _g118865118869_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118864118867_ _g118865118869_)))))
                            (declare (not safe))
                            (foldr1 __tmp129325 '() _L118842_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129324))
                   (___kont128860128861_ _L118841_ _L118842_ _L118843_)
                   (___kont128864128865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128864128865_))))
                                             (___kont128864128865_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118768118814_ _target118765118809_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128858128859_))
                    (let ((_e118761118793_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128858128859_))))
                      (let ((_tl118759118798_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118761118793_)))
                            (_hd118760118796_
                             (let ()
                               (declare (not safe))
                               (##car _e118761118793_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118759118798_))
                            (let ((_e118764118801_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118759118798_))))
                              (let ((_tl118762118806_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118764118801_)))
                                    (_hd118763118804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118764118801_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118763118804_))
                                    (let ((___splice128862128863_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118763118804_
                                              '0))))
                                      (let ((_tl118767118811_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128862128863_
                                                '1)))
                                            (_target118765118809_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128862128863_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118767118811_))
                                            (___match128885128886_
                                             _e118761118793_
                                             _hd118760118796_
                                             _tl118759118798_
                                             _e118764118801_
                                             _hd118763118804_
                                             _tl118762118806_
                                             ___splice128862128863_
                                             _target118765118809_
                                             _tl118767118811_)
                                            (___kont128864128865_))))
                                    (___kont128864128865_))))
                            (___kont128864128865_))))
                    (___kont128864128865_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118665_)
        (let* ((___stx128888128889_ _bind118665_)
               (_g118668118685_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128888128889_)))))
          (let ((___kont128890128891_
                 (lambda (_L118721_ _L118722_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118722_))
                       (let ((_$e118738_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118721_))))
                         (if _$e118738_
                             _$e118738_
                             (let ((_$e118741_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118721_))))
                               (if _$e118741_
                                   _$e118741_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118721_))))))
                       '#f)))
                (___kont128892128893_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128888128889_))
                (let ((_e118674118697_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128888128889_))))
                  (let ((_tl118672118702_
                         (let () (declare (not safe)) (##cdr _e118674118697_)))
                        (_hd118673118700_
                         (let ()
                           (declare (not safe))
                           (##car _e118674118697_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118673118700_))
                        (let ((_e118677118705_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118673118700_))))
                          (let ((_tl118675118710_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118677118705_)))
                                (_hd118676118708_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118677118705_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118675118710_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118672118702_))
                                    (let ((_e118680118713_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118672118702_))))
                                      (let ((_tl118678118718_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118680118713_)))
                                            (_hd118679118716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118680118713_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118678118718_))
                                            (___kont128890128891_
                                             _hd118679118716_
                                             _hd118676118708_)
                                            (___kont128892128893_))))
                                    (___kont128892128893_))
                                (___kont128892128893_))))
                        (___kont128892128893_))))
                (___kont128892128893_))))))))
