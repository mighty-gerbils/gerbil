(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710487493)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp128872 (list gxc#::void::t))
            (__tmp128870
             (let ((__tmp128871
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128871 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp128872
         '()
         __tmp128870
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args126767_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args126767_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (let ((__tmp128873
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
        (make-promise __tmp128873)))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126759_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self126762_
                (let ((__obj128854
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj128854))
               (__tmp128874
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126762_ _stx126759_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128874
           gxc#current-compile-method
           _self126762_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp128877 (list gxc#::false::t))
            (__tmp128875
             (let ((__tmp128876
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128876 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp128877
         '()
         __tmp128875
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args126756_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args126756_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (let ((__tmp128878
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
        (make-promise __tmp128878)))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126748_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self126751_
                (let ((__obj128856
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj128856))
               (__tmp128879
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126751_ _stx126748_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128879
           gxc#current-compile-method
           _self126751_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp128882 (list gxc#::void::t))
            (__tmp128880
             (let ((__tmp128881
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128881 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp128882
         '()
         __tmp128880
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args126745_
        (apply make-instance gxc#::collect-type-info::t _$args126745_)))
    (define gxc#::collect-type-info-bind-methods!
      (let ((__tmp128883
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
        (make-promise __tmp128883)))
    (define gxc#apply-collect-type-info
      (lambda (_stx126737_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self126740_
                (let ((__obj128858
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj128858))
               (__tmp128884
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126740_ _stx126737_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128884
           gxc#current-compile-method
           _self126740_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp128887 (list gxc#::false::t))
            (__tmp128885
             (let ((__tmp128886
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128886 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp128887
         '()
         __tmp128885
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args126734_
        (apply make-instance gxc#::basic-expression-type::t _$args126734_)))
    (define gxc#::basic-expression-type-bind-methods!
      (let ((__tmp128888
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
        (make-promise __tmp128888)))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126726_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self126729_
                (let ((__obj128860
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj128860))
               (__tmp128889
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126729_ _stx126726_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128889
           gxc#current-compile-method
           _self126729_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp128892 (list gxc#::basic-xform::t))
            (__tmp128890
             (let ((__tmp128891
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp128891 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp128892
         '()
         __tmp128890
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args126723_
        (apply make-instance gxc#::lift-top-lambdas::t _$args126723_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (let ((__tmp128893
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
        (make-promise __tmp128893)))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126715_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self126718_
                (let ((__obj128862
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj128862))
               (__tmp128894
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self126718_ _stx126715_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp128894
           gxc#current-compile-method
           _self126718_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self126617_ _stx126618_)
        (let* ((___stx126780126781_ _stx126618_)
               (_g126621126641_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126780126781_)))))
          (let ((___kont126782126783_
                 (lambda (_L126685_ _L126686_)
                   (let ((_sym126704_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126686_))))
                     (if (let ((__tmp128895 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128895 _sym126704_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126704_))
                         (let ((_type126705126707_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126685_))))
                           (if _type126705126707_
                               (let ((_type126710_ _type126705126707_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126704_
                                  _type126710_))
                               '#f))))))
                (___kont126784126785_ (lambda () '#!void)))
            (let ((___match126813126814_
                   (lambda (_e126627126653_
                            _hd126626126656_
                            _tl126625126658_
                            _e126630126661_
                            _hd126629126664_
                            _tl126628126666_
                            _e126633126669_
                            _hd126632126672_
                            _tl126631126674_
                            _e126636126677_
                            _hd126635126680_
                            _tl126634126682_)
                     (let ((_L126685_ _hd126635126680_)
                           (_L126686_ _hd126632126672_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126686_))
                           (___kont126782126783_ _L126685_ _L126686_)
                           (___kont126784126785_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126780126781_))
                  (let ((_e126627126653_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126780126781_))))
                    (let ((_tl126625126658_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126627126653_)))
                          (_hd126626126656_
                           (let ()
                             (declare (not safe))
                             (##car _e126627126653_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126625126658_))
                          (let ((_e126630126661_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126625126658_))))
                            (let ((_tl126628126666_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126630126661_)))
                                  (_hd126629126664_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126630126661_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126629126664_))
                                  (let ((_e126633126669_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126629126664_))))
                                    (let ((_tl126631126674_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126633126669_)))
                                          (_hd126632126672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126633126669_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126631126674_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126628126666_))
                                              (let ((_e126636126677_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126628126666_))))
                                                (let ((_tl126634126682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126636126677_)))
                                                      (_hd126635126680_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126636126677_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126634126682_))
                                                      (___match126813126814_
                                                       _e126627126653_
                                                       _hd126626126656_
                                                       _tl126625126658_
                                                       _e126630126661_
                                                       _hd126629126664_
                                                       _tl126628126666_
                                                       _e126633126669_
                                                       _hd126632126672_
                                                       _tl126631126674_
                                                       _e126636126677_
                                                       _hd126635126680_
                                                       _tl126634126682_)
                                                      (___kont126784126785_))))
                                              (___kont126784126785_))
                                          (___kont126784126785_))))
                                  (___kont126784126785_))))
                          (___kont126784126785_))))
                  (___kont126784126785_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self126472_ _stx126473_)
        (let* ((___stx126816126817_ _stx126473_)
               (_g126476126507_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126816126817_)))))
          (let ((___kont126818126819_
                 (lambda (_L126589_ _L126590_)
                   (let ((_sym126606_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126590_))))
                     (if (let ((__tmp128896 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128896 _sym126606_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126606_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126606_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126606_))
                             (let ((_type126607126609_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126589_))))
                               (if _type126607126609_
                                   (let ((_type126612_ _type126607126609_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126606_
                                      _type126612_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self126472_ _L126589_)))))
                (___kont126820126821_
                 (lambda (_L126536_ _L126537_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self126472_ _L126536_)))))
            (let ((___match126849126850_
                   (lambda (_e126482126557_
                            _hd126481126560_
                            _tl126480126562_
                            _e126485126565_
                            _hd126484126568_
                            _tl126483126570_
                            _e126488126573_
                            _hd126487126576_
                            _tl126486126578_
                            _e126491126581_
                            _hd126490126584_
                            _tl126489126586_)
                     (let ((_L126589_ _hd126490126584_)
                           (_L126590_ _hd126487126576_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126590_))
                           (___kont126818126819_ _L126589_ _L126590_)
                           (___kont126820126821_
                            _hd126490126584_
                            _hd126484126568_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126816126817_))
                  (let ((_e126482126557_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126816126817_))))
                    (let ((_tl126480126562_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126482126557_)))
                          (_hd126481126560_
                           (let ()
                             (declare (not safe))
                             (##car _e126482126557_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126480126562_))
                          (let ((_e126485126565_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126480126562_))))
                            (let ((_tl126483126570_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126485126565_)))
                                  (_hd126484126568_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126485126565_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126484126568_))
                                  (let ((_e126488126573_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126484126568_))))
                                    (let ((_tl126486126578_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126488126573_)))
                                          (_hd126487126576_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126488126573_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126486126578_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126483126570_))
                                              (let ((_e126491126581_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126483126570_))))
                                                (let ((_tl126489126586_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126491126581_)))
                                                      (_hd126490126584_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126491126581_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126489126586_))
                                                      (___match126849126850_
                                                       _e126482126557_
                                                       _hd126481126560_
                                                       _tl126480126562_
                                                       _e126485126565_
                                                       _hd126484126568_
                                                       _tl126483126570_
                                                       _e126488126573_
                                                       _hd126487126576_
                                                       _tl126486126578_
                                                       _e126491126581_
                                                       _hd126490126584_
                                                       _tl126489126586_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126476126507_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126476126507_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126483126570_))
                                              (let ((_e126502126528_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126483126570_))))
                                                (let ((_tl126500126533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126502126528_)))
                                                      (_hd126501126531_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126502126528_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126500126533_))
                                                      (___kont126820126821_
                                                       _hd126501126531_
                                                       _hd126484126568_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126476126507_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126476126507_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126483126570_))
                                      (let ((_e126502126528_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126483126570_))))
                                        (let ((_tl126500126533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126502126528_)))
                                              (_hd126501126531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126502126528_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126500126533_))
                                              (___kont126820126821_
                                               _hd126501126531_
                                               _hd126484126568_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126476126507_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126476126507_))))))
                          (let () (declare (not safe)) (_g126476126507_)))))
                  (let () (declare (not safe)) (_g126476126507_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self126252_ _stx126253_)
        (letrec ((_collect-e126255_
                  (lambda (_hd126416_ _expr126417_)
                    (let* ((___stx126872126873_ _hd126416_)
                           (_g126420126430_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126872126873_)))))
                      (let ((___kont126874126875_
                             (lambda (_L126450_)
                               (let ((_sym126461_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126450_))))
                                 (if (let ((__tmp128897
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128897 _sym126461_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126461_))
                                     (let ((_type126462126464_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126417_))))
                                       (if _type126462126464_
                                           (let ((_type126467_
                                                  _type126462126464_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126461_
                                              _type126467_
                                              '#t))
                                           '#f))))))
                            (___kont126876126877_ (lambda () '#!void)))
                        (let ((___match126885126886_
                               (lambda (_e126425126442_
                                        _hd126424126445_
                                        _tl126423126447_)
                                 (let ((_L126450_ _hd126424126445_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126450_))
                                       (___kont126874126875_ _L126450_)
                                       (___kont126876126877_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126872126873_))
                              (let ((_e126425126442_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126872126873_))))
                                (let ((_tl126423126447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126425126442_)))
                                      (_hd126424126445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126425126442_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126423126447_))
                                      (___match126885126886_
                                       _e126425126442_
                                       _hd126424126445_
                                       _tl126423126447_)
                                      (___kont126876126877_))))
                              (___kont126876126877_))))))))
          (let* ((_g126257126292_
                  (lambda (_g126258126289_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126258126289_))))
                 (_g126256126413_
                  (lambda (_g126258126295_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126258126295_))
                        (let ((_e126264126297_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126258126295_))))
                          (let ((_hd126263126300_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126264126297_)))
                                (_tl126262126302_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126264126297_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126262126302_))
                                (let ((_e126267126305_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126262126302_))))
                                  (let ((_hd126266126308_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126267126305_)))
                                        (_tl126265126310_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126267126305_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126266126308_))
                                        (let ((_g128898_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126266126308_
                                                  '0))))
                                          (begin
                                            (let ((_g128899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128898_)
                                                         (##vector-length
                                                          _g128898_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128899_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128899_)))
                                            (let ((_target126268126313_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128898_
                                                      0)))
                                                  (_tl126270126315_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128898_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126270126315_))
                                                  (letrec ((_loop126271126318_
                                                            (lambda (_hd126269126321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126275126323_
                             _hd126276126325_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126269126321_))
                          (let ((_e126272126328_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126269126321_))))
                            (let ((_lp-hd126273126331_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126272126328_)))
                                  (_lp-tl126274126333_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126272126328_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126273126331_))
                                  (let ((_e126281126336_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126273126331_))))
                                    (let ((_hd126280126339_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126281126336_)))
                                          (_tl126279126341_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126281126336_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126279126341_))
                                          (let ((_e126284126344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126279126341_))))
                                            (let ((_hd126283126347_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126284126344_)))
                                                  (_tl126282126349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126284126344_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126282126349_))
                                                  (let ((__tmp128904
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126283126347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126275126323_)))
                (__tmp128903
                 (let ()
                   (declare (not safe))
                   (cons _hd126280126339_ _hd126276126325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126271126318_
                                                     _lp-tl126274126333_
                                                     __tmp128904
                                                     __tmp128903))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126257126292_
                                                     _g126258126295_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126257126292_
                                             _g126258126295_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126257126292_ _g126258126295_)))))
                          (let ((_expr126277126352_
                                 (reverse _expr126275126323_))
                                (_hd126278126354_ (reverse _hd126276126325_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126265126310_))
                                (let ((_e126287126357_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126265126310_))))
                                  (let ((_hd126286126360_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126287126357_)))
                                        (_tl126285126362_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126287126357_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126285126362_))
                                        ((lambda (_L126365_
                                                  _L126366_
                                                  _L126367_)
                                           (for-each
                                            _collect-e126255_
                                            (let ((__tmp128900
                                                   (lambda (_g126387126390_
                                                            _g126388126392_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126387126390_
                                                             _g126388126392_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128900
                                                      '()
                                                      _L126367_))
                                            (let ((__tmp128901
                                                   (lambda (_g126394126397_
                                                            _g126395126399_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126394126397_
                                                             _g126395126399_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128901
                                                      '()
                                                      _L126366_)))
                                           (for-each
                                            (lambda (_g126401126403_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self126252_
                                                 _g126401126403_)))
                                            (let ((__tmp128902
                                                   (lambda (_g126405126408_
                                                            _g126406126410_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126405126408_
                                                             _g126406126410_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128902
                                                      '()
                                                      _L126366_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self126252_
                                              _L126365_)))
                                         _hd126286126360_
                                         _expr126277126352_
                                         _hd126278126354_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126257126292_ _g126258126295_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126257126292_ _g126258126295_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126271126318_
                                                       _target126268126313_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126257126292_
                                                     _g126258126295_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126257126292_ _g126258126295_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126257126292_ _g126258126295_)))))
                        (let ()
                          (declare (not safe))
                          (_g126257126292_ _g126258126295_))))))
            (declare (not safe))
            (_g126256126413_ _stx126253_)))))
    (define gxc#collect-type-call%
      (lambda (_self125739_ _stx125740_)
        (let* ((___stx126888126889_ _stx125740_)
               (_g125744125859_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126888126889_)))))
          (let ((___kont126890126891_
                 (lambda (_L126202_ _L126203_ _L126204_ _L126205_ _L126206_)
                   (let ((__tmp128908
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126205_)))
                         (__tmp128907
                          (let () (declare (not safe)) (gx#stx-e _L126204_)))
                         (__tmp128906
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126203_)))
                         (__tmp128905
                          (let () (declare (not safe)) (gx#stx-e _L126202_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128908
                      __tmp128907
                      __tmp128906
                      __tmp128905))))
                (___kont126892126893_
                 (lambda (_L126030_ _L126031_ _L126032_ _L126033_)
                   (let ((__tmp128911
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126032_)))
                         (__tmp128910
                          (let () (declare (not safe)) (gx#stx-e _L126031_)))
                         (__tmp128909
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126030_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128911
                      __tmp128910
                      __tmp128909
                      '#f))))
                (___kont126894126895_
                 (lambda (_L125896_)
                   (for-each
                    (lambda (_g125909125911_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self125739_ _g125909125911_)))
                    (let ((__tmp128912
                           (lambda (_g125913125916_ _g125914125918_)
                             (let ()
                               (declare (not safe))
                               (cons _g125913125916_ _g125914125918_)))))
                      (declare (not safe))
                      (foldr1 __tmp128912 '() _L125896_))))))
            (let* ((___match127145127146_
                    (lambda (_e125845125864_
                             _hd125844125867_
                             _tl125843125869_
                             ___splice126896126897_
                             _target125846125872_
                             _tl125848125874_)
                      (letrec ((_loop125849125877_
                                (lambda (_hd125847125880_ _expr125853125882_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125847125880_))
                                      (let ((_e125850125885_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125847125880_))))
                                        (let ((_lp-tl125852125890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125850125885_)))
                                              (_lp-hd125851125888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125850125885_))))
                                          (let ((__tmp128913
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125851125888_
                                                         _expr125853125882_))))
                                            (declare (not safe))
                                            (_loop125849125877_
                                             _lp-tl125852125890_
                                             __tmp128913))))
                                      (let ((_expr125854125893_
                                             (reverse _expr125853125882_)))
                                        (___kont126894126895_
                                         _expr125854125893_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125849125877_ _target125846125872_ '())))))
                   (___match127025127026_
                    (lambda (_e125753126074_
                             _hd125752126077_
                             _tl125751126079_
                             _e125756126082_
                             _hd125755126085_
                             _tl125754126087_
                             _e125759126090_
                             _hd125758126093_
                             _tl125757126095_
                             _e125762126098_
                             _hd125761126101_
                             _tl125760126103_
                             _e125765126106_
                             _hd125764126109_
                             _tl125763126111_
                             _e125768126114_
                             _hd125767126117_
                             _tl125766126119_
                             _e125771126122_
                             _hd125770126125_
                             _tl125769126127_
                             _e125774126130_
                             _hd125773126133_
                             _tl125772126135_
                             _e125777126138_
                             _hd125776126141_
                             _tl125775126143_
                             _e125780126146_
                             _hd125779126149_
                             _tl125778126151_
                             _e125783126154_
                             _hd125782126157_
                             _tl125781126159_
                             _e125786126162_
                             _hd125785126165_
                             _tl125784126167_
                             _e125789126170_
                             _hd125788126173_
                             _tl125787126175_
                             _e125792126178_
                             _hd125791126181_
                             _tl125790126183_
                             _e125795126186_
                             _hd125794126189_
                             _tl125793126191_
                             _e125798126194_
                             _hd125797126197_
                             _tl125796126199_)
                      (let ((_L126202_ _hd125797126197_)
                            (_L126203_ _hd125788126173_)
                            (_L126204_ _hd125779126149_)
                            (_L126205_ _hd125770126125_)
                            (_L126206_ _hd125761126101_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126206_
                               'bind-method!))
                            (___kont126890126891_
                             _L126202_
                             _L126203_
                             _L126204_
                             _L126205_
                             _L126206_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125751126079_))
                                (let ((___splice126896126897_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125751126079_
                                          '0))))
                                  (let ((_tl125848125874_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126896126897_
                                            '1)))
                                        (_target125846125872_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126896126897_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125848125874_))
                                        (___match127145127146_
                                         _e125753126074_
                                         _hd125752126077_
                                         _tl125751126079_
                                         ___splice126896126897_
                                         _target125846125872_
                                         _tl125848125874_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125744125859_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125744125859_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126888126889_))
                  (let ((_e125753126074_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126888126889_))))
                    (let ((_tl125751126079_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125753126074_)))
                          (_hd125752126077_
                           (let ()
                             (declare (not safe))
                             (##car _e125753126074_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125751126079_))
                          (let ((_e125756126082_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125751126079_))))
                            (let ((_tl125754126087_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125756126082_)))
                                  (_hd125755126085_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125756126082_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125755126085_))
                                  (let ((_e125759126090_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125755126085_))))
                                    (let ((_tl125757126095_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125759126090_)))
                                          (_hd125758126093_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125759126090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125758126093_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125758126093_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125757126095_))
                                                  (let ((_e125762126098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125757126095_))))
                                                    (let ((_tl125760126103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125762126098_)))
                                                          (_hd125761126101_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125762126098_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125760126103_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125754126087_))
                      (let ((_e125765126106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125754126087_))))
                        (let ((_tl125763126111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125765126106_)))
                              (_hd125764126109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125765126106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125764126109_))
                              (let ((_e125768126114_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125764126109_))))
                                (let ((_tl125766126119_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125768126114_)))
                                      (_hd125767126117_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125768126114_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125767126117_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125767126117_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125766126119_))
                                              (let ((_e125771126122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125766126119_))))
                                                (let ((_tl125769126127_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125771126122_)))
                                                      (_hd125770126125_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125771126122_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125769126127_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125763126111_))
                                                          (let ((_e125774126130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125763126111_))))
                    (let ((_tl125772126135_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125774126130_)))
                          (_hd125773126133_
                           (let ()
                             (declare (not safe))
                             (##car _e125774126130_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125773126133_))
                          (let ((_e125777126138_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125773126133_))))
                            (let ((_tl125775126143_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125777126138_)))
                                  (_hd125776126141_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125777126138_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125776126141_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125776126141_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125775126143_))
                                          (let ((_e125780126146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125775126143_))))
                                            (let ((_tl125778126151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125780126146_)))
                                                  (_hd125779126149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125780126146_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125778126151_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125772126135_))
                                                      (let ((_e125783126154_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125772126135_))))
                (let ((_tl125781126159_
                       (let () (declare (not safe)) (##cdr _e125783126154_)))
                      (_hd125782126157_
                       (let () (declare (not safe)) (##car _e125783126154_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125782126157_))
                      (let ((_e125786126162_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125782126157_))))
                        (let ((_tl125784126167_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125786126162_)))
                              (_hd125785126165_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125786126162_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125785126165_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125785126165_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125784126167_))
                                      (let ((_e125789126170_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125784126167_))))
                                        (let ((_tl125787126175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125789126170_)))
                                              (_hd125788126173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125789126170_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125787126175_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125781126159_))
                                                  (let ((_e125792126178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125781126159_))))
                                                    (let ((_tl125790126183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125792126178_)))
                                                          (_hd125791126181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125792126178_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125791126181_))
                                                          (let ((_e125795126186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125791126181_))))
                    (let ((_tl125793126191_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125795126186_)))
                          (_hd125794126189_
                           (let ()
                             (declare (not safe))
                             (##car _e125795126186_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125794126189_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125794126189_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125793126191_))
                                  (let ((_e125798126194_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125793126191_))))
                                    (let ((_tl125796126199_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125798126194_)))
                                          (_hd125797126197_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125798126194_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125796126199_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125790126183_))
                                              (___match127025127026_
                                               _e125753126074_
                                               _hd125752126077_
                                               _tl125751126079_
                                               _e125756126082_
                                               _hd125755126085_
                                               _tl125754126087_
                                               _e125759126090_
                                               _hd125758126093_
                                               _tl125757126095_
                                               _e125762126098_
                                               _hd125761126101_
                                               _tl125760126103_
                                               _e125765126106_
                                               _hd125764126109_
                                               _tl125763126111_
                                               _e125768126114_
                                               _hd125767126117_
                                               _tl125766126119_
                                               _e125771126122_
                                               _hd125770126125_
                                               _tl125769126127_
                                               _e125774126130_
                                               _hd125773126133_
                                               _tl125772126135_
                                               _e125777126138_
                                               _hd125776126141_
                                               _tl125775126143_
                                               _e125780126146_
                                               _hd125779126149_
                                               _tl125778126151_
                                               _e125783126154_
                                               _hd125782126157_
                                               _tl125781126159_
                                               _e125786126162_
                                               _hd125785126165_
                                               _tl125784126167_
                                               _e125789126170_
                                               _hd125788126173_
                                               _tl125787126175_
                                               _e125792126178_
                                               _hd125791126181_
                                               _tl125790126183_
                                               _e125795126186_
                                               _hd125794126189_
                                               _tl125793126191_
                                               _e125798126194_
                                               _hd125797126197_
                                               _tl125796126199_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125751126079_))
                                                  (let ((___splice126896126897_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125751126079_
                                                            '0))))
                                                    (let ((_tl125848125874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '1)))
                                                          (_target125846125872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125848125874_))
                                                          (___match127145127146_
                                                           _e125753126074_
                                                           _hd125752126077_
                                                           _tl125751126079_
                                                           ___splice126896126897_
                                                           _target125846125872_
                                                           _tl125848125874_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125744125859_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125744125859_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125751126079_))
                                              (let ((___splice126896126897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125751126079_
                                                        '0))))
                                                (let ((_tl125848125874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '1)))
                                                      (_target125846125872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125848125874_))
                                                      (___match127145127146_
                                                       _e125753126074_
                                                       _hd125752126077_
                                                       _tl125751126079_
                                                       ___splice126896126897_
                                                       _target125846125872_
                                                       _tl125848125874_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125744125859_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125751126079_))
                                      (let ((___splice126896126897_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125751126079_
                                                '0))))
                                        (let ((_tl125848125874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '1)))
                                              (_target125846125872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125848125874_))
                                              (___match127145127146_
                                               _e125753126074_
                                               _hd125752126077_
                                               _tl125751126079_
                                               ___splice126896126897_
                                               _target125846125872_
                                               _tl125848125874_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125744125859_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125751126079_))
                                  (let ((___splice126896126897_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125751126079_
                                            '0))))
                                    (let ((_tl125848125874_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126896126897_
                                              '1)))
                                          (_target125846125872_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126896126897_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125848125874_))
                                          (___match127145127146_
                                           _e125753126074_
                                           _hd125752126077_
                                           _tl125751126079_
                                           ___splice126896126897_
                                           _target125846125872_
                                           _tl125848125874_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125744125859_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125744125859_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125751126079_))
                              (let ((___splice126896126897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125751126079_
                                        '0))))
                                (let ((_tl125848125874_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126896126897_
                                          '1)))
                                      (_target125846125872_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126896126897_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125848125874_))
                                      (___match127145127146_
                                       _e125753126074_
                                       _hd125752126077_
                                       _tl125751126079_
                                       ___splice126896126897_
                                       _target125846125872_
                                       _tl125848125874_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125744125859_)))))
                              (let ()
                                (declare (not safe))
                                (_g125744125859_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125751126079_))
                      (let ((___splice126896126897_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125751126079_ '0))))
                        (let ((_tl125848125874_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '1)))
                              (_target125846125872_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125848125874_))
                              (___match127145127146_
                               _e125753126074_
                               _hd125752126077_
                               _tl125751126079_
                               ___splice126896126897_
                               _target125846125872_
                               _tl125848125874_)
                              (let ()
                                (declare (not safe))
                                (_g125744125859_)))))
                      (let () (declare (not safe)) (_g125744125859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125781126159_))
                                                      (if (let ((__tmp128914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128914 'bind-method!))
                  (let ((_L126030_ _hd125788126173_)
                        (_L126031_ _hd125779126149_)
                        (_L126032_ _hd125770126125_)
                        (_L126033_ _hd125761126101_))
                    (___kont126892126893_
                     _L126030_
                     _L126031_
                     _L126032_
                     _L126033_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125751126079_))
                      (let ((___splice126896126897_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125751126079_ '0))))
                        (let ((_tl125848125874_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '1)))
                              (_target125846125872_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125848125874_))
                              (___match127145127146_
                               _e125753126074_
                               _hd125752126077_
                               _tl125751126079_
                               ___splice126896126897_
                               _target125846125872_
                               _tl125848125874_)
                              (let ()
                                (declare (not safe))
                                (_g125744125859_)))))
                      (let () (declare (not safe)) (_g125744125859_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125751126079_))
                  (let ((___splice126896126897_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125751126079_ '0))))
                    (let ((_tl125848125874_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126896126897_ '1)))
                          (_target125846125872_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126896126897_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125848125874_))
                          (___match127145127146_
                           _e125753126074_
                           _hd125752126077_
                           _tl125751126079_
                           ___splice126896126897_
                           _target125846125872_
                           _tl125848125874_)
                          (let () (declare (not safe)) (_g125744125859_)))))
                  (let () (declare (not safe)) (_g125744125859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125751126079_))
                                                  (let ((___splice126896126897_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125751126079_
                                                            '0))))
                                                    (let ((_tl125848125874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '1)))
                                                          (_target125846125872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125848125874_))
                                                          (___match127145127146_
                                                           _e125753126074_
                                                           _hd125752126077_
                                                           _tl125751126079_
                                                           ___splice126896126897_
                                                           _target125846125872_
                                                           _tl125848125874_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125744125859_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125744125859_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125751126079_))
                                          (let ((___splice126896126897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125751126079_
                                                    '0))))
                                            (let ((_tl125848125874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126896126897_
                                                      '1)))
                                                  (_target125846125872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126896126897_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125848125874_))
                                                  (___match127145127146_
                                                   _e125753126074_
                                                   _hd125752126077_
                                                   _tl125751126079_
                                                   ___splice126896126897_
                                                   _target125846125872_
                                                   _tl125848125874_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125744125859_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125744125859_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125751126079_))
                                      (let ((___splice126896126897_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125751126079_
                                                '0))))
                                        (let ((_tl125848125874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '1)))
                                              (_target125846125872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125848125874_))
                                              (___match127145127146_
                                               _e125753126074_
                                               _hd125752126077_
                                               _tl125751126079_
                                               ___splice126896126897_
                                               _target125846125872_
                                               _tl125848125874_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125744125859_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125751126079_))
                                  (let ((___splice126896126897_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125751126079_
                                            '0))))
                                    (let ((_tl125848125874_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126896126897_
                                              '1)))
                                          (_target125846125872_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126896126897_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125848125874_))
                                          (___match127145127146_
                                           _e125753126074_
                                           _hd125752126077_
                                           _tl125751126079_
                                           ___splice126896126897_
                                           _target125846125872_
                                           _tl125848125874_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125744125859_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125744125859_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125751126079_))
                          (let ((___splice126896126897_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125751126079_
                                    '0))))
                            (let ((_tl125848125874_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126896126897_ '1)))
                                  (_target125846125872_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126896126897_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125848125874_))
                                  (___match127145127146_
                                   _e125753126074_
                                   _hd125752126077_
                                   _tl125751126079_
                                   ___splice126896126897_
                                   _target125846125872_
                                   _tl125848125874_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125744125859_)))))
                          (let () (declare (not safe)) (_g125744125859_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125751126079_))
                  (let ((___splice126896126897_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125751126079_ '0))))
                    (let ((_tl125848125874_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126896126897_ '1)))
                          (_target125846125872_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126896126897_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125848125874_))
                          (___match127145127146_
                           _e125753126074_
                           _hd125752126077_
                           _tl125751126079_
                           ___splice126896126897_
                           _target125846125872_
                           _tl125848125874_)
                          (let () (declare (not safe)) (_g125744125859_)))))
                  (let () (declare (not safe)) (_g125744125859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125751126079_))
                                                      (let ((___splice126896126897_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125751126079_ '0))))
                (let ((_tl125848125874_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126896126897_ '1)))
                      (_target125846125872_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126896126897_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125848125874_))
                      (___match127145127146_
                       _e125753126074_
                       _hd125752126077_
                       _tl125751126079_
                       ___splice126896126897_
                       _target125846125872_
                       _tl125848125874_)
                      (let () (declare (not safe)) (_g125744125859_)))))
              (let () (declare (not safe)) (_g125744125859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125751126079_))
                                              (let ((___splice126896126897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125751126079_
                                                        '0))))
                                                (let ((_tl125848125874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '1)))
                                                      (_target125846125872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125848125874_))
                                                      (___match127145127146_
                                                       _e125753126074_
                                                       _hd125752126077_
                                                       _tl125751126079_
                                                       ___splice126896126897_
                                                       _target125846125872_
                                                       _tl125848125874_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125744125859_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125751126079_))
                                          (let ((___splice126896126897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125751126079_
                                                    '0))))
                                            (let ((_tl125848125874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126896126897_
                                                      '1)))
                                                  (_target125846125872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126896126897_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125848125874_))
                                                  (___match127145127146_
                                                   _e125753126074_
                                                   _hd125752126077_
                                                   _tl125751126079_
                                                   ___splice126896126897_
                                                   _target125846125872_
                                                   _tl125848125874_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125744125859_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125744125859_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125751126079_))
                                      (let ((___splice126896126897_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125751126079_
                                                '0))))
                                        (let ((_tl125848125874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '1)))
                                              (_target125846125872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125848125874_))
                                              (___match127145127146_
                                               _e125753126074_
                                               _hd125752126077_
                                               _tl125751126079_
                                               ___splice126896126897_
                                               _target125846125872_
                                               _tl125848125874_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125744125859_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125751126079_))
                              (let ((___splice126896126897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125751126079_
                                        '0))))
                                (let ((_tl125848125874_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126896126897_
                                          '1)))
                                      (_target125846125872_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126896126897_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125848125874_))
                                      (___match127145127146_
                                       _e125753126074_
                                       _hd125752126077_
                                       _tl125751126079_
                                       ___splice126896126897_
                                       _target125846125872_
                                       _tl125848125874_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125744125859_)))))
                              (let ()
                                (declare (not safe))
                                (_g125744125859_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125751126079_))
                      (let ((___splice126896126897_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125751126079_ '0))))
                        (let ((_tl125848125874_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '1)))
                              (_target125846125872_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125848125874_))
                              (___match127145127146_
                               _e125753126074_
                               _hd125752126077_
                               _tl125751126079_
                               ___splice126896126897_
                               _target125846125872_
                               _tl125848125874_)
                              (let ()
                                (declare (not safe))
                                (_g125744125859_)))))
                      (let () (declare (not safe)) (_g125744125859_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125751126079_))
                  (let ((___splice126896126897_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125751126079_ '0))))
                    (let ((_tl125848125874_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126896126897_ '1)))
                          (_target125846125872_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126896126897_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125848125874_))
                          (___match127145127146_
                           _e125753126074_
                           _hd125752126077_
                           _tl125751126079_
                           ___splice126896126897_
                           _target125846125872_
                           _tl125848125874_)
                          (let () (declare (not safe)) (_g125744125859_)))))
                  (let () (declare (not safe)) (_g125744125859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125751126079_))
                                                  (let ((___splice126896126897_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125751126079_
                                                            '0))))
                                                    (let ((_tl125848125874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '1)))
                                                          (_target125846125872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125848125874_))
                                                          (___match127145127146_
                                                           _e125753126074_
                                                           _hd125752126077_
                                                           _tl125751126079_
                                                           ___splice126896126897_
                                                           _target125846125872_
                                                           _tl125848125874_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125744125859_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125744125859_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125751126079_))
                                              (let ((___splice126896126897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125751126079_
                                                        '0))))
                                                (let ((_tl125848125874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '1)))
                                                      (_target125846125872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125848125874_))
                                                      (___match127145127146_
                                                       _e125753126074_
                                                       _hd125752126077_
                                                       _tl125751126079_
                                                       ___splice126896126897_
                                                       _target125846125872_
                                                       _tl125848125874_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125744125859_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125751126079_))
                                          (let ((___splice126896126897_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125751126079_
                                                    '0))))
                                            (let ((_tl125848125874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126896126897_
                                                      '1)))
                                                  (_target125846125872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126896126897_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125848125874_))
                                                  (___match127145127146_
                                                   _e125753126074_
                                                   _hd125752126077_
                                                   _tl125751126079_
                                                   ___splice126896126897_
                                                   _target125846125872_
                                                   _tl125848125874_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125744125859_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125744125859_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125751126079_))
                                  (let ((___splice126896126897_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125751126079_
                                            '0))))
                                    (let ((_tl125848125874_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126896126897_
                                              '1)))
                                          (_target125846125872_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126896126897_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125848125874_))
                                          (___match127145127146_
                                           _e125753126074_
                                           _hd125752126077_
                                           _tl125751126079_
                                           ___splice126896126897_
                                           _target125846125872_
                                           _tl125848125874_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125744125859_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125744125859_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125751126079_))
                          (let ((___splice126896126897_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125751126079_
                                    '0))))
                            (let ((_tl125848125874_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126896126897_ '1)))
                                  (_target125846125872_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126896126897_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125848125874_))
                                  (___match127145127146_
                                   _e125753126074_
                                   _hd125752126077_
                                   _tl125751126079_
                                   ___splice126896126897_
                                   _target125846125872_
                                   _tl125848125874_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125744125859_)))))
                          (let () (declare (not safe)) (_g125744125859_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125751126079_))
                      (let ((___splice126896126897_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125751126079_ '0))))
                        (let ((_tl125848125874_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '1)))
                              (_target125846125872_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126896126897_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125848125874_))
                              (___match127145127146_
                               _e125753126074_
                               _hd125752126077_
                               _tl125751126079_
                               ___splice126896126897_
                               _target125846125872_
                               _tl125848125874_)
                              (let ()
                                (declare (not safe))
                                (_g125744125859_)))))
                      (let () (declare (not safe)) (_g125744125859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125751126079_))
                                                      (let ((___splice126896126897_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125751126079_ '0))))
                (let ((_tl125848125874_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126896126897_ '1)))
                      (_target125846125872_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126896126897_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125848125874_))
                      (___match127145127146_
                       _e125753126074_
                       _hd125752126077_
                       _tl125751126079_
                       ___splice126896126897_
                       _target125846125872_
                       _tl125848125874_)
                      (let () (declare (not safe)) (_g125744125859_)))))
              (let () (declare (not safe)) (_g125744125859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125751126079_))
                                                  (let ((___splice126896126897_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125751126079_
                                                            '0))))
                                                    (let ((_tl125848125874_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '1)))
                                                          (_target125846125872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126896126897_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125848125874_))
                                                          (___match127145127146_
                                                           _e125753126074_
                                                           _hd125752126077_
                                                           _tl125751126079_
                                                           ___splice126896126897_
                                                           _target125846125872_
                                                           _tl125848125874_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125744125859_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125744125859_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125751126079_))
                                              (let ((___splice126896126897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125751126079_
                                                        '0))))
                                                (let ((_tl125848125874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '1)))
                                                      (_target125846125872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126896126897_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125848125874_))
                                                      (___match127145127146_
                                                       _e125753126074_
                                                       _hd125752126077_
                                                       _tl125751126079_
                                                       ___splice126896126897_
                                                       _target125846125872_
                                                       _tl125848125874_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125744125859_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125751126079_))
                                      (let ((___splice126896126897_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125751126079_
                                                '0))))
                                        (let ((_tl125848125874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '1)))
                                              (_target125846125872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126896126897_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125848125874_))
                                              (___match127145127146_
                                               _e125753126074_
                                               _hd125752126077_
                                               _tl125751126079_
                                               ___splice126896126897_
                                               _target125846125872_
                                               _tl125848125874_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125744125859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125744125859_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125751126079_))
                              (let ((___splice126896126897_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125751126079_
                                        '0))))
                                (let ((_tl125848125874_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126896126897_
                                          '1)))
                                      (_target125846125872_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126896126897_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125848125874_))
                                      (___match127145127146_
                                       _e125753126074_
                                       _hd125752126077_
                                       _tl125751126079_
                                       ___splice126896126897_
                                       _target125846125872_
                                       _tl125848125874_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125744125859_)))))
                              (let ()
                                (declare (not safe))
                                (_g125744125859_))))))
                  (let () (declare (not safe)) (_g125744125859_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self125678_ _stx125679_)
        (let* ((___stx127148127149_ _stx125679_)
               (_g125682125695_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127148127149_)))))
          (let ((___kont127150127151_
                 (lambda (_L125723_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self125678_ _L125723_))))
                (___kont127152127153_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127148127149_))
                (let ((_e125687125707_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127148127149_))))
                  (let ((_tl125685125712_
                         (let () (declare (not safe)) (##cdr _e125687125707_)))
                        (_hd125686125710_
                         (let ()
                           (declare (not safe))
                           (##car _e125687125707_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125685125712_))
                        (let ((_e125690125715_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125685125712_))))
                          (let ((_tl125688125720_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125690125715_)))
                                (_hd125689125718_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125690125715_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125688125720_))
                                (___kont127150127151_ _hd125689125718_)
                                (___kont127152127153_))))
                        (___kont127152127153_))))
                (___kont127152127153_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self125557_ _stx125558_)
        (let* ((_g125560125577_
                (lambda (_g125561125574_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125561125574_))))
               (_g125559125675_
                (lambda (_g125561125580_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125561125580_))
                      (let ((_e125566125582_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125561125580_))))
                        (let ((_hd125565125585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125566125582_)))
                              (_tl125564125587_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125566125582_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125564125587_))
                              (let ((_e125569125590_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125564125587_))))
                                (let ((_hd125568125593_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125569125590_)))
                                      (_tl125567125595_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125569125590_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125567125595_))
                                      (let ((_e125572125598_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125567125595_))))
                                        (let ((_hd125571125601_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125572125598_)))
                                              (_tl125570125603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125572125598_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125570125603_))
                                              ((lambda (_L125606_ _L125607_)
                                                 (let* ((___stx127170127171_
                                                         _L125607_)
                                                        (_g125623125634_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127170127171_)))))
                                                   (let ((___kont127172127173_
                                                          (lambda (_L125654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125655_)
                    (let ((_$e125667_
                           (let ((__tmp128915
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125655_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128915))))
                      (if _$e125667_
                          ((lambda (_type-e125670_)
                             (_type-e125670_ _stx125558_ _L125607_))
                           _$e125667_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self125557_ _L125606_))))))
                 (___kont127174127175_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self125557_ _L125606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127181127182_
                                                            (lambda (_e125629125646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125628125649_
                             _tl125627125651_)
                      (let ((_L125654_ _tl125627125651_)
                            (_L125655_ _hd125628125649_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125655_))
                            (___kont127172127173_ _L125654_ _L125655_)
                            (___kont127174127175_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127170127171_))
                   (let ((_e125629125646_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127170127171_))))
                     (let ((_tl125627125651_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125629125646_)))
                           (_hd125628125649_
                            (let ()
                              (declare (not safe))
                              (##car _e125629125646_))))
                       (___match127181127182_
                        _e125629125646_
                        _hd125628125649_
                        _tl125627125651_)))
                   (___kont127174127175_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125571125601_
                                               _hd125568125593_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125560125577_
                                                 _g125561125580_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125560125577_ _g125561125580_)))))
                              (let ()
                                (declare (not safe))
                                (_g125560125577_ _g125561125580_)))))
                      (let ()
                        (declare (not safe))
                        (_g125560125577_ _g125561125580_))))))
          (declare (not safe))
          (_g125559125675_ _stx125558_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125401_ _ann125402_)
        (let* ((_g125404125441_
                (lambda (_g125405125438_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125405125438_))))
               (_g125403125554_
                (lambda (_g125405125444_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125405125444_))
                      (let ((_e125415125446_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125405125444_))))
                        (let ((_hd125414125449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125415125446_)))
                              (_tl125413125451_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125415125446_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125413125451_))
                              (let ((_e125418125454_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125413125451_))))
                                (let ((_hd125417125457_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125418125454_)))
                                      (_tl125416125459_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125418125454_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125416125459_))
                                      (let ((_e125421125462_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125416125459_))))
                                        (let ((_hd125420125465_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125421125462_)))
                                              (_tl125419125467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125421125462_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125419125467_))
                                              (let ((_e125424125470_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125419125467_))))
                                                (let ((_hd125423125473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125424125470_)))
                                                      (_tl125422125475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125424125470_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125422125475_))
                                                      (let ((_e125427125478_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125422125475_))))
                (let ((_hd125426125481_
                       (let () (declare (not safe)) (##car _e125427125478_)))
                      (_tl125425125483_
                       (let () (declare (not safe)) (##cdr _e125427125478_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125425125483_))
                      (let ((_e125430125486_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125425125483_))))
                        (let ((_hd125429125489_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125430125486_)))
                              (_tl125428125491_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125430125486_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125428125491_))
                              (let ((_e125433125494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125428125491_))))
                                (let ((_hd125432125497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125433125494_)))
                                      (_tl125431125499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125433125494_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125431125499_))
                                      (let ((_e125436125502_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125431125499_))))
                                        (let ((_hd125435125505_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125436125502_)))
                                              (_tl125434125507_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125436125502_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125434125507_))
                                              ((lambda (_L125510_
                                                        _L125511_
                                                        _L125512_
                                                        _L125513_
                                                        _L125514_
                                                        _L125515_
                                                        _L125516_)
                                                 (let ((_type-id125546_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125516_)))
                                                       (_super125547_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125515_)))
                                                       (_slots125548_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125514_)))
                                                       (_ctor-method125549_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125513_)))
                                                       (_struct?125550_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125512_)))
                                                       (_final?125551_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125511_)))
                                                       (_metaclass125552_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125510_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125510_))
                                                            '#f)))
                                                   (let ((__obj128863
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
                                                      __obj128863
                                                      _type-id125546_
                                                      _super125547_
                                                      _slots125548_
                                                      _ctor-method125549_
                                                      _struct?125550_
                                                      _final?125551_
                                                      _metaclass125552_)
                                                     __obj128863)))
                                               _hd125435125505_
                                               _hd125432125497_
                                               _hd125429125489_
                                               _hd125426125481_
                                               _hd125423125473_
                                               _hd125420125465_
                                               _hd125417125457_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125404125441_
                                                 _g125405125444_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125404125441_ _g125405125444_)))))
                              (let ()
                                (declare (not safe))
                                (_g125404125441_ _g125405125444_)))))
                      (let ()
                        (declare (not safe))
                        (_g125404125441_ _g125405125444_)))))
              (let ()
                (declare (not safe))
                (_g125404125441_ _g125405125444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125404125441_
                                                 _g125405125444_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125404125441_ _g125405125444_)))))
                              (let ()
                                (declare (not safe))
                                (_g125404125441_ _g125405125444_)))))
                      (let ()
                        (declare (not safe))
                        (_g125404125441_ _g125405125444_))))))
          (declare (not safe))
          (_g125403125554_ _ann125402_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125349_ _ann125350_)
        (let* ((_g125352125365_
                (lambda (_g125353125362_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125353125362_))))
               (_g125351125398_
                (lambda (_g125353125368_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125353125368_))
                      (let ((_e125357125370_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125353125368_))))
                        (let ((_hd125356125373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125357125370_)))
                              (_tl125355125375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125357125370_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125355125375_))
                              (let ((_e125360125378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125355125375_))))
                                (let ((_hd125359125381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125360125378_)))
                                      (_tl125358125383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125360125378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125358125383_))
                                      ((lambda (_L125386_)
                                         (let ((__tmp128916
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125386_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128916)))
                                       _hd125359125381_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125352125365_ _g125353125368_)))))
                              (let ()
                                (declare (not safe))
                                (_g125352125365_ _g125353125368_)))))
                      (let ()
                        (declare (not safe))
                        (_g125352125365_ _g125353125368_))))))
          (declare (not safe))
          (_g125351125398_ _ann125350_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125297_ _ann125298_)
        (let* ((_g125300125313_
                (lambda (_g125301125310_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125301125310_))))
               (_g125299125346_
                (lambda (_g125301125316_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125301125316_))
                      (let ((_e125305125318_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125301125316_))))
                        (let ((_hd125304125321_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125305125318_)))
                              (_tl125303125323_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125305125318_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125303125323_))
                              (let ((_e125308125326_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125303125323_))))
                                (let ((_hd125307125329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125308125326_)))
                                      (_tl125306125331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125308125326_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125306125331_))
                                      ((lambda (_L125334_)
                                         (let ((__tmp128917
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125334_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128917)))
                                       _hd125307125329_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125300125313_ _g125301125316_)))))
                              (let ()
                                (declare (not safe))
                                (_g125300125313_ _g125301125316_)))))
                      (let ()
                        (declare (not safe))
                        (_g125300125313_ _g125301125316_))))))
          (declare (not safe))
          (_g125299125346_ _ann125298_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125213_ _ann125214_)
        (let* ((_g125216125237_
                (lambda (_g125217125234_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125217125234_))))
               (_g125215125294_
                (lambda (_g125217125240_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125217125240_))
                      (let ((_e125223125242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125217125240_))))
                        (let ((_hd125222125245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125223125242_)))
                              (_tl125221125247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125223125242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125221125247_))
                              (let ((_e125226125250_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125221125247_))))
                                (let ((_hd125225125253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125226125250_)))
                                      (_tl125224125255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125226125250_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125224125255_))
                                      (let ((_e125229125258_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125224125255_))))
                                        (let ((_hd125228125261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125229125258_)))
                                              (_tl125227125263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125229125258_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125227125263_))
                                              (let ((_e125232125266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125227125263_))))
                                                (let ((_hd125231125269_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125232125266_)))
                                                      (_tl125230125271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125232125266_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125230125271_))
                                                      ((lambda (_L125274_
                                                                _L125275_
                                                                _L125276_)
                                                         (let ((__tmp128920
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125276_)))
                       (__tmp128919
                        (let () (declare (not safe)) (gx#stx-e _L125275_)))
                       (__tmp128918
                        (let () (declare (not safe)) (gx#stx-e _L125274_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128920
                    __tmp128919
                    __tmp128918)))
               _hd125231125269_
               _hd125228125261_
               _hd125225125253_)
              (let ()
                (declare (not safe))
                (_g125216125237_ _g125217125240_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125216125237_
                                                 _g125217125240_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125216125237_ _g125217125240_)))))
                              (let ()
                                (declare (not safe))
                                (_g125216125237_ _g125217125240_)))))
                      (let ()
                        (declare (not safe))
                        (_g125216125237_ _g125217125240_))))))
          (declare (not safe))
          (_g125215125294_ _ann125214_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125129_ _ann125130_)
        (let* ((_g125132125153_
                (lambda (_g125133125150_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125133125150_))))
               (_g125131125210_
                (lambda (_g125133125156_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125133125156_))
                      (let ((_e125139125158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125133125156_))))
                        (let ((_hd125138125161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125139125158_)))
                              (_tl125137125163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125139125158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125137125163_))
                              (let ((_e125142125166_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125137125163_))))
                                (let ((_hd125141125169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125142125166_)))
                                      (_tl125140125171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125142125166_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125140125171_))
                                      (let ((_e125145125174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125140125171_))))
                                        (let ((_hd125144125177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125145125174_)))
                                              (_tl125143125179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125145125174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125143125179_))
                                              (let ((_e125148125182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125143125179_))))
                                                (let ((_hd125147125185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125148125182_)))
                                                      (_tl125146125187_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125148125182_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125146125187_))
                                                      ((lambda (_L125190_
                                                                _L125191_
                                                                _L125192_)
                                                         (let ((__tmp128923
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125192_)))
                       (__tmp128922
                        (let () (declare (not safe)) (gx#stx-e _L125191_)))
                       (__tmp128921
                        (let () (declare (not safe)) (gx#stx-e _L125190_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128923
                    __tmp128922
                    __tmp128921)))
               _hd125147125185_
               _hd125144125177_
               _hd125141125169_)
              (let ()
                (declare (not safe))
                (_g125132125153_ _g125133125156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125132125153_
                                                 _g125133125156_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125132125153_ _g125133125156_)))))
                              (let ()
                                (declare (not safe))
                                (_g125132125153_ _g125133125156_)))))
                      (let ()
                        (declare (not safe))
                        (_g125132125153_ _g125133125156_))))))
          (declare (not safe))
          (_g125131125210_ _ann125130_))))
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
      (lambda (_self124248_ _stx124249_)
        (let* ((___stx127184127185_ _stx124249_)
               (_g124255124451_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127184127185_)))))
          (let ((___kont127186127187_
                 (lambda (_L125117_)
                   (let ((__obj128864
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128864
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125117_))
                      '#f)
                     __obj128864)))
                (___kont127188127189_
                 (lambda (_L125044_
                          _L125045_
                          _L125046_
                          _L125047_
                          _L125048_
                          _L125049_)
                   (let* ((_tab125099_
                           (let () (declare (not safe)) (gx#stx-e _L125046_)))
                          (_keys125101_
                           (if _tab125099_
                               (filter values (vector->list _tab125099_))
                               '#f)))
                     (let ((__tmp128924
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L125045_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125101_
                        __tmp128924)))))
                (___kont127190127191_
                 (lambda (_L124777_
                          _L124778_
                          _L124779_
                          _L124780_
                          _L124781_
                          _L124782_
                          _L124783_
                          _L124784_
                          _L124785_
                          _L124786_)
                   (let ((__tmp128926
                          (map gx#stx-e
                               (let ((__tmp128927
                                      (lambda (_g124879124882_ _g124880124884_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124879124882_
                                                _g124880124884_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128927 '() _L124779_))))
                         (__tmp128925
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124783_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128926
                      __tmp128925))))
                (___kont127194127195_
                 (lambda (_L124487_)
                   (let ((__obj128865
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128865
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124487_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124487_)))
                     __obj128865)))
                (___kont127196127197_
                 (lambda (_L124464_)
                   (let ((__obj128866
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128866
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124464_))
                      '#f)
                     __obj128866))))
            (let* ((___match127503127504_
                    (lambda (_e124442124479_ _hd124441124482_ _tl124440124484_)
                      (let ((_L124487_ _tl124440124484_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124487_))
                            (___kont127194127195_ _L124487_)
                            (___kont127196127197_ _tl124440124484_)))))
                   (___match127497127498_
                    (lambda (_e124336124501_
                             _hd124335124504_
                             _tl124334124506_
                             _e124339124509_
                             _hd124338124512_
                             _tl124337124514_
                             _e124342124517_
                             _hd124341124520_
                             _tl124340124522_
                             _e124345124525_
                             _hd124344124528_
                             _tl124343124530_
                             _e124348124533_
                             _hd124347124536_
                             _tl124346124538_
                             _e124351124541_
                             _hd124350124544_
                             _tl124349124546_
                             _e124354124549_
                             _hd124353124552_
                             _tl124352124554_
                             _e124357124557_
                             _hd124356124560_
                             _tl124355124562_
                             _e124360124565_
                             _hd124359124568_
                             _tl124358124570_
                             _e124363124573_
                             _hd124362124576_
                             _tl124361124578_
                             _e124366124581_
                             _hd124365124584_
                             _tl124364124586_
                             _e124369124589_
                             _hd124368124592_
                             _tl124367124594_
                             _e124372124597_
                             _hd124371124600_
                             _tl124370124602_
                             _e124375124605_
                             _hd124374124608_
                             _tl124373124610_
                             ___splice127192127193_
                             _target124376124613_
                             _tl124378124615_
                             _e124393124618_
                             _hd124392124621_
                             _tl124391124623_
                             _e124396124626_
                             _hd124395124629_
                             _tl124394124631_
                             _e124399124634_
                             _hd124398124637_
                             _tl124397124639_)
                      (letrec ((_loop124379124642_
                                (lambda (_hd124377124645_
                                         _-absent-value124383124647_
                                         _key124384124649_
                                         _-xkwvar124385124651_
                                         _-hash-ref124386124653_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124377124645_))
                                      (let ((_e124380124656_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124377124645_))))
                                        (let ((_lp-tl124382124661_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124380124656_)))
                                              (_lp-hd124381124659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124380124656_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124381124659_))
                                              (let ((_e124402124664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124381124659_))))
                                                (let ((_tl124400124669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124402124664_)))
                                                      (_hd124401124667_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124402124664_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124401124667_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124401124667_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124400124669_))
                      (let ((_e124405124672_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124400124669_))))
                        (let ((_tl124403124677_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124405124672_)))
                              (_hd124404124675_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124405124672_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124404124675_))
                              (let ((_e124408124680_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124404124675_))))
                                (let ((_tl124406124685_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124408124680_)))
                                      (_hd124407124683_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124408124680_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124407124683_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124407124683_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124406124685_))
                                              (let ((_e124411124688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124406124685_))))
                                                (let ((_tl124409124693_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124411124688_)))
                                                      (_hd124410124691_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124411124688_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124409124693_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124403124677_))
                                                          (let ((_e124414124696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124403124677_))))
                    (let ((_tl124412124701_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124414124696_)))
                          (_hd124413124699_
                           (let ()
                             (declare (not safe))
                             (##car _e124414124696_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124413124699_))
                          (let ((_e124417124704_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124413124699_))))
                            (let ((_tl124415124709_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124417124704_)))
                                  (_hd124416124707_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124417124704_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124416124707_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124416124707_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124415124709_))
                                          (let ((_e124420124712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124415124709_))))
                                            (let ((_tl124418124717_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124420124712_)))
                                                  (_hd124419124715_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124420124712_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124418124717_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124412124701_))
                                                      (let ((_e124423124720_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124412124701_))))
                (let ((_tl124421124725_
                       (let () (declare (not safe)) (##cdr _e124423124720_)))
                      (_hd124422124723_
                       (let () (declare (not safe)) (##car _e124423124720_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124422124723_))
                      (let ((_e124426124728_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124422124723_))))
                        (let ((_tl124424124733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124426124728_)))
                              (_hd124425124731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124426124728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124425124731_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124425124731_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124424124733_))
                                      (let ((_e124429124736_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124424124733_))))
                                        (let ((_tl124427124741_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124429124736_)))
                                              (_hd124428124739_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124429124736_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124427124741_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124421124725_))
                                                  (let ((_e124432124744_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124421124725_))))
                                                    (let ((_tl124430124749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124432124744_)))
                                                          (_hd124431124747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124432124744_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124431124747_))
                                                          (let ((_e124435124752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124431124747_))))
                    (let ((_tl124433124757_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124435124752_)))
                          (_hd124434124755_
                           (let ()
                             (declare (not safe))
                             (##car _e124435124752_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124434124755_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124434124755_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124433124757_))
                                  (let ((_e124438124760_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124433124757_))))
                                    (let ((_tl124436124765_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124438124760_)))
                                          (_hd124437124763_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124438124760_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124436124765_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124430124749_))
                                              (let ((__tmp128942
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124437124763_
                                                             _-absent-value124383124647_)))
                                                    (__tmp128941
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124428124739_
                                                             _key124384124649_)))
                                                    (__tmp128940
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124419124715_
                                                             _-xkwvar124385124651_)))
                                                    (__tmp128939
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124410124691_
                                                             _-hash-ref124386124653_))))
                                                (declare (not safe))
                                                (_loop124379124642_
                                                 _lp-tl124382124661_
                                                 __tmp128942
                                                 __tmp128941
                                                 __tmp128940
                                                 __tmp128939))
                                              (___match127503127504_
                                               _e124336124501_
                                               _hd124335124504_
                                               _tl124334124506_))
                                          (___match127503127504_
                                           _e124336124501_
                                           _hd124335124504_
                                           _tl124334124506_))))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))
                              (___match127503127504_
                               _e124336124501_
                               _hd124335124504_
                               _tl124334124506_))
                          (___match127503127504_
                           _e124336124501_
                           _hd124335124504_
                           _tl124334124506_))))
                  (___match127503127504_
                   _e124336124501_
                   _hd124335124504_
                   _tl124334124506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_))
                                              (___match127503127504_
                                               _e124336124501_
                                               _hd124335124504_
                                               _tl124334124506_))))
                                      (___match127503127504_
                                       _e124336124501_
                                       _hd124335124504_
                                       _tl124334124506_))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))
                              (___match127503127504_
                               _e124336124501_
                               _hd124335124504_
                               _tl124334124506_))))
                      (___match127503127504_
                       _e124336124501_
                       _hd124335124504_
                       _tl124334124506_))))
              (___match127503127504_
               _e124336124501_
               _hd124335124504_
               _tl124334124506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_))))
                                          (___match127503127504_
                                           _e124336124501_
                                           _hd124335124504_
                                           _tl124334124506_))
                                      (___match127503127504_
                                       _e124336124501_
                                       _hd124335124504_
                                       _tl124334124506_))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))))
                          (___match127503127504_
                           _e124336124501_
                           _hd124335124504_
                           _tl124334124506_))))
                  (___match127503127504_
                   _e124336124501_
                   _hd124335124504_
                   _tl124334124506_))
              (___match127503127504_
               _e124336124501_
               _hd124335124504_
               _tl124334124506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127503127504_
                                               _e124336124501_
                                               _hd124335124504_
                                               _tl124334124506_))
                                          (___match127503127504_
                                           _e124336124501_
                                           _hd124335124504_
                                           _tl124334124506_))
                                      (___match127503127504_
                                       _e124336124501_
                                       _hd124335124504_
                                       _tl124334124506_))))
                              (___match127503127504_
                               _e124336124501_
                               _hd124335124504_
                               _tl124334124506_))))
                      (___match127503127504_
                       _e124336124501_
                       _hd124335124504_
                       _tl124334124506_))
                  (___match127503127504_
                   _e124336124501_
                   _hd124335124504_
                   _tl124334124506_))
              (___match127503127504_
               _e124336124501_
               _hd124335124504_
               _tl124334124506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127503127504_
                                               _e124336124501_
                                               _hd124335124504_
                                               _tl124334124506_))))
                                      (let ((_-hash-ref124390124774_
                                             (reverse _-hash-ref124386124653_))
                                            (_-xkwvar124389124772_
                                             (reverse _-xkwvar124385124651_))
                                            (_key124388124770_
                                             (reverse _key124384124649_))
                                            (_-absent-value124387124768_
                                             (reverse _-absent-value124383124647_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124343124530_))
                                            (let ((_L124777_ _hd124398124637_)
                                                  (_L124778_
                                                   _-absent-value124387124768_)
                                                  (_L124779_ _key124388124770_)
                                                  (_L124780_
                                                   _-xkwvar124389124772_)
                                                  (_L124781_
                                                   _-hash-ref124390124774_)
                                                  (_L124782_ _hd124374124608_)
                                                  (_L124783_ _hd124365124584_)
                                                  (_L124784_ _hd124356124560_)
                                                  (_L124785_ _tl124340124522_)
                                                  (_L124786_ _hd124341124520_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124786_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124785_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124784_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124786_
                                                          _L124782_))
                                                       (let ((__tmp128937
                                                              (let ((__tmp128938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124839124842_ _g124840124844_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124839124842_ _g124840124844_)))))
                        (declare (not safe))
                        (foldr1 __tmp128938 '() _L124779_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128937))
               (let ((__tmp128936
                      (lambda (_g124846124848_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124846124848_
                           'hash-ref))))
                     (__tmp128934
                      (let ((__tmp128935
                             (lambda (_g124850124853_ _g124851124855_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124850124853_ _g124851124855_)))))
                        (declare (not safe))
                        (foldr1 __tmp128935 '() _L124781_))))
                 (declare (not safe))
                 (andmap1 __tmp128936 __tmp128934))
               (let ((__tmp128933
                      (lambda (_g124857124859_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124857124859_
                           'absent-value))))
                     (__tmp128931
                      (let ((__tmp128932
                             (lambda (_g124861124864_ _g124862124866_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124861124864_ _g124862124866_)))))
                        (declare (not safe))
                        (foldr1 __tmp128932 '() _L124778_))))
                 (declare (not safe))
                 (andmap1 __tmp128933 __tmp128931))
               (let ((__tmp128930
                      (lambda (_g124868124870_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124868124870_ _L124786_))))
                     (__tmp128928
                      (let ((__tmp128929
                             (lambda (_g124872124875_ _g124873124877_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124872124875_ _g124873124877_)))))
                        (declare (not safe))
                        (foldr1 __tmp128929 '() _L124780_))))
                 (declare (not safe))
                 (andmap1 __tmp128930 __tmp128928)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127190127191_
                                                   _L124777_
                                                   _L124778_
                                                   _L124779_
                                                   _L124780_
                                                   _L124781_
                                                   _L124782_
                                                   _L124783_
                                                   _L124784_
                                                   _L124785_
                                                   _L124786_)
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_)))
                                            (___match127503127504_
                                             _e124336124501_
                                             _hd124335124504_
                                             _tl124334124506_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124379124642_
                           _target124376124613_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127369127370_
                    (lambda (_e124336124501_
                             _hd124335124504_
                             _tl124334124506_
                             _e124339124509_
                             _hd124338124512_
                             _tl124337124514_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124338124512_))
                          (let ((_e124342124517_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124338124512_))))
                            (let ((_tl124340124522_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124342124517_)))
                                  (_hd124341124520_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124342124517_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124337124514_))
                                  (let ((_e124345124525_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124337124514_))))
                                    (let ((_tl124343124530_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124345124525_)))
                                          (_hd124344124528_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124345124525_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124344124528_))
                                          (let ((_e124348124533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124344124528_))))
                                            (let ((_tl124346124538_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124348124533_)))
                                                  (_hd124347124536_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124348124533_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124347124536_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124347124536_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124346124538_))
                                                          (let ((_e124351124541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124346124538_))))
                    (let ((_tl124349124546_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124351124541_)))
                          (_hd124350124544_
                           (let ()
                             (declare (not safe))
                             (##car _e124351124541_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124350124544_))
                          (let ((_e124354124549_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124350124544_))))
                            (let ((_tl124352124554_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124354124549_)))
                                  (_hd124353124552_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124354124549_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124353124552_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124353124552_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124352124554_))
                                          (let ((_e124357124557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124352124554_))))
                                            (let ((_tl124355124562_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124357124557_)))
                                                  (_hd124356124560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124357124557_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124355124562_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124349124546_))
                                                      (let ((_e124360124565_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124349124546_))))
                (let ((_tl124358124570_
                       (let () (declare (not safe)) (##cdr _e124360124565_)))
                      (_hd124359124568_
                       (let () (declare (not safe)) (##car _e124360124565_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124359124568_))
                      (let ((_e124363124573_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124359124568_))))
                        (let ((_tl124361124578_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124363124573_)))
                              (_hd124362124576_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124363124573_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124362124576_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124362124576_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124361124578_))
                                      (let ((_e124366124581_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124361124578_))))
                                        (let ((_tl124364124586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124366124581_)))
                                              (_hd124365124584_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124366124581_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124364124586_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124358124570_))
                                                  (let ((_e124369124589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124358124570_))))
                                                    (let ((_tl124367124594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124369124589_)))
                                                          (_hd124368124592_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124369124589_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124368124592_))
                                                          (let ((_e124372124597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124368124592_))))
                    (let ((_tl124370124602_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124372124597_)))
                          (_hd124371124600_
                           (let ()
                             (declare (not safe))
                             (##car _e124372124597_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124371124600_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124371124600_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124370124602_))
                                  (let ((_e124375124605_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124370124602_))))
                                    (let ((_tl124373124610_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124375124605_)))
                                          (_hd124374124608_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124375124605_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124373124610_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124367124594_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124367124594_))
                                                        '1)
                                                  (let ((___splice127192127193_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124367124594_
                                                            '1))))
                                                    (let ((_tl124378124615_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127192127193_
                                                              '1)))
                                                          (_target124376124613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127192127193_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124378124615_))
                                                          (let ((_e124393124618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124378124615_))))
                    (let ((_tl124391124623_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124393124618_)))
                          (_hd124392124621_
                           (let ()
                             (declare (not safe))
                             (##car _e124393124618_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124392124621_))
                          (let ((_e124396124626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124392124621_))))
                            (let ((_tl124394124631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124396124626_)))
                                  (_hd124395124629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124396124626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124395124629_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124395124629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124394124631_))
                                          (let ((_e124399124634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124394124631_))))
                                            (let ((_tl124397124639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124399124634_)))
                                                  (_hd124398124637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124399124634_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124397124639_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124391124623_))
                                                      (___match127497127498_
                                                       _e124336124501_
                                                       _hd124335124504_
                                                       _tl124334124506_
                                                       _e124339124509_
                                                       _hd124338124512_
                                                       _tl124337124514_
                                                       _e124342124517_
                                                       _hd124341124520_
                                                       _tl124340124522_
                                                       _e124345124525_
                                                       _hd124344124528_
                                                       _tl124343124530_
                                                       _e124348124533_
                                                       _hd124347124536_
                                                       _tl124346124538_
                                                       _e124351124541_
                                                       _hd124350124544_
                                                       _tl124349124546_
                                                       _e124354124549_
                                                       _hd124353124552_
                                                       _tl124352124554_
                                                       _e124357124557_
                                                       _hd124356124560_
                                                       _tl124355124562_
                                                       _e124360124565_
                                                       _hd124359124568_
                                                       _tl124358124570_
                                                       _e124363124573_
                                                       _hd124362124576_
                                                       _tl124361124578_
                                                       _e124366124581_
                                                       _hd124365124584_
                                                       _tl124364124586_
                                                       _e124369124589_
                                                       _hd124368124592_
                                                       _tl124367124594_
                                                       _e124372124597_
                                                       _hd124371124600_
                                                       _tl124370124602_
                                                       _e124375124605_
                                                       _hd124374124608_
                                                       _tl124373124610_
                                                       ___splice127192127193_
                                                       _target124376124613_
                                                       _tl124378124615_
                                                       _e124393124618_
                                                       _hd124392124621_
                                                       _tl124391124623_
                                                       _e124396124626_
                                                       _hd124395124629_
                                                       _tl124394124631_
                                                       _e124399124634_
                                                       _hd124398124637_
                                                       _tl124397124639_)
                                                      (___match127503127504_
                                                       _e124336124501_
                                                       _hd124335124504_
                                                       _tl124334124506_))
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_))))
                                          (___match127503127504_
                                           _e124336124501_
                                           _hd124335124504_
                                           _tl124334124506_))
                                      (___match127503127504_
                                       _e124336124501_
                                       _hd124335124504_
                                       _tl124334124506_))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))))
                          (___match127503127504_
                           _e124336124501_
                           _hd124335124504_
                           _tl124334124506_))))
                  (___match127503127504_
                   _e124336124501_
                   _hd124335124504_
                   _tl124334124506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_))
                                              (___match127503127504_
                                               _e124336124501_
                                               _hd124335124504_
                                               _tl124334124506_))
                                          (___match127503127504_
                                           _e124336124501_
                                           _hd124335124504_
                                           _tl124334124506_))))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))
                              (___match127503127504_
                               _e124336124501_
                               _hd124335124504_
                               _tl124334124506_))
                          (___match127503127504_
                           _e124336124501_
                           _hd124335124504_
                           _tl124334124506_))))
                  (___match127503127504_
                   _e124336124501_
                   _hd124335124504_
                   _tl124334124506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_))
                                              (___match127503127504_
                                               _e124336124501_
                                               _hd124335124504_
                                               _tl124334124506_))))
                                      (___match127503127504_
                                       _e124336124501_
                                       _hd124335124504_
                                       _tl124334124506_))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))
                              (___match127503127504_
                               _e124336124501_
                               _hd124335124504_
                               _tl124334124506_))))
                      (___match127503127504_
                       _e124336124501_
                       _hd124335124504_
                       _tl124334124506_))))
              (___match127503127504_
               _e124336124501_
               _hd124335124504_
               _tl124334124506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_))))
                                          (___match127503127504_
                                           _e124336124501_
                                           _hd124335124504_
                                           _tl124334124506_))
                                      (___match127503127504_
                                       _e124336124501_
                                       _hd124335124504_
                                       _tl124334124506_))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))))
                          (___match127503127504_
                           _e124336124501_
                           _hd124335124504_
                           _tl124334124506_))))
                  (___match127503127504_
                   _e124336124501_
                   _hd124335124504_
                   _tl124334124506_))
              (___match127503127504_
               _e124336124501_
               _hd124335124504_
               _tl124334124506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127503127504_
                                                   _e124336124501_
                                                   _hd124335124504_
                                                   _tl124334124506_))))
                                          (___match127503127504_
                                           _e124336124501_
                                           _hd124335124504_
                                           _tl124334124506_))))
                                  (___match127503127504_
                                   _e124336124501_
                                   _hd124335124504_
                                   _tl124334124506_))))
                          (___match127503127504_
                           _e124336124501_
                           _hd124335124504_
                           _tl124334124506_))))
                   (___match127357127358_
                    (lambda (_e124269124892_
                             _hd124268124895_
                             _tl124267124897_
                             _e124272124900_
                             _hd124271124903_
                             _tl124270124905_
                             _e124275124908_
                             _hd124274124911_
                             _tl124273124913_
                             _e124278124916_
                             _hd124277124919_
                             _tl124276124921_
                             _e124281124924_
                             _hd124280124927_
                             _tl124279124929_
                             _e124284124932_
                             _hd124283124935_
                             _tl124282124937_
                             _e124287124940_
                             _hd124286124943_
                             _tl124285124945_
                             _e124290124948_
                             _hd124289124951_
                             _tl124288124953_
                             _e124293124956_
                             _hd124292124959_
                             _tl124291124961_
                             _e124296124964_
                             _hd124295124967_
                             _tl124294124969_
                             _e124299124972_
                             _hd124298124975_
                             _tl124297124977_
                             _e124302124980_
                             _hd124301124983_
                             _tl124300124985_
                             _e124305124988_
                             _hd124304124991_
                             _tl124303124993_
                             _e124308124996_
                             _hd124307124999_
                             _tl124306125001_
                             _e124311125004_
                             _hd124310125007_
                             _tl124309125009_
                             _e124314125012_
                             _hd124313125015_
                             _tl124312125017_
                             _e124317125020_
                             _hd124316125023_
                             _tl124315125025_
                             _e124320125028_
                             _hd124319125031_
                             _tl124318125033_
                             _e124323125036_
                             _hd124322125039_
                             _tl124321125041_)
                      (let ((_L125044_ _hd124322125039_)
                            (_L125045_ _hd124313125015_)
                            (_L125046_ _hd124304124991_)
                            (_L125047_ _hd124295124967_)
                            (_L125048_ _hd124286124943_)
                            (_L125049_ _hd124271124903_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125049_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125048_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L125047_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125049_ _L125044_)))
                            (___kont127188127189_
                             _L125044_
                             _L125045_
                             _L125046_
                             _L125047_
                             _L125048_
                             _L125049_)
                            (___match127369127370_
                             _e124269124892_
                             _hd124268124895_
                             _tl124267124897_
                             _e124272124900_
                             _hd124271124903_
                             _tl124270124905_)))))
                   (___match127211127212_
                    (lambda (_e124269124892_ _hd124268124895_ _tl124267124897_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124267124897_))
                          (let ((_e124272124900_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124267124897_))))
                            (let ((_tl124270124905_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124272124900_)))
                                  (_hd124271124903_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124272124900_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124270124905_))
                                  (let ((_e124275124908_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124270124905_))))
                                    (let ((_tl124273124913_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124275124908_)))
                                          (_hd124274124911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124275124908_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124274124911_))
                                          (let ((_e124278124916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124274124911_))))
                                            (let ((_tl124276124921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124278124916_)))
                                                  (_hd124277124919_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124278124916_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124277124919_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124277124919_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124276124921_))
                                                          (let ((_e124281124924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124276124921_))))
                    (let ((_tl124279124929_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124281124924_)))
                          (_hd124280124927_
                           (let ()
                             (declare (not safe))
                             (##car _e124281124924_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124280124927_))
                          (let ((_e124284124932_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124280124927_))))
                            (let ((_tl124282124937_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124284124932_)))
                                  (_hd124283124935_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124284124932_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124283124935_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124283124935_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124282124937_))
                                          (let ((_e124287124940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124282124937_))))
                                            (let ((_tl124285124945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124287124940_)))
                                                  (_hd124286124943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124287124940_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124285124945_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124279124929_))
                                                      (let ((_e124290124948_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124279124929_))))
                (let ((_tl124288124953_
                       (let () (declare (not safe)) (##cdr _e124290124948_)))
                      (_hd124289124951_
                       (let () (declare (not safe)) (##car _e124290124948_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124289124951_))
                      (let ((_e124293124956_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124289124951_))))
                        (let ((_tl124291124961_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124293124956_)))
                              (_hd124292124959_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124293124956_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124292124959_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124292124959_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124291124961_))
                                      (let ((_e124296124964_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124291124961_))))
                                        (let ((_tl124294124969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124296124964_)))
                                              (_hd124295124967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124296124964_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124294124969_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124288124953_))
                                                  (let ((_e124299124972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124288124953_))))
                                                    (let ((_tl124297124977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124299124972_)))
                                                          (_hd124298124975_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124299124972_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124298124975_))
                                                          (let ((_e124302124980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124298124975_))))
                    (let ((_tl124300124985_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124302124980_)))
                          (_hd124301124983_
                           (let ()
                             (declare (not safe))
                             (##car _e124302124980_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124301124983_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124301124983_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124300124985_))
                                  (let ((_e124305124988_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124300124985_))))
                                    (let ((_tl124303124993_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124305124988_)))
                                          (_hd124304124991_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124305124988_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124303124993_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124297124977_))
                                              (let ((_e124308124996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124297124977_))))
                                                (let ((_tl124306125001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124308124996_)))
                                                      (_hd124307124999_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124308124996_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124307124999_))
                                                      (let ((_e124311125004_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124307124999_))))
                (let ((_tl124309125009_
                       (let () (declare (not safe)) (##cdr _e124311125004_)))
                      (_hd124310125007_
                       (let () (declare (not safe)) (##car _e124311125004_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124310125007_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124310125007_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124309125009_))
                              (let ((_e124314125012_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124309125009_))))
                                (let ((_tl124312125017_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124314125012_)))
                                      (_hd124313125015_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124314125012_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124312125017_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124306125001_))
                                          (let ((_e124317125020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124306125001_))))
                                            (let ((_tl124315125025_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124317125020_)))
                                                  (_hd124316125023_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124317125020_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124316125023_))
                                                  (let ((_e124320125028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124316125023_))))
                                                    (let ((_tl124318125033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124320125028_)))
                                                          (_hd124319125031_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124320125028_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124319125031_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124319125031_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124318125033_))
                          (let ((_e124323125036_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124318125033_))))
                            (let ((_tl124321125041_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124323125036_)))
                                  (_hd124322125039_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124323125036_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124321125041_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124315125025_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124273124913_))
                                          (___match127357127358_
                                           _e124269124892_
                                           _hd124268124895_
                                           _tl124267124897_
                                           _e124272124900_
                                           _hd124271124903_
                                           _tl124270124905_
                                           _e124275124908_
                                           _hd124274124911_
                                           _tl124273124913_
                                           _e124278124916_
                                           _hd124277124919_
                                           _tl124276124921_
                                           _e124281124924_
                                           _hd124280124927_
                                           _tl124279124929_
                                           _e124284124932_
                                           _hd124283124935_
                                           _tl124282124937_
                                           _e124287124940_
                                           _hd124286124943_
                                           _tl124285124945_
                                           _e124290124948_
                                           _hd124289124951_
                                           _tl124288124953_
                                           _e124293124956_
                                           _hd124292124959_
                                           _tl124291124961_
                                           _e124296124964_
                                           _hd124295124967_
                                           _tl124294124969_
                                           _e124299124972_
                                           _hd124298124975_
                                           _tl124297124977_
                                           _e124302124980_
                                           _hd124301124983_
                                           _tl124300124985_
                                           _e124305124988_
                                           _hd124304124991_
                                           _tl124303124993_
                                           _e124308124996_
                                           _hd124307124999_
                                           _tl124306125001_
                                           _e124311125004_
                                           _hd124310125007_
                                           _tl124309125009_
                                           _e124314125012_
                                           _hd124313125015_
                                           _tl124312125017_
                                           _e124317125020_
                                           _hd124316125023_
                                           _tl124315125025_
                                           _e124320125028_
                                           _hd124319125031_
                                           _tl124318125033_
                                           _e124323125036_
                                           _hd124322125039_
                                           _tl124321125041_)
                                          (___match127369127370_
                                           _e124269124892_
                                           _hd124268124895_
                                           _tl124267124897_
                                           _e124272124900_
                                           _hd124271124903_
                                           _tl124270124905_))
                                      (___match127369127370_
                                       _e124269124892_
                                       _hd124268124895_
                                       _tl124267124897_
                                       _e124272124900_
                                       _hd124271124903_
                                       _tl124270124905_))
                                  (___match127369127370_
                                   _e124269124892_
                                   _hd124268124895_
                                   _tl124267124897_
                                   _e124272124900_
                                   _hd124271124903_
                                   _tl124270124905_))))
                          (___match127369127370_
                           _e124269124892_
                           _hd124268124895_
                           _tl124267124897_
                           _e124272124900_
                           _hd124271124903_
                           _tl124270124905_))
                      (___match127369127370_
                       _e124269124892_
                       _hd124268124895_
                       _tl124267124897_
                       _e124272124900_
                       _hd124271124903_
                       _tl124270124905_))
                  (___match127369127370_
                   _e124269124892_
                   _hd124268124895_
                   _tl124267124897_
                   _e124272124900_
                   _hd124271124903_
                   _tl124270124905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127369127370_
                                                   _e124269124892_
                                                   _hd124268124895_
                                                   _tl124267124897_
                                                   _e124272124900_
                                                   _hd124271124903_
                                                   _tl124270124905_))))
                                          (___match127369127370_
                                           _e124269124892_
                                           _hd124268124895_
                                           _tl124267124897_
                                           _e124272124900_
                                           _hd124271124903_
                                           _tl124270124905_))
                                      (___match127369127370_
                                       _e124269124892_
                                       _hd124268124895_
                                       _tl124267124897_
                                       _e124272124900_
                                       _hd124271124903_
                                       _tl124270124905_))))
                              (___match127369127370_
                               _e124269124892_
                               _hd124268124895_
                               _tl124267124897_
                               _e124272124900_
                               _hd124271124903_
                               _tl124270124905_))
                          (___match127369127370_
                           _e124269124892_
                           _hd124268124895_
                           _tl124267124897_
                           _e124272124900_
                           _hd124271124903_
                           _tl124270124905_))
                      (___match127369127370_
                       _e124269124892_
                       _hd124268124895_
                       _tl124267124897_
                       _e124272124900_
                       _hd124271124903_
                       _tl124270124905_))))
              (___match127369127370_
               _e124269124892_
               _hd124268124895_
               _tl124267124897_
               _e124272124900_
               _hd124271124903_
               _tl124270124905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127369127370_
                                               _e124269124892_
                                               _hd124268124895_
                                               _tl124267124897_
                                               _e124272124900_
                                               _hd124271124903_
                                               _tl124270124905_))
                                          (___match127369127370_
                                           _e124269124892_
                                           _hd124268124895_
                                           _tl124267124897_
                                           _e124272124900_
                                           _hd124271124903_
                                           _tl124270124905_))))
                                  (___match127369127370_
                                   _e124269124892_
                                   _hd124268124895_
                                   _tl124267124897_
                                   _e124272124900_
                                   _hd124271124903_
                                   _tl124270124905_))
                              (___match127369127370_
                               _e124269124892_
                               _hd124268124895_
                               _tl124267124897_
                               _e124272124900_
                               _hd124271124903_
                               _tl124270124905_))
                          (___match127369127370_
                           _e124269124892_
                           _hd124268124895_
                           _tl124267124897_
                           _e124272124900_
                           _hd124271124903_
                           _tl124270124905_))))
                  (___match127369127370_
                   _e124269124892_
                   _hd124268124895_
                   _tl124267124897_
                   _e124272124900_
                   _hd124271124903_
                   _tl124270124905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127369127370_
                                                   _e124269124892_
                                                   _hd124268124895_
                                                   _tl124267124897_
                                                   _e124272124900_
                                                   _hd124271124903_
                                                   _tl124270124905_))
                                              (___match127369127370_
                                               _e124269124892_
                                               _hd124268124895_
                                               _tl124267124897_
                                               _e124272124900_
                                               _hd124271124903_
                                               _tl124270124905_))))
                                      (___match127369127370_
                                       _e124269124892_
                                       _hd124268124895_
                                       _tl124267124897_
                                       _e124272124900_
                                       _hd124271124903_
                                       _tl124270124905_))
                                  (___match127369127370_
                                   _e124269124892_
                                   _hd124268124895_
                                   _tl124267124897_
                                   _e124272124900_
                                   _hd124271124903_
                                   _tl124270124905_))
                              (___match127369127370_
                               _e124269124892_
                               _hd124268124895_
                               _tl124267124897_
                               _e124272124900_
                               _hd124271124903_
                               _tl124270124905_))))
                      (___match127369127370_
                       _e124269124892_
                       _hd124268124895_
                       _tl124267124897_
                       _e124272124900_
                       _hd124271124903_
                       _tl124270124905_))))
              (___match127369127370_
               _e124269124892_
               _hd124268124895_
               _tl124267124897_
               _e124272124900_
               _hd124271124903_
               _tl124270124905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127369127370_
                                                   _e124269124892_
                                                   _hd124268124895_
                                                   _tl124267124897_
                                                   _e124272124900_
                                                   _hd124271124903_
                                                   _tl124270124905_))))
                                          (___match127369127370_
                                           _e124269124892_
                                           _hd124268124895_
                                           _tl124267124897_
                                           _e124272124900_
                                           _hd124271124903_
                                           _tl124270124905_))
                                      (___match127369127370_
                                       _e124269124892_
                                       _hd124268124895_
                                       _tl124267124897_
                                       _e124272124900_
                                       _hd124271124903_
                                       _tl124270124905_))
                                  (___match127369127370_
                                   _e124269124892_
                                   _hd124268124895_
                                   _tl124267124897_
                                   _e124272124900_
                                   _hd124271124903_
                                   _tl124270124905_))))
                          (___match127369127370_
                           _e124269124892_
                           _hd124268124895_
                           _tl124267124897_
                           _e124272124900_
                           _hd124271124903_
                           _tl124270124905_))))
                  (___match127369127370_
                   _e124269124892_
                   _hd124268124895_
                   _tl124267124897_
                   _e124272124900_
                   _hd124271124903_
                   _tl124270124905_))
              (___match127369127370_
               _e124269124892_
               _hd124268124895_
               _tl124267124897_
               _e124272124900_
               _hd124271124903_
               _tl124270124905_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127369127370_
                                                   _e124269124892_
                                                   _hd124268124895_
                                                   _tl124267124897_
                                                   _e124272124900_
                                                   _hd124271124903_
                                                   _tl124270124905_))))
                                          (___match127369127370_
                                           _e124269124892_
                                           _hd124268124895_
                                           _tl124267124897_
                                           _e124272124900_
                                           _hd124271124903_
                                           _tl124270124905_))))
                                  (___match127369127370_
                                   _e124269124892_
                                   _hd124268124895_
                                   _tl124267124897_
                                   _e124272124900_
                                   _hd124271124903_
                                   _tl124270124905_))))
                          (___match127503127504_
                           _e124269124892_
                           _hd124268124895_
                           _tl124267124897_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127184127185_))
                  (let ((_e124260125109_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127184127185_))))
                    (let ((_tl124258125114_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124260125109_)))
                          (_hd124259125112_
                           (let ()
                             (declare (not safe))
                             (##car _e124260125109_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125117_ _tl124258125114_))
                            (___kont127186127187_ _L125117_))
                          (___match127211127212_
                           _e124260125109_
                           _hd124259125112_
                           _tl124258125114_))))
                  (let () (declare (not safe)) (_g124255124451_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self124202_ _stx124203_)
        (letrec ((_clause-e124205_
                  (lambda (_form124246_)
                    (let ((__obj128867
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
                       __obj128867
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124246_))
                       (if (let ((__tmp128943
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128943))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124246_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124246_))
                               '#f)
                           '#f))
                      __obj128867))))
          (let* ((_g124207124217_
                  (lambda (_g124208124214_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124208124214_))))
                 (_g124206124243_
                  (lambda (_g124208124220_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124208124220_))
                        (let ((_e124212124222_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124208124220_))))
                          (let ((_hd124211124225_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124212124222_)))
                                (_tl124210124227_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124212124222_))))
                            ((lambda (_L124230_)
                               (let ((_clauses124241_
                                      (map _clause-e124205_ _L124230_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124241_)))
                             _tl124210124227_)))
                        (let ()
                          (declare (not safe))
                          (_g124207124217_ _g124208124220_))))))
            (declare (not safe))
            (_g124206124243_ _stx124203_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self124133_ _stx124134_)
        (let* ((_g124136124153_
                (lambda (_g124137124150_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124137124150_))))
               (_g124135124199_
                (lambda (_g124137124156_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124137124156_))
                      (let ((_e124142124158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124137124156_))))
                        (let ((_hd124141124161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124142124158_)))
                              (_tl124140124163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124142124158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124140124163_))
                              (let ((_e124145124166_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124140124163_))))
                                (let ((_hd124144124169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124145124166_)))
                                      (_tl124143124171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124145124166_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124143124171_))
                                      (let ((_e124148124174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124143124171_))))
                                        (let ((_hd124147124177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124148124174_)))
                                              (_tl124146124179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124148124174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124146124179_))
                                              ((lambda (_L124182_ _L124183_)
                                                 (let ((__tmp128944
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self124133_
                                                             _L124182_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128944
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124147124177_
                                               _hd124144124169_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124136124153_
                                                 _g124137124156_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124136124153_ _g124137124156_)))))
                              (let ()
                                (declare (not safe))
                                (_g124136124153_ _g124137124156_)))))
                      (let ()
                        (declare (not safe))
                        (_g124136124153_ _g124137124156_))))))
          (declare (not safe))
          (_g124135124199_ _stx124134_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self124037_ _stx124038_)
        (let* ((___stx127512127513_ _stx124038_)
               (_g124041124061_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127512127513_)))))
          (let ((___kont127514127515_
                 (lambda (_L124105_ _L124106_)
                   (let ((_type-e124123124125_
                          (let ((__tmp128945
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124106_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128945))))
                     (if _type-e124123124125_
                         (let ((_type-e124128_ _type-e124123124125_))
                           (_type-e124128_ _stx124038_ _L124105_))
                         '#f))))
                (___kont127516127517_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127512127513_))
                (let ((_e124047124073_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127512127513_))))
                  (let ((_tl124045124078_
                         (let () (declare (not safe)) (##cdr _e124047124073_)))
                        (_hd124046124076_
                         (let ()
                           (declare (not safe))
                           (##car _e124047124073_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124045124078_))
                        (let ((_e124050124081_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124045124078_))))
                          (let ((_tl124048124086_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124050124081_)))
                                (_hd124049124084_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124050124081_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124049124084_))
                                (let ((_e124053124089_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124049124084_))))
                                  (let ((_tl124051124094_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124053124089_)))
                                        (_hd124052124092_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124053124089_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124052124092_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124052124092_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124051124094_))
                                                (let ((_e124056124097_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124051124094_))))
                                                  (let ((_tl124054124102_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124056124097_)))
                                                        (_hd124055124100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124056124097_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124054124102_))
                                                        (___kont127514127515_
                                                         _tl124048124086_
                                                         _hd124055124100_)
                                                        (___kont127516127517_))))
                                                (___kont127516127517_))
                                            (___kont127516127517_))
                                        (___kont127516127517_))))
                                (___kont127516127517_))))
                        (___kont127516127517_))))
                (___kont127516127517_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self123985_ _stx123986_)
        (let* ((_g123988124001_
                (lambda (_g123989123998_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123989123998_))))
               (_g123987124034_
                (lambda (_g123989124004_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123989124004_))
                      (let ((_e123993124006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123989124004_))))
                        (let ((_hd123992124009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123993124006_)))
                              (_tl123991124011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123993124006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123991124011_))
                              (let ((_e123996124014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123991124011_))))
                                (let ((_hd123995124017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123996124014_)))
                                      (_tl123994124019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123996124014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123994124019_))
                                      ((lambda (_L124022_)
                                         (let ((__tmp128946
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L124022_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128946)))
                                       _hd123995124017_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123988124001_ _g123989124004_)))))
                              (let ()
                                (declare (not safe))
                                (_g123988124001_ _g123989124004_)))))
                      (let ()
                        (declare (not safe))
                        (_g123988124001_ _g123989124004_))))))
          (declare (not safe))
          (_g123987124034_ _stx123986_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123219_)
        (let* ((___stx127550127551_ _form123219_)
               (_g123224123381_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127550127551_)))))
          (let ((___kont127552127553_
                 (lambda (_L123905_ _L123906_ _L123907_) '#t))
                (___kont127558127559_
                 (lambda (_L123693_
                          _L123694_
                          _L123695_
                          _L123696_
                          _L123697_
                          _L123698_)
                   '#t))
                (___kont127564127565_
                 (lambda (_L123489_ _L123490_ _L123491_ _L123492_) '#t))
                (___kont127566127567_ (lambda () '#f)))
            (let* ((___match127691127692_
                    (lambda (_e123343123393_
                             _hd123342123396_
                             _tl123341123398_
                             _e123346123401_
                             _hd123345123404_
                             _tl123344123406_
                             _e123349123409_
                             _hd123348123412_
                             _tl123347123414_
                             _e123352123417_
                             _hd123351123420_
                             _tl123350123422_
                             _e123355123425_
                             _hd123354123428_
                             _tl123353123430_
                             _e123358123433_
                             _hd123357123436_
                             _tl123356123438_
                             _e123361123441_
                             _hd123360123444_
                             _tl123359123446_
                             _e123364123449_
                             _hd123363123452_
                             _tl123362123454_
                             _e123367123457_
                             _hd123366123460_
                             _tl123365123462_
                             _e123370123465_
                             _hd123369123468_
                             _tl123368123470_
                             _e123373123473_
                             _hd123372123476_
                             _tl123371123478_
                             _e123376123481_
                             _hd123375123484_
                             _tl123374123486_)
                      (let ((_L123489_ _hd123375123484_)
                            (_L123490_ _hd123366123460_)
                            (_L123491_ _hd123357123436_)
                            (_L123492_ _hd123342123396_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123492_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123491_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123492_ _L123489_))
                                 (let ((__tmp128947
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123490_
                                           _L123492_))))
                                   (declare (not safe))
                                   (not __tmp128947)))
                            (___kont127564127565_
                             _L123489_
                             _L123490_
                             _L123491_
                             _L123492_)
                            (___kont127566127567_)))))
                   (___match127663127664_
                    (lambda (_e123343123393_
                             _hd123342123396_
                             _tl123341123398_
                             _e123346123401_
                             _hd123345123404_
                             _tl123344123406_
                             _e123349123409_
                             _hd123348123412_
                             _tl123347123414_
                             _e123352123417_
                             _hd123351123420_
                             _tl123350123422_
                             _e123355123425_
                             _hd123354123428_
                             _tl123353123430_
                             _e123358123433_
                             _hd123357123436_
                             _tl123356123438_
                             _e123361123441_
                             _hd123360123444_
                             _tl123359123446_
                             _e123364123449_
                             _hd123363123452_
                             _tl123362123454_
                             _e123367123457_
                             _hd123366123460_
                             _tl123365123462_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123359123446_))
                          (let ((_e123370123465_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123359123446_))))
                            (let ((_tl123368123470_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123370123465_)))
                                  (_hd123369123468_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123370123465_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123369123468_))
                                  (let ((_e123373123473_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123369123468_))))
                                    (let ((_tl123371123478_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123373123473_)))
                                          (_hd123372123476_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123373123473_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123372123476_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123372123476_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123371123478_))
                                                  (let ((_e123376123481_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123371123478_))))
                                                    (let ((_tl123374123486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123376123481_)))
                                                          (_hd123375123484_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123376123481_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123374123486_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123368123470_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123344123406_))
                          (___match127691127692_
                           _e123343123393_
                           _hd123342123396_
                           _tl123341123398_
                           _e123346123401_
                           _hd123345123404_
                           _tl123344123406_
                           _e123349123409_
                           _hd123348123412_
                           _tl123347123414_
                           _e123352123417_
                           _hd123351123420_
                           _tl123350123422_
                           _e123355123425_
                           _hd123354123428_
                           _tl123353123430_
                           _e123358123433_
                           _hd123357123436_
                           _tl123356123438_
                           _e123361123441_
                           _hd123360123444_
                           _tl123359123446_
                           _e123364123449_
                           _hd123363123452_
                           _tl123362123454_
                           _e123367123457_
                           _hd123366123460_
                           _tl123365123462_
                           _e123370123465_
                           _hd123369123468_
                           _tl123368123470_
                           _e123373123473_
                           _hd123372123476_
                           _tl123371123478_
                           _e123376123481_
                           _hd123375123484_
                           _tl123374123486_)
                          (___kont127566127567_))
                      (___kont127566127567_))
                  (___kont127566127567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127566127567_))
                                              (___kont127566127567_))
                                          (___kont127566127567_))))
                                  (___kont127566127567_))))
                          (___kont127566127567_))))
                   (___match127593127594_
                    (lambda (_e123279123533_
                             _hd123278123536_
                             _tl123277123538_
                             ___splice127560127561_
                             _target123280123541_
                             _tl123282123543_)
                      (letrec ((_loop123283123546_
                                (lambda (_hd123281123549_ _arg123287123551_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123281123549_))
                                      (let ((_e123284123554_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123281123549_))))
                                        (let ((_lp-tl123286123559_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123284123554_)))
                                              (_lp-hd123285123557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123284123554_))))
                                          (let ((__tmp128962
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123285123557_
                                                         _arg123287123551_))))
                                            (declare (not safe))
                                            (_loop123283123546_
                                             _lp-tl123286123559_
                                             __tmp128962))))
                                      (let ((_arg123288123562_
                                             (reverse _arg123287123551_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123277123538_))
                                            (let ((_e123291123565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123277123538_))))
                                              (let ((_tl123289123570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123291123565_)))
                                                    (_hd123290123568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123291123565_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123290123568_))
                                                    (let ((_e123294123573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123290123568_))))
                                                      (let ((_tl123292123578_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123294123573_)))
                    (_hd123293123576_
                     (let () (declare (not safe)) (##car _e123294123573_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123293123576_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123293123576_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123292123578_))
                            (let ((_e123297123581_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123292123578_))))
                              (let ((_tl123295123586_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123297123581_)))
                                    (_hd123296123584_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123297123581_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123296123584_))
                                    (let ((_e123300123589_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123296123584_))))
                                      (let ((_tl123298123594_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123300123589_)))
                                            (_hd123299123592_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123300123589_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123299123592_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123299123592_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123298123594_))
                                                    (let ((_e123303123597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123298123594_))))
                                                      (let ((_tl123301123602_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123303123597_)))
                    (_hd123302123600_
                     (let () (declare (not safe)) (##car _e123303123597_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123301123602_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123295123586_))
                        (let ((_e123306123605_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123295123586_))))
                          (let ((_tl123304123610_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123306123605_)))
                                (_hd123305123608_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123306123605_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123305123608_))
                                (let ((_e123309123613_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123305123608_))))
                                  (let ((_tl123307123618_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123309123613_)))
                                        (_hd123308123616_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123309123613_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123308123616_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123308123616_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123307123618_))
                                                (let ((_e123312123621_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123307123618_))))
                                                  (let ((_tl123310123626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123312123621_)))
                                                        (_hd123311123624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123312123621_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123310123626_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123304123610_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123304123610_))
                              '1)
                        (let ((___splice127562127563_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123304123610_
                                  '1))))
                          (let ((_tl123315123631_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127562127563_ '1)))
                                (_target123313123629_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127562127563_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123315123631_))
                                (let ((_e123324123634_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123315123631_))))
                                  (let ((_tl123322123639_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123324123634_)))
                                        (_hd123323123637_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123324123634_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123323123637_))
                                        (let ((_e123327123642_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123323123637_))))
                                          (let ((_tl123325123647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123327123642_)))
                                                (_hd123326123645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123327123642_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123326123645_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123326123645_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123325123647_))
                                                        (let ((_e123330123650_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123325123647_))))
                  (let ((_tl123328123655_
                         (let () (declare (not safe)) (##cdr _e123330123650_)))
                        (_hd123329123653_
                         (let ()
                           (declare (not safe))
                           (##car _e123330123650_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123328123655_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123322123639_))
                            (letrec ((_loop123316123658_
                                      (lambda (_hd123314123661_
                                               _xarg123320123663_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123314123661_))
                                            (let ((_e123317123666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123314123661_))))
                                              (let ((_lp-tl123319123671_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123317123666_)))
                                                    (_lp-hd123318123669_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123317123666_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123318123669_))
                                                    (let ((_e123333123674_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123318123669_))))
                                                      (let ((_tl123331123679_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123333123674_)))
                    (_hd123332123677_
                     (let () (declare (not safe)) (##car _e123333123674_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123332123677_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123332123677_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123331123679_))
                            (let ((_e123336123682_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123331123679_))))
                              (let ((_tl123334123687_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123336123682_)))
                                    (_hd123335123685_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123336123682_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123334123687_))
                                    (let ((__tmp128961
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123335123685_
                                                   _xarg123320123663_))))
                                      (declare (not safe))
                                      (_loop123316123658_
                                       _lp-tl123319123671_
                                       __tmp128961))
                                    (___match127663127664_
                                     _e123279123533_
                                     _hd123278123536_
                                     _tl123277123538_
                                     _e123291123565_
                                     _hd123290123568_
                                     _tl123289123570_
                                     _e123294123573_
                                     _hd123293123576_
                                     _tl123292123578_
                                     _e123297123581_
                                     _hd123296123584_
                                     _tl123295123586_
                                     _e123300123589_
                                     _hd123299123592_
                                     _tl123298123594_
                                     _e123303123597_
                                     _hd123302123600_
                                     _tl123301123602_
                                     _e123306123605_
                                     _hd123305123608_
                                     _tl123304123610_
                                     _e123309123613_
                                     _hd123308123616_
                                     _tl123307123618_
                                     _e123312123621_
                                     _hd123311123624_
                                     _tl123310123626_))))
                            (___match127663127664_
                             _e123279123533_
                             _hd123278123536_
                             _tl123277123538_
                             _e123291123565_
                             _hd123290123568_
                             _tl123289123570_
                             _e123294123573_
                             _hd123293123576_
                             _tl123292123578_
                             _e123297123581_
                             _hd123296123584_
                             _tl123295123586_
                             _e123300123589_
                             _hd123299123592_
                             _tl123298123594_
                             _e123303123597_
                             _hd123302123600_
                             _tl123301123602_
                             _e123306123605_
                             _hd123305123608_
                             _tl123304123610_
                             _e123309123613_
                             _hd123308123616_
                             _tl123307123618_
                             _e123312123621_
                             _hd123311123624_
                             _tl123310123626_))
                        (___match127663127664_
                         _e123279123533_
                         _hd123278123536_
                         _tl123277123538_
                         _e123291123565_
                         _hd123290123568_
                         _tl123289123570_
                         _e123294123573_
                         _hd123293123576_
                         _tl123292123578_
                         _e123297123581_
                         _hd123296123584_
                         _tl123295123586_
                         _e123300123589_
                         _hd123299123592_
                         _tl123298123594_
                         _e123303123597_
                         _hd123302123600_
                         _tl123301123602_
                         _e123306123605_
                         _hd123305123608_
                         _tl123304123610_
                         _e123309123613_
                         _hd123308123616_
                         _tl123307123618_
                         _e123312123621_
                         _hd123311123624_
                         _tl123310123626_))
                    (___match127663127664_
                     _e123279123533_
                     _hd123278123536_
                     _tl123277123538_
                     _e123291123565_
                     _hd123290123568_
                     _tl123289123570_
                     _e123294123573_
                     _hd123293123576_
                     _tl123292123578_
                     _e123297123581_
                     _hd123296123584_
                     _tl123295123586_
                     _e123300123589_
                     _hd123299123592_
                     _tl123298123594_
                     _e123303123597_
                     _hd123302123600_
                     _tl123301123602_
                     _e123306123605_
                     _hd123305123608_
                     _tl123304123610_
                     _e123309123613_
                     _hd123308123616_
                     _tl123307123618_
                     _e123312123621_
                     _hd123311123624_
                     _tl123310123626_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127663127664_
                                                     _e123279123533_
                                                     _hd123278123536_
                                                     _tl123277123538_
                                                     _e123291123565_
                                                     _hd123290123568_
                                                     _tl123289123570_
                                                     _e123294123573_
                                                     _hd123293123576_
                                                     _tl123292123578_
                                                     _e123297123581_
                                                     _hd123296123584_
                                                     _tl123295123586_
                                                     _e123300123589_
                                                     _hd123299123592_
                                                     _tl123298123594_
                                                     _e123303123597_
                                                     _hd123302123600_
                                                     _tl123301123602_
                                                     _e123306123605_
                                                     _hd123305123608_
                                                     _tl123304123610_
                                                     _e123309123613_
                                                     _hd123308123616_
                                                     _tl123307123618_
                                                     _e123312123621_
                                                     _hd123311123624_
                                                     _tl123310123626_))))
                                            (let ((_xarg123321123690_
                                                   (reverse _xarg123320123663_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123289123570_))
                                                  (let ((_L123693_
                                                         _hd123329123653_)
                                                        (_L123694_
                                                         _xarg123321123690_)
                                                        (_L123695_
                                                         _hd123311123624_)
                                                        (_L123696_
                                                         _hd123302123600_)
                                                        (_L123697_
                                                         _tl123282123543_)
                                                        (_L123698_
                                                         _arg123288123562_))
                                                    (if (and (let ((__tmp128959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128960
                                   (lambda (_g123741123744_ _g123742123746_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123741123744_
                                             _g123742123746_)))))
                              (declare (not safe))
                              (foldr1 __tmp128960 '() _L123698_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128959))
                     (let () (declare (not safe)) (gx#identifier? _L123697_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123696_ 'apply))
                     (fx= (length (let ((__tmp128957
                                         (lambda (_g123748123751_
                                                  _g123749123753_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123748123751_
                                                   _g123749123753_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128957 '() _L123698_)))
                          (length (let ((__tmp128958
                                         (lambda (_g123755123758_
                                                  _g123756123760_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123755123758_
                                                   _g123756123760_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128958 '() _L123694_))))
                     (let ((__tmp128955
                            (let ((__tmp128956
                                   (lambda (_g123762123765_ _g123763123767_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123762123765_
                                             _g123763123767_)))))
                              (declare (not safe))
                              (foldr1 __tmp128956 '() _L123698_)))
                           (__tmp128953
                            (let ((__tmp128954
                                   (lambda (_g123769123772_ _g123770123774_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123769123772_
                                             _g123770123774_)))))
                              (declare (not safe))
                              (foldr1 __tmp128954 '() _L123694_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128955 __tmp128953))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123697_ _L123693_))
                     (let ((__tmp128948
                            (let ((__tmp128952
                                   (lambda (_g123776123778_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123776123778_
                                        _L123695_))))
                                  (__tmp128949
                                   (let ((__tmp128951
                                          (lambda (_g123780123783_
                                                   _g123781123785_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123780123783_
                                                    _g123781123785_))))
                                         (__tmp128950
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123697_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128951
                                             __tmp128950
                                             _L123698_))))
                              (declare (not safe))
                              (find __tmp128952 __tmp128949))))
                       (declare (not safe))
                       (not __tmp128948)))
                (___kont127558127559_
                 _L123693_
                 _L123694_
                 _L123695_
                 _L123696_
                 _L123697_
                 _L123698_)
                (___match127663127664_
                 _e123279123533_
                 _hd123278123536_
                 _tl123277123538_
                 _e123291123565_
                 _hd123290123568_
                 _tl123289123570_
                 _e123294123573_
                 _hd123293123576_
                 _tl123292123578_
                 _e123297123581_
                 _hd123296123584_
                 _tl123295123586_
                 _e123300123589_
                 _hd123299123592_
                 _tl123298123594_
                 _e123303123597_
                 _hd123302123600_
                 _tl123301123602_
                 _e123306123605_
                 _hd123305123608_
                 _tl123304123610_
                 _e123309123613_
                 _hd123308123616_
                 _tl123307123618_
                 _e123312123621_
                 _hd123311123624_
                 _tl123310123626_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127663127664_
                                                   _e123279123533_
                                                   _hd123278123536_
                                                   _tl123277123538_
                                                   _e123291123565_
                                                   _hd123290123568_
                                                   _tl123289123570_
                                                   _e123294123573_
                                                   _hd123293123576_
                                                   _tl123292123578_
                                                   _e123297123581_
                                                   _hd123296123584_
                                                   _tl123295123586_
                                                   _e123300123589_
                                                   _hd123299123592_
                                                   _tl123298123594_
                                                   _e123303123597_
                                                   _hd123302123600_
                                                   _tl123301123602_
                                                   _e123306123605_
                                                   _hd123305123608_
                                                   _tl123304123610_
                                                   _e123309123613_
                                                   _hd123308123616_
                                                   _tl123307123618_
                                                   _e123312123621_
                                                   _hd123311123624_
                                                   _tl123310123626_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123316123658_ _target123313123629_ '())))
                            (___match127663127664_
                             _e123279123533_
                             _hd123278123536_
                             _tl123277123538_
                             _e123291123565_
                             _hd123290123568_
                             _tl123289123570_
                             _e123294123573_
                             _hd123293123576_
                             _tl123292123578_
                             _e123297123581_
                             _hd123296123584_
                             _tl123295123586_
                             _e123300123589_
                             _hd123299123592_
                             _tl123298123594_
                             _e123303123597_
                             _hd123302123600_
                             _tl123301123602_
                             _e123306123605_
                             _hd123305123608_
                             _tl123304123610_
                             _e123309123613_
                             _hd123308123616_
                             _tl123307123618_
                             _e123312123621_
                             _hd123311123624_
                             _tl123310123626_))
                        (___match127663127664_
                         _e123279123533_
                         _hd123278123536_
                         _tl123277123538_
                         _e123291123565_
                         _hd123290123568_
                         _tl123289123570_
                         _e123294123573_
                         _hd123293123576_
                         _tl123292123578_
                         _e123297123581_
                         _hd123296123584_
                         _tl123295123586_
                         _e123300123589_
                         _hd123299123592_
                         _tl123298123594_
                         _e123303123597_
                         _hd123302123600_
                         _tl123301123602_
                         _e123306123605_
                         _hd123305123608_
                         _tl123304123610_
                         _e123309123613_
                         _hd123308123616_
                         _tl123307123618_
                         _e123312123621_
                         _hd123311123624_
                         _tl123310123626_))))
                (___match127663127664_
                 _e123279123533_
                 _hd123278123536_
                 _tl123277123538_
                 _e123291123565_
                 _hd123290123568_
                 _tl123289123570_
                 _e123294123573_
                 _hd123293123576_
                 _tl123292123578_
                 _e123297123581_
                 _hd123296123584_
                 _tl123295123586_
                 _e123300123589_
                 _hd123299123592_
                 _tl123298123594_
                 _e123303123597_
                 _hd123302123600_
                 _tl123301123602_
                 _e123306123605_
                 _hd123305123608_
                 _tl123304123610_
                 _e123309123613_
                 _hd123308123616_
                 _tl123307123618_
                 _e123312123621_
                 _hd123311123624_
                 _tl123310123626_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127663127664_
                                                     _e123279123533_
                                                     _hd123278123536_
                                                     _tl123277123538_
                                                     _e123291123565_
                                                     _hd123290123568_
                                                     _tl123289123570_
                                                     _e123294123573_
                                                     _hd123293123576_
                                                     _tl123292123578_
                                                     _e123297123581_
                                                     _hd123296123584_
                                                     _tl123295123586_
                                                     _e123300123589_
                                                     _hd123299123592_
                                                     _tl123298123594_
                                                     _e123303123597_
                                                     _hd123302123600_
                                                     _tl123301123602_
                                                     _e123306123605_
                                                     _hd123305123608_
                                                     _tl123304123610_
                                                     _e123309123613_
                                                     _hd123308123616_
                                                     _tl123307123618_
                                                     _e123312123621_
                                                     _hd123311123624_
                                                     _tl123310123626_))
                                                (___match127663127664_
                                                 _e123279123533_
                                                 _hd123278123536_
                                                 _tl123277123538_
                                                 _e123291123565_
                                                 _hd123290123568_
                                                 _tl123289123570_
                                                 _e123294123573_
                                                 _hd123293123576_
                                                 _tl123292123578_
                                                 _e123297123581_
                                                 _hd123296123584_
                                                 _tl123295123586_
                                                 _e123300123589_
                                                 _hd123299123592_
                                                 _tl123298123594_
                                                 _e123303123597_
                                                 _hd123302123600_
                                                 _tl123301123602_
                                                 _e123306123605_
                                                 _hd123305123608_
                                                 _tl123304123610_
                                                 _e123309123613_
                                                 _hd123308123616_
                                                 _tl123307123618_
                                                 _e123312123621_
                                                 _hd123311123624_
                                                 _tl123310123626_))))
                                        (___match127663127664_
                                         _e123279123533_
                                         _hd123278123536_
                                         _tl123277123538_
                                         _e123291123565_
                                         _hd123290123568_
                                         _tl123289123570_
                                         _e123294123573_
                                         _hd123293123576_
                                         _tl123292123578_
                                         _e123297123581_
                                         _hd123296123584_
                                         _tl123295123586_
                                         _e123300123589_
                                         _hd123299123592_
                                         _tl123298123594_
                                         _e123303123597_
                                         _hd123302123600_
                                         _tl123301123602_
                                         _e123306123605_
                                         _hd123305123608_
                                         _tl123304123610_
                                         _e123309123613_
                                         _hd123308123616_
                                         _tl123307123618_
                                         _e123312123621_
                                         _hd123311123624_
                                         _tl123310123626_))))
                                (___match127663127664_
                                 _e123279123533_
                                 _hd123278123536_
                                 _tl123277123538_
                                 _e123291123565_
                                 _hd123290123568_
                                 _tl123289123570_
                                 _e123294123573_
                                 _hd123293123576_
                                 _tl123292123578_
                                 _e123297123581_
                                 _hd123296123584_
                                 _tl123295123586_
                                 _e123300123589_
                                 _hd123299123592_
                                 _tl123298123594_
                                 _e123303123597_
                                 _hd123302123600_
                                 _tl123301123602_
                                 _e123306123605_
                                 _hd123305123608_
                                 _tl123304123610_
                                 _e123309123613_
                                 _hd123308123616_
                                 _tl123307123618_
                                 _e123312123621_
                                 _hd123311123624_
                                 _tl123310123626_))))
                        (___match127663127664_
                         _e123279123533_
                         _hd123278123536_
                         _tl123277123538_
                         _e123291123565_
                         _hd123290123568_
                         _tl123289123570_
                         _e123294123573_
                         _hd123293123576_
                         _tl123292123578_
                         _e123297123581_
                         _hd123296123584_
                         _tl123295123586_
                         _e123300123589_
                         _hd123299123592_
                         _tl123298123594_
                         _e123303123597_
                         _hd123302123600_
                         _tl123301123602_
                         _e123306123605_
                         _hd123305123608_
                         _tl123304123610_
                         _e123309123613_
                         _hd123308123616_
                         _tl123307123618_
                         _e123312123621_
                         _hd123311123624_
                         _tl123310123626_))
                    (___match127663127664_
                     _e123279123533_
                     _hd123278123536_
                     _tl123277123538_
                     _e123291123565_
                     _hd123290123568_
                     _tl123289123570_
                     _e123294123573_
                     _hd123293123576_
                     _tl123292123578_
                     _e123297123581_
                     _hd123296123584_
                     _tl123295123586_
                     _e123300123589_
                     _hd123299123592_
                     _tl123298123594_
                     _e123303123597_
                     _hd123302123600_
                     _tl123301123602_
                     _e123306123605_
                     _hd123305123608_
                     _tl123304123610_
                     _e123309123613_
                     _hd123308123616_
                     _tl123307123618_
                     _e123312123621_
                     _hd123311123624_
                     _tl123310123626_))
                (___kont127566127567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127566127567_))
                                            (___kont127566127567_))
                                        (___kont127566127567_))))
                                (___kont127566127567_))))
                        (___kont127566127567_))
                    (___kont127566127567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127566127567_))
                                                (___kont127566127567_))
                                            (___kont127566127567_))))
                                    (___kont127566127567_))))
                            (___kont127566127567_))
                        (___kont127566127567_))
                    (___kont127566127567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127566127567_))))
                                            (___kont127566127567_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123283123546_ _target123280123541_ '())))))
                   (___match127581127582_
                    (lambda (_e123231123793_
                             _hd123230123796_
                             _tl123229123798_
                             ___splice127554127555_
                             _target123232123801_
                             _tl123234123803_)
                      (letrec ((_loop123235123806_
                                (lambda (_hd123233123809_ _arg123239123811_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123233123809_))
                                      (let ((_e123236123814_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123233123809_))))
                                        (let ((_lp-tl123238123819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123236123814_)))
                                              (_lp-hd123237123817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123236123814_))))
                                          (let ((__tmp128976
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123237123817_
                                                         _arg123239123811_))))
                                            (declare (not safe))
                                            (_loop123235123806_
                                             _lp-tl123238123819_
                                             __tmp128976))))
                                      (let ((_arg123240123822_
                                             (reverse _arg123239123811_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123229123798_))
                                            (let ((_e123243123825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123229123798_))))
                                              (let ((_tl123241123830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123243123825_)))
                                                    (_hd123242123828_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123243123825_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123242123828_))
                                                    (let ((_e123246123833_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123242123828_))))
                                                      (let ((_tl123244123838_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123246123833_)))
                    (_hd123245123836_
                     (let () (declare (not safe)) (##car _e123246123833_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123245123836_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123245123836_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123244123838_))
                            (let ((_e123249123841_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123244123838_))))
                              (let ((_tl123247123846_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123249123841_)))
                                    (_hd123248123844_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123249123841_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123248123844_))
                                    (let ((_e123252123849_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123248123844_))))
                                      (let ((_tl123250123854_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123252123849_)))
                                            (_hd123251123852_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123252123849_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123251123852_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123251123852_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123250123854_))
                                                    (let ((_e123255123857_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123250123854_))))
                                                      (let ((_tl123253123862_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123255123857_)))
                    (_hd123254123860_
                     (let () (declare (not safe)) (##car _e123255123857_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123253123862_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123247123846_))
                        (let ((___splice127556127557_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123247123846_
                                  '0))))
                          (let ((_tl123258123867_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127556127557_ '1)))
                                (_target123256123865_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127556127557_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123258123867_))
                                (letrec ((_loop123259123870_
                                          (lambda (_hd123257123873_
                                                   _xarg123263123875_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123257123873_))
                                                (let ((_e123260123878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123257123873_))))
                                                  (let ((_lp-tl123262123883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123260123878_)))
                                                        (_lp-hd123261123881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123260123878_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123261123881_))
                                                        (let ((_e123267123886_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123261123881_))))
                  (let ((_tl123265123891_
                         (let () (declare (not safe)) (##cdr _e123267123886_)))
                        (_hd123266123889_
                         (let ()
                           (declare (not safe))
                           (##car _e123267123886_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123266123889_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123266123889_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123265123891_))
                                (let ((_e123270123894_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123265123891_))))
                                  (let ((_tl123268123899_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123270123894_)))
                                        (_hd123269123897_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123270123894_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123268123899_))
                                        (let ((__tmp128975
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123269123897_
                                                       _xarg123263123875_))))
                                          (declare (not safe))
                                          (_loop123259123870_
                                           _lp-tl123262123883_
                                           __tmp128975))
                                        (___match127593127594_
                                         _e123231123793_
                                         _hd123230123796_
                                         _tl123229123798_
                                         ___splice127554127555_
                                         _target123232123801_
                                         _tl123234123803_))))
                                (___match127593127594_
                                 _e123231123793_
                                 _hd123230123796_
                                 _tl123229123798_
                                 ___splice127554127555_
                                 _target123232123801_
                                 _tl123234123803_))
                            (___match127593127594_
                             _e123231123793_
                             _hd123230123796_
                             _tl123229123798_
                             ___splice127554127555_
                             _target123232123801_
                             _tl123234123803_))
                        (___match127593127594_
                         _e123231123793_
                         _hd123230123796_
                         _tl123229123798_
                         ___splice127554127555_
                         _target123232123801_
                         _tl123234123803_))))
                (___match127593127594_
                 _e123231123793_
                 _hd123230123796_
                 _tl123229123798_
                 ___splice127554127555_
                 _target123232123801_
                 _tl123234123803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123264123902_
                                                       (reverse _xarg123263123875_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123241123830_))
                                                      (let ((_L123905_
                                                             _xarg123264123902_)
                                                            (_L123906_
                                                             _hd123254123860_)
                                                            (_L123907_
                                                             _arg123240123822_))
                                                        (if (and (let ((__tmp128973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128974
                                       (lambda (_g123935123938_
                                                _g123936123940_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123935123938_
                                                 _g123936123940_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128974 '() _L123907_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128973))
                         (fx= (length (let ((__tmp128971
                                             (lambda (_g123942123945_
                                                      _g123943123947_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123942123945_
                                                       _g123943123947_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128971 '() _L123907_)))
                              (length (let ((__tmp128972
                                             (lambda (_g123949123952_
                                                      _g123950123954_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123949123952_
                                                       _g123950123954_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128972 '() _L123905_))))
                         (let ((__tmp128969
                                (let ((__tmp128970
                                       (lambda (_g123956123959_
                                                _g123957123961_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123956123959_
                                                 _g123957123961_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128970 '() _L123907_)))
                               (__tmp128967
                                (let ((__tmp128968
                                       (lambda (_g123963123966_
                                                _g123964123968_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123963123966_
                                                 _g123964123968_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128968 '() _L123905_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128969
                                    __tmp128967))
                         (let ((__tmp128963
                                (let ((__tmp128966
                                       (lambda (_g123970123972_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123970123972_
                                            _L123906_))))
                                      (__tmp128964
                                       (let ((__tmp128965
                                              (lambda (_g123974123977_
                                                       _g123975123979_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123974123977_
                                                        _g123975123979_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128965 '() _L123907_))))
                                  (declare (not safe))
                                  (find __tmp128966 __tmp128964))))
                           (declare (not safe))
                           (not __tmp128963)))
                    (___kont127552127553_ _L123905_ _L123906_ _L123907_)
                    (___match127593127594_
                     _e123231123793_
                     _hd123230123796_
                     _tl123229123798_
                     ___splice127554127555_
                     _target123232123801_
                     _tl123234123803_)))
              (___match127593127594_
               _e123231123793_
               _hd123230123796_
               _tl123229123798_
               ___splice127554127555_
               _target123232123801_
               _tl123234123803_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123259123870_
                                     _target123256123865_
                                     '())))
                                (___match127593127594_
                                 _e123231123793_
                                 _hd123230123796_
                                 _tl123229123798_
                                 ___splice127554127555_
                                 _target123232123801_
                                 _tl123234123803_))))
                        (___match127593127594_
                         _e123231123793_
                         _hd123230123796_
                         _tl123229123798_
                         ___splice127554127555_
                         _target123232123801_
                         _tl123234123803_))
                    (___match127593127594_
                     _e123231123793_
                     _hd123230123796_
                     _tl123229123798_
                     ___splice127554127555_
                     _target123232123801_
                     _tl123234123803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127593127594_
                                                     _e123231123793_
                                                     _hd123230123796_
                                                     _tl123229123798_
                                                     ___splice127554127555_
                                                     _target123232123801_
                                                     _tl123234123803_))
                                                (___match127593127594_
                                                 _e123231123793_
                                                 _hd123230123796_
                                                 _tl123229123798_
                                                 ___splice127554127555_
                                                 _target123232123801_
                                                 _tl123234123803_))
                                            (___match127593127594_
                                             _e123231123793_
                                             _hd123230123796_
                                             _tl123229123798_
                                             ___splice127554127555_
                                             _target123232123801_
                                             _tl123234123803_))))
                                    (___match127593127594_
                                     _e123231123793_
                                     _hd123230123796_
                                     _tl123229123798_
                                     ___splice127554127555_
                                     _target123232123801_
                                     _tl123234123803_))))
                            (___match127593127594_
                             _e123231123793_
                             _hd123230123796_
                             _tl123229123798_
                             ___splice127554127555_
                             _target123232123801_
                             _tl123234123803_))
                        (___match127593127594_
                         _e123231123793_
                         _hd123230123796_
                         _tl123229123798_
                         ___splice127554127555_
                         _target123232123801_
                         _tl123234123803_))
                    (___match127593127594_
                     _e123231123793_
                     _hd123230123796_
                     _tl123229123798_
                     ___splice127554127555_
                     _target123232123801_
                     _tl123234123803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127593127594_
                                                     _e123231123793_
                                                     _hd123230123796_
                                                     _tl123229123798_
                                                     ___splice127554127555_
                                                     _target123232123801_
                                                     _tl123234123803_))))
                                            (___match127593127594_
                                             _e123231123793_
                                             _hd123230123796_
                                             _tl123229123798_
                                             ___splice127554127555_
                                             _target123232123801_
                                             _tl123234123803_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123235123806_ _target123232123801_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127550127551_))
                  (let ((_e123231123793_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127550127551_))))
                    (let ((_tl123229123798_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123231123793_)))
                          (_hd123230123796_
                           (let ()
                             (declare (not safe))
                             (##car _e123231123793_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123230123796_))
                          (let ((___splice127554127555_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123230123796_
                                    '0))))
                            (let ((_tl123234123803_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127554127555_ '1)))
                                  (_target123232123801_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127554127555_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123234123803_))
                                  (___match127581127582_
                                   _e123231123793_
                                   _hd123230123796_
                                   _tl123229123798_
                                   ___splice127554127555_
                                   _target123232123801_
                                   _tl123234123803_)
                                  (___match127593127594_
                                   _e123231123793_
                                   _hd123230123796_
                                   _tl123229123798_
                                   ___splice127554127555_
                                   _target123232123801_
                                   _tl123234123803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123229123798_))
                              (let ((_e123346123401_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123229123798_))))
                                (let ((_tl123344123406_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123346123401_)))
                                      (_hd123345123404_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123346123401_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123345123404_))
                                      (let ((_e123349123409_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123345123404_))))
                                        (let ((_tl123347123414_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123349123409_)))
                                              (_hd123348123412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123349123409_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123348123412_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123348123412_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123347123414_))
                                                      (let ((_e123352123417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123347123414_))))
                (let ((_tl123350123422_
                       (let () (declare (not safe)) (##cdr _e123352123417_)))
                      (_hd123351123420_
                       (let () (declare (not safe)) (##car _e123352123417_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123351123420_))
                      (let ((_e123355123425_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123351123420_))))
                        (let ((_tl123353123430_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123355123425_)))
                              (_hd123354123428_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123355123425_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123354123428_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123354123428_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123353123430_))
                                      (let ((_e123358123433_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123353123430_))))
                                        (let ((_tl123356123438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123358123433_)))
                                              (_hd123357123436_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123358123433_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123356123438_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123350123422_))
                                                  (let ((_e123361123441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123350123422_))))
                                                    (let ((_tl123359123446_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123361123441_)))
                                                          (_hd123360123444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123361123441_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123360123444_))
                                                          (let ((_e123364123449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123360123444_))))
                    (let ((_tl123362123454_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123364123449_)))
                          (_hd123363123452_
                           (let ()
                             (declare (not safe))
                             (##car _e123364123449_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123363123452_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123363123452_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123362123454_))
                                  (let ((_e123367123457_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123362123454_))))
                                    (let ((_tl123365123462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123367123457_)))
                                          (_hd123366123460_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123367123457_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123365123462_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123359123446_))
                                              (let ((_e123370123465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123359123446_))))
                                                (let ((_tl123368123470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123370123465_)))
                                                      (_hd123369123468_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123370123465_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123369123468_))
                                                      (let ((_e123373123473_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123369123468_))))
                (let ((_tl123371123478_
                       (let () (declare (not safe)) (##cdr _e123373123473_)))
                      (_hd123372123476_
                       (let () (declare (not safe)) (##car _e123373123473_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123372123476_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123372123476_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123371123478_))
                              (let ((_e123376123481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123371123478_))))
                                (let ((_tl123374123486_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123376123481_)))
                                      (_hd123375123484_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123376123481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123374123486_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123368123470_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123344123406_))
                                              (___match127691127692_
                                               _e123231123793_
                                               _hd123230123796_
                                               _tl123229123798_
                                               _e123346123401_
                                               _hd123345123404_
                                               _tl123344123406_
                                               _e123349123409_
                                               _hd123348123412_
                                               _tl123347123414_
                                               _e123352123417_
                                               _hd123351123420_
                                               _tl123350123422_
                                               _e123355123425_
                                               _hd123354123428_
                                               _tl123353123430_
                                               _e123358123433_
                                               _hd123357123436_
                                               _tl123356123438_
                                               _e123361123441_
                                               _hd123360123444_
                                               _tl123359123446_
                                               _e123364123449_
                                               _hd123363123452_
                                               _tl123362123454_
                                               _e123367123457_
                                               _hd123366123460_
                                               _tl123365123462_
                                               _e123370123465_
                                               _hd123369123468_
                                               _tl123368123470_
                                               _e123373123473_
                                               _hd123372123476_
                                               _tl123371123478_
                                               _e123376123481_
                                               _hd123375123484_
                                               _tl123374123486_)
                                              (___kont127566127567_))
                                          (___kont127566127567_))
                                      (___kont127566127567_))))
                              (___kont127566127567_))
                          (___kont127566127567_))
                      (___kont127566127567_))))
              (___kont127566127567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127566127567_))
                                          (___kont127566127567_))))
                                  (___kont127566127567_))
                              (___kont127566127567_))
                          (___kont127566127567_))))
                  (___kont127566127567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127566127567_))
                                              (___kont127566127567_))))
                                      (___kont127566127567_))
                                  (___kont127566127567_))
                              (___kont127566127567_))))
                      (___kont127566127567_))))
              (___kont127566127567_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127566127567_))
                                              (___kont127566127567_))))
                                      (___kont127566127567_))))
                              (___kont127566127567_)))))
                  (___kont127566127567_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122687_)
        (let* ((___stx127694127695_ _form122687_)
               (_g122691122815_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127694127695_)))))
          (let ((___kont127696127697_
                 (lambda (_L123185_ _L123186_ _L123187_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123186_))))
                (___kont127702127703_
                 (lambda (_L123033_ _L123034_ _L123035_ _L123036_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123033_))))
                (___kont127706127707_
                 (lambda (_L122900_ _L122901_ _L122902_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122900_)))))
            (let* ((___match127803127804_
                    (lambda (_e122783122820_
                             _hd122782122823_
                             _tl122781122825_
                             _e122786122828_
                             _hd122785122831_
                             _tl122784122833_
                             _e122789122836_
                             _hd122788122839_
                             _tl122787122841_
                             _e122792122844_
                             _hd122791122847_
                             _tl122790122849_
                             _e122795122852_
                             _hd122794122855_
                             _tl122793122857_
                             _e122798122860_
                             _hd122797122863_
                             _tl122796122865_
                             _e122801122868_
                             _hd122800122871_
                             _tl122799122873_
                             _e122804122876_
                             _hd122803122879_
                             _tl122802122881_
                             _e122807122884_
                             _hd122806122887_
                             _tl122805122889_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122799122873_))
                          (let ((_e122810122892_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122799122873_))))
                            (let ((_tl122808122897_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122810122892_)))
                                  (_hd122809122895_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122810122892_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122808122897_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122784122833_))
                                      (___kont127706127707_
                                       _hd122806122887_
                                       _hd122797122863_
                                       _hd122782122823_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122691122815_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122691122815_)))))
                          (let () (declare (not safe)) (_g122691122815_)))))
                   (___match127733127734_
                    (lambda (_e122744122937_
                             _hd122743122940_
                             _tl122742122942_
                             ___splice127704127705_
                             _target122745122945_
                             _tl122747122947_)
                      (letrec ((_loop122748122950_
                                (lambda (_hd122746122953_ _arg122752122955_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122746122953_))
                                      (let ((_e122749122958_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122746122953_))))
                                        (let ((_lp-tl122751122963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122749122958_)))
                                              (_lp-hd122750122961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122749122958_))))
                                          (let ((__tmp128977
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122750122961_
                                                         _arg122752122955_))))
                                            (declare (not safe))
                                            (_loop122748122950_
                                             _lp-tl122751122963_
                                             __tmp128977))))
                                      (let ((_arg122753122966_
                                             (reverse _arg122752122955_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122742122942_))
                                            (let ((_e122756122969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122742122942_))))
                                              (let ((_tl122754122974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122756122969_)))
                                                    (_hd122755122972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122756122969_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122755122972_))
                                                    (let ((_e122759122977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122755122972_))))
                                                      (let ((_tl122757122982_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122759122977_)))
                    (_hd122758122980_
                     (let () (declare (not safe)) (##car _e122759122977_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122758122980_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122758122980_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122757122982_))
                            (let ((_e122762122985_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122757122982_))))
                              (let ((_tl122760122990_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122762122985_)))
                                    (_hd122761122988_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122762122985_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122761122988_))
                                    (let ((_e122765122993_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122761122988_))))
                                      (let ((_tl122763122998_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122765122993_)))
                                            (_hd122764122996_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122765122993_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122764122996_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122764122996_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122763122998_))
                                                    (let ((_e122768123001_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122763122998_))))
                                                      (let ((_tl122766123006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122768123001_)))
                    (_hd122767123004_
                     (let () (declare (not safe)) (##car _e122768123001_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122766123006_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122760122990_))
                        (let ((_e122771123009_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122760122990_))))
                          (let ((_tl122769123014_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122771123009_)))
                                (_hd122770123012_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122771123009_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122770123012_))
                                (let ((_e122774123017_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122770123012_))))
                                  (let ((_tl122772123022_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122774123017_)))
                                        (_hd122773123020_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122774123017_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122773123020_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122773123020_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122772123022_))
                                                (let ((_e122777123025_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122772123022_))))
                                                  (let ((_tl122775123030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122777123025_)))
                                                        (_hd122776123028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122777123025_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122775123030_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122754122974_))
                                                            (___kont127702127703_
                                                             _hd122776123028_
                                                             _hd122767123004_
                                                             _tl122747122947_
                                                             _arg122753122966_)
                                                            (___match127803127804_
                                                             _e122744122937_
                                                             _hd122743122940_
                                                             _tl122742122942_
                                                             _e122756122969_
                                                             _hd122755122972_
                                                             _tl122754122974_
                                                             _e122759122977_
                                                             _hd122758122980_
                                                             _tl122757122982_
                                                             _e122762122985_
                                                             _hd122761122988_
                                                             _tl122760122990_
                                                             _e122765122993_
                                                             _hd122764122996_
                                                             _tl122763122998_
                                                             _e122768123001_
                                                             _hd122767123004_
                                                             _tl122766123006_
                                                             _e122771123009_
                                                             _hd122770123012_
                                                             _tl122769123014_
                                                             _e122774123017_
                                                             _hd122773123020_
                                                             _tl122772123022_
                                                             _e122777123025_
                                                             _hd122776123028_
                                                             _tl122775123030_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122691122815_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122691122815_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122691122815_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122691122815_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122691122815_)))))
                        (let () (declare (not safe)) (_g122691122815_)))
                    (let () (declare (not safe)) (_g122691122815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122691122815_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122691122815_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122691122815_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122691122815_)))))
                            (let () (declare (not safe)) (_g122691122815_)))
                        (let () (declare (not safe)) (_g122691122815_)))
                    (let () (declare (not safe)) (_g122691122815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122691122815_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122691122815_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122748122950_ _target122745122945_ '())))))
                   (___match127721127722_
                    (lambda (_e122698123073_
                             _hd122697123076_
                             _tl122696123078_
                             ___splice127698127699_
                             _target122699123081_
                             _tl122701123083_)
                      (letrec ((_loop122702123086_
                                (lambda (_hd122700123089_ _arg122706123091_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122700123089_))
                                      (let ((_e122703123094_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122700123089_))))
                                        (let ((_lp-tl122705123099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122703123094_)))
                                              (_lp-hd122704123097_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122703123094_))))
                                          (let ((__tmp128979
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122704123097_
                                                         _arg122706123091_))))
                                            (declare (not safe))
                                            (_loop122702123086_
                                             _lp-tl122705123099_
                                             __tmp128979))))
                                      (let ((_arg122707123102_
                                             (reverse _arg122706123091_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122696123078_))
                                            (let ((_e122710123105_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122696123078_))))
                                              (let ((_tl122708123110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122710123105_)))
                                                    (_hd122709123108_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122710123105_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122709123108_))
                                                    (let ((_e122713123113_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122709123108_))))
                                                      (let ((_tl122711123118_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122713123113_)))
                    (_hd122712123116_
                     (let () (declare (not safe)) (##car _e122713123113_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122712123116_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122712123116_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122711123118_))
                            (let ((_e122716123121_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122711123118_))))
                              (let ((_tl122714123126_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122716123121_)))
                                    (_hd122715123124_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122716123121_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122715123124_))
                                    (let ((_e122719123129_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122715123124_))))
                                      (let ((_tl122717123134_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122719123129_)))
                                            (_hd122718123132_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122719123129_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122718123132_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122718123132_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122717123134_))
                                                    (let ((_e122722123137_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122717123134_))))
                                                      (let ((_tl122720123142_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122722123137_)))
                    (_hd122721123140_
                     (let () (declare (not safe)) (##car _e122722123137_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122720123142_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122714123126_))
                        (let ((___splice127700127701_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122714123126_
                                  '0))))
                          (let ((_tl122725123147_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127700127701_ '1)))
                                (_target122723123145_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127700127701_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122725123147_))
                                (letrec ((_loop122726123150_
                                          (lambda (_hd122724123153_
                                                   _xarg122730123155_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122724123153_))
                                                (let ((_e122727123158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122724123153_))))
                                                  (let ((_lp-tl122729123163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122727123158_)))
                                                        (_lp-hd122728123161_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122727123158_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122728123161_))
                                                        (let ((_e122734123166_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122728123161_))))
                  (let ((_tl122732123171_
                         (let () (declare (not safe)) (##cdr _e122734123166_)))
                        (_hd122733123169_
                         (let ()
                           (declare (not safe))
                           (##car _e122734123166_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122733123169_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122733123169_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122732123171_))
                                (let ((_e122737123174_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122732123171_))))
                                  (let ((_tl122735123179_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122737123174_)))
                                        (_hd122736123177_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122737123174_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122735123179_))
                                        (let ((__tmp128978
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122736123177_
                                                       _xarg122730123155_))))
                                          (declare (not safe))
                                          (_loop122726123150_
                                           _lp-tl122729123163_
                                           __tmp128978))
                                        (___match127733127734_
                                         _e122698123073_
                                         _hd122697123076_
                                         _tl122696123078_
                                         ___splice127698127699_
                                         _target122699123081_
                                         _tl122701123083_))))
                                (___match127733127734_
                                 _e122698123073_
                                 _hd122697123076_
                                 _tl122696123078_
                                 ___splice127698127699_
                                 _target122699123081_
                                 _tl122701123083_))
                            (___match127733127734_
                             _e122698123073_
                             _hd122697123076_
                             _tl122696123078_
                             ___splice127698127699_
                             _target122699123081_
                             _tl122701123083_))
                        (___match127733127734_
                         _e122698123073_
                         _hd122697123076_
                         _tl122696123078_
                         ___splice127698127699_
                         _target122699123081_
                         _tl122701123083_))))
                (___match127733127734_
                 _e122698123073_
                 _hd122697123076_
                 _tl122696123078_
                 ___splice127698127699_
                 _target122699123081_
                 _tl122701123083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122731123182_
                                                       (reverse _xarg122730123155_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122708123110_))
                                                      (___kont127696127697_
                                                       _xarg122731123182_
                                                       _hd122721123140_
                                                       _arg122707123102_)
                                                      (___match127733127734_
                                                       _e122698123073_
                                                       _hd122697123076_
                                                       _tl122696123078_
                                                       ___splice127698127699_
                                                       _target122699123081_
                                                       _tl122701123083_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122726123150_
                                     _target122723123145_
                                     '())))
                                (___match127733127734_
                                 _e122698123073_
                                 _hd122697123076_
                                 _tl122696123078_
                                 ___splice127698127699_
                                 _target122699123081_
                                 _tl122701123083_))))
                        (___match127733127734_
                         _e122698123073_
                         _hd122697123076_
                         _tl122696123078_
                         ___splice127698127699_
                         _target122699123081_
                         _tl122701123083_))
                    (___match127733127734_
                     _e122698123073_
                     _hd122697123076_
                     _tl122696123078_
                     ___splice127698127699_
                     _target122699123081_
                     _tl122701123083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127733127734_
                                                     _e122698123073_
                                                     _hd122697123076_
                                                     _tl122696123078_
                                                     ___splice127698127699_
                                                     _target122699123081_
                                                     _tl122701123083_))
                                                (___match127733127734_
                                                 _e122698123073_
                                                 _hd122697123076_
                                                 _tl122696123078_
                                                 ___splice127698127699_
                                                 _target122699123081_
                                                 _tl122701123083_))
                                            (___match127733127734_
                                             _e122698123073_
                                             _hd122697123076_
                                             _tl122696123078_
                                             ___splice127698127699_
                                             _target122699123081_
                                             _tl122701123083_))))
                                    (___match127733127734_
                                     _e122698123073_
                                     _hd122697123076_
                                     _tl122696123078_
                                     ___splice127698127699_
                                     _target122699123081_
                                     _tl122701123083_))))
                            (___match127733127734_
                             _e122698123073_
                             _hd122697123076_
                             _tl122696123078_
                             ___splice127698127699_
                             _target122699123081_
                             _tl122701123083_))
                        (___match127733127734_
                         _e122698123073_
                         _hd122697123076_
                         _tl122696123078_
                         ___splice127698127699_
                         _target122699123081_
                         _tl122701123083_))
                    (___match127733127734_
                     _e122698123073_
                     _hd122697123076_
                     _tl122696123078_
                     ___splice127698127699_
                     _target122699123081_
                     _tl122701123083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127733127734_
                                                     _e122698123073_
                                                     _hd122697123076_
                                                     _tl122696123078_
                                                     ___splice127698127699_
                                                     _target122699123081_
                                                     _tl122701123083_))))
                                            (___match127733127734_
                                             _e122698123073_
                                             _hd122697123076_
                                             _tl122696123078_
                                             ___splice127698127699_
                                             _target122699123081_
                                             _tl122701123083_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122702123086_ _target122699123081_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127694127695_))
                  (let ((_e122698123073_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127694127695_))))
                    (let ((_tl122696123078_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122698123073_)))
                          (_hd122697123076_
                           (let ()
                             (declare (not safe))
                             (##car _e122698123073_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122697123076_))
                          (let ((___splice127698127699_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122697123076_
                                    '0))))
                            (let ((_tl122701123083_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127698127699_ '1)))
                                  (_target122699123081_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127698127699_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122701123083_))
                                  (___match127721127722_
                                   _e122698123073_
                                   _hd122697123076_
                                   _tl122696123078_
                                   ___splice127698127699_
                                   _target122699123081_
                                   _tl122701123083_)
                                  (___match127733127734_
                                   _e122698123073_
                                   _hd122697123076_
                                   _tl122696123078_
                                   ___splice127698127699_
                                   _target122699123081_
                                   _tl122701123083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122696123078_))
                              (let ((_e122786122828_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122696123078_))))
                                (let ((_tl122784122833_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122786122828_)))
                                      (_hd122785122831_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122786122828_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122785122831_))
                                      (let ((_e122789122836_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122785122831_))))
                                        (let ((_tl122787122841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122789122836_)))
                                              (_hd122788122839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122789122836_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122788122839_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122788122839_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122787122841_))
                                                      (let ((_e122792122844_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122787122841_))))
                (let ((_tl122790122849_
                       (let () (declare (not safe)) (##cdr _e122792122844_)))
                      (_hd122791122847_
                       (let () (declare (not safe)) (##car _e122792122844_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122791122847_))
                      (let ((_e122795122852_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122791122847_))))
                        (let ((_tl122793122857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122795122852_)))
                              (_hd122794122855_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122795122852_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122794122855_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122794122855_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122793122857_))
                                      (let ((_e122798122860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122793122857_))))
                                        (let ((_tl122796122865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122798122860_)))
                                              (_hd122797122863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122798122860_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122796122865_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122790122849_))
                                                  (let ((_e122801122868_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122790122849_))))
                                                    (let ((_tl122799122873_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122801122868_)))
                                                          (_hd122800122871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122801122868_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122800122871_))
                                                          (let ((_e122804122876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122800122871_))))
                    (let ((_tl122802122881_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122804122876_)))
                          (_hd122803122879_
                           (let ()
                             (declare (not safe))
                             (##car _e122804122876_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122803122879_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122803122879_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122802122881_))
                                  (let ((_e122807122884_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122802122881_))))
                                    (let ((_tl122805122889_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122807122884_)))
                                          (_hd122806122887_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122807122884_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122805122889_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122799122873_))
                                              (let ((_e122810122892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122799122873_))))
                                                (let ((_tl122808122897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122810122892_)))
                                                      (_hd122809122895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122810122892_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122808122897_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122784122833_))
                                                          (___kont127706127707_
                                                           _hd122806122887_
                                                           _hd122797122863_
                                                           _hd122697123076_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122691122815_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122691122815_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122691122815_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122691122815_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122691122815_)))
                              (let () (declare (not safe)) (_g122691122815_)))
                          (let () (declare (not safe)) (_g122691122815_)))))
                  (let () (declare (not safe)) (_g122691122815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122691122815_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122691122815_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122691122815_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122691122815_)))
                              (let ()
                                (declare (not safe))
                                (_g122691122815_)))))
                      (let () (declare (not safe)) (_g122691122815_)))))
              (let () (declare (not safe)) (_g122691122815_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122691122815_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122691122815_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122691122815_)))))
                              (let ()
                                (declare (not safe))
                                (_g122691122815_))))))
                  (let () (declare (not safe)) (_g122691122815_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122491_)
        (let* ((_g122493122507_
                (lambda (_g122494122504_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122494122504_))))
               (_g122492122684_
                (lambda (_g122494122510_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122494122510_))
                      (let ((_e122499122512_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122494122510_))))
                        (let ((_hd122498122515_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122499122512_)))
                              (_tl122497122517_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122499122512_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122497122517_))
                              (let ((_e122502122520_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122497122517_))))
                                (let ((_hd122501122523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122502122520_)))
                                      (_tl122500122525_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122502122520_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122500122525_))
                                      ((lambda (_L122528_ _L122529_)
                                         (let* ((___stx127816127817_ _L122529_)
                                                (_g122544122572_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127816127817_)))))
                                           (let ((___kont127818127819_
                                                  (lambda (_L122663_)
                                                    (length (let ((__tmp128980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122673122676_ _g122674122678_)
                             (let ()
                               (declare (not safe))
                               (cons _g122673122676_ _g122674122678_)))))
                      (declare (not safe))
                      (foldr1 __tmp128980 '() _L122663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127822127823_
                                                  (lambda (_L122614_ _L122615_)
                                                    (let ((__tmp128981
                                                           (length (let ((__tmp128982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122626122629_ _g122627122631_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122626122629_
                                            _g122627122631_)))))
                             (declare (not safe))
                             (foldr1 __tmp128982 '() _L122615_)))))
              (declare (not safe))
              (cons __tmp128981 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127826127827_
                                                  (lambda (_L122577_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127841127842_
                                                     (lambda (___splice127824127825_
                                                              _target122558122590_
                                                              _tl122560122592_)
                                                       (letrec ((_loop122561122595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122559122598_ _arg122565122600_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122559122598_))
                               (let ((_e122562122603_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122559122598_))))
                                 (let ((_lp-tl122564122608_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122562122603_)))
                                       (_lp-hd122563122606_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122562122603_))))
                                   (let ((__tmp128983
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122563122606_
                                                  _arg122565122600_))))
                                     (declare (not safe))
                                     (_loop122561122595_
                                      _lp-tl122564122608_
                                      __tmp128983))))
                               (let ((_arg122566122611_
                                      (reverse _arg122565122600_)))
                                 (___kont127822127823_
                                  _tl122560122592_
                                  _arg122566122611_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122561122595_ _target122558122590_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127835127836_
                                                     (lambda (___splice127820127821_
                                                              _target122547122639_
                                                              _tl122549122641_)
                                                       (letrec ((_loop122550122644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122548122647_ _arg122554122649_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122548122647_))
                               (let ((_e122551122652_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122548122647_))))
                                 (let ((_lp-tl122553122657_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122551122652_)))
                                       (_lp-hd122552122655_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122551122652_))))
                                   (let ((__tmp128984
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122552122655_
                                                  _arg122554122649_))))
                                     (declare (not safe))
                                     (_loop122550122644_
                                      _lp-tl122553122657_
                                      __tmp128984))))
                               (let ((_arg122555122660_
                                      (reverse _arg122554122649_)))
                                 (___kont127818127819_ _arg122555122660_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122550122644_ _target122547122639_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127816127817_))
                                                   (let ((___splice127820127821_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127816127817_
                                                             '0))))
                                                     (let ((_tl122549122641_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127820127821_
                                                               '1)))
                                                           (_target122547122639_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127820127821_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122549122641_))
                                                           (___match127835127836_
                                                            ___splice127820127821_
                                                            _target122547122639_
                                                            _tl122549122641_)
                                                           (___match127841127842_
                                                            ___splice127820127821_
                                                            _target122547122639_
                                                            _tl122549122641_))))
                                                   (___kont127826127827_
                                                    ___stx127816127817_))))))
                                       _hd122501122523_
                                       _hd122498122515_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122493122507_ _g122494122510_)))))
                              (let ()
                                (declare (not safe))
                                (_g122493122507_ _g122494122510_)))))
                      (let ()
                        (declare (not safe))
                        (_g122493122507_ _g122494122510_))))))
          (declare (not safe))
          (_g122492122684_ _form122491_))))
    (define gxc#lambda-expr?
      (lambda (_expr122444_)
        (let* ((___stx127844127845_ _expr122444_)
               (_g122447122457_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127844127845_)))))
          (let ((___kont127846127847_ (lambda (_L122477_) '#t))
                (___kont127848127849_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127844127845_))
                (let ((_e122452122469_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127844127845_))))
                  (let ((_tl122450122474_
                         (let () (declare (not safe)) (##cdr _e122452122469_)))
                        (_hd122451122472_
                         (let ()
                           (declare (not safe))
                           (##car _e122452122469_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122451122472_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122451122472_))
                            (___kont127846127847_ _tl122450122474_)
                            (___kont127848127849_))
                        (___kont127848127849_))))
                (___kont127848127849_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122397_)
        (let* ((___stx127862127863_ _expr122397_)
               (_g122400122410_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127862127863_)))))
          (let ((___kont127864127865_ (lambda (_L122430_) '#t))
                (___kont127866127867_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127862127863_))
                (let ((_e122405122422_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127862127863_))))
                  (let ((_tl122403122427_
                         (let () (declare (not safe)) (##cdr _e122405122422_)))
                        (_hd122404122425_
                         (let ()
                           (declare (not safe))
                           (##car _e122405122422_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122404122425_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122404122425_))
                            (___kont127864127865_ _tl122403122427_)
                            (___kont127866127867_))
                        (___kont127866127867_))))
                (___kont127866127867_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122266_)
        (let* ((___stx127880127881_ _expr122266_)
               (_g122269122299_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127880127881_)))))
          (let ((___kont127882127883_
                 (lambda (_L122367_ _L122368_ _L122369_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122369_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122368_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122367_))
                           '#f)
                       '#f)))
                (___kont127884127885_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127880127881_))
                (let ((_e122276122311_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127880127881_))))
                  (let ((_tl122274122316_
                         (let () (declare (not safe)) (##cdr _e122276122311_)))
                        (_hd122275122314_
                         (let ()
                           (declare (not safe))
                           (##car _e122276122311_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122275122314_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122275122314_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122274122316_))
                                (let ((_e122279122319_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122274122316_))))
                                  (let ((_tl122277122324_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122279122319_)))
                                        (_hd122278122322_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122279122319_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122278122322_))
                                        (let ((_e122282122327_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122278122322_))))
                                          (let ((_tl122280122332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122282122327_)))
                                                (_hd122281122330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122282122327_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122281122330_))
                                                (let ((_e122285122335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122281122330_))))
                                                  (let ((_tl122283122340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122285122335_)))
                                                        (_hd122284122338_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122285122335_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122284122338_))
                                                        (let ((_e122288122343_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122284122338_))))
                  (let ((_tl122286122348_
                         (let () (declare (not safe)) (##cdr _e122288122343_)))
                        (_hd122287122346_
                         (let ()
                           (declare (not safe))
                           (##car _e122288122343_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122286122348_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122283122340_))
                            (let ((_e122291122351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122283122340_))))
                              (let ((_tl122289122356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122291122351_)))
                                    (_hd122290122354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122291122351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122289122356_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122280122332_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122277122324_))
                                            (let ((_e122294122359_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122277122324_))))
                                              (let ((_tl122292122364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122294122359_)))
                                                    (_hd122293122362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122294122359_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122292122364_))
                                                    (___kont127882127883_
                                                     _hd122293122362_
                                                     _hd122290122354_
                                                     _hd122287122346_)
                                                    (___kont127884127885_))))
                                            (___kont127884127885_))
                                        (___kont127884127885_))
                                    (___kont127884127885_))))
                            (___kont127884127885_))
                        (___kont127884127885_))))
                (___kont127884127885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127884127885_))))
                                        (___kont127884127885_))))
                                (___kont127884127885_))
                            (___kont127884127885_))
                        (___kont127884127885_))))
                (___kont127884127885_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121591_)
        (let* ((___stx127942127943_ _expr121591_)
               (_g121594121752_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127942127943_)))))
          (let ((___kont127944127945_
                 (lambda (_L122140_
                          _L122141_
                          _L122142_
                          _L122143_
                          _L122144_
                          _L122145_
                          _L122146_
                          _L122147_
                          _L122148_
                          _L122149_
                          _L122150_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122147_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122143_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122142_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122150_
                                      _L122141_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122149_
                                          _L122146_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122144_
                                              _L122140_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122148_
                                              _L122145_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127946127947_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127942127943_))
                (let ((_e121609121764_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127942127943_))))
                  (let ((_tl121607121769_
                         (let () (declare (not safe)) (##cdr _e121609121764_)))
                        (_hd121608121767_
                         (let ()
                           (declare (not safe))
                           (##car _e121609121764_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121608121767_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121608121767_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121607121769_))
                                (let ((_e121612121772_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121607121769_))))
                                  (let ((_tl121610121777_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121612121772_)))
                                        (_hd121611121775_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121612121772_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121611121775_))
                                        (let ((_e121615121780_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121611121775_))))
                                          (let ((_tl121613121785_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121615121780_)))
                                                (_hd121614121783_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121615121780_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121614121783_))
                                                (let ((_e121618121788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121614121783_))))
                                                  (let ((_tl121616121793_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121618121788_)))
                                                        (_hd121617121791_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121618121788_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121617121791_))
                                                        (let ((_e121621121796_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121617121791_))))
                  (let ((_tl121619121801_
                         (let () (declare (not safe)) (##cdr _e121621121796_)))
                        (_hd121620121799_
                         (let ()
                           (declare (not safe))
                           (##car _e121621121796_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121619121801_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121616121793_))
                            (let ((_e121624121804_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121616121793_))))
                              (let ((_tl121622121809_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121624121804_)))
                                    (_hd121623121807_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121624121804_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121623121807_))
                                    (let ((_e121627121812_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121623121807_))))
                                      (let ((_tl121625121817_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121627121812_)))
                                            (_hd121626121815_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121627121812_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121626121815_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121626121815_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121625121817_))
                                                    (let ((_e121630121820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121625121817_))))
                                                      (let ((_tl121628121825_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121630121820_)))
                    (_hd121629121823_
                     (let () (declare (not safe)) (##car _e121630121820_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121629121823_))
                    (let ((_e121633121828_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121629121823_))))
                      (let ((_tl121631121833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121633121828_)))
                            (_hd121632121831_
                             (let ()
                               (declare (not safe))
                               (##car _e121633121828_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121632121831_))
                            (let ((_e121636121836_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121632121831_))))
                              (let ((_tl121634121841_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121636121836_)))
                                    (_hd121635121839_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121636121836_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121635121839_))
                                    (let ((_e121639121844_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121635121839_))))
                                      (let ((_tl121637121849_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121639121844_)))
                                            (_hd121638121847_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121639121844_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121637121849_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121634121841_))
                                                (let ((_e121642121852_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121634121841_))))
                                                  (let ((_tl121640121857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121642121852_)))
                                                        (_hd121641121855_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121642121852_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121640121857_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121631121833_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121628121825_))
                        (let ((_e121645121860_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121628121825_))))
                          (let ((_tl121643121865_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121645121860_)))
                                (_hd121644121863_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121645121860_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121644121863_))
                                (let ((_e121648121868_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121644121863_))))
                                  (let ((_tl121646121873_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121648121868_)))
                                        (_hd121647121871_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121648121868_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121647121871_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121647121871_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121646121873_))
                                                (let ((_e121651121876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121646121873_))))
                                                  (let ((_tl121649121881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121651121876_)))
                                                        (_hd121650121879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121651121876_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121650121879_))
                                                        (let ((_e121654121884_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121650121879_))))
                  (let ((_tl121652121889_
                         (let () (declare (not safe)) (##cdr _e121654121884_)))
                        (_hd121653121887_
                         (let ()
                           (declare (not safe))
                           (##car _e121654121884_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121649121881_))
                        (let ((_e121657121892_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121649121881_))))
                          (let ((_tl121655121897_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121657121892_)))
                                (_hd121656121895_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121657121892_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121656121895_))
                                (let ((_e121660121900_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121656121895_))))
                                  (let ((_tl121658121905_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121660121900_)))
                                        (_hd121659121903_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121660121900_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121659121903_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121659121903_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121658121905_))
                                                (let ((_e121663121908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121658121905_))))
                                                  (let ((_tl121661121913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121663121908_)))
                                                        (_hd121662121911_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121663121908_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121662121911_))
                                                        (let ((_e121666121916_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121662121911_))))
                  (let ((_tl121664121921_
                         (let () (declare (not safe)) (##cdr _e121666121916_)))
                        (_hd121665121919_
                         (let ()
                           (declare (not safe))
                           (##car _e121666121916_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121665121919_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121665121919_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121664121921_))
                                (let ((_e121669121924_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121664121921_))))
                                  (let ((_tl121667121929_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121669121924_)))
                                        (_hd121668121927_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121669121924_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121667121929_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121661121913_))
                                            (let ((_e121672121932_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121661121913_))))
                                              (let ((_tl121670121937_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121672121932_)))
                                                    (_hd121671121935_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121672121932_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121671121935_))
                                                    (let ((_e121675121940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121671121935_))))
                                                      (let ((_tl121673121945_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121675121940_)))
                    (_hd121674121943_
                     (let () (declare (not safe)) (##car _e121675121940_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121674121943_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121674121943_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121673121945_))
                            (let ((_e121678121948_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121673121945_))))
                              (let ((_tl121676121953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121678121948_)))
                                    (_hd121677121951_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121678121948_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121676121953_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121670121937_))
                                        (let ((_e121681121956_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121670121937_))))
                                          (let ((_tl121679121961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121681121956_)))
                                                (_hd121680121959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121681121956_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121680121959_))
                                                (let ((_e121684121964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121680121959_))))
                                                  (let ((_tl121682121969_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121684121964_)))
                                                        (_hd121683121967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121684121964_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121683121967_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121683121967_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121682121969_))
                        (let ((_e121687121972_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121682121969_))))
                          (let ((_tl121685121977_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121687121972_)))
                                (_hd121686121975_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121687121972_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121685121977_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121655121897_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121643121865_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121622121809_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121613121785_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121610121777_))
                                                    (let ((_e121690121980_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121610121777_))))
                                                      (let ((_tl121688121985_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121690121980_)))
                    (_hd121689121983_
                     (let () (declare (not safe)) (##car _e121690121980_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121689121983_))
                    (let ((_e121693121988_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121689121983_))))
                      (let ((_tl121691121993_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121693121988_)))
                            (_hd121692121991_
                             (let ()
                               (declare (not safe))
                               (##car _e121693121988_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121692121991_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121692121991_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121691121993_))
                                    (let ((_e121696121996_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121691121993_))))
                                      (let ((_tl121694122001_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121696121996_)))
                                            (_hd121695121999_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121696121996_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121694122001_))
                                            (let ((_e121699122004_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121694122001_))))
                                              (let ((_tl121697122009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121699122004_)))
                                                    (_hd121698122007_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121699122004_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121698122007_))
                                                    (let ((_e121702122012_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121698122007_))))
                                                      (let ((_tl121700122017_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121702122012_)))
                    (_hd121701122015_
                     (let () (declare (not safe)) (##car _e121702122012_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121701122015_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121701122015_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121700122017_))
                            (let ((_e121705122020_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121700122017_))))
                              (let ((_tl121703122025_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121705122020_)))
                                    (_hd121704122023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121705122020_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121704122023_))
                                    (let ((_e121708122028_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121704122023_))))
                                      (let ((_tl121706122033_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121708122028_)))
                                            (_hd121707122031_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121708122028_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121707122031_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121707122031_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121706122033_))
                                                    (let ((_e121711122036_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121706122033_))))
                                                      (let ((_tl121709122041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121711122036_)))
                    (_hd121710122039_
                     (let () (declare (not safe)) (##car _e121711122036_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121709122041_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121703122025_))
                        (let ((_e121714122044_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121703122025_))))
                          (let ((_tl121712122049_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121714122044_)))
                                (_hd121713122047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121714122044_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121713122047_))
                                (let ((_e121717122052_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121713122047_))))
                                  (let ((_tl121715122057_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121717122052_)))
                                        (_hd121716122055_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121717122052_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121716122055_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121716122055_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121715122057_))
                                                (let ((_e121720122060_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121715122057_))))
                                                  (let ((_tl121718122065_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121720122060_)))
                                                        (_hd121719122063_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121720122060_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121718122065_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121712122049_))
                                                            (let ((_e121723122068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121712122049_))))
                      (let ((_tl121721122073_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121723122068_)))
                            (_hd121722122071_
                             (let ()
                               (declare (not safe))
                               (##car _e121723122068_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121722122071_))
                            (let ((_e121726122076_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121722122071_))))
                              (let ((_tl121724122081_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121726122076_)))
                                    (_hd121725122079_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121726122076_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121725122079_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121725122079_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121724122081_))
                                            (let ((_e121729122084_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121724122081_))))
                                              (let ((_tl121727122089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121729122084_)))
                                                    (_hd121728122087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121729122084_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121727122089_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121721122073_))
                                                        (let ((_e121732122092_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121721122073_))))
                  (let ((_tl121730122097_
                         (let () (declare (not safe)) (##cdr _e121732122092_)))
                        (_hd121731122095_
                         (let ()
                           (declare (not safe))
                           (##car _e121732122092_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121731122095_))
                        (let ((_e121735122100_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121731122095_))))
                          (let ((_tl121733122105_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121735122100_)))
                                (_hd121734122103_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121735122100_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121734122103_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121734122103_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121733122105_))
                                        (let ((_e121738122108_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121733122105_))))
                                          (let ((_tl121736122113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121738122108_)))
                                                (_hd121737122111_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121738122108_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121736122113_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121730122097_))
                                                    (let ((_e121741122116_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121730122097_))))
                                                      (let ((_tl121739122121_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121741122116_)))
                    (_hd121740122119_
                     (let () (declare (not safe)) (##car _e121741122116_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121740122119_))
                    (let ((_e121744122124_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121740122119_))))
                      (let ((_tl121742122129_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121744122124_)))
                            (_hd121743122127_
                             (let ()
                               (declare (not safe))
                               (##car _e121744122124_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121743122127_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121743122127_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121742122129_))
                                    (let ((_e121747122132_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121742122129_))))
                                      (let ((_tl121745122137_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121747122132_)))
                                            (_hd121746122135_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121747122132_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121745122137_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121739122121_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121697122009_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121688121985_))
                                                        (___kont127944127945_
                                                         _hd121746122135_
                                                         _hd121737122111_
                                                         _hd121719122063_
                                                         _hd121710122039_
                                                         _hd121695121999_
                                                         _hd121686121975_
                                                         _hd121677121951_
                                                         _hd121668121927_
                                                         _hd121653121887_
                                                         _hd121638121847_
                                                         _hd121620121799_)
                                                        (___kont127946127947_))
                                                    (___kont127946127947_))
                                                (___kont127946127947_))
                                            (___kont127946127947_))))
                                    (___kont127946127947_))
                                (___kont127946127947_))
                            (___kont127946127947_))))
                    (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127946127947_))
                                                (___kont127946127947_))))
                                        (___kont127946127947_))
                                    (___kont127946127947_))
                                (___kont127946127947_))))
                        (___kont127946127947_))))
                (___kont127946127947_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127946127947_))))
                                            (___kont127946127947_))
                                        (___kont127946127947_))
                                    (___kont127946127947_))))
                            (___kont127946127947_))))
                    (___kont127946127947_))
                (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127946127947_))
                                            (___kont127946127947_))
                                        (___kont127946127947_))))
                                (___kont127946127947_))))
                        (___kont127946127947_))
                    (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127946127947_))
                                                (___kont127946127947_))
                                            (___kont127946127947_))))
                                    (___kont127946127947_))))
                            (___kont127946127947_))
                        (___kont127946127947_))
                    (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127946127947_))))
                                            (___kont127946127947_))))
                                    (___kont127946127947_))
                                (___kont127946127947_))
                            (___kont127946127947_))))
                    (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127946127947_))
                                                (___kont127946127947_))
                                            (___kont127946127947_))
                                        (___kont127946127947_))
                                    (___kont127946127947_))
                                (___kont127946127947_))))
                        (___kont127946127947_))
                    (___kont127946127947_))
                (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127946127947_))))
                                        (___kont127946127947_))
                                    (___kont127946127947_))))
                            (___kont127946127947_))
                        (___kont127946127947_))
                    (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127946127947_))))
                                            (___kont127946127947_))
                                        (___kont127946127947_))))
                                (___kont127946127947_))
                            (___kont127946127947_))
                        (___kont127946127947_))))
                (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127946127947_))
                                            (___kont127946127947_))
                                        (___kont127946127947_))))
                                (___kont127946127947_))))
                        (___kont127946127947_))))
                (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127946127947_))
                                            (___kont127946127947_))
                                        (___kont127946127947_))))
                                (___kont127946127947_))))
                        (___kont127946127947_))
                    (___kont127946127947_))
                (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127946127947_))
                                            (___kont127946127947_))))
                                    (___kont127946127947_))))
                            (___kont127946127947_))))
                    (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127946127947_))
                                                (___kont127946127947_))
                                            (___kont127946127947_))))
                                    (___kont127946127947_))))
                            (___kont127946127947_))
                        (___kont127946127947_))))
                (___kont127946127947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127946127947_))))
                                        (___kont127946127947_))))
                                (___kont127946127947_))
                            (___kont127946127947_))
                        (___kont127946127947_))))
                (___kont127946127947_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121333_ _id121334_ _clauses121335_ _gensym?121336_)
        (let _lp121338_ ((_rest121340_ _clauses121335_)
                         (_ids121341_ '())
                         (_impls121342_ '())
                         (_clauses121343_ '()))
          (let* ((_rest121344121352_ _rest121340_)
                 (_else121346121360_
                  (lambda ()
                    (values (reverse _ids121341_)
                            (reverse _impls121342_)
                            (reverse _clauses121343_))))
                 (_K121348121565_
                  (lambda (_rest121363_ _clause121364_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121364_))
                        (let ((__tmp129040
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121364_ _clauses121343_))))
                          (declare (not safe))
                          (_lp121338_
                           _rest121363_
                           _ids121341_
                           _impls121342_
                           __tmp129040))
                        (let* ((_g121366121377_
                                (lambda (_g121367121374_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121367121374_))))
                               (_g121365121562_
                                (lambda (_g121367121380_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121367121380_))
                                      (let ((_e121372121382_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121367121380_))))
                                        (let ((_hd121371121385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121372121382_)))
                                              (_tl121370121387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121372121382_))))
                                          ((lambda (_L121390_ _L121391_)
                                             (let* ((_id121408_
                                                     (let ((__tmp128987
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121334_)))
                                                           (__tmp128986
                                                            (length _clauses121343_))
                                                           (__tmp128985
                                                            (if _gensym?121336_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128987
                                                        '"__"
                                                        __tmp128986
                                                        __tmp128985)))
                                                    (_id121410_
                                                     (let ((__tmp128988
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121333_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121408_
                                                        __tmp128988)))
                                                    (_impl121412_
                                                     (let ((__tmp128989
                                                            (let ((__tmp128991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128990
                           (let ()
                             (declare (not safe))
                             (cons _L121391_ _L121390_))))
                      (declare (not safe))
                      (cons __tmp128991 __tmp128990))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128989 _stx121333_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121559_
                                                     (let* ((___stx128326128327_
                                                             _L121391_)
                                                            (_g121416121444_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128326128327_)))))
               (let ((___kont128328128329_
                      (lambda (_L121538_)
                        (let ((__tmp128992
                               (let ((__tmp128993
                                      (let ((__tmp128994
                                             (let ((__tmp128995
                                                    (let ((__tmp129001
                                                           (let ((__tmp129002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121410_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129002)))
                  (__tmp128996
                   (let ((__tmp128997
                          (lambda (_g121548121551_ _g121549121553_)
                            (let ((__tmp128998
                                   (let ((__tmp129000
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128999
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121548121551_ '()))))
                                     (declare (not safe))
                                     (cons __tmp129000 __tmp128999))))
                              (declare (not safe))
                              (cons __tmp128998 _g121549121553_)))))
                     (declare (not safe))
                     (foldr1 __tmp128997 '() _L121538_))))
              (declare (not safe))
              (cons __tmp129001 __tmp128996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128995))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128994
                                         _stx121333_))))
                                 (declare (not safe))
                                 (cons __tmp128993 '()))))
                          (declare (not safe))
                          (cons _L121391_ __tmp128992))))
                     (___kont128332128333_
                      (lambda (_L121489_ _L121490_)
                        (let ((__tmp129003
                               (let ((__tmp129004
                                      (let ((__tmp129005
                                             (let ((__tmp129006
                                                    (let ((__tmp129020
                                                           (let ((__tmp129021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129021)))
                  (__tmp129007
                   (let ((__tmp129018
                          (let ((__tmp129019
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121410_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129019)))
                         (__tmp129008
                          (let ((__tmp129014
                                 (let ((__tmp129015
                                        (let ((__tmp129017
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp129016
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121489_ '()))))
                                          (declare (not safe))
                                          (cons __tmp129017 __tmp129016))))
                                   (declare (not safe))
                                   (cons __tmp129015 '())))
                                (__tmp129009
                                 (let ((__tmp129010
                                        (lambda (_g121501121504_
                                                 _g121502121506_)
                                          (let ((__tmp129011
                                                 (let ((__tmp129013
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp129012
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121501121504_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp129013
                                                         __tmp129012))))
                                            (declare (not safe))
                                            (cons __tmp129011
                                                  _g121502121506_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp129010 '() _L121490_))))
                            (declare (not safe))
                            (foldr1 cons __tmp129014 __tmp129009))))
                     (declare (not safe))
                     (cons __tmp129018 __tmp129008))))
              (declare (not safe))
              (cons __tmp129020 __tmp129007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129006))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129005
                                         _stx121333_))))
                                 (declare (not safe))
                                 (cons __tmp129004 '()))))
                          (declare (not safe))
                          (cons _L121391_ __tmp129003))))
                     (___kont128336128337_
                      (lambda (_L121449_)
                        (let ((__tmp129022
                               (let ((__tmp129023
                                      (let ((__tmp129024
                                             (let ((__tmp129025
                                                    (let ((__tmp129033
                                                           (let ((__tmp129034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp129034)))
                  (__tmp129026
                   (let ((__tmp129031
                          (let ((__tmp129032
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121410_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp129032)))
                         (__tmp129027
                          (let ((__tmp129028
                                 (let ((__tmp129030
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp129029
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121449_ '()))))
                                   (declare (not safe))
                                   (cons __tmp129030 __tmp129029))))
                            (declare (not safe))
                            (cons __tmp129028 '()))))
                     (declare (not safe))
                     (cons __tmp129031 __tmp129027))))
              (declare (not safe))
              (cons __tmp129033 __tmp129026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp129025))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp129024
                                         _stx121333_))))
                                 (declare (not safe))
                                 (cons __tmp129023 '()))))
                          (declare (not safe))
                          (cons _L121391_ __tmp129022)))))
                 (let* ((___match128351128352_
                         (lambda (___splice128334128335_
                                  _target121430121465_
                                  _tl121432121467_)
                           (letrec ((_loop121433121470_
                                     (lambda (_hd121431121473_
                                              _arg121437121475_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121431121473_))
                                           (let ((_e121434121478_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121431121473_))))
                                             (let ((_lp-tl121436121483_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121434121478_)))
                                                   (_lp-hd121435121481_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121434121478_))))
                                               (let ((__tmp129035
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121435121481_
                                                              _arg121437121475_))))
                                                 (declare (not safe))
                                                 (_loop121433121470_
                                                  _lp-tl121436121483_
                                                  __tmp129035))))
                                           (let ((_arg121438121486_
                                                  (reverse _arg121437121475_)))
                                             (___kont128332128333_
                                              _tl121432121467_
                                              _arg121438121486_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121433121470_
                                _target121430121465_
                                '())))))
                        (___match128345128346_
                         (lambda (___splice128330128331_
                                  _target121419121514_
                                  _tl121421121516_)
                           (letrec ((_loop121422121519_
                                     (lambda (_hd121420121522_
                                              _arg121426121524_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121420121522_))
                                           (let ((_e121423121527_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121420121522_))))
                                             (let ((_lp-tl121425121532_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121423121527_)))
                                                   (_lp-hd121424121530_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121423121527_))))
                                               (let ((__tmp129036
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121424121530_
                                                              _arg121426121524_))))
                                                 (declare (not safe))
                                                 (_loop121422121519_
                                                  _lp-tl121425121532_
                                                  __tmp129036))))
                                           (let ((_arg121427121535_
                                                  (reverse _arg121426121524_)))
                                             (___kont128328128329_
                                              _arg121427121535_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121422121519_
                                _target121419121514_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128326128327_))
                       (let ((___splice128330128331_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128326128327_
                                 '0))))
                         (let ((_tl121421121516_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128330128331_ '1)))
                               (_target121419121514_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128330128331_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121421121516_))
                               (___match128345128346_
                                ___splice128330128331_
                                _target121419121514_
                                _tl121421121516_)
                               (___match128351128352_
                                ___splice128330128331_
                                _target121419121514_
                                _tl121421121516_))))
                       (___kont128336128337_ ___stx128326128327_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp129039
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121410_
                                                              _ids121341_)))
                                                     (__tmp129038
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121412_
                                                              _impls121342_)))
                                                     (__tmp129037
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121559_
                                                              _clauses121343_))))
                                                 (declare (not safe))
                                                 (_lp121338_
                                                  _rest121363_
                                                  __tmp129039
                                                  __tmp129038
                                                  __tmp129037))))
                                           _tl121370121387_
                                           _hd121371121385_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121366121377_ _g121367121380_))))))
                          (declare (not safe))
                          (_g121365121562_ _clause121364_))))))
            (if (let () (declare (not safe)) (##pair? _rest121344121352_))
                (let ((_hd121349121568_
                       (let ()
                         (declare (not safe))
                         (##car _rest121344121352_)))
                      (_tl121350121570_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121344121352_))))
                  (let* ((_clause121573_ _hd121349121568_)
                         (_rest121575_ _tl121350121570_))
                    (declare (not safe))
                    (_K121348121565_ _rest121575_ _clause121573_)))
                (let () (declare (not safe)) (_else121346121360_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121580_ _id121581_ _clauses121582_)
        (let ((_gensym?121584_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121580_
           _id121581_
           _clauses121582_
           _gensym?121584_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g129042_
        (let ((_g129041_ (let () (declare (not safe)) (##length _g129042_))))
          (cond ((let () (declare (not safe)) (##fx= _g129041_ 3))
                 (apply (lambda (_stx121580_ _id121581_ _clauses121582_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121580_
                             _id121581_
                             _clauses121582_)))
                        _g129042_))
                ((let () (declare (not safe)) (##fx= _g129041_ 4))
                 (apply (lambda (_stx121586_
                                 _id121587_
                                 _clauses121588_
                                 _gensym?121589_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121586_
                             _id121587_
                             _clauses121588_
                             _gensym?121589_)))
                        _g129042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g129042_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self120609_ _stx120610_)
        (letrec ((_case-lambda-clause-def120612_
                  (lambda (_id121329_ _impl121330_)
                    (let ((__tmp129043
                           (let ((__tmp129044
                                  (let ((__tmp129047
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121329_ '())))
                                        (__tmp129045
                                         (let ((__tmp129046
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self120609_
                                                   _impl121330_))))
                                           (declare (not safe))
                                           (cons __tmp129046 '()))))
                                    (declare (not safe))
                                    (cons __tmp129047 __tmp129045))))
                             (declare (not safe))
                             (cons '%#define-values __tmp129044))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129043 _stx120610_))))
                 (_opt-lambda-dispatch-name120613_
                  (lambda (_id121325_)
                    (if (uninterned-symbol? _id121325_)
                        (let ((_str121327_ (symbol->string _id121325_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121327_))
                              '"%"
                              _id121325_))
                        _id121325_)))
                 (_kw-lambda-dispatch-name120614_
                  (lambda (_id121320_ _name121321_)
                    (if (uninterned-symbol? _id121320_)
                        (let ((_str121323_ (symbol->string _id121320_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121323_))
                              _name121321_
                              _id121320_))
                        _id121320_))))
          (let* ((___stx128374128375_ _stx120610_)
                 (_g120619120678_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128374128375_)))))
            (let ((___kont128376128377_
                   (lambda (_L121229_ _L121230_)
                     (let* ((___stx128354128355_ _L121229_)
                            (_g121247121261_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128354128355_)))))
                       (let ((___kont128356128357_
                              (lambda (_L121305_) _stx120610_))
                             (___kont128358128359_
                              (lambda (_L121274_)
                                (let ((_g129048_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120610_
                                          _L121230_
                                          _L121274_))))
                                  (begin
                                    (let ((_g129049_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g129048_)
                                                 (##vector-length _g129048_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g129049_ 3)))
                                          (error "Context expects 3 values"
                                                 _g129049_)))
                                    (let ((_ids121284_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129048_ 0)))
                                          (_impls121285_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129048_ 1)))
                                          (_clauses121286_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g129048_ 2))))
                                      (let* ((_g129050_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121284_))
                                             (_defs121289_
                                              (map _case-lambda-clause-def120612_
                                                   _ids121284_
                                                   _impls121285_)))
                                        (let ((__tmp129052
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121230_)))
                                              (__tmp129051
                                               (map gxc#identifier-symbol
                                                    _ids121284_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp129052
                                           '" => "
                                           __tmp129051))
                                        (let ((__tmp129053
                                               (let ((__tmp129054
                                                      (let ((__tmp129055
                                                             (let ((__tmp129056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129057
                                   (let ((__tmp129058
                                          (let ((__tmp129063
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121230_ '())))
                                                (__tmp129059
                                                 (let ((__tmp129060
                                                        (let ((__tmp129062
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121286_)))
                      (__tmp129061
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp129062 __tmp129061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129060 '()))))
                                            (declare (not safe))
                                            (cons __tmp129063 __tmp129059))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp129058))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129057
                               _stx120610_))))
                       (declare (not safe))
                       (cons __tmp129056 '()))))
                (declare (not safe))
                (foldr1 cons __tmp129055 _defs121289_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp129054))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp129053
                                           _stx120610_)))))))))
                         (let ((___match128365128366_
                                (lambda (_e121252121297_
                                         _hd121251121300_
                                         _tl121250121302_)
                                  (let ((_L121305_ _tl121250121302_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121305_))
                                        (___kont128356128357_ _L121305_)
                                        (___kont128358128359_
                                         _tl121250121302_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128354128355_))
                               (let ((_e121252121297_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128354128355_))))
                                 (let ((_tl121250121302_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121252121297_)))
                                       (_hd121251121300_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121252121297_))))
                                   (___match128365128366_
                                    _e121252121297_
                                    _hd121251121300_
                                    _tl121250121302_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121247121261_))))))))
                  (___kont128378128379_
                   (lambda (_L121047_ _L121048_)
                     (let* ((_g121064121094_
                             (lambda (_g121065121091_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121065121091_))))
                            (_g121063121189_
                             (lambda (_g121065121097_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121065121097_))
                                   (let ((_e121071121099_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121065121097_))))
                                     (let ((_hd121070121102_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121071121099_)))
                                           (_tl121069121104_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121071121099_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121069121104_))
                                           (let ((_e121074121107_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121069121104_))))
                                             (let ((_hd121073121110_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121074121107_)))
                                                   (_tl121072121112_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121074121107_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121073121110_))
                                                   (let ((_e121077121115_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121073121110_))))
                                                     (let ((_hd121076121118_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121077121115_)))
                                                           (_tl121075121120_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121077121115_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121076121118_))
                                                           (let ((_e121080121123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121076121118_))))
                     (let ((_hd121079121126_
                            (let ()
                              (declare (not safe))
                              (##car _e121080121123_)))
                           (_tl121078121128_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121080121123_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121079121126_))
                           (let ((_e121083121131_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121079121126_))))
                             (let ((_hd121082121134_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121083121131_)))
                                   (_tl121081121136_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121083121131_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121081121136_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121078121128_))
                                       (let ((_e121086121139_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121078121128_))))
                                         (let ((_hd121085121142_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121086121139_)))
                                               (_tl121084121144_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121086121139_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121084121144_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121075121120_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121072121112_))
                                                       (let ((_e121089121147_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121072121112_))))
                 (let ((_hd121088121150_
                        (let () (declare (not safe)) (##car _e121089121147_)))
                       (_tl121087121152_
                        (let () (declare (not safe)) (##cdr _e121089121147_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121087121152_))
                       ((lambda (_L121155_ _L121156_ _L121157_)
                          (let* ((_lambda-id121181_
                                  (let ((__tmp129066
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L121048_)))
                                        (__tmp129064
                                         (let ((__tmp129065
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121157_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120613_
                                            __tmp129065))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129066
                                     '"__"
                                     __tmp129064)))
                                 (_lambda-id121183_
                                  (let ((__tmp129067
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120610_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121181_
                                     __tmp129067)))
                                 (_g129068_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121183_)))
                                 (_new-case-lambda-expr121186_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121155_
                                     'id:
                                     _L121157_
                                     'new-id:
                                     _lambda-id121183_))))
                            (let ((__tmp129070
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L121048_)))
                                  (__tmp129069
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121183_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129070
                               '" => "
                               __tmp129069))
                            (let ((__tmp129071
                                   (let ((__tmp129072
                                          (let ((__tmp129080
                                                 (let ((__tmp129081
                                                        (let ((__tmp129082
                                                               (let ((__tmp129085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121183_ '())))
                             (__tmp129083
                              (let ((__tmp129084
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120609_
                                        _L121156_))))
                                (declare (not safe))
                                (cons __tmp129084 '()))))
                         (declare (not safe))
                         (cons __tmp129085 __tmp129083))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129081
                                                    _stx120610_)))
                                                (__tmp129073
                                                 (let ((__tmp129074
                                                        (let ((__tmp129075
                                                               (let ((__tmp129076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129077
                                     (let ((__tmp129079
                                            (let ()
                                              (declare (not safe))
                                              (cons _L121048_ '())))
                                           (__tmp129078
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121186_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129079 __tmp129078))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129077))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129076 _stx120610_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self120609_
                   __tmp129075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129074 '()))))
                                            (declare (not safe))
                                            (cons __tmp129080 __tmp129073))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129072))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129071
                               _stx120610_))))
                        _hd121088121150_
                        _hd121085121142_
                        _hd121082121134_)
                       (let ()
                         (declare (not safe))
                         (_g121064121094_ _g121065121097_)))))
               (let () (declare (not safe)) (_g121064121094_ _g121065121097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121064121094_
                                                      _g121065121097_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121064121094_
                                                  _g121065121097_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121064121094_ _g121065121097_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121064121094_ _g121065121097_)))))
                           (let ()
                             (declare (not safe))
                             (_g121064121094_ _g121065121097_)))))
                   (let ()
                     (declare (not safe))
                     (_g121064121094_ _g121065121097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121064121094_
                                                      _g121065121097_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121064121094_
                                              _g121065121097_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121064121094_ _g121065121097_))))))
                       (declare (not safe))
                       (_g121063121189_ _L121047_))))
                  (___kont128380128381_
                   (lambda (_L120761_ _L120762_)
                     (let* ((_g120778120831_
                             (lambda (_g120779120828_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120779120828_))))
                            (_g120777121007_
                             (lambda (_g120779120834_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120779120834_))
                                   (let ((_e120787120836_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120779120834_))))
                                     (let ((_hd120786120839_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120787120836_)))
                                           (_tl120785120841_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120787120836_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120785120841_))
                                           (let ((_e120790120844_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120785120841_))))
                                             (let ((_hd120789120847_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120790120844_)))
                                                   (_tl120788120849_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120790120844_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120789120847_))
                                                   (let ((_e120793120852_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120789120847_))))
                                                     (let ((_hd120792120855_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120793120852_)))
                                                           (_tl120791120857_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120793120852_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120792120855_))
                                                           (let ((_e120796120860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120792120855_))))
                     (let ((_hd120795120863_
                            (let ()
                              (declare (not safe))
                              (##car _e120796120860_)))
                           (_tl120794120865_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120796120860_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120795120863_))
                           (let ((_e120799120868_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120795120863_))))
                             (let ((_hd120798120871_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120799120868_)))
                                   (_tl120797120873_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120799120868_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120797120873_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120794120865_))
                                       (let ((_e120802120876_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120794120865_))))
                                         (let ((_hd120801120879_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120802120876_)))
                                               (_tl120800120881_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120802120876_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120801120879_))
                                               (let ((_e120805120884_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120801120879_))))
                                                 (let ((_hd120804120887_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120805120884_)))
                                                       (_tl120803120889_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120805120884_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120803120889_))
                                                       (let ((_e120808120892_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120803120889_))))
                 (let ((_hd120807120895_
                        (let () (declare (not safe)) (##car _e120808120892_)))
                       (_tl120806120897_
                        (let () (declare (not safe)) (##cdr _e120808120892_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120807120895_))
                       (let ((_e120811120900_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120807120895_))))
                         (let ((_hd120810120903_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120811120900_)))
                               (_tl120809120905_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120811120900_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120810120903_))
                               (let ((_e120814120908_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120810120903_))))
                                 (let ((_hd120813120911_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120814120908_)))
                                       (_tl120812120913_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120814120908_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120813120911_))
                                       (let ((_e120817120916_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120813120911_))))
                                         (let ((_hd120816120919_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120817120916_)))
                                               (_tl120815120921_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120817120916_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120815120921_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120812120913_))
                                                   (let ((_e120820120924_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120812120913_))))
                                                     (let ((_hd120819120927_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120820120924_)))
                                                           (_tl120818120929_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120820120924_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120818120929_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120809120905_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120806120897_))
                           (let ((_e120823120932_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120806120897_))))
                             (let ((_hd120822120935_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120823120932_)))
                                   (_tl120821120937_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120823120932_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120821120937_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120800120881_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120791120857_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120788120849_))
                                               (let ((_e120826120940_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120788120849_))))
                                                 (let ((_hd120825120943_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120826120940_)))
                                                       (_tl120824120945_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120826120940_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120824120945_))
                                                       ((lambda (_L120948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120949_
                         _L120950_
                         _L120951_
                         _L120952_)
                  (let* ((_get-kws-id120992_
                          (let ((__tmp129088
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120762_)))
                                (__tmp129086
                                 (let ((__tmp129087
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120952_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120614_
                                    __tmp129087
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129088 '"__" __tmp129086)))
                         (_get-kws-id120994_
                          (let ((__tmp129089
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120610_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120992_
                             __tmp129089)))
                         (_main-id120996_
                          (let ((__tmp129092
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120762_)))
                                (__tmp129090
                                 (let ((__tmp129091
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120951_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120614_
                                    __tmp129091
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129092 '"__" __tmp129090)))
                         (_main-id120998_
                          (let ((__tmp129093
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120610_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120996_
                             __tmp129093)))
                         (_g129094_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120994_)))
                         (_g129095_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120998_)))
                         (_new-kw-dispatch121002_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120948_
                             'id:
                             _L120952_
                             'new-id:
                             _get-kws-id120994_)))
                         (_new-get-kws121004_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120949_
                             'id:
                             _L120951_
                             'new-id:
                             _main-id120998_))))
                    (let ((__tmp129098
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120762_)))
                          (__tmp129097
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120994_)))
                          (__tmp129096
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120998_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129098
                       '" => "
                       __tmp129097
                       '" => "
                       __tmp129096))
                    (let ((__tmp129099
                           (let ((__tmp129100
                                  (let ((__tmp129113
                                         (let ((__tmp129114
                                                (let ((__tmp129115
                                                       (let ((__tmp129116
                                                              (let ((__tmp129118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120998_ '())))
                            (__tmp129117
                             (let ()
                               (declare (not safe))
                               (cons _L120950_ '()))))
                        (declare (not safe))
                        (cons __tmp129118 __tmp129117))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129115
                                                   _stx120610_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self120609_
                                            __tmp129114)))
                                        (__tmp129101
                                         (let ((__tmp129108
                                                (let ((__tmp129109
                                                       (let ((__tmp129110
                                                              (let ((__tmp129112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120994_ '())))
                            (__tmp129111
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws121004_ '()))))
                        (declare (not safe))
                        (cons __tmp129112 __tmp129111))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129109
                                                   _stx120610_)))
                                               (__tmp129102
                                                (let ((__tmp129103
                                                       (let ((__tmp129104
                                                              (let ((__tmp129105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129107
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120762_ '())))
                                   (__tmp129106
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch121002_ '()))))
                               (declare (not safe))
                               (cons __tmp129107 __tmp129106))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129105))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129104 _stx120610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129103 '()))))
                                           (declare (not safe))
                                           (cons __tmp129108 __tmp129102))))
                                    (declare (not safe))
                                    (cons __tmp129113 __tmp129101))))
                             (declare (not safe))
                             (cons '%#begin __tmp129100))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129099 _stx120610_))))
                _hd120825120943_
                _hd120822120935_
                _hd120819120927_
                _hd120816120919_
                _hd120798120871_)
               (let ()
                 (declare (not safe))
                 (_g120778120831_ _g120779120834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120778120831_
                                                  _g120779120834_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120778120831_
                                              _g120779120834_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120778120831_ _g120779120834_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120778120831_ _g120779120834_)))))
                           (let ()
                             (declare (not safe))
                             (_g120778120831_ _g120779120834_)))
                       (let ()
                         (declare (not safe))
                         (_g120778120831_ _g120779120834_)))
                   (let ()
                     (declare (not safe))
                     (_g120778120831_ _g120779120834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120778120831_
                                                      _g120779120834_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120778120831_
                                                  _g120779120834_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120778120831_ _g120779120834_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120778120831_ _g120779120834_)))))
                       (let ()
                         (declare (not safe))
                         (_g120778120831_ _g120779120834_)))))
               (let ()
                 (declare (not safe))
                 (_g120778120831_ _g120779120834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120778120831_
                                                  _g120779120834_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120778120831_ _g120779120834_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120778120831_ _g120779120834_)))))
                           (let ()
                             (declare (not safe))
                             (_g120778120831_ _g120779120834_)))))
                   (let ()
                     (declare (not safe))
                     (_g120778120831_ _g120779120834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120778120831_
                                                      _g120779120834_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120778120831_
                                              _g120779120834_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120778120831_ _g120779120834_))))))
                       (declare (not safe))
                       (_g120777121007_ _L120761_))))
                  (___kont128382128383_
                   (lambda (_L120707_ _L120708_)
                     (let ((__tmp129119
                            (let ((__tmp129120
                                   (let ((__tmp129121
                                          (let ((__tmp129122
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self120609_
                                                    _L120707_))))
                                            (declare (not safe))
                                            (cons __tmp129122 '()))))
                                     (declare (not safe))
                                     (cons _L120708_ __tmp129121))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129120))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129119 _stx120610_)))))
              (let* ((___match128467128468_
                      (lambda (_e120653120729_
                               _hd120652120732_
                               _tl120651120734_
                               _e120656120737_
                               _hd120655120740_
                               _tl120654120742_
                               _e120659120745_
                               _hd120658120748_
                               _tl120657120750_
                               _e120662120753_
                               _hd120661120756_
                               _tl120660120758_)
                        (let ((_L120761_ _hd120661120756_)
                              (_L120762_ _hd120658120748_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120762_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120761_)))
                              (___kont128380128381_ _L120761_ _L120762_)
                              (___kont128382128383_
                               _hd120661120756_
                               _hd120655120740_)))))
                     (___match128439128440_
                      (lambda (_e120639121015_
                               _hd120638121018_
                               _tl120637121020_
                               _e120642121023_
                               _hd120641121026_
                               _tl120640121028_
                               _e120645121031_
                               _hd120644121034_
                               _tl120643121036_
                               _e120648121039_
                               _hd120647121042_
                               _tl120646121044_)
                        (let ((_L121047_ _hd120647121042_)
                              (_L121048_ _hd120644121034_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121048_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L121047_)))
                              (___kont128378128379_ _L121047_ _L121048_)
                              (___match128467128468_
                               _e120639121015_
                               _hd120638121018_
                               _tl120637121020_
                               _e120642121023_
                               _hd120641121026_
                               _tl120640121028_
                               _e120645121031_
                               _hd120644121034_
                               _tl120643121036_
                               _e120648121039_
                               _hd120647121042_
                               _tl120646121044_)))))
                     (___match128411128412_
                      (lambda (_e120625121197_
                               _hd120624121200_
                               _tl120623121202_
                               _e120628121205_
                               _hd120627121208_
                               _tl120626121210_
                               _e120631121213_
                               _hd120630121216_
                               _tl120629121218_
                               _e120634121221_
                               _hd120633121224_
                               _tl120632121226_)
                        (let ((_L121229_ _hd120633121224_)
                              (_L121230_ _hd120630121216_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121230_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121229_)))
                              (___kont128376128377_ _L121229_ _L121230_)
                              (___match128439128440_
                               _e120625121197_
                               _hd120624121200_
                               _tl120623121202_
                               _e120628121205_
                               _hd120627121208_
                               _tl120626121210_
                               _e120631121213_
                               _hd120630121216_
                               _tl120629121218_
                               _e120634121221_
                               _hd120633121224_
                               _tl120632121226_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128374128375_))
                    (let ((_e120625121197_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128374128375_))))
                      (let ((_tl120623121202_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120625121197_)))
                            (_hd120624121200_
                             (let ()
                               (declare (not safe))
                               (##car _e120625121197_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120623121202_))
                            (let ((_e120628121205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120623121202_))))
                              (let ((_tl120626121210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120628121205_)))
                                    (_hd120627121208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120628121205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120627121208_))
                                    (let ((_e120631121213_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120627121208_))))
                                      (let ((_tl120629121218_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120631121213_)))
                                            (_hd120630121216_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120631121213_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120629121218_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120626121210_))
                                                (let ((_e120634121221_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120626121210_))))
                                                  (let ((_tl120632121226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120634121221_)))
                                                        (_hd120633121224_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120634121221_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120632121226_))
                                                        (___match128411128412_
                                                         _e120625121197_
                                                         _hd120624121200_
                                                         _tl120623121202_
                                                         _e120628121205_
                                                         _hd120627121208_
                                                         _tl120626121210_
                                                         _e120631121213_
                                                         _hd120630121216_
                                                         _tl120629121218_
                                                         _e120634121221_
                                                         _hd120633121224_
                                                         _tl120632121226_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120619120678_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120619120678_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120626121210_))
                                                (let ((_e120673120699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120626121210_))))
                                                  (let ((_tl120671120704_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120673120699_)))
                                                        (_hd120672120702_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120673120699_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120671120704_))
                                                        (___kont128382128383_
                                                         _hd120672120702_
                                                         _hd120627121208_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120619120678_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120619120678_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120626121210_))
                                        (let ((_e120673120699_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120626121210_))))
                                          (let ((_tl120671120704_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120673120699_)))
                                                (_hd120672120702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120673120699_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120671120704_))
                                                (___kont128382128383_
                                                 _hd120672120702_
                                                 _hd120627121208_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120619120678_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120619120678_))))))
                            (let () (declare (not safe)) (_g120619120678_)))))
                    (let () (declare (not safe)) (_g120619120678_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self119540_ _stx119541_)
        (letrec* ((_bind-e__126770126771_
                   (lambda (_id120593_ _expr120594_ _compile?120595_)
                     (let ((__tmp129125
                            (let ()
                              (declare (not safe))
                              (cons _id120593_ '())))
                           (__tmp129123
                            (let ((__tmp129124
                                   (if _compile?120595_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self119540_
                                          _expr120594_))
                                       _expr120594_)))
                              (declare (not safe))
                              (cons __tmp129124 '()))))
                       (declare (not safe))
                       (cons __tmp129125 __tmp129123))))
                  (_bind-e__0__126772126773_
                   (lambda (_id120600_ _expr120601_)
                     (let ((_compile?120603_ '#t))
                       (declare (not safe))
                       (_bind-e__126770126771_
                        _id120600_
                        _expr120601_
                        _compile?120603_))))
                  (_bind-e119543_
                   (lambda _g129127_
                     (let ((_g129126_
                            (let ()
                              (declare (not safe))
                              (##length _g129127_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129126_ 2))
                              (apply (lambda (_id120600_ _expr120601_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126772126773_
                                          _id120600_
                                          _expr120601_)))
                                     _g129127_))
                             ((let () (declare (not safe)) (##fx= _g129126_ 3))
                              (apply (lambda (_id120605_
                                              _expr120606_
                                              _compile?120607_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126770126771_
                                          _id120605_
                                          _expr120606_
                                          _compile?120607_)))
                                     _g129127_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129127_))))))
                  (_compile-bindings119544_
                   (lambda (_bindings120177_)
                     (let _lp120179_ ((_rest120181_ _bindings120177_)
                                      (_lift1120182_ '())
                                      (_lift2120183_ '())
                                      (_bind120184_ '()))
                       (let* ((_rest120185120193_ _rest120181_)
                              (_else120187120201_
                               (lambda ()
                                 (values (reverse _lift1120182_)
                                         (reverse _lift2120183_)
                                         (reverse _bind120184_))))
                              (_K120189120580_
                               (lambda (_rest120204_ _hd120205_)
                                 (let* ((___stx128510128511_ _hd120205_)
                                        (_g120209120245_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128510128511_)))))
                                   (let ((___kont128512128513_
                                          (lambda (_L120487_ _L120488_)
                                            (let* ((___stx128490128491_
                                                    _L120487_)
                                                   (_g120503120517_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128490128491_)))))
                                              (let ((___kont128492128493_
                                                     (lambda (_L120565_)
                                                       (let ((__tmp129128
                                                              (let ((__tmp129129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126770126771_
                                _L120488_
                                _L120487_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129129 _bind120184_))))
                 (declare (not safe))
                 (_lp120179_
                  _rest120204_
                  _lift1120182_
                  _lift2120183_
                  __tmp129128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128494128495_
                                                     (lambda (_L120530_)
                                                       (let ((_g129130_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119541_
                         _L120488_
                         _L120530_
                         '#t))))
                 (begin
                   (let ((_g129131_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129130_)
                                (##vector-length _g129130_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129131_ 3)))
                         (error "Context expects 3 values" _g129131_)))
                   (let ((_ids120540_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129130_ 0)))
                         (_impls120541_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129130_ 1)))
                         (_clauses120542_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129130_ 2))))
                     (let* ((_g129132_
                             (for-each gx#core-bind-runtime! _ids120540_))
                            (_xbind120545_
                             (map _bind-e119543_ _ids120540_ _impls120541_))
                            (_expr*120547_
                             (let ((__tmp129134
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120542_)))
                                   (__tmp129133
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129134
                                __tmp129133)))
                            (_bind*120549_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126770126771_
                                _L120488_
                                _expr*120547_
                                '#f))))
                       (let ((__tmp129136
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120488_)))
                             (__tmp129135
                              (map gxc#identifier-symbol _ids120540_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129136
                          '" => "
                          __tmp129135))
                       (let ((__tmp129138
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120183_ _xbind120545_)))
                             (__tmp129137
                              (let ()
                                (declare (not safe))
                                (cons _bind*120549_ _bind120184_))))
                         (declare (not safe))
                         (_lp120179_
                          _rest120204_
                          _lift1120182_
                          __tmp129138
                          __tmp129137)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128501128502_
                                                       (lambda (_e120508120557_
                                                                _hd120507120560_
                                                                _tl120506120562_)
                                                         (let ((_L120565_
                                                                _tl120506120562_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120565_))
                       (___kont128492128493_ _L120565_)
                       (___kont128494128495_ _tl120506120562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128490128491_))
                                                      (let ((_e120508120557_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128490128491_))))
                (let ((_tl120506120562_
                       (let () (declare (not safe)) (##cdr _e120508120557_)))
                      (_hd120507120560_
                       (let () (declare (not safe)) (##car _e120508120557_))))
                  (___match128501128502_
                   _e120508120557_
                   _hd120507120560_
                   _tl120506120562_)))
              (let () (declare (not safe)) (_g120503120517_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128514128515_
                                          (lambda (_L120315_ _L120316_)
                                            (let* ((_g120330120360_
                                                    (lambda (_g120331120357_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120331120357_))))
                                                   (_g120329120455_
                                                    (lambda (_g120331120363_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120331120363_))
                                                          (let ((_e120337120365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120331120363_))))
                    (let ((_hd120336120368_
                           (let ()
                             (declare (not safe))
                             (##car _e120337120365_)))
                          (_tl120335120370_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120337120365_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120335120370_))
                          (let ((_e120340120373_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120335120370_))))
                            (let ((_hd120339120376_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120340120373_)))
                                  (_tl120338120378_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120340120373_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120339120376_))
                                  (let ((_e120343120381_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120339120376_))))
                                    (let ((_hd120342120384_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120343120381_)))
                                          (_tl120341120386_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120343120381_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120342120384_))
                                          (let ((_e120346120389_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120342120384_))))
                                            (let ((_hd120345120392_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120346120389_)))
                                                  (_tl120344120394_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120346120389_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120345120392_))
                                                  (let ((_e120349120397_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120345120392_))))
                                                    (let ((_hd120348120400_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120349120397_)))
                                                          (_tl120347120402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120349120397_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120347120402_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120344120394_))
                      (let ((_e120352120405_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120344120394_))))
                        (let ((_hd120351120408_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120352120405_)))
                              (_tl120350120410_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120352120405_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120350120410_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120341120386_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120338120378_))
                                      (let ((_e120355120413_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120338120378_))))
                                        (let ((_hd120354120416_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120355120413_)))
                                              (_tl120353120418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120355120413_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120353120418_))
                                              ((lambda (_L120421_
                                                        _L120422_
                                                        _L120423_)
                                                 (let* ((_lambda-id120447_
                                                         (let ((__tmp129140
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120316_)))
                       (__tmp129139 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129140 __tmp129139)))
                (_lambda-id120449_
                 (let ((__tmp129141
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119541_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120447_ __tmp129141)))
                (_g129142_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120449_)))
                (_new-case-lambda-expr120452_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120421_
                    'id:
                    _L120423_
                    'new-id:
                    _lambda-id120449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129144
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120316_)))
                                                         (__tmp129143
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120449_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129144
                                                      '" => "
                                                      __tmp129143))
                                                   (let ((__tmp129147
                                                          (let ((__tmp129148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126770126771_
                            _L120316_
                            _new-case-lambda-expr120452_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129148 _rest120204_)))
                 (__tmp129145
                  (let ((__tmp129146
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126772126773_
                            _lambda-id120449_
                            _L120422_))))
                    (declare (not safe))
                    (cons __tmp129146 _lift1120182_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120179_
                                                      __tmp129147
                                                      __tmp129145
                                                      _lift2120183_
                                                      _bind120184_))))
                                               _hd120354120416_
                                               _hd120351120408_
                                               _hd120348120400_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120330120360_
                                                 _g120331120363_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120330120360_ _g120331120363_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120330120360_ _g120331120363_)))
                              (let ()
                                (declare (not safe))
                                (_g120330120360_ _g120331120363_)))))
                      (let ()
                        (declare (not safe))
                        (_g120330120360_ _g120331120363_)))
                  (let ()
                    (declare (not safe))
                    (_g120330120360_ _g120331120363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120330120360_
                                                     _g120331120363_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120330120360_
                                             _g120331120363_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120330120360_ _g120331120363_)))))
                          (let ()
                            (declare (not safe))
                            (_g120330120360_ _g120331120363_)))))
                  (let ()
                    (declare (not safe))
                    (_g120330120360_ _g120331120363_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120329120455_ _L120315_))))
                                         (___kont128516128517_
                                          (lambda (_L120266_ _L120267_)
                                            (let ((__tmp129149
                                                   (let ((__tmp129150
                                                          (let ((__tmp129151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129152
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self119540_ _L120266_))))
                           (declare (not safe))
                           (cons __tmp129152 '()))))
                    (declare (not safe))
                    (cons _L120267_ __tmp129151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129150
                                                           _bind120184_))))
                                              (declare (not safe))
                                              (_lp120179_
                                               _rest120204_
                                               _lift1120182_
                                               _lift2120183_
                                               __tmp129149)))))
                                     (let* ((___match128561128562_
                                             (lambda (_e120226120291_
                                                      _hd120225120294_
                                                      _tl120224120296_
                                                      _e120229120299_
                                                      _hd120228120302_
                                                      _tl120227120304_
                                                      _e120232120307_
                                                      _hd120231120310_
                                                      _tl120230120312_)
                                               (let ((_L120315_
                                                      _hd120231120310_)
                                                     (_L120316_
                                                      _hd120228120302_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120316_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120315_)))
                                                     (___kont128514128515_
                                                      _L120315_
                                                      _L120316_)
                                                     (___kont128516128517_
                                                      _hd120231120310_
                                                      _hd120225120294_)))))
                                            (___match128539128540_
                                             (lambda (_e120215120463_
                                                      _hd120214120466_
                                                      _tl120213120468_
                                                      _e120218120471_
                                                      _hd120217120474_
                                                      _tl120216120476_
                                                      _e120221120479_
                                                      _hd120220120482_
                                                      _tl120219120484_)
                                               (let ((_L120487_
                                                      _hd120220120482_)
                                                     (_L120488_
                                                      _hd120217120474_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120488_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120487_)))
                                                     (___kont128512128513_
                                                      _L120487_
                                                      _L120488_)
                                                     (___match128561128562_
                                                      _e120215120463_
                                                      _hd120214120466_
                                                      _tl120213120468_
                                                      _e120218120471_
                                                      _hd120217120474_
                                                      _tl120216120476_
                                                      _e120221120479_
                                                      _hd120220120482_
                                                      _tl120219120484_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128510128511_))
                                           (let ((_e120215120463_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128510128511_))))
                                             (let ((_tl120213120468_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120215120463_)))
                                                   (_hd120214120466_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120215120463_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120214120466_))
                                                   (let ((_e120218120471_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120214120466_))))
                                                     (let ((_tl120216120476_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120218120471_)))
                                                           (_hd120217120474_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120218120471_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120216120476_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120213120468_))
                       (let ((_e120221120479_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120213120468_))))
                         (let ((_tl120219120484_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120221120479_)))
                               (_hd120220120482_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120221120479_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120219120484_))
                               (___match128539128540_
                                _e120215120463_
                                _hd120214120466_
                                _tl120213120468_
                                _e120218120471_
                                _hd120217120474_
                                _tl120216120476_
                                _e120221120479_
                                _hd120220120482_
                                _tl120219120484_)
                               (let ()
                                 (declare (not safe))
                                 (_g120209120245_)))))
                       (let () (declare (not safe)) (_g120209120245_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120213120468_))
                       (let ((_e120240120258_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120213120468_))))
                         (let ((_tl120238120263_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120240120258_)))
                               (_hd120239120261_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120240120258_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120238120263_))
                               (___kont128516128517_
                                _hd120239120261_
                                _hd120214120466_)
                               (let ()
                                 (declare (not safe))
                                 (_g120209120245_)))))
                       (let () (declare (not safe)) (_g120209120245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120213120468_))
                                                       (let ((_e120240120258_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120213120468_))))
                 (let ((_tl120238120263_
                        (let () (declare (not safe)) (##cdr _e120240120258_)))
                       (_hd120239120261_
                        (let () (declare (not safe)) (##car _e120240120258_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120238120263_))
                       (___kont128516128517_ _hd120239120261_ _hd120214120466_)
                       (let () (declare (not safe)) (_g120209120245_)))))
               (let () (declare (not safe)) (_g120209120245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120209120245_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120185120193_))
                             (let ((_hd120190120583_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120185120193_)))
                                   (_tl120191120585_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120185120193_))))
                               (let* ((_hd120588_ _hd120190120583_)
                                      (_rest120590_ _tl120191120585_))
                                 (declare (not safe))
                                 (_K120189120580_ _rest120590_ _hd120588_)))
                             (let ()
                               (declare (not safe))
                               (_else120187120201_)))))))
                  (_lift-kw-lambda?119545_
                   (lambda (_bind120101_)
                     (let* ((___stx128578128579_ _bind120101_)
                            (_g120104120121_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128578128579_)))))
                       (let ((___kont128580128581_
                              (lambda (_L120157_ _L120158_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120158_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120157_))
                                    '#f)))
                             (___kont128582128583_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128578128579_))
                             (let ((_e120110120133_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128578128579_))))
                               (let ((_tl120108120138_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120110120133_)))
                                     (_hd120109120136_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120110120133_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120109120136_))
                                     (let ((_e120113120141_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120109120136_))))
                                       (let ((_tl120111120146_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120113120141_)))
                                             (_hd120112120144_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120113120141_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120111120146_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120108120138_))
                                                 (let ((_e120116120149_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120108120138_))))
                                                   (let ((_tl120114120154_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120116120149_)))
                                                         (_hd120115120152_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120116120149_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120114120154_))
                                                         (___kont128580128581_
                                                          _hd120115120152_
                                                          _hd120112120144_)
                                                         (___kont128582128583_))))
                                                 (___kont128582128583_))
                                             (___kont128582128583_))))
                                     (___kont128582128583_))))
                             (___kont128582128583_))))))
                  (_lift-kw-lambda-bindings119546_
                   (lambda (_bindings119713_)
                     (let _lp119715_ ((_rest119717_ _bindings119713_)
                                      (_lift1119718_ '())
                                      (_lift2119719_ '())
                                      (_bind119720_ '()))
                       (let* ((_rest119721119729_ _rest119717_)
                              (_else119723119737_
                               (lambda ()
                                 (values (reverse _lift1119718_)
                                         (reverse _lift2119719_)
                                         (reverse _bind119720_))))
                              (_K119725120089_
                               (lambda (_rest119740_ _hd119741_)
                                 (let* ((___stx128608128609_ _hd119741_)
                                        (_g119744119769_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128608128609_)))))
                                   (let ((___kont128610128611_
                                          (lambda (_L119839_ _L119840_)
                                            (let* ((_g119854119907_
                                                    (lambda (_g119855119904_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119855119904_))))
                                                   (_g119853120083_
                                                    (lambda (_g119855119910_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119855119910_))
                                                          (let ((_e119863119912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119855119910_))))
                    (let ((_hd119862119915_
                           (let ()
                             (declare (not safe))
                             (##car _e119863119912_)))
                          (_tl119861119917_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119863119912_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119861119917_))
                          (let ((_e119866119920_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119861119917_))))
                            (let ((_hd119865119923_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119866119920_)))
                                  (_tl119864119925_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119866119920_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119865119923_))
                                  (let ((_e119869119928_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119865119923_))))
                                    (let ((_hd119868119931_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119869119928_)))
                                          (_tl119867119933_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119869119928_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119868119931_))
                                          (let ((_e119872119936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119868119931_))))
                                            (let ((_hd119871119939_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119872119936_)))
                                                  (_tl119870119941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119872119936_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119871119939_))
                                                  (let ((_e119875119944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119871119939_))))
                                                    (let ((_hd119874119947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119875119944_)))
                                                          (_tl119873119949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119875119944_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119873119949_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119870119941_))
                      (let ((_e119878119952_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119870119941_))))
                        (let ((_hd119877119955_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119878119952_)))
                              (_tl119876119957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119878119952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119877119955_))
                              (let ((_e119881119960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119877119955_))))
                                (let ((_hd119880119963_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119881119960_)))
                                      (_tl119879119965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119881119960_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119879119965_))
                                      (let ((_e119884119968_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119879119965_))))
                                        (let ((_hd119883119971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119884119968_)))
                                              (_tl119882119973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119884119968_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119883119971_))
                                              (let ((_e119887119976_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119883119971_))))
                                                (let ((_hd119886119979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119887119976_)))
                                                      (_tl119885119981_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119887119976_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119886119979_))
                                                      (let ((_e119890119984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119886119979_))))
                (let ((_hd119889119987_
                       (let () (declare (not safe)) (##car _e119890119984_)))
                      (_tl119888119989_
                       (let () (declare (not safe)) (##cdr _e119890119984_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119889119987_))
                      (let ((_e119893119992_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119889119987_))))
                        (let ((_hd119892119995_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119893119992_)))
                              (_tl119891119997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119893119992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119891119997_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119888119989_))
                                  (let ((_e119896120000_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119888119989_))))
                                    (let ((_hd119895120003_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119896120000_)))
                                          (_tl119894120005_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119896120000_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119894120005_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119885119981_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119882119973_))
                                                  (let ((_e119899120008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119882119973_))))
                                                    (let ((_hd119898120011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119899120008_)))
                                                          (_tl119897120013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119899120008_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119897120013_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119876119957_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119867119933_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119864119925_))
                              (let ((_e119902120016_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119864119925_))))
                                (let ((_hd119901120019_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119902120016_)))
                                      (_tl119900120021_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119902120016_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119900120021_))
                                      ((lambda (_L120024_
                                                _L120025_
                                                _L120026_
                                                _L120027_
                                                _L120028_)
                                         (let* ((_get-kws-id120068_
                                                 (let ((__tmp129154
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119840_)))
                                                       (__tmp129153
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129154
                                                    __tmp129153)))
                                                (_get-kws-id120070_
                                                 (let ((__tmp129155
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119541_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120068_
                                                    __tmp129155)))
                                                (_main-id120072_
                                                 (let ((__tmp129157
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119840_)))
                                                       (__tmp129156
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129157
                                                    __tmp129156)))
                                                (_main-id120074_
                                                 (let ((__tmp129158
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119541_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120072_
                                                    __tmp129158)))
                                                (_g129159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120070_)))
                                                (_g129160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120074_)))
                                                (_new-kw-dispatch120078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120024_
                                                    'id:
                                                    _L120028_
                                                    'new-id:
                                                    _get-kws-id120070_)))
                                                (_new-get-kws120080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120025_
                                                    'id:
                                                    _L120027_
                                                    'new-id:
                                                    _main-id120074_))))
                                           (let ((__tmp129163
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119840_)))
                                                 (__tmp129162
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120070_)))
                                                 (__tmp129161
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120074_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129163
                                              '" => "
                                              __tmp129162
                                              '" => "
                                              __tmp129161))
                                           (let ((__tmp129168
                                                  (let ((__tmp129169
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126770126771_
                                                            _main-id120074_
                                                            _L120026_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129169
                                                          _lift1119718_)))
                                                 (__tmp129166
                                                  (let ((__tmp129167
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126770126771_
                                                            _get-kws-id120070_
                                                            _new-get-kws120080_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129167
                                                          _lift2119719_)))
                                                 (__tmp129164
                                                  (let ((__tmp129165
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126770126771_
                                                            _L119840_
                                                            _new-kw-dispatch120078_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129165
                                                          _bind119720_))))
                                             (declare (not safe))
                                             (_lp119715_
                                              _rest119740_
                                              __tmp129168
                                              __tmp129166
                                              __tmp129164))))
                                       _hd119901120019_
                                       _hd119898120011_
                                       _hd119895120003_
                                       _hd119892119995_
                                       _hd119874119947_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119854119907_ _g119855119910_)))))
                              (let ()
                                (declare (not safe))
                                (_g119854119907_ _g119855119910_)))
                          (let ()
                            (declare (not safe))
                            (_g119854119907_ _g119855119910_)))
                      (let ()
                        (declare (not safe))
                        (_g119854119907_ _g119855119910_)))
                  (let ()
                    (declare (not safe))
                    (_g119854119907_ _g119855119910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119854119907_
                                                     _g119855119910_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119854119907_
                                                 _g119855119910_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119854119907_
                                             _g119855119910_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119854119907_ _g119855119910_)))
                              (let ()
                                (declare (not safe))
                                (_g119854119907_ _g119855119910_)))))
                      (let ()
                        (declare (not safe))
                        (_g119854119907_ _g119855119910_)))))
              (let ()
                (declare (not safe))
                (_g119854119907_ _g119855119910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119854119907_
                                                 _g119855119910_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119854119907_ _g119855119910_)))))
                              (let ()
                                (declare (not safe))
                                (_g119854119907_ _g119855119910_)))))
                      (let ()
                        (declare (not safe))
                        (_g119854119907_ _g119855119910_)))
                  (let ()
                    (declare (not safe))
                    (_g119854119907_ _g119855119910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119854119907_
                                                     _g119855119910_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119854119907_
                                             _g119855119910_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119854119907_ _g119855119910_)))))
                          (let ()
                            (declare (not safe))
                            (_g119854119907_ _g119855119910_)))))
                  (let ()
                    (declare (not safe))
                    (_g119854119907_ _g119855119910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119853120083_ _L119839_))))
                                         (___kont128612128613_
                                          (lambda (_L119790_ _L119791_)
                                            (let ((__tmp129170
                                                   (let ((__tmp129171
                                                          (let ((__tmp129172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119790_ '()))))
                    (declare (not safe))
                    (cons _L119791_ __tmp129172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129171
                                                           _bind119720_))))
                                              (declare (not safe))
                                              (_lp119715_
                                               _rest119740_
                                               _lift1119718_
                                               _lift2119719_
                                               __tmp129170)))))
                                     (let ((___match128635128636_
                                            (lambda (_e119750119815_
                                                     _hd119749119818_
                                                     _tl119748119820_
                                                     _e119753119823_
                                                     _hd119752119826_
                                                     _tl119751119828_
                                                     _e119756119831_
                                                     _hd119755119834_
                                                     _tl119754119836_)
                                              (let ((_L119839_
                                                     _hd119755119834_)
                                                    (_L119840_
                                                     _hd119752119826_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119840_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119839_)))
                                                    (___kont128610128611_
                                                     _L119839_
                                                     _L119840_)
                                                    (___kont128612128613_
                                                     _hd119755119834_
                                                     _hd119749119818_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128608128609_))
                                           (let ((_e119750119815_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128608128609_))))
                                             (let ((_tl119748119820_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119750119815_)))
                                                   (_hd119749119818_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119750119815_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119749119818_))
                                                   (let ((_e119753119823_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119749119818_))))
                                                     (let ((_tl119751119828_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119753119823_)))
                                                           (_hd119752119826_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119753119823_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119751119828_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119748119820_))
                       (let ((_e119756119831_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119748119820_))))
                         (let ((_tl119754119836_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119756119831_)))
                               (_hd119755119834_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119756119831_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119754119836_))
                               (___match128635128636_
                                _e119750119815_
                                _hd119749119818_
                                _tl119748119820_
                                _e119753119823_
                                _hd119752119826_
                                _tl119751119828_
                                _e119756119831_
                                _hd119755119834_
                                _tl119754119836_)
                               (let ()
                                 (declare (not safe))
                                 (_g119744119769_)))))
                       (let () (declare (not safe)) (_g119744119769_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119748119820_))
                       (let ((_e119764119782_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119748119820_))))
                         (let ((_tl119762119787_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119764119782_)))
                               (_hd119763119785_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119764119782_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119762119787_))
                               (___kont128612128613_
                                _hd119763119785_
                                _hd119749119818_)
                               (let ()
                                 (declare (not safe))
                                 (_g119744119769_)))))
                       (let () (declare (not safe)) (_g119744119769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119748119820_))
                                                       (let ((_e119764119782_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119748119820_))))
                 (let ((_tl119762119787_
                        (let () (declare (not safe)) (##cdr _e119764119782_)))
                       (_hd119763119785_
                        (let () (declare (not safe)) (##car _e119764119782_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119762119787_))
                       (___kont128612128613_ _hd119763119785_ _hd119749119818_)
                       (let () (declare (not safe)) (_g119744119769_)))))
               (let () (declare (not safe)) (_g119744119769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119744119769_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119721119729_))
                             (let ((_hd119726120092_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119721119729_)))
                                   (_tl119727120094_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119721119729_))))
                               (let* ((_hd120097_ _hd119726120092_)
                                      (_rest120099_ _tl119727120094_))
                                 (declare (not safe))
                                 (_K119725120089_ _rest120099_ _hd120097_)))
                             (let ()
                               (declare (not safe))
                               (_else119723119737_))))))))
          (let* ((___stx128652128653_ _stx119541_)
                 (_g119549119575_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128652128653_)))))
            (let ((___kont128654128655_
                   (lambda (_L119635_ _L119636_)
                     (let ((__tmp129174
                            (lambda ()
                              (if (let ((__tmp129201
                                         (let ((__tmp129202
                                                (lambda (_g119664119667_
                                                         _g119665119669_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119664119667_
                                                          _g119665119669_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129202
                                                   '()
                                                   _L119636_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119545_
                                            __tmp129201))
                                  (let ((_g129188_
                                         (let ((__tmp129190
                                                (let ((__tmp129191
                                                       (lambda (_g119671119674_
                                                                _g119672119676_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119671119674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119672119676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129191
                                                          '()
                                                          _L119636_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119546_
                                            __tmp129190))))
                                    (begin
                                      (let ((_g129189_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129188_)
                                                   (##vector-length _g129188_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129189_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129189_)))
                                      (let ((_lift1119679_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129188_ 0)))
                                            (_lift2119680_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129188_ 1)))
                                            (_hd119681_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129188_ 2))))
                                        (let* ((_expr119683_
                                                (let ((__tmp129192
                                                       (let ((__tmp129193
                                                              (let ((__tmp129194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119635_ '()))))
                        (declare (not safe))
                        (cons _hd119681_ __tmp129194))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129192
                                                   _stx119541_)))
                                               (_expr119685_
                                                (let ((__tmp129195
                                                       (let ((__tmp129196
                                                              (let ((__tmp129197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119683_ '()))))
                        (declare (not safe))
                        (cons _lift2119680_ __tmp129197))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129195
                                                   _stx119541_)))
                                               (_expr119687_
                                                (let ((__tmp129198
                                                       (let ((__tmp129199
                                                              (let ((__tmp129200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119685_ '()))))
                        (declare (not safe))
                        (cons _lift1119679_ __tmp129200))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129198
                                                   _stx119541_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self119540_
                                             _expr119687_))))))
                                  (let ((_g129175_
                                         (let ((__tmp129177
                                                (let ((__tmp129178
                                                       (lambda (_g119689119692_
                                                                _g119690119694_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119689119692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119690119694_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129178
                                                          '()
                                                          _L119636_))))
                                           (declare (not safe))
                                           (_compile-bindings119544_
                                            __tmp129177))))
                                    (begin
                                      (let ((_g129176_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129175_)
                                                   (##vector-length _g129175_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129176_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129176_)))
                                      (let ((_lift1119697_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129175_ 0)))
                                            (_lift2119698_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129175_ 1)))
                                            (_hd119699_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129175_ 2))))
                                        (let* ((_body119701_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self119540_
                                                   _L119635_)))
                                               (_expr119703_
                                                (let ((__tmp129179
                                                       (let ((__tmp129180
                                                              (let ((__tmp129181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119701_ '()))))
                        (declare (not safe))
                        (cons _hd119699_ __tmp129181))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129179
                                                   _stx119541_)))
                                               (_expr119705_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119698_))
                                                    _expr119703_
                                                    (let ((__tmp129182
                                                           (let ((__tmp129183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129184
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119703_ '()))))
                            (declare (not safe))
                            (cons _lift2119698_ __tmp129184))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129183))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129182 _stx119541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119707_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119697_))
                                                    _expr119705_
                                                    (let ((__tmp129185
                                                           (let ((__tmp129186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129187
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119705_ '()))))
                            (declare (not safe))
                            (cons _lift1119697_ __tmp129187))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129186))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129185 _stx119541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119707_)))))))
                           (__tmp129173
                            (let ((__obj128868
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128868)
                              __obj128868)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129174
                        gx#current-expander-context
                        __tmp129173))))
                  (___kont128658128659_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self119540_ _stx119541_)))))
              (let ((___match128679128680_
                     (lambda (_e119555119587_
                              _hd119554119590_
                              _tl119553119592_
                              _e119558119595_
                              _hd119557119598_
                              _tl119556119600_
                              ___splice128656128657_
                              _target119559119603_
                              _tl119561119605_)
                       (letrec ((_loop119562119608_
                                 (lambda (_hd119560119611_ _bind119566119613_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119560119611_))
                                       (let ((_e119563119616_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119560119611_))))
                                         (let ((_lp-tl119565119621_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119563119616_)))
                                               (_lp-hd119564119619_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119563119616_))))
                                           (let ((__tmp129205
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119564119619_
                                                          _bind119566119613_))))
                                             (declare (not safe))
                                             (_loop119562119608_
                                              _lp-tl119565119621_
                                              __tmp129205))))
                                       (let ((_bind119567119624_
                                              (reverse _bind119566119613_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119556119600_))
                                             (let ((_e119570119627_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119556119600_))))
                                               (let ((_tl119568119632_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119570119627_)))
                                                     (_hd119569119630_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119570119627_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119568119632_))
                                                     (let ((_L119635_
                                                            _hd119569119630_)
                                                           (_L119636_
                                                            _bind119567119624_))
                                                       (if (let ((__tmp129203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129204
                                 (lambda (_g119656119659_ _g119657119661_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119656119659_ _g119657119661_)))))
                            (declare (not safe))
                            (foldr1 __tmp129204 '() _L119636_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129203))
                   (___kont128654128655_ _L119635_ _L119636_)
                   (___kont128658128659_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128658128659_))))
                                             (___kont128658128659_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119562119608_ _target119559119603_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128652128653_))
                    (let ((_e119555119587_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128652128653_))))
                      (let ((_tl119553119592_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119555119587_)))
                            (_hd119554119590_
                             (let ()
                               (declare (not safe))
                               (##car _e119555119587_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119553119592_))
                            (let ((_e119558119595_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119553119592_))))
                              (let ((_tl119556119600_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119558119595_)))
                                    (_hd119557119598_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119558119595_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119557119598_))
                                    (let ((___splice128656128657_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119557119598_
                                              '0))))
                                      (let ((_tl119561119605_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128656128657_
                                                '1)))
                                            (_target119559119603_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128656128657_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119561119605_))
                                            (___match128679128680_
                                             _e119555119587_
                                             _hd119554119590_
                                             _tl119553119592_
                                             _e119558119595_
                                             _hd119557119598_
                                             _tl119556119600_
                                             ___splice128656128657_
                                             _target119559119603_
                                             _tl119561119605_)
                                            (___kont128658128659_))))
                                    (___kont128658128659_))))
                            (___kont128658128659_))))
                    (___kont128658128659_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self118683_ _stx118684_)
        (letrec* ((_bind-e__126775126776_
                   (lambda (_id119524_ _expr119525_ _compile?119526_)
                     (let ((__tmp129208
                            (let ()
                              (declare (not safe))
                              (cons _id119524_ '())))
                           (__tmp129206
                            (let ((__tmp129207
                                   (if _compile?119526_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self118683_
                                          _expr119525_))
                                       _expr119525_)))
                              (declare (not safe))
                              (cons __tmp129207 '()))))
                       (declare (not safe))
                       (cons __tmp129208 __tmp129206))))
                  (_bind-e__0__126777126778_
                   (lambda (_id119531_ _expr119532_)
                     (let ((_compile?119534_ '#t))
                       (declare (not safe))
                       (_bind-e__126775126776_
                        _id119531_
                        _expr119532_
                        _compile?119534_))))
                  (_bind-e118686_
                   (lambda _g129210_
                     (let ((_g129209_
                            (let ()
                              (declare (not safe))
                              (##length _g129210_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129209_ 2))
                              (apply (lambda (_id119531_ _expr119532_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126777126778_
                                          _id119531_
                                          _expr119532_)))
                                     _g129210_))
                             ((let () (declare (not safe)) (##fx= _g129209_ 3))
                              (apply (lambda (_id119536_
                                              _expr119537_
                                              _compile?119538_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126775126776_
                                          _id119536_
                                          _expr119537_
                                          _compile?119538_)))
                                     _g129210_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129210_))))))
                  (_compile-bindings118687_
                   (lambda (_rest118822_)
                     (let _lp118824_ ((_rest118826_ _rest118822_)
                                      (_bind118827_ '()))
                       (let* ((_rest118828118836_ _rest118826_)
                              (_else118830118844_
                               (lambda () (reverse _bind118827_)))
                              (_K118832119511_
                               (lambda (_rest118847_ _hd118848_)
                                 (let* ((___stx128702128703_ _hd118848_)
                                        (_g118853118900_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128702128703_)))))
                                   (let ((___kont128704128705_
                                          (lambda (_L119418_ _L119419_)
                                            (let* ((___stx128682128683_
                                                    _L119418_)
                                                   (_g119434119448_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128682128683_)))))
                                              (let ((___kont128684128685_
                                                     (lambda (_L119496_)
                                                       (let ((__tmp129211
                                                              (let ((__tmp129212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126775126776_
                                _L119419_
                                _L119418_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129212 _bind118827_))))
                 (declare (not safe))
                 (_lp118824_ _rest118847_ __tmp129211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128686128687_
                                                     (lambda (_L119461_)
                                                       (let ((_g129213_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118684_
                         _L119419_
                         _L119461_
                         '#t))))
                 (begin
                   (let ((_g129214_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129213_)
                                (##vector-length _g129213_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129214_ 3)))
                         (error "Context expects 3 values" _g129214_)))
                   (let ((_ids119471_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129213_ 0)))
                         (_impls119472_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129213_ 1)))
                         (_clauses119473_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129213_ 2))))
                     (let* ((_g129215_
                             (for-each gx#core-bind-runtime! _ids119471_))
                            (_xbind119476_
                             (map _bind-e118686_ _ids119471_ _impls119472_))
                            (_expr*119478_
                             (let ((__tmp129217
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119473_)))
                                   (__tmp129216
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129217
                                __tmp129216)))
                            (_bind*119480_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126775126776_
                                _L119419_
                                _expr*119478_
                                '#f))))
                       (let ((__tmp129219
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119419_)))
                             (__tmp129218
                              (map gxc#identifier-symbol _ids119471_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129219
                          '" => "
                          __tmp129218))
                       (let ((__tmp129220
                              (let ((__tmp129221
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118827_
                                               _xbind119476_))))
                                (declare (not safe))
                                (cons _bind*119480_ __tmp129221))))
                         (declare (not safe))
                         (_lp118824_ _rest118847_ __tmp129220)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128693128694_
                                                       (lambda (_e119439119488_
                                                                _hd119438119491_
                                                                _tl119437119493_)
                                                         (let ((_L119496_
                                                                _tl119437119493_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119496_))
                       (___kont128684128685_ _L119496_)
                       (___kont128686128687_ _tl119437119493_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128682128683_))
                                                      (let ((_e119439119488_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128682128683_))))
                (let ((_tl119437119493_
                       (let () (declare (not safe)) (##cdr _e119439119488_)))
                      (_hd119438119491_
                       (let () (declare (not safe)) (##car _e119439119488_))))
                  (___match128693128694_
                   _e119439119488_
                   _hd119438119491_
                   _tl119437119493_)))
              (let () (declare (not safe)) (_g119434119448_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128706128707_
                                          (lambda (_L119246_ _L119247_)
                                            (let* ((_g119261119291_
                                                    (lambda (_g119262119288_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119262119288_))))
                                                   (_g119260119386_
                                                    (lambda (_g119262119294_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119262119294_))
                                                          (let ((_e119268119296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119262119294_))))
                    (let ((_hd119267119299_
                           (let ()
                             (declare (not safe))
                             (##car _e119268119296_)))
                          (_tl119266119301_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119268119296_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119266119301_))
                          (let ((_e119271119304_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119266119301_))))
                            (let ((_hd119270119307_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119271119304_)))
                                  (_tl119269119309_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119271119304_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119270119307_))
                                  (let ((_e119274119312_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119270119307_))))
                                    (let ((_hd119273119315_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119274119312_)))
                                          (_tl119272119317_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119274119312_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119273119315_))
                                          (let ((_e119277119320_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119273119315_))))
                                            (let ((_hd119276119323_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119277119320_)))
                                                  (_tl119275119325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119277119320_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119276119323_))
                                                  (let ((_e119280119328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119276119323_))))
                                                    (let ((_hd119279119331_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119280119328_)))
                                                          (_tl119278119333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119280119328_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119278119333_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119275119325_))
                      (let ((_e119283119336_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119275119325_))))
                        (let ((_hd119282119339_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119283119336_)))
                              (_tl119281119341_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119283119336_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119281119341_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119272119317_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119269119309_))
                                      (let ((_e119286119344_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119269119309_))))
                                        (let ((_hd119285119347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119286119344_)))
                                              (_tl119284119349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119286119344_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119284119349_))
                                              ((lambda (_L119352_
                                                        _L119353_
                                                        _L119354_)
                                                 (let* ((_lambda-id119378_
                                                         (let ((__tmp129223
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119247_)))
                       (__tmp129222 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129223 __tmp129222)))
                (_lambda-id119380_
                 (let ((__tmp129224
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118684_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119378_ __tmp129224)))
                (_g129225_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119380_)))
                (_new-case-lambda-expr119383_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119352_
                    'id:
                    _L119354_
                    'new-id:
                    _lambda-id119380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129227
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119247_)))
                                                         (__tmp129226
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119380_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129227
                                                      '" => "
                                                      __tmp129226))
                                                   (let ((__tmp129230
                                                          (let ((__tmp129231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126775126776_
                            _L119247_
                            _new-case-lambda-expr119383_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129231 _rest118847_)))
                 (__tmp129228
                  (let ((__tmp129229
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126777126778_
                            _lambda-id119380_
                            _L119353_))))
                    (declare (not safe))
                    (cons __tmp129229 _bind118827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118824_
                                                      __tmp129230
                                                      __tmp129228))))
                                               _hd119285119347_
                                               _hd119282119339_
                                               _hd119279119331_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119261119291_
                                                 _g119262119294_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119261119291_ _g119262119294_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119261119291_ _g119262119294_)))
                              (let ()
                                (declare (not safe))
                                (_g119261119291_ _g119262119294_)))))
                      (let ()
                        (declare (not safe))
                        (_g119261119291_ _g119262119294_)))
                  (let ()
                    (declare (not safe))
                    (_g119261119291_ _g119262119294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119261119291_
                                                     _g119262119294_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119261119291_
                                             _g119262119294_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119261119291_ _g119262119294_)))))
                          (let ()
                            (declare (not safe))
                            (_g119261119291_ _g119262119294_)))))
                  (let ()
                    (declare (not safe))
                    (_g119261119291_ _g119262119294_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119260119386_ _L119246_))))
                                         (___kont128708128709_
                                          (lambda (_L118970_ _L118971_)
                                            (let* ((_g118985119038_
                                                    (lambda (_g118986119035_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118986119035_))))
                                                   (_g118984119214_
                                                    (lambda (_g118986119041_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118986119041_))
                                                          (let ((_e118994119043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118986119041_))))
                    (let ((_hd118993119046_
                           (let ()
                             (declare (not safe))
                             (##car _e118994119043_)))
                          (_tl118992119048_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118994119043_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118992119048_))
                          (let ((_e118997119051_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118992119048_))))
                            (let ((_hd118996119054_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118997119051_)))
                                  (_tl118995119056_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118997119051_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118996119054_))
                                  (let ((_e119000119059_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118996119054_))))
                                    (let ((_hd118999119062_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119000119059_)))
                                          (_tl118998119064_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119000119059_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118999119062_))
                                          (let ((_e119003119067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118999119062_))))
                                            (let ((_hd119002119070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119003119067_)))
                                                  (_tl119001119072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119003119067_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119002119070_))
                                                  (let ((_e119006119075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119002119070_))))
                                                    (let ((_hd119005119078_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119006119075_)))
                                                          (_tl119004119080_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119006119075_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119004119080_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119001119072_))
                      (let ((_e119009119083_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119001119072_))))
                        (let ((_hd119008119086_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119009119083_)))
                              (_tl119007119088_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119009119083_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119008119086_))
                              (let ((_e119012119091_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119008119086_))))
                                (let ((_hd119011119094_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119012119091_)))
                                      (_tl119010119096_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119012119091_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119010119096_))
                                      (let ((_e119015119099_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119010119096_))))
                                        (let ((_hd119014119102_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119015119099_)))
                                              (_tl119013119104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119015119099_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119014119102_))
                                              (let ((_e119018119107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119014119102_))))
                                                (let ((_hd119017119110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119018119107_)))
                                                      (_tl119016119112_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119018119107_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119017119110_))
                                                      (let ((_e119021119115_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119017119110_))))
                (let ((_hd119020119118_
                       (let () (declare (not safe)) (##car _e119021119115_)))
                      (_tl119019119120_
                       (let () (declare (not safe)) (##cdr _e119021119115_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119020119118_))
                      (let ((_e119024119123_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119020119118_))))
                        (let ((_hd119023119126_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119024119123_)))
                              (_tl119022119128_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119024119123_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119022119128_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119019119120_))
                                  (let ((_e119027119131_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119019119120_))))
                                    (let ((_hd119026119134_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119027119131_)))
                                          (_tl119025119136_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119027119131_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119025119136_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119016119112_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119013119104_))
                                                  (let ((_e119030119139_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119013119104_))))
                                                    (let ((_hd119029119142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119030119139_)))
                                                          (_tl119028119144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119030119139_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119028119144_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119007119088_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118998119064_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118995119056_))
                              (let ((_e119033119147_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118995119056_))))
                                (let ((_hd119032119150_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119033119147_)))
                                      (_tl119031119152_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119033119147_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119031119152_))
                                      ((lambda (_L119155_
                                                _L119156_
                                                _L119157_
                                                _L119158_
                                                _L119159_)
                                         (let* ((_get-kws-id119199_
                                                 (let ((__tmp129233
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118971_)))
                                                       (__tmp129232
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129233
                                                    __tmp129232)))
                                                (_get-kws-id119201_
                                                 (let ((__tmp129234
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118684_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119199_
                                                    __tmp129234)))
                                                (_main-id119203_
                                                 (let ((__tmp129236
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118971_)))
                                                       (__tmp129235
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129236
                                                    __tmp129235)))
                                                (_main-id119205_
                                                 (let ((__tmp129237
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118684_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119203_
                                                    __tmp129237)))
                                                (_g129238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119201_)))
                                                (_g129239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119205_)))
                                                (_new-kw-dispatch119209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119155_
                                                    'id:
                                                    _L119159_
                                                    'new-id:
                                                    _get-kws-id119201_)))
                                                (_new-get-kws119211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119156_
                                                    'id:
                                                    _L119158_
                                                    'new-id:
                                                    _main-id119205_))))
                                           (let ((__tmp129242
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118971_)))
                                                 (__tmp129241
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119201_)))
                                                 (__tmp129240
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119205_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129242
                                              '" => "
                                              __tmp129241
                                              '" => "
                                              __tmp129240))
                                           (let ((__tmp129243
                                                  (let ((__tmp129248
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126775126776_
                                                            _main-id119205_
                                                            _L119157_
                                                            '#f)))
                                                        (__tmp129244
                                                         (let ((__tmp129247
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126775126776_
                           _get-kws-id119201_
                           _new-get-kws119211_
                           '#f)))
                       (__tmp129245
                        (let ((__tmp129246
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126775126776_
                                  _L118971_
                                  _new-kw-dispatch119209_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129246 _rest118847_))))
                   (declare (not safe))
                   (cons __tmp129247 __tmp129245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129248
                                                          __tmp129244))))
                                             (declare (not safe))
                                             (_lp118824_
                                              __tmp129243
                                              _bind118827_))))
                                       _hd119032119150_
                                       _hd119029119142_
                                       _hd119026119134_
                                       _hd119023119126_
                                       _hd119005119078_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118985119038_ _g118986119041_)))))
                              (let ()
                                (declare (not safe))
                                (_g118985119038_ _g118986119041_)))
                          (let ()
                            (declare (not safe))
                            (_g118985119038_ _g118986119041_)))
                      (let ()
                        (declare (not safe))
                        (_g118985119038_ _g118986119041_)))
                  (let ()
                    (declare (not safe))
                    (_g118985119038_ _g118986119041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118985119038_
                                                     _g118986119041_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118985119038_
                                                 _g118986119041_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118985119038_
                                             _g118986119041_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118985119038_ _g118986119041_)))
                              (let ()
                                (declare (not safe))
                                (_g118985119038_ _g118986119041_)))))
                      (let ()
                        (declare (not safe))
                        (_g118985119038_ _g118986119041_)))))
              (let ()
                (declare (not safe))
                (_g118985119038_ _g118986119041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118985119038_
                                                 _g118986119041_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118985119038_ _g118986119041_)))))
                              (let ()
                                (declare (not safe))
                                (_g118985119038_ _g118986119041_)))))
                      (let ()
                        (declare (not safe))
                        (_g118985119038_ _g118986119041_)))
                  (let ()
                    (declare (not safe))
                    (_g118985119038_ _g118986119041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118985119038_
                                                     _g118986119041_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118985119038_
                                             _g118986119041_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118985119038_ _g118986119041_)))))
                          (let ()
                            (declare (not safe))
                            (_g118985119038_ _g118986119041_)))))
                  (let ()
                    (declare (not safe))
                    (_g118985119038_ _g118986119041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118984119214_ _L118970_))))
                                         (___kont128710128711_
                                          (lambda (_L118921_ _L118922_)
                                            (let ((__tmp129249
                                                   (let ((__tmp129250
                                                          (let ((__tmp129251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129252
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self118683_ _L118921_))))
                           (declare (not safe))
                           (cons __tmp129252 '()))))
                    (declare (not safe))
                    (cons _L118922_ __tmp129251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129250
                                                           _bind118827_))))
                                              (declare (not safe))
                                              (_lp118824_
                                               _rest118847_
                                               __tmp129249)))))
                                     (let* ((___match128777128778_
                                             (lambda (_e118881118946_
                                                      _hd118880118949_
                                                      _tl118879118951_
                                                      _e118884118954_
                                                      _hd118883118957_
                                                      _tl118882118959_
                                                      _e118887118962_
                                                      _hd118886118965_
                                                      _tl118885118967_)
                                               (let ((_L118970_
                                                      _hd118886118965_)
                                                     (_L118971_
                                                      _hd118883118957_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118971_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118970_)))
                                                     (___kont128708128709_
                                                      _L118970_
                                                      _L118971_)
                                                     (___kont128710128711_
                                                      _hd118886118965_
                                                      _hd118880118949_)))))
                                            (___match128755128756_
                                             (lambda (_e118870119222_
                                                      _hd118869119225_
                                                      _tl118868119227_
                                                      _e118873119230_
                                                      _hd118872119233_
                                                      _tl118871119235_
                                                      _e118876119238_
                                                      _hd118875119241_
                                                      _tl118874119243_)
                                               (let ((_L119246_
                                                      _hd118875119241_)
                                                     (_L119247_
                                                      _hd118872119233_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119247_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119246_)))
                                                     (___kont128706128707_
                                                      _L119246_
                                                      _L119247_)
                                                     (___match128777128778_
                                                      _e118870119222_
                                                      _hd118869119225_
                                                      _tl118868119227_
                                                      _e118873119230_
                                                      _hd118872119233_
                                                      _tl118871119235_
                                                      _e118876119238_
                                                      _hd118875119241_
                                                      _tl118874119243_)))))
                                            (___match128733128734_
                                             (lambda (_e118859119394_
                                                      _hd118858119397_
                                                      _tl118857119399_
                                                      _e118862119402_
                                                      _hd118861119405_
                                                      _tl118860119407_
                                                      _e118865119410_
                                                      _hd118864119413_
                                                      _tl118863119415_)
                                               (let ((_L119418_
                                                      _hd118864119413_)
                                                     (_L119419_
                                                      _hd118861119405_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119419_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119418_)))
                                                     (___kont128704128705_
                                                      _L119418_
                                                      _L119419_)
                                                     (___match128755128756_
                                                      _e118859119394_
                                                      _hd118858119397_
                                                      _tl118857119399_
                                                      _e118862119402_
                                                      _hd118861119405_
                                                      _tl118860119407_
                                                      _e118865119410_
                                                      _hd118864119413_
                                                      _tl118863119415_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128702128703_))
                                           (let ((_e118859119394_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128702128703_))))
                                             (let ((_tl118857119399_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118859119394_)))
                                                   (_hd118858119397_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118859119394_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118858119397_))
                                                   (let ((_e118862119402_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118858119397_))))
                                                     (let ((_tl118860119407_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118862119402_)))
                                                           (_hd118861119405_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118862119402_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118860119407_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118857119399_))
                       (let ((_e118865119410_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118857119399_))))
                         (let ((_tl118863119415_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118865119410_)))
                               (_hd118864119413_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118865119410_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118863119415_))
                               (___match128733128734_
                                _e118859119394_
                                _hd118858119397_
                                _tl118857119399_
                                _e118862119402_
                                _hd118861119405_
                                _tl118860119407_
                                _e118865119410_
                                _hd118864119413_
                                _tl118863119415_)
                               (let ()
                                 (declare (not safe))
                                 (_g118853118900_)))))
                       (let () (declare (not safe)) (_g118853118900_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118857119399_))
                       (let ((_e118895118913_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118857119399_))))
                         (let ((_tl118893118918_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118895118913_)))
                               (_hd118894118916_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118895118913_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118893118918_))
                               (___kont128710128711_
                                _hd118894118916_
                                _hd118858119397_)
                               (let ()
                                 (declare (not safe))
                                 (_g118853118900_)))))
                       (let () (declare (not safe)) (_g118853118900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118857119399_))
                                                       (let ((_e118895118913_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118857119399_))))
                 (let ((_tl118893118918_
                        (let () (declare (not safe)) (##cdr _e118895118913_)))
                       (_hd118894118916_
                        (let () (declare (not safe)) (##car _e118895118913_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118893118918_))
                       (___kont128710128711_ _hd118894118916_ _hd118858119397_)
                       (let () (declare (not safe)) (_g118853118900_)))))
               (let () (declare (not safe)) (_g118853118900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118853118900_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118828118836_))
                             (let ((_hd118833119514_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118828118836_)))
                                   (_tl118834119516_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118828118836_))))
                               (let* ((_hd119519_ _hd118833119514_)
                                      (_rest119521_ _tl118834119516_))
                                 (declare (not safe))
                                 (_K118832119511_ _rest119521_ _hd119519_)))
                             (let ()
                               (declare (not safe))
                               (_else118830118844_))))))))
          (let* ((___stx128794128795_ _stx118684_)
                 (_g118690118717_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128794128795_)))))
            (let ((___kont128796128797_
                   (lambda (_L118777_ _L118778_ _L118779_)
                     (let ((__tmp129254
                            (lambda ()
                              (let ((_hd118816_
                                     (let ((__tmp129255
                                            (let ((__tmp129256
                                                   (lambda (_g118808118811_
                                                            _g118809118813_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118808118811_
                                                             _g118809118813_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129256
                                                      '()
                                                      _L118778_))))
                                       (declare (not safe))
                                       (_compile-bindings118687_ __tmp129255)))
                                    (_body118817_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self118683_
                                        _L118777_))))
                                (let ((__tmp129257
                                       (let ((__tmp129258
                                              (let ((__tmp129259
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118817_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118816_
                                                      __tmp129259))))
                                         (declare (not safe))
                                         (cons _L118779_ __tmp129258))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129257
                                   _stx118684_)))))
                           (__tmp129253
                            (let ((__obj128869
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128869)
                              __obj128869)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129254
                        gx#current-expander-context
                        __tmp129253))))
                  (___kont128800128801_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self118683_ _stx118684_)))))
              (let ((___match128821128822_
                     (lambda (_e118697118729_
                              _hd118696118732_
                              _tl118695118734_
                              _e118700118737_
                              _hd118699118740_
                              _tl118698118742_
                              ___splice128798128799_
                              _target118701118745_
                              _tl118703118747_)
                       (letrec ((_loop118704118750_
                                 (lambda (_hd118702118753_ _bind118708118755_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118702118753_))
                                       (let ((_e118705118758_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118702118753_))))
                                         (let ((_lp-tl118707118763_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118705118758_)))
                                               (_lp-hd118706118761_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118705118758_))))
                                           (let ((__tmp129262
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118706118761_
                                                          _bind118708118755_))))
                                             (declare (not safe))
                                             (_loop118704118750_
                                              _lp-tl118707118763_
                                              __tmp129262))))
                                       (let ((_bind118709118766_
                                              (reverse _bind118708118755_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118698118742_))
                                             (let ((_e118712118769_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118698118742_))))
                                               (let ((_tl118710118774_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118712118769_)))
                                                     (_hd118711118772_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118712118769_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118710118774_))
                                                     (let ((_L118777_
                                                            _hd118711118772_)
                                                           (_L118778_
                                                            _bind118709118766_)
                                                           (_L118779_
                                                            _hd118696118732_))
                                                       (if (let ((__tmp129260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129261
                                 (lambda (_g118800118803_ _g118801118805_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118800118803_ _g118801118805_)))))
                            (declare (not safe))
                            (foldr1 __tmp129261 '() _L118778_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129260))
                   (___kont128796128797_ _L118777_ _L118778_ _L118779_)
                   (___kont128800128801_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128800128801_))))
                                             (___kont128800128801_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118704118750_ _target118701118745_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128794128795_))
                    (let ((_e118697118729_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128794128795_))))
                      (let ((_tl118695118734_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118697118729_)))
                            (_hd118696118732_
                             (let ()
                               (declare (not safe))
                               (##car _e118697118729_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118695118734_))
                            (let ((_e118700118737_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118695118734_))))
                              (let ((_tl118698118742_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118700118737_)))
                                    (_hd118699118740_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118700118737_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118699118740_))
                                    (let ((___splice128798128799_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118699118740_
                                              '0))))
                                      (let ((_tl118703118747_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128798128799_
                                                '1)))
                                            (_target118701118745_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128798128799_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118703118747_))
                                            (___match128821128822_
                                             _e118697118729_
                                             _hd118696118732_
                                             _tl118695118734_
                                             _e118700118737_
                                             _hd118699118740_
                                             _tl118698118742_
                                             ___splice128798128799_
                                             _target118701118745_
                                             _tl118703118747_)
                                            (___kont128800128801_))))
                                    (___kont128800128801_))))
                            (___kont128800128801_))))
                    (___kont128800128801_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118601_)
        (let* ((___stx128824128825_ _bind118601_)
               (_g118604118621_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128824128825_)))))
          (let ((___kont128826128827_
                 (lambda (_L118657_ _L118658_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118658_))
                       (let ((_$e118674_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118657_))))
                         (if _$e118674_
                             _$e118674_
                             (let ((_$e118677_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118657_))))
                               (if _$e118677_
                                   _$e118677_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118657_))))))
                       '#f)))
                (___kont128828128829_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128824128825_))
                (let ((_e118610118633_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128824128825_))))
                  (let ((_tl118608118638_
                         (let () (declare (not safe)) (##cdr _e118610118633_)))
                        (_hd118609118636_
                         (let ()
                           (declare (not safe))
                           (##car _e118610118633_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118609118636_))
                        (let ((_e118613118641_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118609118636_))))
                          (let ((_tl118611118646_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118613118641_)))
                                (_hd118612118644_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118613118641_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118611118646_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118608118638_))
                                    (let ((_e118616118649_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118608118638_))))
                                      (let ((_tl118614118654_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118616118649_)))
                                            (_hd118615118652_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118616118649_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118614118654_))
                                            (___kont128826128827_
                                             _hd118615118652_
                                             _hd118612118644_)
                                            (___kont128828128829_))))
                                    (___kont128828128829_))
                                (___kont128828128829_))))
                        (___kont128828128829_))))
                (___kont128828128829_))))))))
