(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1707601718)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234665_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241226 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234665_ __tmp241226))
           (let ()
             (declare (not safe))
             (table-set! _tbl234665_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234665_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234665_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234665_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl234665_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx234648_ . _args234650_)
        (let ((__tmp241228
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234650_)
                     (gxc#compile-e__0 _stx234648_)
                     (let ((_arg1234655_ (car _args234650_))
                           (_rest234657_ (cdr _args234650_)))
                       (if (null? _rest234657_)
                           (gxc#compile-e__1 _stx234648_ _arg1234655_)
                           (let ((_arg2234660_ (car _rest234657_))
                                 (_rest234662_ (cdr _rest234657_)))
                             (if (null? _rest234662_)
                                 (gxc#compile-e__2
                                  _stx234648_
                                  _arg1234655_
                                  _arg2234660_)
                                 (apply gxc#compile-e
                                        _stx234648_
                                        _arg1234655_
                                        _arg2234660_
                                        _rest234662_))))))))
              (__tmp241227 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241228
           gxc#current-compile-methods
           __tmp241227))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl234645_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241229 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234645_ __tmp241229))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234645_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234645_ '%#call gxc#basic-expression-type-call%))
           _tbl234645_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx234628_ . _args234630_)
        (let ((__tmp241231
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234630_)
                     (gxc#compile-e__0 _stx234628_)
                     (let ((_arg1234635_ (car _args234630_))
                           (_rest234637_ (cdr _args234630_)))
                       (if (null? _rest234637_)
                           (gxc#compile-e__1 _stx234628_ _arg1234635_)
                           (let ((_arg2234640_ (car _rest234637_))
                                 (_rest234642_ (cdr _rest234637_)))
                             (if (null? _rest234642_)
                                 (gxc#compile-e__2
                                  _stx234628_
                                  _arg1234635_
                                  _arg2234640_)
                                 (apply gxc#compile-e
                                        _stx234628_
                                        _arg1234635_
                                        _arg2234640_
                                        _rest234642_))))))))
              (__tmp241230 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241231
           gxc#current-compile-methods
           __tmp241230))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl234625_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241232 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl234625_ __tmp241232))
           (let ()
             (declare (not safe))
             (table-set! _tbl234625_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234625_
              '%#begin-syntax
              gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234625_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234625_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234625_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234625_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234625_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234625_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234625_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234625_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234625_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234625_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl234625_ '%#set! gxc#collect-body-setq%))
           _tbl234625_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx234608_ . _args234610_)
        (let ((__tmp241234
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234610_)
                     (gxc#compile-e__0 _stx234608_)
                     (let ((_arg1234615_ (car _args234610_))
                           (_rest234617_ (cdr _args234610_)))
                       (if (null? _rest234617_)
                           (gxc#compile-e__1 _stx234608_ _arg1234615_)
                           (let ((_arg2234620_ (car _rest234617_))
                                 (_rest234622_ (cdr _rest234617_)))
                             (if (null? _rest234622_)
                                 (gxc#compile-e__2
                                  _stx234608_
                                  _arg1234615_
                                  _arg2234620_)
                                 (apply gxc#compile-e
                                        _stx234608_
                                        _arg1234615_
                                        _arg2234620_
                                        _rest234622_))))))))
              (__tmp241233 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp241234
           gxc#current-compile-methods
           __tmp241233))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl234605_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241235 (force gxc#&false)))
             (declare (not safe))
             (hash-copy! _tbl234605_ __tmp241235))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234605_
              '%#begin
              gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234605_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234605_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234605_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234605_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234605_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234605_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234605_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl234605_ '%#ref gxc#basic-expression-type-ref%))
           _tbl234605_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx234588_ . _args234590_)
        (let ((__tmp241237
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234590_)
                     (gxc#compile-e__0 _stx234588_)
                     (let ((_arg1234595_ (car _args234590_))
                           (_rest234597_ (cdr _args234590_)))
                       (if (null? _rest234597_)
                           (gxc#compile-e__1 _stx234588_ _arg1234595_)
                           (let ((_arg2234600_ (car _rest234597_))
                                 (_rest234602_ (cdr _rest234597_)))
                             (if (null? _rest234602_)
                                 (gxc#compile-e__2
                                  _stx234588_
                                  _arg1234595_
                                  _arg2234600_)
                                 (apply gxc#compile-e
                                        _stx234588_
                                        _arg1234595_
                                        _arg2234600_
                                        _rest234602_))))))))
              (__tmp241236 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp241237
           gxc#current-compile-methods
           __tmp241236))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl234585_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp241238 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl234585_ __tmp241238))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234585_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234585_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234585_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl234585_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl234585_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx234568_ . _args234570_)
        (let ((__tmp241240
               (lambda ()
                 (declare (not safe))
                 (if (null? _args234570_)
                     (gxc#compile-e__0 _stx234568_)
                     (let ((_arg1234575_ (car _args234570_))
                           (_rest234577_ (cdr _args234570_)))
                       (if (null? _rest234577_)
                           (gxc#compile-e__1 _stx234568_ _arg1234575_)
                           (let ((_arg2234580_ (car _rest234577_))
                                 (_rest234582_ (cdr _rest234577_)))
                             (if (null? _rest234582_)
                                 (gxc#compile-e__2
                                  _stx234568_
                                  _arg1234575_
                                  _arg2234580_)
                                 (apply gxc#compile-e
                                        _stx234568_
                                        _arg1234575_
                                        _arg2234580_
                                        _rest234582_))))))))
              (__tmp241239 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp241240
           gxc#current-compile-methods
           __tmp241239))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx234471_)
        (let* ((___stx239146239147_ _stx234471_)
               (_g234474234494_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239146239147_)))))
          (let ((___kont239148239149_
                 (lambda (_L234538_ _L234539_)
                   (let ((_sym234557_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234539_))))
                     (if (let ((__tmp241241 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241241 _sym234557_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234557_))
                         (let ((_type234558234560_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L234538_))))
                           (if _type234558234560_
                               (let ((_type234563_ _type234558234560_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym234557_
                                  _type234563_))
                               '#f))))))
                (___kont239150239151_ (lambda () '#!void)))
            (let ((___match239179239180_
                   (lambda (_e234480234506_
                            _hd234479234509_
                            _tl234478234511_
                            _e234483234514_
                            _hd234482234517_
                            _tl234481234519_
                            _e234486234522_
                            _hd234485234525_
                            _tl234484234527_
                            _e234489234530_
                            _hd234488234533_
                            _tl234487234535_)
                     (let ((_L234538_ _hd234488234533_)
                           (_L234539_ _hd234485234525_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234539_))
                           (___kont239148239149_ _L234538_ _L234539_)
                           (___kont239150239151_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239146239147_))
                  (let ((_e234480234506_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239146239147_))))
                    (let ((_tl234478234511_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234480234506_)))
                          (_hd234479234509_
                           (let ()
                             (declare (not safe))
                             (##car _e234480234506_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234478234511_))
                          (let ((_e234483234514_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234478234511_))))
                            (let ((_tl234481234519_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234483234514_)))
                                  (_hd234482234517_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234483234514_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234482234517_))
                                  (let ((_e234486234522_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234482234517_))))
                                    (let ((_tl234484234527_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234486234522_)))
                                          (_hd234485234525_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234486234522_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234484234527_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234481234519_))
                                              (let ((_e234489234530_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234481234519_))))
                                                (let ((_tl234487234535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234489234530_)))
                                                      (_hd234488234533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234489234530_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234487234535_))
                                                      (___match239179239180_
                                                       _e234480234506_
                                                       _hd234479234509_
                                                       _tl234478234511_
                                                       _e234483234514_
                                                       _hd234482234517_
                                                       _tl234481234519_
                                                       _e234486234522_
                                                       _hd234485234525_
                                                       _tl234484234527_
                                                       _e234489234530_
                                                       _hd234488234533_
                                                       _tl234487234535_)
                                                      (___kont239150239151_))))
                                              (___kont239150239151_))
                                          (___kont239150239151_))))
                                  (___kont239150239151_))))
                          (___kont239150239151_))))
                  (___kont239150239151_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx234327_)
        (let* ((___stx239182239183_ _stx234327_)
               (_g234330234361_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239182239183_)))))
          (let ((___kont239184239185_
                 (lambda (_L234443_ _L234444_)
                   (let ((_sym234460_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234444_))))
                     (if (let ((__tmp241242 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (table-ref __tmp241242 _sym234460_ '#f))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym234460_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym234460_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym234460_))
                             (let ((_type234461234463_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L234443_))))
                               (if _type234461234463_
                                   (let ((_type234466_ _type234461234463_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym234460_
                                      _type234466_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L234443_)))))
                (___kont239186239187_
                 (lambda (_L234390_ _L234391_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L234390_)))))
            (let ((___match239215239216_
                   (lambda (_e234336234411_
                            _hd234335234414_
                            _tl234334234416_
                            _e234339234419_
                            _hd234338234422_
                            _tl234337234424_
                            _e234342234427_
                            _hd234341234430_
                            _tl234340234432_
                            _e234345234435_
                            _hd234344234438_
                            _tl234343234440_)
                     (let ((_L234443_ _hd234344234438_)
                           (_L234444_ _hd234341234430_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L234444_))
                           (___kont239184239185_ _L234443_ _L234444_)
                           (___kont239186239187_
                            _hd234344234438_
                            _hd234338234422_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239182239183_))
                  (let ((_e234336234411_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239182239183_))))
                    (let ((_tl234334234416_
                           (let ()
                             (declare (not safe))
                             (##cdr _e234336234411_)))
                          (_hd234335234414_
                           (let ()
                             (declare (not safe))
                             (##car _e234336234411_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl234334234416_))
                          (let ((_e234339234419_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl234334234416_))))
                            (let ((_tl234337234424_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234339234419_)))
                                  (_hd234338234422_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234339234419_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd234338234422_))
                                  (let ((_e234342234427_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd234338234422_))))
                                    (let ((_tl234340234432_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234342234427_)))
                                          (_hd234341234430_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234342234427_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl234340234432_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234337234424_))
                                              (let ((_e234345234435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234337234424_))))
                                                (let ((_tl234343234440_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234345234435_)))
                                                      (_hd234344234438_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234345234435_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234343234440_))
                                                      (___match239215239216_
                                                       _e234336234411_
                                                       _hd234335234414_
                                                       _tl234334234416_
                                                       _e234339234419_
                                                       _hd234338234422_
                                                       _tl234337234424_
                                                       _e234342234427_
                                                       _hd234341234430_
                                                       _tl234340234432_
                                                       _e234345234435_
                                                       _hd234344234438_
                                                       _tl234343234440_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234330234361_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234330234361_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl234337234424_))
                                              (let ((_e234356234382_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl234337234424_))))
                                                (let ((_tl234354234387_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e234356234382_)))
                                                      (_hd234355234385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e234356234382_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl234354234387_))
                                                      (___kont239186239187_
                                                       _hd234355234385_
                                                       _hd234338234422_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g234330234361_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g234330234361_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl234337234424_))
                                      (let ((_e234356234382_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl234337234424_))))
                                        (let ((_tl234354234387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e234356234382_)))
                                              (_hd234355234385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e234356234382_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl234354234387_))
                                              (___kont239186239187_
                                               _hd234355234385_
                                               _hd234338234422_)
                                              (let ()
                                                (declare (not safe))
                                                (_g234330234361_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g234330234361_))))))
                          (let () (declare (not safe)) (_g234330234361_)))))
                  (let () (declare (not safe)) (_g234330234361_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx234112_)
        (letrec ((_collect-e234114_
                  (lambda (_hd234271_ _expr234272_)
                    (let* ((___stx239238239239_ _hd234271_)
                           (_g234275234285_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx239238239239_)))))
                      (let ((___kont239240239241_
                             (lambda (_L234305_)
                               (let ((_sym234316_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L234305_))))
                                 (if (let ((__tmp241243
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (table-ref __tmp241243 _sym234316_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym234316_))
                                     (let ((_type234317234319_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr234272_))))
                                       (if _type234317234319_
                                           (let ((_type234322_
                                                  _type234317234319_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym234316_
                                              _type234322_
                                              '#t))
                                           '#f))))))
                            (___kont239242239243_ (lambda () '#!void)))
                        (let ((___match239251239252_
                               (lambda (_e234280234297_
                                        _hd234279234300_
                                        _tl234278234302_)
                                 (let ((_L234305_ _hd234279234300_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L234305_))
                                       (___kont239240239241_ _L234305_)
                                       (___kont239242239243_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx239238239239_))
                              (let ((_e234280234297_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx239238239239_))))
                                (let ((_tl234278234302_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e234280234297_)))
                                      (_hd234279234300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e234280234297_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl234278234302_))
                                      (___match239251239252_
                                       _e234280234297_
                                       _hd234279234300_
                                       _tl234278234302_)
                                      (___kont239242239243_))))
                              (___kont239242239243_))))))))
          (let* ((_g234116234151_
                  (lambda (_g234117234148_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g234117234148_))))
                 (_g234115234268_
                  (lambda (_g234117234154_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g234117234154_))
                        (let ((_e234123234156_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g234117234154_))))
                          (let ((_hd234122234159_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e234123234156_)))
                                (_tl234121234161_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e234123234156_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234121234161_))
                                (let ((_e234126234164_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234121234161_))))
                                  (let ((_hd234125234167_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234126234164_)))
                                        (_tl234124234169_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234126234164_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd234125234167_))
                                        (let ((_g241244_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd234125234167_
                                                  '0))))
                                          (begin
                                            (let ((_g241245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g241244_)
                                                         (##vector-length
                                                          _g241244_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g241245_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g241245_)))
                                            (let ((_target234127234172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241244_
                                                      0)))
                                                  (_tl234129234174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g241244_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234129234174_))
                                                  (letrec ((_loop234130234177_
                                                            (lambda (_hd234128234180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr234134234182_
                             _hd234135234184_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd234128234180_))
                          (let ((_e234131234187_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd234128234180_))))
                            (let ((_lp-hd234132234190_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e234131234187_)))
                                  (_lp-tl234133234192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e234131234187_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd234132234190_))
                                  (let ((_e234140234195_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd234132234190_))))
                                    (let ((_hd234139234198_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e234140234195_)))
                                          (_tl234138234200_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e234140234195_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl234138234200_))
                                          (let ((_e234143234203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl234138234200_))))
                                            (let ((_hd234142234206_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e234143234203_)))
                                                  (_tl234141234208_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e234143234203_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl234141234208_))
                                                  (let ((__tmp241250
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd234142234206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr234134234182_)))
                (__tmp241249
                 (let ()
                   (declare (not safe))
                   (cons _hd234139234198_ _hd234135234184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop234130234177_
                                                     _lp-tl234133234192_
                                                     __tmp241250
                                                     __tmp241249))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234116234151_
                                                     _g234117234154_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g234116234151_
                                             _g234117234154_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g234116234151_ _g234117234154_)))))
                          (let ((_expr234136234211_
                                 (reverse _expr234134234182_))
                                (_hd234137234213_ (reverse _hd234135234184_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl234124234169_))
                                (let ((_e234146234216_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl234124234169_))))
                                  (let ((_hd234145234219_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e234146234216_)))
                                        (_tl234144234221_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e234146234216_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl234144234221_))
                                        ((lambda (_L234224_
                                                  _L234225_
                                                  _L234226_)
                                           (for-each
                                            _collect-e234114_
                                            (let ((__tmp241246
                                                   (lambda (_g234246234249_
                                                            _g234247234251_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234246234249_
                                                             _g234247234251_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241246
                                                      '()
                                                      _L234226_))
                                            (let ((__tmp241247
                                                   (lambda (_g234253234256_
                                                            _g234254234258_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234253234256_
                                                             _g234254234258_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241247
                                                      '()
                                                      _L234225_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp241248
                                                   (lambda (_g234260234263_
                                                            _g234261234265_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g234260234263_
                                                             _g234261234265_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241248
                                                      '()
                                                      _L234225_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L234224_)))
                                         _hd234145234219_
                                         _expr234136234211_
                                         _hd234137234213_)
                                        (let ()
                                          (declare (not safe))
                                          (_g234116234151_ _g234117234154_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234116234151_ _g234117234154_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop234130234177_
                                                       _target234127234172_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g234116234151_
                                                     _g234117234154_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g234116234151_ _g234117234154_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g234116234151_ _g234117234154_)))))
                        (let ()
                          (declare (not safe))
                          (_g234116234151_ _g234117234154_))))))
            (declare (not safe))
            (_g234115234268_ _stx234112_)))))
    (define gxc#collect-type-call%
      (lambda (_stx233604_)
        (let* ((___stx239254239255_ _stx233604_)
               (_g233608233723_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239254239255_)))))
          (let ((___kont239256239257_
                 (lambda (_L234062_ _L234063_ _L234064_ _L234065_ _L234066_)
                   (let ((__tmp241254
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234065_)))
                         (__tmp241253
                          (let () (declare (not safe)) (gx#stx-e _L234064_)))
                         (__tmp241252
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L234063_)))
                         (__tmp241251
                          (let () (declare (not safe)) (gx#stx-e _L234062_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241254
                      __tmp241253
                      __tmp241252
                      __tmp241251))))
                (___kont239258239259_
                 (lambda (_L233890_ _L233891_ _L233892_ _L233893_)
                   (let ((__tmp241257
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233892_)))
                         (__tmp241256
                          (let () (declare (not safe)) (gx#stx-e _L233891_)))
                         (__tmp241255
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L233890_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp241257
                      __tmp241256
                      __tmp241255
                      '#f))))
                (___kont239260239261_
                 (lambda (_L233760_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp241258
                           (lambda (_g233773233776_ _g233774233778_)
                             (let ()
                               (declare (not safe))
                               (cons _g233773233776_ _g233774233778_)))))
                      (declare (not safe))
                      (foldr1 __tmp241258 '() _L233760_))))))
            (let* ((___match239511239512_
                    (lambda (_e233709233728_
                             _hd233708233731_
                             _tl233707233733_
                             ___splice239262239263_
                             _target233710233736_
                             _tl233712233738_)
                      (letrec ((_loop233713233741_
                                (lambda (_hd233711233744_ _expr233717233746_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd233711233744_))
                                      (let ((_e233714233749_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd233711233744_))))
                                        (let ((_lp-tl233716233754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233714233749_)))
                                              (_lp-hd233715233752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233714233749_))))
                                          (let ((__tmp241259
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd233715233752_
                                                         _expr233717233746_))))
                                            (declare (not safe))
                                            (_loop233713233741_
                                             _lp-tl233716233754_
                                             __tmp241259))))
                                      (let ((_expr233718233757_
                                             (reverse _expr233717233746_)))
                                        (___kont239260239261_
                                         _expr233718233757_))))))
                        (let ()
                          (declare (not safe))
                          (_loop233713233741_ _target233710233736_ '())))))
                   (___match239391239392_
                    (lambda (_e233617233934_
                             _hd233616233937_
                             _tl233615233939_
                             _e233620233942_
                             _hd233619233945_
                             _tl233618233947_
                             _e233623233950_
                             _hd233622233953_
                             _tl233621233955_
                             _e233626233958_
                             _hd233625233961_
                             _tl233624233963_
                             _e233629233966_
                             _hd233628233969_
                             _tl233627233971_
                             _e233632233974_
                             _hd233631233977_
                             _tl233630233979_
                             _e233635233982_
                             _hd233634233985_
                             _tl233633233987_
                             _e233638233990_
                             _hd233637233993_
                             _tl233636233995_
                             _e233641233998_
                             _hd233640234001_
                             _tl233639234003_
                             _e233644234006_
                             _hd233643234009_
                             _tl233642234011_
                             _e233647234014_
                             _hd233646234017_
                             _tl233645234019_
                             _e233650234022_
                             _hd233649234025_
                             _tl233648234027_
                             _e233653234030_
                             _hd233652234033_
                             _tl233651234035_
                             _e233656234038_
                             _hd233655234041_
                             _tl233654234043_
                             _e233659234046_
                             _hd233658234049_
                             _tl233657234051_
                             _e233662234054_
                             _hd233661234057_
                             _tl233660234059_)
                      (let ((_L234062_ _hd233661234057_)
                            (_L234063_ _hd233652234033_)
                            (_L234064_ _hd233643234009_)
                            (_L234065_ _hd233634233985_)
                            (_L234066_ _hd233625233961_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L234066_
                               'bind-method!))
                            (___kont239256239257_
                             _L234062_
                             _L234063_
                             _L234064_
                             _L234065_
                             _L234066_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl233615233939_))
                                (let ((___splice239262239263_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl233615233939_
                                          '0))))
                                  (let ((_tl233712233738_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239262239263_
                                            '1)))
                                        (_target233710233736_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice239262239263_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl233712233738_))
                                        (___match239511239512_
                                         _e233617233934_
                                         _hd233616233937_
                                         _tl233615233939_
                                         ___splice239262239263_
                                         _target233710233736_
                                         _tl233712233738_)
                                        (let ()
                                          (declare (not safe))
                                          (_g233608233723_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g233608233723_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239254239255_))
                  (let ((_e233617233934_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239254239255_))))
                    (let ((_tl233615233939_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233617233934_)))
                          (_hd233616233937_
                           (let ()
                             (declare (not safe))
                             (##car _e233617233934_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl233615233939_))
                          (let ((_e233620233942_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl233615233939_))))
                            (let ((_tl233618233947_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233620233942_)))
                                  (_hd233619233945_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233620233942_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd233619233945_))
                                  (let ((_e233623233950_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd233619233945_))))
                                    (let ((_tl233621233955_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233623233950_)))
                                          (_hd233622233953_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233623233950_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd233622233953_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd233622233953_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233621233955_))
                                                  (let ((_e233626233958_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233621233955_))))
                                                    (let ((_tl233624233963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233626233958_)))
                                                          (_hd233625233961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233626233958_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233624233963_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl233618233947_))
                      (let ((_e233629233966_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233618233947_))))
                        (let ((_tl233627233971_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233629233966_)))
                              (_hd233628233969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233629233966_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd233628233969_))
                              (let ((_e233632233974_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd233628233969_))))
                                (let ((_tl233630233979_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233632233974_)))
                                      (_hd233631233977_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233632233974_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd233631233977_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd233631233977_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233630233979_))
                                              (let ((_e233635233982_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233630233979_))))
                                                (let ((_tl233633233987_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233635233982_)))
                                                      (_hd233634233985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233635233982_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233633233987_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl233627233971_))
                                                          (let ((_e233638233990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl233627233971_))))
                    (let ((_tl233636233995_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233638233990_)))
                          (_hd233637233993_
                           (let ()
                             (declare (not safe))
                             (##car _e233638233990_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd233637233993_))
                          (let ((_e233641233998_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd233637233993_))))
                            (let ((_tl233639234003_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e233641233998_)))
                                  (_hd233640234001_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e233641233998_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd233640234001_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd233640234001_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl233639234003_))
                                          (let ((_e233644234006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl233639234003_))))
                                            (let ((_tl233642234011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e233644234006_)))
                                                  (_hd233643234009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e233644234006_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233642234011_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233636233995_))
                                                      (let ((_e233647234014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233636233995_))))
                (let ((_tl233645234019_
                       (let () (declare (not safe)) (##cdr _e233647234014_)))
                      (_hd233646234017_
                       (let () (declare (not safe)) (##car _e233647234014_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd233646234017_))
                      (let ((_e233650234022_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd233646234017_))))
                        (let ((_tl233648234027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233650234022_)))
                              (_hd233649234025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233650234022_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd233649234025_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd233649234025_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233648234027_))
                                      (let ((_e233653234030_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233648234027_))))
                                        (let ((_tl233651234035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233653234030_)))
                                              (_hd233652234033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233653234030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233651234035_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl233645234019_))
                                                  (let ((_e233656234038_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl233645234019_))))
                                                    (let ((_tl233654234043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e233656234038_)))
                                                          (_hd233655234041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e233656234038_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd233655234041_))
                                                          (let ((_e233659234046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd233655234041_))))
                    (let ((_tl233657234051_
                           (let ()
                             (declare (not safe))
                             (##cdr _e233659234046_)))
                          (_hd233658234049_
                           (let ()
                             (declare (not safe))
                             (##car _e233659234046_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd233658234049_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd233658234049_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl233657234051_))
                                  (let ((_e233662234054_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl233657234051_))))
                                    (let ((_tl233660234059_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e233662234054_)))
                                          (_hd233661234057_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e233662234054_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233660234059_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233654234043_))
                                              (___match239391239392_
                                               _e233617233934_
                                               _hd233616233937_
                                               _tl233615233939_
                                               _e233620233942_
                                               _hd233619233945_
                                               _tl233618233947_
                                               _e233623233950_
                                               _hd233622233953_
                                               _tl233621233955_
                                               _e233626233958_
                                               _hd233625233961_
                                               _tl233624233963_
                                               _e233629233966_
                                               _hd233628233969_
                                               _tl233627233971_
                                               _e233632233974_
                                               _hd233631233977_
                                               _tl233630233979_
                                               _e233635233982_
                                               _hd233634233985_
                                               _tl233633233987_
                                               _e233638233990_
                                               _hd233637233993_
                                               _tl233636233995_
                                               _e233641233998_
                                               _hd233640234001_
                                               _tl233639234003_
                                               _e233644234006_
                                               _hd233643234009_
                                               _tl233642234011_
                                               _e233647234014_
                                               _hd233646234017_
                                               _tl233645234019_
                                               _e233650234022_
                                               _hd233649234025_
                                               _tl233648234027_
                                               _e233653234030_
                                               _hd233652234033_
                                               _tl233651234035_
                                               _e233656234038_
                                               _hd233655234041_
                                               _tl233654234043_
                                               _e233659234046_
                                               _hd233658234049_
                                               _tl233657234051_
                                               _e233662234054_
                                               _hd233661234057_
                                               _tl233660234059_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233615233939_))
                                                  (let ((___splice239262239263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233615233939_
                                                            '0))))
                                                    (let ((_tl233712233738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '1)))
                                                          (_target233710233736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233712233738_))
                                                          (___match239511239512_
                                                           _e233617233934_
                                                           _hd233616233937_
                                                           _tl233615233939_
                                                           ___splice239262239263_
                                                           _target233710233736_
                                                           _tl233712233738_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233608233723_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233608233723_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233615233939_))
                                              (let ((___splice239262239263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233615233939_
                                                        '0))))
                                                (let ((_tl233712233738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '1)))
                                                      (_target233710233736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233712233738_))
                                                      (___match239511239512_
                                                       _e233617233934_
                                                       _hd233616233937_
                                                       _tl233615233939_
                                                       ___splice239262239263_
                                                       _target233710233736_
                                                       _tl233712233738_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233608233723_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233615233939_))
                                      (let ((___splice239262239263_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233615233939_
                                                '0))))
                                        (let ((_tl233712233738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '1)))
                                              (_target233710233736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233712233738_))
                                              (___match239511239512_
                                               _e233617233934_
                                               _hd233616233937_
                                               _tl233615233939_
                                               ___splice239262239263_
                                               _target233710233736_
                                               _tl233712233738_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233608233723_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233615233939_))
                                  (let ((___splice239262239263_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233615233939_
                                            '0))))
                                    (let ((_tl233712233738_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239262239263_
                                              '1)))
                                          (_target233710233736_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239262239263_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233712233738_))
                                          (___match239511239512_
                                           _e233617233934_
                                           _hd233616233937_
                                           _tl233615233939_
                                           ___splice239262239263_
                                           _target233710233736_
                                           _tl233712233738_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233608233723_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233608233723_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233615233939_))
                              (let ((___splice239262239263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233615233939_
                                        '0))))
                                (let ((_tl233712233738_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239262239263_
                                          '1)))
                                      (_target233710233736_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239262239263_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233712233738_))
                                      (___match239511239512_
                                       _e233617233934_
                                       _hd233616233937_
                                       _tl233615233939_
                                       ___splice239262239263_
                                       _target233710233736_
                                       _tl233712233738_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233608233723_)))))
                              (let ()
                                (declare (not safe))
                                (_g233608233723_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233615233939_))
                      (let ((___splice239262239263_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233615233939_ '0))))
                        (let ((_tl233712233738_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '1)))
                              (_target233710233736_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233712233738_))
                              (___match239511239512_
                               _e233617233934_
                               _hd233616233937_
                               _tl233615233939_
                               ___splice239262239263_
                               _target233710233736_
                               _tl233712233738_)
                              (let ()
                                (declare (not safe))
                                (_g233608233723_)))))
                      (let () (declare (not safe)) (_g233608233723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233645234019_))
                                                      (if (let ((__tmp241260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp241260 'bind-method!))
                  (let ((_L233890_ _hd233652234033_)
                        (_L233891_ _hd233643234009_)
                        (_L233892_ _hd233634233985_)
                        (_L233893_ _hd233625233961_))
                    (___kont239258239259_
                     _L233890_
                     _L233891_
                     _L233892_
                     _L233893_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233615233939_))
                      (let ((___splice239262239263_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233615233939_ '0))))
                        (let ((_tl233712233738_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '1)))
                              (_target233710233736_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233712233738_))
                              (___match239511239512_
                               _e233617233934_
                               _hd233616233937_
                               _tl233615233939_
                               ___splice239262239263_
                               _target233710233736_
                               _tl233712233738_)
                              (let ()
                                (declare (not safe))
                                (_g233608233723_)))))
                      (let () (declare (not safe)) (_g233608233723_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233615233939_))
                  (let ((___splice239262239263_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233615233939_ '0))))
                    (let ((_tl233712233738_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239262239263_ '1)))
                          (_target233710233736_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239262239263_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233712233738_))
                          (___match239511239512_
                           _e233617233934_
                           _hd233616233937_
                           _tl233615233939_
                           ___splice239262239263_
                           _target233710233736_
                           _tl233712233738_)
                          (let () (declare (not safe)) (_g233608233723_)))))
                  (let () (declare (not safe)) (_g233608233723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233615233939_))
                                                  (let ((___splice239262239263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233615233939_
                                                            '0))))
                                                    (let ((_tl233712233738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '1)))
                                                          (_target233710233736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233712233738_))
                                                          (___match239511239512_
                                                           _e233617233934_
                                                           _hd233616233937_
                                                           _tl233615233939_
                                                           ___splice239262239263_
                                                           _target233710233736_
                                                           _tl233712233738_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233608233723_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233608233723_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233615233939_))
                                          (let ((___splice239262239263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233615233939_
                                                    '0))))
                                            (let ((_tl233712233738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239262239263_
                                                      '1)))
                                                  (_target233710233736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239262239263_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233712233738_))
                                                  (___match239511239512_
                                                   _e233617233934_
                                                   _hd233616233937_
                                                   _tl233615233939_
                                                   ___splice239262239263_
                                                   _target233710233736_
                                                   _tl233712233738_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233608233723_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233608233723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233615233939_))
                                      (let ((___splice239262239263_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233615233939_
                                                '0))))
                                        (let ((_tl233712233738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '1)))
                                              (_target233710233736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233712233738_))
                                              (___match239511239512_
                                               _e233617233934_
                                               _hd233616233937_
                                               _tl233615233939_
                                               ___splice239262239263_
                                               _target233710233736_
                                               _tl233712233738_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233608233723_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233615233939_))
                                  (let ((___splice239262239263_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233615233939_
                                            '0))))
                                    (let ((_tl233712233738_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239262239263_
                                              '1)))
                                          (_target233710233736_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239262239263_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233712233738_))
                                          (___match239511239512_
                                           _e233617233934_
                                           _hd233616233937_
                                           _tl233615233939_
                                           ___splice239262239263_
                                           _target233710233736_
                                           _tl233712233738_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233608233723_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233608233723_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233615233939_))
                          (let ((___splice239262239263_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233615233939_
                                    '0))))
                            (let ((_tl233712233738_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239262239263_ '1)))
                                  (_target233710233736_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239262239263_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233712233738_))
                                  (___match239511239512_
                                   _e233617233934_
                                   _hd233616233937_
                                   _tl233615233939_
                                   ___splice239262239263_
                                   _target233710233736_
                                   _tl233712233738_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233608233723_)))))
                          (let () (declare (not safe)) (_g233608233723_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233615233939_))
                  (let ((___splice239262239263_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233615233939_ '0))))
                    (let ((_tl233712233738_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239262239263_ '1)))
                          (_target233710233736_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239262239263_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233712233738_))
                          (___match239511239512_
                           _e233617233934_
                           _hd233616233937_
                           _tl233615233939_
                           ___splice239262239263_
                           _target233710233736_
                           _tl233712233738_)
                          (let () (declare (not safe)) (_g233608233723_)))))
                  (let () (declare (not safe)) (_g233608233723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233615233939_))
                                                      (let ((___splice239262239263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233615233939_ '0))))
                (let ((_tl233712233738_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239262239263_ '1)))
                      (_target233710233736_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239262239263_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233712233738_))
                      (___match239511239512_
                       _e233617233934_
                       _hd233616233937_
                       _tl233615233939_
                       ___splice239262239263_
                       _target233710233736_
                       _tl233712233738_)
                      (let () (declare (not safe)) (_g233608233723_)))))
              (let () (declare (not safe)) (_g233608233723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233615233939_))
                                              (let ((___splice239262239263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233615233939_
                                                        '0))))
                                                (let ((_tl233712233738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '1)))
                                                      (_target233710233736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233712233738_))
                                                      (___match239511239512_
                                                       _e233617233934_
                                                       _hd233616233937_
                                                       _tl233615233939_
                                                       ___splice239262239263_
                                                       _target233710233736_
                                                       _tl233712233738_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233608233723_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233615233939_))
                                          (let ((___splice239262239263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233615233939_
                                                    '0))))
                                            (let ((_tl233712233738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239262239263_
                                                      '1)))
                                                  (_target233710233736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239262239263_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233712233738_))
                                                  (___match239511239512_
                                                   _e233617233934_
                                                   _hd233616233937_
                                                   _tl233615233939_
                                                   ___splice239262239263_
                                                   _target233710233736_
                                                   _tl233712233738_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233608233723_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233608233723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233615233939_))
                                      (let ((___splice239262239263_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233615233939_
                                                '0))))
                                        (let ((_tl233712233738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '1)))
                                              (_target233710233736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233712233738_))
                                              (___match239511239512_
                                               _e233617233934_
                                               _hd233616233937_
                                               _tl233615233939_
                                               ___splice239262239263_
                                               _target233710233736_
                                               _tl233712233738_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233608233723_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233615233939_))
                              (let ((___splice239262239263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233615233939_
                                        '0))))
                                (let ((_tl233712233738_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239262239263_
                                          '1)))
                                      (_target233710233736_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239262239263_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233712233738_))
                                      (___match239511239512_
                                       _e233617233934_
                                       _hd233616233937_
                                       _tl233615233939_
                                       ___splice239262239263_
                                       _target233710233736_
                                       _tl233712233738_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233608233723_)))))
                              (let ()
                                (declare (not safe))
                                (_g233608233723_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233615233939_))
                      (let ((___splice239262239263_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233615233939_ '0))))
                        (let ((_tl233712233738_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '1)))
                              (_target233710233736_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233712233738_))
                              (___match239511239512_
                               _e233617233934_
                               _hd233616233937_
                               _tl233615233939_
                               ___splice239262239263_
                               _target233710233736_
                               _tl233712233738_)
                              (let ()
                                (declare (not safe))
                                (_g233608233723_)))))
                      (let () (declare (not safe)) (_g233608233723_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl233615233939_))
                  (let ((___splice239262239263_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl233615233939_ '0))))
                    (let ((_tl233712233738_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239262239263_ '1)))
                          (_target233710233736_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice239262239263_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl233712233738_))
                          (___match239511239512_
                           _e233617233934_
                           _hd233616233937_
                           _tl233615233939_
                           ___splice239262239263_
                           _target233710233736_
                           _tl233712233738_)
                          (let () (declare (not safe)) (_g233608233723_)))))
                  (let () (declare (not safe)) (_g233608233723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233615233939_))
                                                  (let ((___splice239262239263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233615233939_
                                                            '0))))
                                                    (let ((_tl233712233738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '1)))
                                                          (_target233710233736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233712233738_))
                                                          (___match239511239512_
                                                           _e233617233934_
                                                           _hd233616233937_
                                                           _tl233615233939_
                                                           ___splice239262239263_
                                                           _target233710233736_
                                                           _tl233712233738_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233608233723_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233608233723_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233615233939_))
                                              (let ((___splice239262239263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233615233939_
                                                        '0))))
                                                (let ((_tl233712233738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '1)))
                                                      (_target233710233736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233712233738_))
                                                      (___match239511239512_
                                                       _e233617233934_
                                                       _hd233616233937_
                                                       _tl233615233939_
                                                       ___splice239262239263_
                                                       _target233710233736_
                                                       _tl233712233738_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233608233723_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl233615233939_))
                                          (let ((___splice239262239263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl233615233939_
                                                    '0))))
                                            (let ((_tl233712233738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239262239263_
                                                      '1)))
                                                  (_target233710233736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice239262239263_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl233712233738_))
                                                  (___match239511239512_
                                                   _e233617233934_
                                                   _hd233616233937_
                                                   _tl233615233939_
                                                   ___splice239262239263_
                                                   _target233710233736_
                                                   _tl233712233738_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233608233723_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g233608233723_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl233615233939_))
                                  (let ((___splice239262239263_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl233615233939_
                                            '0))))
                                    (let ((_tl233712233738_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239262239263_
                                              '1)))
                                          (_target233710233736_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice239262239263_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl233712233738_))
                                          (___match239511239512_
                                           _e233617233934_
                                           _hd233616233937_
                                           _tl233615233939_
                                           ___splice239262239263_
                                           _target233710233736_
                                           _tl233712233738_)
                                          (let ()
                                            (declare (not safe))
                                            (_g233608233723_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g233608233723_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl233615233939_))
                          (let ((___splice239262239263_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl233615233939_
                                    '0))))
                            (let ((_tl233712233738_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239262239263_ '1)))
                                  (_target233710233736_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239262239263_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl233712233738_))
                                  (___match239511239512_
                                   _e233617233934_
                                   _hd233616233937_
                                   _tl233615233939_
                                   ___splice239262239263_
                                   _target233710233736_
                                   _tl233712233738_)
                                  (let ()
                                    (declare (not safe))
                                    (_g233608233723_)))))
                          (let () (declare (not safe)) (_g233608233723_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl233615233939_))
                      (let ((___splice239262239263_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl233615233939_ '0))))
                        (let ((_tl233712233738_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '1)))
                              (_target233710233736_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice239262239263_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl233712233738_))
                              (___match239511239512_
                               _e233617233934_
                               _hd233616233937_
                               _tl233615233939_
                               ___splice239262239263_
                               _target233710233736_
                               _tl233712233738_)
                              (let ()
                                (declare (not safe))
                                (_g233608233723_)))))
                      (let () (declare (not safe)) (_g233608233723_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl233615233939_))
                                                      (let ((___splice239262239263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl233615233939_ '0))))
                (let ((_tl233712233738_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239262239263_ '1)))
                      (_target233710233736_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice239262239263_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl233712233738_))
                      (___match239511239512_
                       _e233617233934_
                       _hd233616233937_
                       _tl233615233939_
                       ___splice239262239263_
                       _target233710233736_
                       _tl233712233738_)
                      (let () (declare (not safe)) (_g233608233723_)))))
              (let () (declare (not safe)) (_g233608233723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl233615233939_))
                                                  (let ((___splice239262239263_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl233615233939_
                                                            '0))))
                                                    (let ((_tl233712233738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '1)))
                                                          (_target233710233736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239262239263_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl233712233738_))
                                                          (___match239511239512_
                                                           _e233617233934_
                                                           _hd233616233937_
                                                           _tl233615233939_
                                                           ___splice239262239263_
                                                           _target233710233736_
                                                           _tl233712233738_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g233608233723_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g233608233723_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl233615233939_))
                                              (let ((___splice239262239263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl233615233939_
                                                        '0))))
                                                (let ((_tl233712233738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '1)))
                                                      (_target233710233736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice239262239263_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233712233738_))
                                                      (___match239511239512_
                                                       _e233617233934_
                                                       _hd233616233937_
                                                       _tl233615233939_
                                                       ___splice239262239263_
                                                       _target233710233736_
                                                       _tl233712233738_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g233608233723_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl233615233939_))
                                      (let ((___splice239262239263_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl233615233939_
                                                '0))))
                                        (let ((_tl233712233738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '1)))
                                              (_target233710233736_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice239262239263_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233712233738_))
                                              (___match239511239512_
                                               _e233617233934_
                                               _hd233616233937_
                                               _tl233615233939_
                                               ___splice239262239263_
                                               _target233710233736_
                                               _tl233712233738_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233608233723_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233608233723_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl233615233939_))
                              (let ((___splice239262239263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl233615233939_
                                        '0))))
                                (let ((_tl233712233738_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239262239263_
                                          '1)))
                                      (_target233710233736_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice239262239263_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233712233738_))
                                      (___match239511239512_
                                       _e233617233934_
                                       _hd233616233937_
                                       _tl233615233939_
                                       ___splice239262239263_
                                       _target233710233736_
                                       _tl233712233738_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233608233723_)))))
                              (let ()
                                (declare (not safe))
                                (_g233608233723_))))))
                  (let () (declare (not safe)) (_g233608233723_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx233544_)
        (let* ((___stx239514239515_ _stx233544_)
               (_g233547233560_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239514239515_)))))
          (let ((___kont239516239517_
                 (lambda (_L233588_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L233588_))))
                (___kont239518239519_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239514239515_))
                (let ((_e233552233572_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239514239515_))))
                  (let ((_tl233550233577_
                         (let () (declare (not safe)) (##cdr _e233552233572_)))
                        (_hd233551233575_
                         (let ()
                           (declare (not safe))
                           (##car _e233552233572_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl233550233577_))
                        (let ((_e233555233580_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl233550233577_))))
                          (let ((_tl233553233585_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e233555233580_)))
                                (_hd233554233583_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e233555233580_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl233553233585_))
                                (___kont239516239517_ _hd233554233583_)
                                (___kont239518239519_))))
                        (___kont239518239519_))))
                (___kont239518239519_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx233424_)
        (let* ((_g233426233443_
                (lambda (_g233427233440_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233427233440_))))
               (_g233425233541_
                (lambda (_g233427233446_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233427233446_))
                      (let ((_e233432233448_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233427233446_))))
                        (let ((_hd233431233451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233432233448_)))
                              (_tl233430233453_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233432233448_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233430233453_))
                              (let ((_e233435233456_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233430233453_))))
                                (let ((_hd233434233459_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233435233456_)))
                                      (_tl233433233461_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233435233456_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233433233461_))
                                      (let ((_e233438233464_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233433233461_))))
                                        (let ((_hd233437233467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233438233464_)))
                                              (_tl233436233469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233438233464_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl233436233469_))
                                              ((lambda (_L233472_ _L233473_)
                                                 (let* ((___stx239536239537_
                                                         _L233473_)
                                                        (_g233489233500_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx239536239537_)))))
                                                   (let ((___kont239538239539_
                                                          (lambda (_L233520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L233521_)
                    (let ((_$e233533_
                           (let ((__tmp241261
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L233521_))))
                             (declare (not safe))
                             (table-ref
                              gxc#basic-expression-type-annotations
                              __tmp241261
                              '#f))))
                      (if _$e233533_
                          ((lambda (_type-e233536_)
                             (_type-e233536_ _stx233424_ _L233473_))
                           _$e233533_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L233472_))))))
                 (___kont239540239541_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L233472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match239547239548_
                                                            (lambda (_e233495233512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd233494233515_
                             _tl233493233517_)
                      (let ((_L233520_ _tl233493233517_)
                            (_L233521_ _hd233494233515_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L233521_))
                            (___kont239538239539_ _L233520_ _L233521_)
                            (___kont239540239541_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx239536239537_))
                   (let ((_e233495233512_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx239536239537_))))
                     (let ((_tl233493233517_
                            (let ()
                              (declare (not safe))
                              (##cdr _e233495233512_)))
                           (_hd233494233515_
                            (let ()
                              (declare (not safe))
                              (##car _e233495233512_))))
                       (___match239547239548_
                        _e233495233512_
                        _hd233494233515_
                        _tl233493233517_)))
                   (___kont239540239541_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd233437233467_
                                               _hd233434233459_)
                                              (let ()
                                                (declare (not safe))
                                                (_g233426233443_
                                                 _g233427233446_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233426233443_ _g233427233446_)))))
                              (let ()
                                (declare (not safe))
                                (_g233426233443_ _g233427233446_)))))
                      (let ()
                        (declare (not safe))
                        (_g233426233443_ _g233427233446_))))))
          (declare (not safe))
          (_g233425233541_ _stx233424_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx233285_ _ann233286_)
        (let* ((_g233288233321_
                (lambda (_g233289233318_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233289233318_))))
               (_g233287233421_
                (lambda (_g233289233324_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233289233324_))
                      (let ((_e233298233326_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233289233324_))))
                        (let ((_hd233297233329_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233298233326_)))
                              (_tl233296233331_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233298233326_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233296233331_))
                              (let ((_e233301233334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233296233331_))))
                                (let ((_hd233300233337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233301233334_)))
                                      (_tl233299233339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233301233334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233299233339_))
                                      (let ((_e233304233342_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233299233339_))))
                                        (let ((_hd233303233345_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233304233342_)))
                                              (_tl233302233347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233304233342_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233302233347_))
                                              (let ((_e233307233350_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233302233347_))))
                                                (let ((_hd233306233353_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233307233350_)))
                                                      (_tl233305233355_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233307233350_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl233305233355_))
                                                      (let ((_e233310233358_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl233305233355_))))
                (let ((_hd233309233361_
                       (let () (declare (not safe)) (##car _e233310233358_)))
                      (_tl233308233363_
                       (let () (declare (not safe)) (##cdr _e233310233358_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl233308233363_))
                      (let ((_e233313233366_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl233308233363_))))
                        (let ((_hd233312233369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233313233366_)))
                              (_tl233311233371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233313233366_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233311233371_))
                              (let ((_e233316233374_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233311233371_))))
                                (let ((_hd233315233377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233316233374_)))
                                      (_tl233314233379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233316233374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233314233379_))
                                      ((lambda (_L233382_
                                                _L233383_
                                                _L233384_
                                                _L233385_
                                                _L233386_
                                                _L233387_)
                                         (let ((_type-id233414_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233387_)))
                                               (_super233415_
                                                (map gxc#identifier-symbol
                                                     _L233386_))
                                               (_slots233416_
                                                (map gx#stx-e _L233385_))
                                               (_ctor-method233417_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233384_)))
                                               (_struct?233418_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233383_)))
                                               (_final?233419_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L233382_))))
                                           (let ((__obj241219
                                                  (let ()
                                                    (declare (not safe))
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
                                                     '#f))))
                                             (gxc#!class:::init!
                                              __obj241219
                                              _type-id233414_
                                              _super233415_
                                              _slots233416_
                                              _ctor-method233417_
                                              _struct?233418_
                                              _final?233419_)
                                             __obj241219)))
                                       _hd233315233377_
                                       _hd233312233369_
                                       _hd233309233361_
                                       _hd233306233353_
                                       _hd233303233345_
                                       _hd233300233337_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233288233321_ _g233289233324_)))))
                              (let ()
                                (declare (not safe))
                                (_g233288233321_ _g233289233324_)))))
                      (let ()
                        (declare (not safe))
                        (_g233288233321_ _g233289233324_)))))
              (let ()
                (declare (not safe))
                (_g233288233321_ _g233289233324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233288233321_
                                                 _g233289233324_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233288233321_ _g233289233324_)))))
                              (let ()
                                (declare (not safe))
                                (_g233288233321_ _g233289233324_)))))
                      (let ()
                        (declare (not safe))
                        (_g233288233321_ _g233289233324_))))))
          (declare (not safe))
          (_g233287233421_ _ann233286_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx233233_ _ann233234_)
        (let* ((_g233236233249_
                (lambda (_g233237233246_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233237233246_))))
               (_g233235233282_
                (lambda (_g233237233252_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233237233252_))
                      (let ((_e233241233254_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233237233252_))))
                        (let ((_hd233240233257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233241233254_)))
                              (_tl233239233259_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233241233254_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233239233259_))
                              (let ((_e233244233262_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233239233259_))))
                                (let ((_hd233243233265_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233244233262_)))
                                      (_tl233242233267_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233244233262_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233242233267_))
                                      ((lambda (_L233270_)
                                         (let ((__tmp241262
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233270_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp241262)))
                                       _hd233243233265_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233236233249_ _g233237233252_)))))
                              (let ()
                                (declare (not safe))
                                (_g233236233249_ _g233237233252_)))))
                      (let ()
                        (declare (not safe))
                        (_g233236233249_ _g233237233252_))))))
          (declare (not safe))
          (_g233235233282_ _ann233234_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx233181_ _ann233182_)
        (let* ((_g233184233197_
                (lambda (_g233185233194_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233185233194_))))
               (_g233183233230_
                (lambda (_g233185233200_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233185233200_))
                      (let ((_e233189233202_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233185233200_))))
                        (let ((_hd233188233205_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233189233202_)))
                              (_tl233187233207_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233189233202_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233187233207_))
                              (let ((_e233192233210_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233187233207_))))
                                (let ((_hd233191233213_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233192233210_)))
                                      (_tl233190233215_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233192233210_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl233190233215_))
                                      ((lambda (_L233218_)
                                         (let ((__tmp241263
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L233218_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp241263)))
                                       _hd233191233213_)
                                      (let ()
                                        (declare (not safe))
                                        (_g233184233197_ _g233185233200_)))))
                              (let ()
                                (declare (not safe))
                                (_g233184233197_ _g233185233200_)))))
                      (let ()
                        (declare (not safe))
                        (_g233184233197_ _g233185233200_))))))
          (declare (not safe))
          (_g233183233230_ _ann233182_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx233097_ _ann233098_)
        (let* ((_g233100233121_
                (lambda (_g233101233118_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233101233118_))))
               (_g233099233178_
                (lambda (_g233101233124_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233101233124_))
                      (let ((_e233107233126_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233101233124_))))
                        (let ((_hd233106233129_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233107233126_)))
                              (_tl233105233131_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233107233126_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233105233131_))
                              (let ((_e233110233134_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233105233131_))))
                                (let ((_hd233109233137_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233110233134_)))
                                      (_tl233108233139_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233110233134_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233108233139_))
                                      (let ((_e233113233142_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233108233139_))))
                                        (let ((_hd233112233145_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233113233142_)))
                                              (_tl233111233147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233113233142_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233111233147_))
                                              (let ((_e233116233150_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233111233147_))))
                                                (let ((_hd233115233153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233116233150_)))
                                                      (_tl233114233155_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233116233150_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233114233155_))
                                                      ((lambda (_L233158_
                                                                _L233159_
                                                                _L233160_)
                                                         (let ((__tmp241266
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L233160_)))
                       (__tmp241265
                        (let () (declare (not safe)) (gx#stx-e _L233159_)))
                       (__tmp241264
                        (let () (declare (not safe)) (gx#stx-e _L233158_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp241266
                    __tmp241265
                    __tmp241264)))
               _hd233115233153_
               _hd233112233145_
               _hd233109233137_)
              (let ()
                (declare (not safe))
                (_g233100233121_ _g233101233124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233100233121_
                                                 _g233101233124_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233100233121_ _g233101233124_)))))
                              (let ()
                                (declare (not safe))
                                (_g233100233121_ _g233101233124_)))))
                      (let ()
                        (declare (not safe))
                        (_g233100233121_ _g233101233124_))))))
          (declare (not safe))
          (_g233099233178_ _ann233098_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx233013_ _ann233014_)
        (let* ((_g233016233037_
                (lambda (_g233017233034_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g233017233034_))))
               (_g233015233094_
                (lambda (_g233017233040_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g233017233040_))
                      (let ((_e233023233042_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g233017233040_))))
                        (let ((_hd233022233045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e233023233042_)))
                              (_tl233021233047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e233023233042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl233021233047_))
                              (let ((_e233026233050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl233021233047_))))
                                (let ((_hd233025233053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e233026233050_)))
                                      (_tl233024233055_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e233026233050_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl233024233055_))
                                      (let ((_e233029233058_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl233024233055_))))
                                        (let ((_hd233028233061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e233029233058_)))
                                              (_tl233027233063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e233029233058_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl233027233063_))
                                              (let ((_e233032233066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl233027233063_))))
                                                (let ((_hd233031233069_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e233032233066_)))
                                                      (_tl233030233071_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e233032233066_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl233030233071_))
                                                      ((lambda (_L233074_
                                                                _L233075_
                                                                _L233076_)
                                                         (let ((__tmp241269
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L233076_)))
                       (__tmp241268
                        (let () (declare (not safe)) (gx#stx-e _L233075_)))
                       (__tmp241267
                        (let () (declare (not safe)) (gx#stx-e _L233074_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp241269
                    __tmp241268
                    __tmp241267)))
               _hd233031233069_
               _hd233028233061_
               _hd233025233053_)
              (let ()
                (declare (not safe))
                (_g233016233037_ _g233017233040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g233016233037_
                                                 _g233017233040_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g233016233037_ _g233017233040_)))))
                              (let ()
                                (declare (not safe))
                                (_g233016233037_ _g233017233040_)))))
                      (let ()
                        (declare (not safe))
                        (_g233016233037_ _g233017233040_))))))
          (declare (not safe))
          (_g233015233094_ _ann233014_))))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.class
       gxc#basic-expression-type-annotation-mop.class))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.constructor
       gxc#basic-expression-type-annotation-mop.constructor))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.predicate
       gxc#basic-expression-type-annotation-mop.predicate))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.accessor
       gxc#basic-expression-type-annotation-mop.accessor))
    (let ()
      (declare (not safe))
      (table-set!
       gxc#basic-expression-type-annotations
       '@mop.mutator
       gxc#basic-expression-type-annotation-mop.mutator))
    (define gxc#basic-expression-type-lambda%
      (lambda (_stx232133_)
        (let* ((___stx239550239551_ _stx232133_)
               (_g232139232335_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239550239551_)))))
          (let ((___kont239552239553_
                 (lambda (_L233001_)
                   (let ((__obj241220
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241220
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L233001_))
                      '#f)
                     __obj241220)))
                (___kont239554239555_
                 (lambda (_L232928_
                          _L232929_
                          _L232930_
                          _L232931_
                          _L232932_
                          _L232933_)
                   (let* ((_tab232983_
                           (let () (declare (not safe)) (gx#stx-e _L232930_)))
                          (_keys232985_
                           (if _tab232983_
                               (let ((__tmp241270 (vector->list _tab232983_)))
                                 (declare (not safe))
                                 (filter values __tmp241270))
                               '#f)))
                     (let ((__tmp241271
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L232929_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys232985_
                        __tmp241271)))))
                (___kont239556239557_
                 (lambda (_L232661_
                          _L232662_
                          _L232663_
                          _L232664_
                          _L232665_
                          _L232666_
                          _L232667_
                          _L232668_
                          _L232669_
                          _L232670_)
                   (let ((__tmp241273
                          (map gx#stx-e
                               (let ((__tmp241274
                                      (lambda (_g232763232766_ _g232764232768_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g232763232766_
                                                _g232764232768_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp241274 '() _L232663_))))
                         (__tmp241272
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L232667_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp241273
                      __tmp241272))))
                (___kont239560239561_
                 (lambda (_L232371_)
                   (let ((__obj241221
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241221
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232371_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L232371_)))
                     __obj241221)))
                (___kont239562239563_
                 (lambda (_L232348_)
                   (let ((__obj241222
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj241222
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L232348_))
                      '#f)
                     __obj241222))))
            (let* ((___match239869239870_
                    (lambda (_e232326232363_ _hd232325232366_ _tl232324232368_)
                      (let ((_L232371_ _tl232324232368_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L232371_))
                            (___kont239560239561_ _L232371_)
                            (___kont239562239563_ _tl232324232368_)))))
                   (___match239863239864_
                    (lambda (_e232220232385_
                             _hd232219232388_
                             _tl232218232390_
                             _e232223232393_
                             _hd232222232396_
                             _tl232221232398_
                             _e232226232401_
                             _hd232225232404_
                             _tl232224232406_
                             _e232229232409_
                             _hd232228232412_
                             _tl232227232414_
                             _e232232232417_
                             _hd232231232420_
                             _tl232230232422_
                             _e232235232425_
                             _hd232234232428_
                             _tl232233232430_
                             _e232238232433_
                             _hd232237232436_
                             _tl232236232438_
                             _e232241232441_
                             _hd232240232444_
                             _tl232239232446_
                             _e232244232449_
                             _hd232243232452_
                             _tl232242232454_
                             _e232247232457_
                             _hd232246232460_
                             _tl232245232462_
                             _e232250232465_
                             _hd232249232468_
                             _tl232248232470_
                             _e232253232473_
                             _hd232252232476_
                             _tl232251232478_
                             _e232256232481_
                             _hd232255232484_
                             _tl232254232486_
                             _e232259232489_
                             _hd232258232492_
                             _tl232257232494_
                             ___splice239558239559_
                             _target232260232497_
                             _tl232262232499_
                             _e232277232502_
                             _hd232276232505_
                             _tl232275232507_
                             _e232280232510_
                             _hd232279232513_
                             _tl232278232515_
                             _e232283232518_
                             _hd232282232521_
                             _tl232281232523_)
                      (letrec ((_loop232263232526_
                                (lambda (_hd232261232529_
                                         _-absent-value232267232531_
                                         _key232268232533_
                                         _-xkwvar232269232535_
                                         _-hash-ref232270232537_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd232261232529_))
                                      (let ((_e232264232540_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd232261232529_))))
                                        (let ((_lp-tl232266232545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232264232540_)))
                                              (_lp-hd232265232543_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232264232540_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd232265232543_))
                                              (let ((_e232286232548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd232265232543_))))
                                                (let ((_tl232284232553_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232286232548_)))
                                                      (_hd232285232551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232286232548_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd232285232551_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd232285232551_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl232284232553_))
                      (let ((_e232289232556_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl232284232553_))))
                        (let ((_tl232287232561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232289232556_)))
                              (_hd232288232559_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232289232556_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd232288232559_))
                              (let ((_e232292232564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd232288232559_))))
                                (let ((_tl232290232569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232292232564_)))
                                      (_hd232291232567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232292232564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd232291232567_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd232291232567_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232290232569_))
                                              (let ((_e232295232572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232290232569_))))
                                                (let ((_tl232293232577_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232295232572_)))
                                                      (_hd232294232575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232295232572_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232293232577_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232287232561_))
                                                          (let ((_e232298232580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232287232561_))))
                    (let ((_tl232296232585_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232298232580_)))
                          (_hd232297232583_
                           (let ()
                             (declare (not safe))
                             (##car _e232298232580_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232297232583_))
                          (let ((_e232301232588_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232297232583_))))
                            (let ((_tl232299232593_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232301232588_)))
                                  (_hd232300232591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232301232588_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232300232591_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232300232591_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232299232593_))
                                          (let ((_e232304232596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232299232593_))))
                                            (let ((_tl232302232601_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232304232596_)))
                                                  (_hd232303232599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232304232596_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232302232601_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232296232585_))
                                                      (let ((_e232307232604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232296232585_))))
                (let ((_tl232305232609_
                       (let () (declare (not safe)) (##cdr _e232307232604_)))
                      (_hd232306232607_
                       (let () (declare (not safe)) (##car _e232307232604_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232306232607_))
                      (let ((_e232310232612_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232306232607_))))
                        (let ((_tl232308232617_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232310232612_)))
                              (_hd232309232615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232310232612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232309232615_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd232309232615_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232308232617_))
                                      (let ((_e232313232620_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232308232617_))))
                                        (let ((_tl232311232625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232313232620_)))
                                              (_hd232312232623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232313232620_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232311232625_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232305232609_))
                                                  (let ((_e232316232628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232305232609_))))
                                                    (let ((_tl232314232633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232316232628_)))
                                                          (_hd232315232631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232316232628_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232315232631_))
                                                          (let ((_e232319232636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232315232631_))))
                    (let ((_tl232317232641_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232319232636_)))
                          (_hd232318232639_
                           (let ()
                             (declare (not safe))
                             (##car _e232319232636_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232318232639_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232318232639_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232317232641_))
                                  (let ((_e232322232644_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232317232641_))))
                                    (let ((_tl232320232649_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232322232644_)))
                                          (_hd232321232647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232322232644_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232320232649_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232314232633_))
                                              (let ((__tmp241289
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232321232647_
                                                             _-absent-value232267232531_)))
                                                    (__tmp241288
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232312232623_
                                                             _key232268232533_)))
                                                    (__tmp241287
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232303232599_
                                                             _-xkwvar232269232535_)))
                                                    (__tmp241286
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd232294232575_
                                                             _-hash-ref232270232537_))))
                                                (declare (not safe))
                                                (_loop232263232526_
                                                 _lp-tl232266232545_
                                                 __tmp241289
                                                 __tmp241288
                                                 __tmp241287
                                                 __tmp241286))
                                              (___match239869239870_
                                               _e232220232385_
                                               _hd232219232388_
                                               _tl232218232390_))
                                          (___match239869239870_
                                           _e232220232385_
                                           _hd232219232388_
                                           _tl232218232390_))))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))
                              (___match239869239870_
                               _e232220232385_
                               _hd232219232388_
                               _tl232218232390_))
                          (___match239869239870_
                           _e232220232385_
                           _hd232219232388_
                           _tl232218232390_))))
                  (___match239869239870_
                   _e232220232385_
                   _hd232219232388_
                   _tl232218232390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_))
                                              (___match239869239870_
                                               _e232220232385_
                                               _hd232219232388_
                                               _tl232218232390_))))
                                      (___match239869239870_
                                       _e232220232385_
                                       _hd232219232388_
                                       _tl232218232390_))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))
                              (___match239869239870_
                               _e232220232385_
                               _hd232219232388_
                               _tl232218232390_))))
                      (___match239869239870_
                       _e232220232385_
                       _hd232219232388_
                       _tl232218232390_))))
              (___match239869239870_
               _e232220232385_
               _hd232219232388_
               _tl232218232390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_))))
                                          (___match239869239870_
                                           _e232220232385_
                                           _hd232219232388_
                                           _tl232218232390_))
                                      (___match239869239870_
                                       _e232220232385_
                                       _hd232219232388_
                                       _tl232218232390_))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))))
                          (___match239869239870_
                           _e232220232385_
                           _hd232219232388_
                           _tl232218232390_))))
                  (___match239869239870_
                   _e232220232385_
                   _hd232219232388_
                   _tl232218232390_))
              (___match239869239870_
               _e232220232385_
               _hd232219232388_
               _tl232218232390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239869239870_
                                               _e232220232385_
                                               _hd232219232388_
                                               _tl232218232390_))
                                          (___match239869239870_
                                           _e232220232385_
                                           _hd232219232388_
                                           _tl232218232390_))
                                      (___match239869239870_
                                       _e232220232385_
                                       _hd232219232388_
                                       _tl232218232390_))))
                              (___match239869239870_
                               _e232220232385_
                               _hd232219232388_
                               _tl232218232390_))))
                      (___match239869239870_
                       _e232220232385_
                       _hd232219232388_
                       _tl232218232390_))
                  (___match239869239870_
                   _e232220232385_
                   _hd232219232388_
                   _tl232218232390_))
              (___match239869239870_
               _e232220232385_
               _hd232219232388_
               _tl232218232390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239869239870_
                                               _e232220232385_
                                               _hd232219232388_
                                               _tl232218232390_))))
                                      (let ((_-hash-ref232274232658_
                                             (reverse _-hash-ref232270232537_))
                                            (_-xkwvar232273232656_
                                             (reverse _-xkwvar232269232535_))
                                            (_key232272232654_
                                             (reverse _key232268232533_))
                                            (_-absent-value232271232652_
                                             (reverse _-absent-value232267232531_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl232227232414_))
                                            (let ((_L232661_ _hd232282232521_)
                                                  (_L232662_
                                                   _-absent-value232271232652_)
                                                  (_L232663_ _key232272232654_)
                                                  (_L232664_
                                                   _-xkwvar232273232656_)
                                                  (_L232665_
                                                   _-hash-ref232274232658_)
                                                  (_L232666_ _hd232258232492_)
                                                  (_L232667_ _hd232249232468_)
                                                  (_L232668_ _hd232240232444_)
                                                  (_L232669_ _tl232224232406_)
                                                  (_L232670_ _hd232225232404_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232670_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L232669_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L232668_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L232670_
                                                          _L232666_))
                                                       (let ((__tmp241284
                                                              (let ((__tmp241285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g232723232726_ _g232724232728_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232723232726_ _g232724232728_)))))
                        (declare (not safe))
                        (foldr1 __tmp241285 '() _L232663_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp241284))
               (let ((__tmp241283
                      (lambda (_g232730232732_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232730232732_
                           'hash-ref))))
                     (__tmp241281
                      (let ((__tmp241282
                             (lambda (_g232734232737_ _g232735232739_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232734232737_ _g232735232739_)))))
                        (declare (not safe))
                        (foldr1 __tmp241282 '() _L232665_))))
                 (declare (not safe))
                 (andmap1 __tmp241283 __tmp241281))
               (let ((__tmp241280
                      (lambda (_g232741232743_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g232741232743_
                           'absent-value))))
                     (__tmp241278
                      (let ((__tmp241279
                             (lambda (_g232745232748_ _g232746232750_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232745232748_ _g232746232750_)))))
                        (declare (not safe))
                        (foldr1 __tmp241279 '() _L232662_))))
                 (declare (not safe))
                 (andmap1 __tmp241280 __tmp241278))
               (let ((__tmp241277
                      (lambda (_g232752232754_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g232752232754_ _L232670_))))
                     (__tmp241275
                      (let ((__tmp241276
                             (lambda (_g232756232759_ _g232757232761_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g232756232759_ _g232757232761_)))))
                        (declare (not safe))
                        (foldr1 __tmp241276 '() _L232664_))))
                 (declare (not safe))
                 (andmap1 __tmp241277 __tmp241275)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239556239557_
                                                   _L232661_
                                                   _L232662_
                                                   _L232663_
                                                   _L232664_
                                                   _L232665_
                                                   _L232666_
                                                   _L232667_
                                                   _L232668_
                                                   _L232669_
                                                   _L232670_)
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_)))
                                            (___match239869239870_
                                             _e232220232385_
                                             _hd232219232388_
                                             _tl232218232390_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop232263232526_
                           _target232260232497_
                           '()
                           '()
                           '()
                           '())))))
                   (___match239735239736_
                    (lambda (_e232220232385_
                             _hd232219232388_
                             _tl232218232390_
                             _e232223232393_
                             _hd232222232396_
                             _tl232221232398_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232222232396_))
                          (let ((_e232226232401_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232222232396_))))
                            (let ((_tl232224232406_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232226232401_)))
                                  (_hd232225232404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232226232401_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232221232398_))
                                  (let ((_e232229232409_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232221232398_))))
                                    (let ((_tl232227232414_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232229232409_)))
                                          (_hd232228232412_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232229232409_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232228232412_))
                                          (let ((_e232232232417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232228232412_))))
                                            (let ((_tl232230232422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232232232417_)))
                                                  (_hd232231232420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232232232417_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232231232420_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232231232420_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232230232422_))
                                                          (let ((_e232235232425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232230232422_))))
                    (let ((_tl232233232430_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232235232425_)))
                          (_hd232234232428_
                           (let ()
                             (declare (not safe))
                             (##car _e232235232425_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232234232428_))
                          (let ((_e232238232433_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232234232428_))))
                            (let ((_tl232236232438_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232238232433_)))
                                  (_hd232237232436_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232238232433_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232237232436_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232237232436_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232236232438_))
                                          (let ((_e232241232441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232236232438_))))
                                            (let ((_tl232239232446_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232241232441_)))
                                                  (_hd232240232444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232241232441_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232239232446_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232233232430_))
                                                      (let ((_e232244232449_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232233232430_))))
                (let ((_tl232242232454_
                       (let () (declare (not safe)) (##cdr _e232244232449_)))
                      (_hd232243232452_
                       (let () (declare (not safe)) (##car _e232244232449_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232243232452_))
                      (let ((_e232247232457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232243232452_))))
                        (let ((_tl232245232462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232247232457_)))
                              (_hd232246232460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232247232457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232246232460_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232246232460_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232245232462_))
                                      (let ((_e232250232465_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232245232462_))))
                                        (let ((_tl232248232470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232250232465_)))
                                              (_hd232249232468_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232250232465_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232248232470_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232242232454_))
                                                  (let ((_e232253232473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232242232454_))))
                                                    (let ((_tl232251232478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232253232473_)))
                                                          (_hd232252232476_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232253232473_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232252232476_))
                                                          (let ((_e232256232481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232252232476_))))
                    (let ((_tl232254232486_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232256232481_)))
                          (_hd232255232484_
                           (let ()
                             (declare (not safe))
                             (##car _e232256232481_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232255232484_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd232255232484_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232254232486_))
                                  (let ((_e232259232489_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232254232486_))))
                                    (let ((_tl232257232494_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232259232489_)))
                                          (_hd232258232492_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232259232489_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232257232494_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl232251232478_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl232251232478_))
                                                        '1)
                                                  (let ((___splice239558239559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl232251232478_
                                                            '1))))
                                                    (let ((_tl232262232499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239558239559_
                                                              '1)))
                                                          (_target232260232497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice239558239559_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232262232499_))
                                                          (let ((_e232277232502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232262232499_))))
                    (let ((_tl232275232507_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232277232502_)))
                          (_hd232276232505_
                           (let ()
                             (declare (not safe))
                             (##car _e232277232502_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232276232505_))
                          (let ((_e232280232510_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232276232505_))))
                            (let ((_tl232278232515_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232280232510_)))
                                  (_hd232279232513_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232280232510_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232279232513_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232279232513_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232278232515_))
                                          (let ((_e232283232518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232278232515_))))
                                            (let ((_tl232281232523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232283232518_)))
                                                  (_hd232282232521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232283232518_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232281232523_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl232275232507_))
                                                      (___match239863239864_
                                                       _e232220232385_
                                                       _hd232219232388_
                                                       _tl232218232390_
                                                       _e232223232393_
                                                       _hd232222232396_
                                                       _tl232221232398_
                                                       _e232226232401_
                                                       _hd232225232404_
                                                       _tl232224232406_
                                                       _e232229232409_
                                                       _hd232228232412_
                                                       _tl232227232414_
                                                       _e232232232417_
                                                       _hd232231232420_
                                                       _tl232230232422_
                                                       _e232235232425_
                                                       _hd232234232428_
                                                       _tl232233232430_
                                                       _e232238232433_
                                                       _hd232237232436_
                                                       _tl232236232438_
                                                       _e232241232441_
                                                       _hd232240232444_
                                                       _tl232239232446_
                                                       _e232244232449_
                                                       _hd232243232452_
                                                       _tl232242232454_
                                                       _e232247232457_
                                                       _hd232246232460_
                                                       _tl232245232462_
                                                       _e232250232465_
                                                       _hd232249232468_
                                                       _tl232248232470_
                                                       _e232253232473_
                                                       _hd232252232476_
                                                       _tl232251232478_
                                                       _e232256232481_
                                                       _hd232255232484_
                                                       _tl232254232486_
                                                       _e232259232489_
                                                       _hd232258232492_
                                                       _tl232257232494_
                                                       ___splice239558239559_
                                                       _target232260232497_
                                                       _tl232262232499_
                                                       _e232277232502_
                                                       _hd232276232505_
                                                       _tl232275232507_
                                                       _e232280232510_
                                                       _hd232279232513_
                                                       _tl232278232515_
                                                       _e232283232518_
                                                       _hd232282232521_
                                                       _tl232281232523_)
                                                      (___match239869239870_
                                                       _e232220232385_
                                                       _hd232219232388_
                                                       _tl232218232390_))
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_))))
                                          (___match239869239870_
                                           _e232220232385_
                                           _hd232219232388_
                                           _tl232218232390_))
                                      (___match239869239870_
                                       _e232220232385_
                                       _hd232219232388_
                                       _tl232218232390_))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))))
                          (___match239869239870_
                           _e232220232385_
                           _hd232219232388_
                           _tl232218232390_))))
                  (___match239869239870_
                   _e232220232385_
                   _hd232219232388_
                   _tl232218232390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_))
                                              (___match239869239870_
                                               _e232220232385_
                                               _hd232219232388_
                                               _tl232218232390_))
                                          (___match239869239870_
                                           _e232220232385_
                                           _hd232219232388_
                                           _tl232218232390_))))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))
                              (___match239869239870_
                               _e232220232385_
                               _hd232219232388_
                               _tl232218232390_))
                          (___match239869239870_
                           _e232220232385_
                           _hd232219232388_
                           _tl232218232390_))))
                  (___match239869239870_
                   _e232220232385_
                   _hd232219232388_
                   _tl232218232390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_))
                                              (___match239869239870_
                                               _e232220232385_
                                               _hd232219232388_
                                               _tl232218232390_))))
                                      (___match239869239870_
                                       _e232220232385_
                                       _hd232219232388_
                                       _tl232218232390_))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))
                              (___match239869239870_
                               _e232220232385_
                               _hd232219232388_
                               _tl232218232390_))))
                      (___match239869239870_
                       _e232220232385_
                       _hd232219232388_
                       _tl232218232390_))))
              (___match239869239870_
               _e232220232385_
               _hd232219232388_
               _tl232218232390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_))))
                                          (___match239869239870_
                                           _e232220232385_
                                           _hd232219232388_
                                           _tl232218232390_))
                                      (___match239869239870_
                                       _e232220232385_
                                       _hd232219232388_
                                       _tl232218232390_))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))))
                          (___match239869239870_
                           _e232220232385_
                           _hd232219232388_
                           _tl232218232390_))))
                  (___match239869239870_
                   _e232220232385_
                   _hd232219232388_
                   _tl232218232390_))
              (___match239869239870_
               _e232220232385_
               _hd232219232388_
               _tl232218232390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239869239870_
                                                   _e232220232385_
                                                   _hd232219232388_
                                                   _tl232218232390_))))
                                          (___match239869239870_
                                           _e232220232385_
                                           _hd232219232388_
                                           _tl232218232390_))))
                                  (___match239869239870_
                                   _e232220232385_
                                   _hd232219232388_
                                   _tl232218232390_))))
                          (___match239869239870_
                           _e232220232385_
                           _hd232219232388_
                           _tl232218232390_))))
                   (___match239723239724_
                    (lambda (_e232153232776_
                             _hd232152232779_
                             _tl232151232781_
                             _e232156232784_
                             _hd232155232787_
                             _tl232154232789_
                             _e232159232792_
                             _hd232158232795_
                             _tl232157232797_
                             _e232162232800_
                             _hd232161232803_
                             _tl232160232805_
                             _e232165232808_
                             _hd232164232811_
                             _tl232163232813_
                             _e232168232816_
                             _hd232167232819_
                             _tl232166232821_
                             _e232171232824_
                             _hd232170232827_
                             _tl232169232829_
                             _e232174232832_
                             _hd232173232835_
                             _tl232172232837_
                             _e232177232840_
                             _hd232176232843_
                             _tl232175232845_
                             _e232180232848_
                             _hd232179232851_
                             _tl232178232853_
                             _e232183232856_
                             _hd232182232859_
                             _tl232181232861_
                             _e232186232864_
                             _hd232185232867_
                             _tl232184232869_
                             _e232189232872_
                             _hd232188232875_
                             _tl232187232877_
                             _e232192232880_
                             _hd232191232883_
                             _tl232190232885_
                             _e232195232888_
                             _hd232194232891_
                             _tl232193232893_
                             _e232198232896_
                             _hd232197232899_
                             _tl232196232901_
                             _e232201232904_
                             _hd232200232907_
                             _tl232199232909_
                             _e232204232912_
                             _hd232203232915_
                             _tl232202232917_
                             _e232207232920_
                             _hd232206232923_
                             _tl232205232925_)
                      (let ((_L232928_ _hd232206232923_)
                            (_L232929_ _hd232197232899_)
                            (_L232930_ _hd232188232875_)
                            (_L232931_ _hd232179232851_)
                            (_L232932_ _hd232170232827_)
                            (_L232933_ _hd232155232787_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L232933_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L232932_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L232931_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L232933_ _L232928_)))
                            (___kont239554239555_
                             _L232928_
                             _L232929_
                             _L232930_
                             _L232931_
                             _L232932_
                             _L232933_)
                            (___match239735239736_
                             _e232153232776_
                             _hd232152232779_
                             _tl232151232781_
                             _e232156232784_
                             _hd232155232787_
                             _tl232154232789_)))))
                   (___match239577239578_
                    (lambda (_e232153232776_ _hd232152232779_ _tl232151232781_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232151232781_))
                          (let ((_e232156232784_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232151232781_))))
                            (let ((_tl232154232789_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232156232784_)))
                                  (_hd232155232787_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232156232784_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232154232789_))
                                  (let ((_e232159232792_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232154232789_))))
                                    (let ((_tl232157232797_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232159232792_)))
                                          (_hd232158232795_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232159232792_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd232158232795_))
                                          (let ((_e232162232800_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd232158232795_))))
                                            (let ((_tl232160232805_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232162232800_)))
                                                  (_hd232161232803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232162232800_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd232161232803_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd232161232803_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl232160232805_))
                                                          (let ((_e232165232808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl232160232805_))))
                    (let ((_tl232163232813_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232165232808_)))
                          (_hd232164232811_
                           (let ()
                             (declare (not safe))
                             (##car _e232165232808_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd232164232811_))
                          (let ((_e232168232816_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd232164232811_))))
                            (let ((_tl232166232821_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232168232816_)))
                                  (_hd232167232819_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232168232816_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd232167232819_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd232167232819_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232166232821_))
                                          (let ((_e232171232824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232166232821_))))
                                            (let ((_tl232169232829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232171232824_)))
                                                  (_hd232170232827_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232171232824_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl232169232829_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl232163232813_))
                                                      (let ((_e232174232832_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl232163232813_))))
                (let ((_tl232172232837_
                       (let () (declare (not safe)) (##cdr _e232174232832_)))
                      (_hd232173232835_
                       (let () (declare (not safe)) (##car _e232174232832_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd232173232835_))
                      (let ((_e232177232840_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd232173232835_))))
                        (let ((_tl232175232845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232177232840_)))
                              (_hd232176232843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232177232840_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd232176232843_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd232176232843_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232175232845_))
                                      (let ((_e232180232848_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232175232845_))))
                                        (let ((_tl232178232853_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232180232848_)))
                                              (_hd232179232851_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232180232848_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232178232853_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl232172232837_))
                                                  (let ((_e232183232856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl232172232837_))))
                                                    (let ((_tl232181232861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232183232856_)))
                                                          (_hd232182232859_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232183232856_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd232182232859_))
                                                          (let ((_e232186232864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd232182232859_))))
                    (let ((_tl232184232869_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232186232864_)))
                          (_hd232185232867_
                           (let ()
                             (declare (not safe))
                             (##car _e232186232864_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd232185232867_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd232185232867_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl232184232869_))
                                  (let ((_e232189232872_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl232184232869_))))
                                    (let ((_tl232187232877_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e232189232872_)))
                                          (_hd232188232875_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e232189232872_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232187232877_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl232181232861_))
                                              (let ((_e232192232880_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl232181232861_))))
                                                (let ((_tl232190232885_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e232192232880_)))
                                                      (_hd232191232883_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e232192232880_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd232191232883_))
                                                      (let ((_e232195232888_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd232191232883_))))
                (let ((_tl232193232893_
                       (let () (declare (not safe)) (##cdr _e232195232888_)))
                      (_hd232194232891_
                       (let () (declare (not safe)) (##car _e232195232888_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd232194232891_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd232194232891_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232193232893_))
                              (let ((_e232198232896_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232193232893_))))
                                (let ((_tl232196232901_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232198232896_)))
                                      (_hd232197232899_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232198232896_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232196232901_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl232190232885_))
                                          (let ((_e232201232904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl232190232885_))))
                                            (let ((_tl232199232909_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e232201232904_)))
                                                  (_hd232200232907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e232201232904_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd232200232907_))
                                                  (let ((_e232204232912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd232200232907_))))
                                                    (let ((_tl232202232917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e232204232912_)))
                                                          (_hd232203232915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e232204232912_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd232203232915_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd232203232915_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl232202232917_))
                          (let ((_e232207232920_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl232202232917_))))
                            (let ((_tl232205232925_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e232207232920_)))
                                  (_hd232206232923_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e232207232920_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl232205232925_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl232199232909_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl232157232797_))
                                          (___match239723239724_
                                           _e232153232776_
                                           _hd232152232779_
                                           _tl232151232781_
                                           _e232156232784_
                                           _hd232155232787_
                                           _tl232154232789_
                                           _e232159232792_
                                           _hd232158232795_
                                           _tl232157232797_
                                           _e232162232800_
                                           _hd232161232803_
                                           _tl232160232805_
                                           _e232165232808_
                                           _hd232164232811_
                                           _tl232163232813_
                                           _e232168232816_
                                           _hd232167232819_
                                           _tl232166232821_
                                           _e232171232824_
                                           _hd232170232827_
                                           _tl232169232829_
                                           _e232174232832_
                                           _hd232173232835_
                                           _tl232172232837_
                                           _e232177232840_
                                           _hd232176232843_
                                           _tl232175232845_
                                           _e232180232848_
                                           _hd232179232851_
                                           _tl232178232853_
                                           _e232183232856_
                                           _hd232182232859_
                                           _tl232181232861_
                                           _e232186232864_
                                           _hd232185232867_
                                           _tl232184232869_
                                           _e232189232872_
                                           _hd232188232875_
                                           _tl232187232877_
                                           _e232192232880_
                                           _hd232191232883_
                                           _tl232190232885_
                                           _e232195232888_
                                           _hd232194232891_
                                           _tl232193232893_
                                           _e232198232896_
                                           _hd232197232899_
                                           _tl232196232901_
                                           _e232201232904_
                                           _hd232200232907_
                                           _tl232199232909_
                                           _e232204232912_
                                           _hd232203232915_
                                           _tl232202232917_
                                           _e232207232920_
                                           _hd232206232923_
                                           _tl232205232925_)
                                          (___match239735239736_
                                           _e232153232776_
                                           _hd232152232779_
                                           _tl232151232781_
                                           _e232156232784_
                                           _hd232155232787_
                                           _tl232154232789_))
                                      (___match239735239736_
                                       _e232153232776_
                                       _hd232152232779_
                                       _tl232151232781_
                                       _e232156232784_
                                       _hd232155232787_
                                       _tl232154232789_))
                                  (___match239735239736_
                                   _e232153232776_
                                   _hd232152232779_
                                   _tl232151232781_
                                   _e232156232784_
                                   _hd232155232787_
                                   _tl232154232789_))))
                          (___match239735239736_
                           _e232153232776_
                           _hd232152232779_
                           _tl232151232781_
                           _e232156232784_
                           _hd232155232787_
                           _tl232154232789_))
                      (___match239735239736_
                       _e232153232776_
                       _hd232152232779_
                       _tl232151232781_
                       _e232156232784_
                       _hd232155232787_
                       _tl232154232789_))
                  (___match239735239736_
                   _e232153232776_
                   _hd232152232779_
                   _tl232151232781_
                   _e232156232784_
                   _hd232155232787_
                   _tl232154232789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239735239736_
                                                   _e232153232776_
                                                   _hd232152232779_
                                                   _tl232151232781_
                                                   _e232156232784_
                                                   _hd232155232787_
                                                   _tl232154232789_))))
                                          (___match239735239736_
                                           _e232153232776_
                                           _hd232152232779_
                                           _tl232151232781_
                                           _e232156232784_
                                           _hd232155232787_
                                           _tl232154232789_))
                                      (___match239735239736_
                                       _e232153232776_
                                       _hd232152232779_
                                       _tl232151232781_
                                       _e232156232784_
                                       _hd232155232787_
                                       _tl232154232789_))))
                              (___match239735239736_
                               _e232153232776_
                               _hd232152232779_
                               _tl232151232781_
                               _e232156232784_
                               _hd232155232787_
                               _tl232154232789_))
                          (___match239735239736_
                           _e232153232776_
                           _hd232152232779_
                           _tl232151232781_
                           _e232156232784_
                           _hd232155232787_
                           _tl232154232789_))
                      (___match239735239736_
                       _e232153232776_
                       _hd232152232779_
                       _tl232151232781_
                       _e232156232784_
                       _hd232155232787_
                       _tl232154232789_))))
              (___match239735239736_
               _e232153232776_
               _hd232152232779_
               _tl232151232781_
               _e232156232784_
               _hd232155232787_
               _tl232154232789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match239735239736_
                                               _e232153232776_
                                               _hd232152232779_
                                               _tl232151232781_
                                               _e232156232784_
                                               _hd232155232787_
                                               _tl232154232789_))
                                          (___match239735239736_
                                           _e232153232776_
                                           _hd232152232779_
                                           _tl232151232781_
                                           _e232156232784_
                                           _hd232155232787_
                                           _tl232154232789_))))
                                  (___match239735239736_
                                   _e232153232776_
                                   _hd232152232779_
                                   _tl232151232781_
                                   _e232156232784_
                                   _hd232155232787_
                                   _tl232154232789_))
                              (___match239735239736_
                               _e232153232776_
                               _hd232152232779_
                               _tl232151232781_
                               _e232156232784_
                               _hd232155232787_
                               _tl232154232789_))
                          (___match239735239736_
                           _e232153232776_
                           _hd232152232779_
                           _tl232151232781_
                           _e232156232784_
                           _hd232155232787_
                           _tl232154232789_))))
                  (___match239735239736_
                   _e232153232776_
                   _hd232152232779_
                   _tl232151232781_
                   _e232156232784_
                   _hd232155232787_
                   _tl232154232789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239735239736_
                                                   _e232153232776_
                                                   _hd232152232779_
                                                   _tl232151232781_
                                                   _e232156232784_
                                                   _hd232155232787_
                                                   _tl232154232789_))
                                              (___match239735239736_
                                               _e232153232776_
                                               _hd232152232779_
                                               _tl232151232781_
                                               _e232156232784_
                                               _hd232155232787_
                                               _tl232154232789_))))
                                      (___match239735239736_
                                       _e232153232776_
                                       _hd232152232779_
                                       _tl232151232781_
                                       _e232156232784_
                                       _hd232155232787_
                                       _tl232154232789_))
                                  (___match239735239736_
                                   _e232153232776_
                                   _hd232152232779_
                                   _tl232151232781_
                                   _e232156232784_
                                   _hd232155232787_
                                   _tl232154232789_))
                              (___match239735239736_
                               _e232153232776_
                               _hd232152232779_
                               _tl232151232781_
                               _e232156232784_
                               _hd232155232787_
                               _tl232154232789_))))
                      (___match239735239736_
                       _e232153232776_
                       _hd232152232779_
                       _tl232151232781_
                       _e232156232784_
                       _hd232155232787_
                       _tl232154232789_))))
              (___match239735239736_
               _e232153232776_
               _hd232152232779_
               _tl232151232781_
               _e232156232784_
               _hd232155232787_
               _tl232154232789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239735239736_
                                                   _e232153232776_
                                                   _hd232152232779_
                                                   _tl232151232781_
                                                   _e232156232784_
                                                   _hd232155232787_
                                                   _tl232154232789_))))
                                          (___match239735239736_
                                           _e232153232776_
                                           _hd232152232779_
                                           _tl232151232781_
                                           _e232156232784_
                                           _hd232155232787_
                                           _tl232154232789_))
                                      (___match239735239736_
                                       _e232153232776_
                                       _hd232152232779_
                                       _tl232151232781_
                                       _e232156232784_
                                       _hd232155232787_
                                       _tl232154232789_))
                                  (___match239735239736_
                                   _e232153232776_
                                   _hd232152232779_
                                   _tl232151232781_
                                   _e232156232784_
                                   _hd232155232787_
                                   _tl232154232789_))))
                          (___match239735239736_
                           _e232153232776_
                           _hd232152232779_
                           _tl232151232781_
                           _e232156232784_
                           _hd232155232787_
                           _tl232154232789_))))
                  (___match239735239736_
                   _e232153232776_
                   _hd232152232779_
                   _tl232151232781_
                   _e232156232784_
                   _hd232155232787_
                   _tl232154232789_))
              (___match239735239736_
               _e232153232776_
               _hd232152232779_
               _tl232151232781_
               _e232156232784_
               _hd232155232787_
               _tl232154232789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match239735239736_
                                                   _e232153232776_
                                                   _hd232152232779_
                                                   _tl232151232781_
                                                   _e232156232784_
                                                   _hd232155232787_
                                                   _tl232154232789_))))
                                          (___match239735239736_
                                           _e232153232776_
                                           _hd232152232779_
                                           _tl232151232781_
                                           _e232156232784_
                                           _hd232155232787_
                                           _tl232154232789_))))
                                  (___match239735239736_
                                   _e232153232776_
                                   _hd232152232779_
                                   _tl232151232781_
                                   _e232156232784_
                                   _hd232155232787_
                                   _tl232154232789_))))
                          (___match239869239870_
                           _e232153232776_
                           _hd232152232779_
                           _tl232151232781_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239550239551_))
                  (let ((_e232144232993_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239550239551_))))
                    (let ((_tl232142232998_
                           (let ()
                             (declare (not safe))
                             (##cdr _e232144232993_)))
                          (_hd232143232996_
                           (let ()
                             (declare (not safe))
                             (##car _e232144232993_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L233001_ _tl232142232998_))
                            (___kont239552239553_ _L233001_))
                          (___match239577239578_
                           _e232144232993_
                           _hd232143232996_
                           _tl232142232998_))))
                  (let () (declare (not safe)) (_g232139232335_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx232088_)
        (letrec ((_clause-e232090_
                  (lambda (_form232131_)
                    (let ((__obj241223
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
                       __obj241223
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form232131_))
                       (if (let ((__tmp241290
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp241290))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form232131_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form232131_))
                               '#f)
                           '#f))
                      __obj241223))))
          (let* ((_g232092232102_
                  (lambda (_g232093232099_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g232093232099_))))
                 (_g232091232128_
                  (lambda (_g232093232105_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g232093232105_))
                        (let ((_e232097232107_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g232093232105_))))
                          (let ((_hd232096232110_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e232097232107_)))
                                (_tl232095232112_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e232097232107_))))
                            ((lambda (_L232115_)
                               (let ((_clauses232126_
                                      (map _clause-e232090_ _L232115_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses232126_)))
                             _tl232095232112_)))
                        (let ()
                          (declare (not safe))
                          (_g232092232102_ _g232093232105_))))))
            (declare (not safe))
            (_g232091232128_ _stx232088_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx232020_)
        (let* ((_g232022232039_
                (lambda (_g232023232036_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g232023232036_))))
               (_g232021232085_
                (lambda (_g232023232042_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g232023232042_))
                      (let ((_e232028232044_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g232023232042_))))
                        (let ((_hd232027232047_
                               (let ()
                                 (declare (not safe))
                                 (##car _e232028232044_)))
                              (_tl232026232049_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e232028232044_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl232026232049_))
                              (let ((_e232031232052_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl232026232049_))))
                                (let ((_hd232030232055_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e232031232052_)))
                                      (_tl232029232057_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e232031232052_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl232029232057_))
                                      (let ((_e232034232060_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl232029232057_))))
                                        (let ((_hd232033232063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e232034232060_)))
                                              (_tl232032232065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e232034232060_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl232032232065_))
                                              ((lambda (_L232068_ _L232069_)
                                                 (let ((__tmp241291
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L232068_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp241291
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd232033232063_
                                               _hd232030232055_)
                                              (let ()
                                                (declare (not safe))
                                                (_g232022232039_
                                                 _g232023232042_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g232022232039_ _g232023232042_)))))
                              (let ()
                                (declare (not safe))
                                (_g232022232039_ _g232023232042_)))))
                      (let ()
                        (declare (not safe))
                        (_g232022232039_ _g232023232042_))))))
          (declare (not safe))
          (_g232021232085_ _stx232020_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx231925_)
        (let* ((___stx239878239879_ _stx231925_)
               (_g231928231948_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239878239879_)))))
          (let ((___kont239880239881_
                 (lambda (_L231992_ _L231993_)
                   (let ((_type-e232010232012_
                          (let ((__tmp241292
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L231993_))))
                            (declare (not safe))
                            (table-ref
                             gxc#basic-expression-type-builtin
                             __tmp241292
                             '#f))))
                     (if _type-e232010232012_
                         (let ((_type-e232015_ _type-e232010232012_))
                           (_type-e232015_ _stx231925_ _L231992_))
                         '#f))))
                (___kont239882239883_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx239878239879_))
                (let ((_e231934231960_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx239878239879_))))
                  (let ((_tl231932231965_
                         (let () (declare (not safe)) (##cdr _e231934231960_)))
                        (_hd231933231963_
                         (let ()
                           (declare (not safe))
                           (##car _e231934231960_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231932231965_))
                        (let ((_e231937231968_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231932231965_))))
                          (let ((_tl231935231973_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231937231968_)))
                                (_hd231936231971_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231937231968_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231936231971_))
                                (let ((_e231940231976_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231936231971_))))
                                  (let ((_tl231938231981_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231940231976_)))
                                        (_hd231939231979_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231940231976_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231939231979_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231939231979_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231938231981_))
                                                (let ((_e231943231984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231938231981_))))
                                                  (let ((_tl231941231989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231943231984_)))
                                                        (_hd231942231987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231943231984_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231941231989_))
                                                        (___kont239880239881_
                                                         _tl231935231973_
                                                         _hd231942231987_)
                                                        (___kont239882239883_))))
                                                (___kont239882239883_))
                                            (___kont239882239883_))
                                        (___kont239882239883_))))
                                (___kont239882239883_))))
                        (___kont239882239883_))))
                (___kont239882239883_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx231874_)
        (let* ((_g231876231889_
                (lambda (_g231877231886_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g231877231886_))))
               (_g231875231922_
                (lambda (_g231877231892_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g231877231892_))
                      (let ((_e231881231894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g231877231892_))))
                        (let ((_hd231880231897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231881231894_)))
                              (_tl231879231899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231881231894_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231879231899_))
                              (let ((_e231884231902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231879231899_))))
                                (let ((_hd231883231905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231884231902_)))
                                      (_tl231882231907_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231884231902_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231882231907_))
                                      ((lambda (_L231910_)
                                         (let ((__tmp241293
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L231910_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp241293)))
                                       _hd231883231905_)
                                      (let ()
                                        (declare (not safe))
                                        (_g231876231889_ _g231877231892_)))))
                              (let ()
                                (declare (not safe))
                                (_g231876231889_ _g231877231892_)))))
                      (let ()
                        (declare (not safe))
                        (_g231876231889_ _g231877231892_))))))
          (declare (not safe))
          (_g231875231922_ _stx231874_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form231108_)
        (let* ((___stx239916239917_ _form231108_)
               (_g231113231270_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx239916239917_)))))
          (let ((___kont239918239919_
                 (lambda (_L231794_ _L231795_ _L231796_) '#t))
                (___kont239924239925_
                 (lambda (_L231582_
                          _L231583_
                          _L231584_
                          _L231585_
                          _L231586_
                          _L231587_)
                   '#t))
                (___kont239930239931_
                 (lambda (_L231378_ _L231379_ _L231380_ _L231381_) '#t))
                (___kont239932239933_ (lambda () '#f)))
            (let* ((___match240057240058_
                    (lambda (_e231232231282_
                             _hd231231231285_
                             _tl231230231287_
                             _e231235231290_
                             _hd231234231293_
                             _tl231233231295_
                             _e231238231298_
                             _hd231237231301_
                             _tl231236231303_
                             _e231241231306_
                             _hd231240231309_
                             _tl231239231311_
                             _e231244231314_
                             _hd231243231317_
                             _tl231242231319_
                             _e231247231322_
                             _hd231246231325_
                             _tl231245231327_
                             _e231250231330_
                             _hd231249231333_
                             _tl231248231335_
                             _e231253231338_
                             _hd231252231341_
                             _tl231251231343_
                             _e231256231346_
                             _hd231255231349_
                             _tl231254231351_
                             _e231259231354_
                             _hd231258231357_
                             _tl231257231359_
                             _e231262231362_
                             _hd231261231365_
                             _tl231260231367_
                             _e231265231370_
                             _hd231264231373_
                             _tl231263231375_)
                      (let ((_L231378_ _hd231264231373_)
                            (_L231379_ _hd231255231349_)
                            (_L231380_ _hd231246231325_)
                            (_L231381_ _hd231231231285_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L231381_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L231380_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L231381_ _L231378_))
                                 (let ((__tmp241294
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L231379_
                                           _L231381_))))
                                   (declare (not safe))
                                   (not __tmp241294)))
                            (___kont239930239931_
                             _L231378_
                             _L231379_
                             _L231380_
                             _L231381_)
                            (___kont239932239933_)))))
                   (___match240029240030_
                    (lambda (_e231232231282_
                             _hd231231231285_
                             _tl231230231287_
                             _e231235231290_
                             _hd231234231293_
                             _tl231233231295_
                             _e231238231298_
                             _hd231237231301_
                             _tl231236231303_
                             _e231241231306_
                             _hd231240231309_
                             _tl231239231311_
                             _e231244231314_
                             _hd231243231317_
                             _tl231242231319_
                             _e231247231322_
                             _hd231246231325_
                             _tl231245231327_
                             _e231250231330_
                             _hd231249231333_
                             _tl231248231335_
                             _e231253231338_
                             _hd231252231341_
                             _tl231251231343_
                             _e231256231346_
                             _hd231255231349_
                             _tl231254231351_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl231248231335_))
                          (let ((_e231259231354_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl231248231335_))))
                            (let ((_tl231257231359_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e231259231354_)))
                                  (_hd231258231357_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e231259231354_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd231258231357_))
                                  (let ((_e231262231362_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd231258231357_))))
                                    (let ((_tl231260231367_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231262231362_)))
                                          (_hd231261231365_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231262231362_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd231261231365_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd231261231365_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231260231367_))
                                                  (let ((_e231265231370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231260231367_))))
                                                    (let ((_tl231263231375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231265231370_)))
                                                          (_hd231264231373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231265231370_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl231263231375_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl231257231359_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl231233231295_))
                          (___match240057240058_
                           _e231232231282_
                           _hd231231231285_
                           _tl231230231287_
                           _e231235231290_
                           _hd231234231293_
                           _tl231233231295_
                           _e231238231298_
                           _hd231237231301_
                           _tl231236231303_
                           _e231241231306_
                           _hd231240231309_
                           _tl231239231311_
                           _e231244231314_
                           _hd231243231317_
                           _tl231242231319_
                           _e231247231322_
                           _hd231246231325_
                           _tl231245231327_
                           _e231250231330_
                           _hd231249231333_
                           _tl231248231335_
                           _e231253231338_
                           _hd231252231341_
                           _tl231251231343_
                           _e231256231346_
                           _hd231255231349_
                           _tl231254231351_
                           _e231259231354_
                           _hd231258231357_
                           _tl231257231359_
                           _e231262231362_
                           _hd231261231365_
                           _tl231260231367_
                           _e231265231370_
                           _hd231264231373_
                           _tl231263231375_)
                          (___kont239932239933_))
                      (___kont239932239933_))
                  (___kont239932239933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239932239933_))
                                              (___kont239932239933_))
                                          (___kont239932239933_))))
                                  (___kont239932239933_))))
                          (___kont239932239933_))))
                   (___match239959239960_
                    (lambda (_e231168231422_
                             _hd231167231425_
                             _tl231166231427_
                             ___splice239926239927_
                             _target231169231430_
                             _tl231171231432_)
                      (letrec ((_loop231172231435_
                                (lambda (_hd231170231438_ _arg231176231440_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231170231438_))
                                      (let ((_e231173231443_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231170231438_))))
                                        (let ((_lp-tl231175231448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231173231443_)))
                                              (_lp-hd231174231446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231173231443_))))
                                          (let ((__tmp241309
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd231174231446_
                                                         _arg231176231440_))))
                                            (declare (not safe))
                                            (_loop231172231435_
                                             _lp-tl231175231448_
                                             __tmp241309))))
                                      (let ((_arg231177231451_
                                             (reverse _arg231176231440_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231166231427_))
                                            (let ((_e231180231454_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231166231427_))))
                                              (let ((_tl231178231459_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231180231454_)))
                                                    (_hd231179231457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231180231454_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231179231457_))
                                                    (let ((_e231183231462_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231179231457_))))
                                                      (let ((_tl231181231467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231183231462_)))
                    (_hd231182231465_
                     (let () (declare (not safe)) (##car _e231183231462_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231182231465_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231182231465_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231181231467_))
                            (let ((_e231186231470_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231181231467_))))
                              (let ((_tl231184231475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231186231470_)))
                                    (_hd231185231473_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231186231470_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231185231473_))
                                    (let ((_e231189231478_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231185231473_))))
                                      (let ((_tl231187231483_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231189231478_)))
                                            (_hd231188231481_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231189231478_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231188231481_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231188231481_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231187231483_))
                                                    (let ((_e231192231486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231187231483_))))
                                                      (let ((_tl231190231491_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231192231486_)))
                    (_hd231191231489_
                     (let () (declare (not safe)) (##car _e231192231486_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231190231491_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl231184231475_))
                        (let ((_e231195231494_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl231184231475_))))
                          (let ((_tl231193231499_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e231195231494_)))
                                (_hd231194231497_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e231195231494_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd231194231497_))
                                (let ((_e231198231502_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd231194231497_))))
                                  (let ((_tl231196231507_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231198231502_)))
                                        (_hd231197231505_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231198231502_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd231197231505_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd231197231505_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl231196231507_))
                                                (let ((_e231201231510_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl231196231507_))))
                                                  (let ((_tl231199231515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231201231510_)))
                                                        (_hd231200231513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231201231510_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl231199231515_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl231193231499_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl231193231499_))
                              '1)
                        (let ((___splice239928239929_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl231193231499_
                                  '1))))
                          (let ((_tl231204231520_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239928239929_ '1)))
                                (_target231202231518_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239928239929_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231204231520_))
                                (let ((_e231213231523_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231204231520_))))
                                  (let ((_tl231211231528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231213231523_)))
                                        (_hd231212231526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231213231523_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd231212231526_))
                                        (let ((_e231216231531_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd231212231526_))))
                                          (let ((_tl231214231536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e231216231531_)))
                                                (_hd231215231534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e231216231531_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd231215231534_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd231215231534_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl231214231536_))
                                                        (let ((_e231219231539_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl231214231536_))))
                  (let ((_tl231217231544_
                         (let () (declare (not safe)) (##cdr _e231219231539_)))
                        (_hd231218231542_
                         (let ()
                           (declare (not safe))
                           (##car _e231219231539_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl231217231544_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl231211231528_))
                            (letrec ((_loop231205231547_
                                      (lambda (_hd231203231550_
                                               _xarg231209231552_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd231203231550_))
                                            (let ((_e231206231555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd231203231550_))))
                                              (let ((_lp-tl231208231560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231206231555_)))
                                                    (_lp-hd231207231558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231206231555_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd231207231558_))
                                                    (let ((_e231222231563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd231207231558_))))
                                                      (let ((_tl231220231568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231222231563_)))
                    (_hd231221231566_
                     (let () (declare (not safe)) (##car _e231222231563_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231221231566_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd231221231566_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231220231568_))
                            (let ((_e231225231571_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231220231568_))))
                              (let ((_tl231223231576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231225231571_)))
                                    (_hd231224231574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231225231571_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl231223231576_))
                                    (let ((__tmp241308
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd231224231574_
                                                   _xarg231209231552_))))
                                      (declare (not safe))
                                      (_loop231205231547_
                                       _lp-tl231208231560_
                                       __tmp241308))
                                    (___match240029240030_
                                     _e231168231422_
                                     _hd231167231425_
                                     _tl231166231427_
                                     _e231180231454_
                                     _hd231179231457_
                                     _tl231178231459_
                                     _e231183231462_
                                     _hd231182231465_
                                     _tl231181231467_
                                     _e231186231470_
                                     _hd231185231473_
                                     _tl231184231475_
                                     _e231189231478_
                                     _hd231188231481_
                                     _tl231187231483_
                                     _e231192231486_
                                     _hd231191231489_
                                     _tl231190231491_
                                     _e231195231494_
                                     _hd231194231497_
                                     _tl231193231499_
                                     _e231198231502_
                                     _hd231197231505_
                                     _tl231196231507_
                                     _e231201231510_
                                     _hd231200231513_
                                     _tl231199231515_))))
                            (___match240029240030_
                             _e231168231422_
                             _hd231167231425_
                             _tl231166231427_
                             _e231180231454_
                             _hd231179231457_
                             _tl231178231459_
                             _e231183231462_
                             _hd231182231465_
                             _tl231181231467_
                             _e231186231470_
                             _hd231185231473_
                             _tl231184231475_
                             _e231189231478_
                             _hd231188231481_
                             _tl231187231483_
                             _e231192231486_
                             _hd231191231489_
                             _tl231190231491_
                             _e231195231494_
                             _hd231194231497_
                             _tl231193231499_
                             _e231198231502_
                             _hd231197231505_
                             _tl231196231507_
                             _e231201231510_
                             _hd231200231513_
                             _tl231199231515_))
                        (___match240029240030_
                         _e231168231422_
                         _hd231167231425_
                         _tl231166231427_
                         _e231180231454_
                         _hd231179231457_
                         _tl231178231459_
                         _e231183231462_
                         _hd231182231465_
                         _tl231181231467_
                         _e231186231470_
                         _hd231185231473_
                         _tl231184231475_
                         _e231189231478_
                         _hd231188231481_
                         _tl231187231483_
                         _e231192231486_
                         _hd231191231489_
                         _tl231190231491_
                         _e231195231494_
                         _hd231194231497_
                         _tl231193231499_
                         _e231198231502_
                         _hd231197231505_
                         _tl231196231507_
                         _e231201231510_
                         _hd231200231513_
                         _tl231199231515_))
                    (___match240029240030_
                     _e231168231422_
                     _hd231167231425_
                     _tl231166231427_
                     _e231180231454_
                     _hd231179231457_
                     _tl231178231459_
                     _e231183231462_
                     _hd231182231465_
                     _tl231181231467_
                     _e231186231470_
                     _hd231185231473_
                     _tl231184231475_
                     _e231189231478_
                     _hd231188231481_
                     _tl231187231483_
                     _e231192231486_
                     _hd231191231489_
                     _tl231190231491_
                     _e231195231494_
                     _hd231194231497_
                     _tl231193231499_
                     _e231198231502_
                     _hd231197231505_
                     _tl231196231507_
                     _e231201231510_
                     _hd231200231513_
                     _tl231199231515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240029240030_
                                                     _e231168231422_
                                                     _hd231167231425_
                                                     _tl231166231427_
                                                     _e231180231454_
                                                     _hd231179231457_
                                                     _tl231178231459_
                                                     _e231183231462_
                                                     _hd231182231465_
                                                     _tl231181231467_
                                                     _e231186231470_
                                                     _hd231185231473_
                                                     _tl231184231475_
                                                     _e231189231478_
                                                     _hd231188231481_
                                                     _tl231187231483_
                                                     _e231192231486_
                                                     _hd231191231489_
                                                     _tl231190231491_
                                                     _e231195231494_
                                                     _hd231194231497_
                                                     _tl231193231499_
                                                     _e231198231502_
                                                     _hd231197231505_
                                                     _tl231196231507_
                                                     _e231201231510_
                                                     _hd231200231513_
                                                     _tl231199231515_))))
                                            (let ((_xarg231210231579_
                                                   (reverse _xarg231209231552_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl231178231459_))
                                                  (let ((_L231582_
                                                         _hd231218231542_)
                                                        (_L231583_
                                                         _xarg231210231579_)
                                                        (_L231584_
                                                         _hd231200231513_)
                                                        (_L231585_
                                                         _hd231191231489_)
                                                        (_L231586_
                                                         _tl231171231432_)
                                                        (_L231587_
                                                         _arg231177231451_))
                                                    (if (and (let ((__tmp241306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241307
                                   (lambda (_g231630231633_ _g231631231635_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231630231633_
                                             _g231631231635_)))))
                              (declare (not safe))
                              (foldr1 __tmp241307 '() _L231587_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp241306))
                     (let () (declare (not safe)) (gx#identifier? _L231586_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L231585_ 'apply))
                     (fx= (length (let ((__tmp241304
                                         (lambda (_g231637231640_
                                                  _g231638231642_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231637231640_
                                                   _g231638231642_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241304 '() _L231587_)))
                          (length (let ((__tmp241305
                                         (lambda (_g231644231647_
                                                  _g231645231649_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g231644231647_
                                                   _g231645231649_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp241305 '() _L231583_))))
                     (let ((__tmp241302
                            (let ((__tmp241303
                                   (lambda (_g231651231654_ _g231652231656_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231651231654_
                                             _g231652231656_)))))
                              (declare (not safe))
                              (foldr1 __tmp241303 '() _L231587_)))
                           (__tmp241300
                            (let ((__tmp241301
                                   (lambda (_g231658231661_ _g231659231663_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g231658231661_
                                             _g231659231663_)))))
                              (declare (not safe))
                              (foldr1 __tmp241301 '() _L231583_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp241302 __tmp241300))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L231586_ _L231582_))
                     (let ((__tmp241295
                            (let ((__tmp241299
                                   (lambda (_g231665231667_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g231665231667_
                                        _L231584_))))
                                  (__tmp241296
                                   (let ((__tmp241298
                                          (lambda (_g231669231672_
                                                   _g231670231674_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g231669231672_
                                                    _g231670231674_))))
                                         (__tmp241297
                                          (let ()
                                            (declare (not safe))
                                            (cons _L231586_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp241298
                                             __tmp241297
                                             _L231587_))))
                              (declare (not safe))
                              (find __tmp241299 __tmp241296))))
                       (declare (not safe))
                       (not __tmp241295)))
                (___kont239924239925_
                 _L231582_
                 _L231583_
                 _L231584_
                 _L231585_
                 _L231586_
                 _L231587_)
                (___match240029240030_
                 _e231168231422_
                 _hd231167231425_
                 _tl231166231427_
                 _e231180231454_
                 _hd231179231457_
                 _tl231178231459_
                 _e231183231462_
                 _hd231182231465_
                 _tl231181231467_
                 _e231186231470_
                 _hd231185231473_
                 _tl231184231475_
                 _e231189231478_
                 _hd231188231481_
                 _tl231187231483_
                 _e231192231486_
                 _hd231191231489_
                 _tl231190231491_
                 _e231195231494_
                 _hd231194231497_
                 _tl231193231499_
                 _e231198231502_
                 _hd231197231505_
                 _tl231196231507_
                 _e231201231510_
                 _hd231200231513_
                 _tl231199231515_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match240029240030_
                                                   _e231168231422_
                                                   _hd231167231425_
                                                   _tl231166231427_
                                                   _e231180231454_
                                                   _hd231179231457_
                                                   _tl231178231459_
                                                   _e231183231462_
                                                   _hd231182231465_
                                                   _tl231181231467_
                                                   _e231186231470_
                                                   _hd231185231473_
                                                   _tl231184231475_
                                                   _e231189231478_
                                                   _hd231188231481_
                                                   _tl231187231483_
                                                   _e231192231486_
                                                   _hd231191231489_
                                                   _tl231190231491_
                                                   _e231195231494_
                                                   _hd231194231497_
                                                   _tl231193231499_
                                                   _e231198231502_
                                                   _hd231197231505_
                                                   _tl231196231507_
                                                   _e231201231510_
                                                   _hd231200231513_
                                                   _tl231199231515_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop231205231547_ _target231202231518_ '())))
                            (___match240029240030_
                             _e231168231422_
                             _hd231167231425_
                             _tl231166231427_
                             _e231180231454_
                             _hd231179231457_
                             _tl231178231459_
                             _e231183231462_
                             _hd231182231465_
                             _tl231181231467_
                             _e231186231470_
                             _hd231185231473_
                             _tl231184231475_
                             _e231189231478_
                             _hd231188231481_
                             _tl231187231483_
                             _e231192231486_
                             _hd231191231489_
                             _tl231190231491_
                             _e231195231494_
                             _hd231194231497_
                             _tl231193231499_
                             _e231198231502_
                             _hd231197231505_
                             _tl231196231507_
                             _e231201231510_
                             _hd231200231513_
                             _tl231199231515_))
                        (___match240029240030_
                         _e231168231422_
                         _hd231167231425_
                         _tl231166231427_
                         _e231180231454_
                         _hd231179231457_
                         _tl231178231459_
                         _e231183231462_
                         _hd231182231465_
                         _tl231181231467_
                         _e231186231470_
                         _hd231185231473_
                         _tl231184231475_
                         _e231189231478_
                         _hd231188231481_
                         _tl231187231483_
                         _e231192231486_
                         _hd231191231489_
                         _tl231190231491_
                         _e231195231494_
                         _hd231194231497_
                         _tl231193231499_
                         _e231198231502_
                         _hd231197231505_
                         _tl231196231507_
                         _e231201231510_
                         _hd231200231513_
                         _tl231199231515_))))
                (___match240029240030_
                 _e231168231422_
                 _hd231167231425_
                 _tl231166231427_
                 _e231180231454_
                 _hd231179231457_
                 _tl231178231459_
                 _e231183231462_
                 _hd231182231465_
                 _tl231181231467_
                 _e231186231470_
                 _hd231185231473_
                 _tl231184231475_
                 _e231189231478_
                 _hd231188231481_
                 _tl231187231483_
                 _e231192231486_
                 _hd231191231489_
                 _tl231190231491_
                 _e231195231494_
                 _hd231194231497_
                 _tl231193231499_
                 _e231198231502_
                 _hd231197231505_
                 _tl231196231507_
                 _e231201231510_
                 _hd231200231513_
                 _tl231199231515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240029240030_
                                                     _e231168231422_
                                                     _hd231167231425_
                                                     _tl231166231427_
                                                     _e231180231454_
                                                     _hd231179231457_
                                                     _tl231178231459_
                                                     _e231183231462_
                                                     _hd231182231465_
                                                     _tl231181231467_
                                                     _e231186231470_
                                                     _hd231185231473_
                                                     _tl231184231475_
                                                     _e231189231478_
                                                     _hd231188231481_
                                                     _tl231187231483_
                                                     _e231192231486_
                                                     _hd231191231489_
                                                     _tl231190231491_
                                                     _e231195231494_
                                                     _hd231194231497_
                                                     _tl231193231499_
                                                     _e231198231502_
                                                     _hd231197231505_
                                                     _tl231196231507_
                                                     _e231201231510_
                                                     _hd231200231513_
                                                     _tl231199231515_))
                                                (___match240029240030_
                                                 _e231168231422_
                                                 _hd231167231425_
                                                 _tl231166231427_
                                                 _e231180231454_
                                                 _hd231179231457_
                                                 _tl231178231459_
                                                 _e231183231462_
                                                 _hd231182231465_
                                                 _tl231181231467_
                                                 _e231186231470_
                                                 _hd231185231473_
                                                 _tl231184231475_
                                                 _e231189231478_
                                                 _hd231188231481_
                                                 _tl231187231483_
                                                 _e231192231486_
                                                 _hd231191231489_
                                                 _tl231190231491_
                                                 _e231195231494_
                                                 _hd231194231497_
                                                 _tl231193231499_
                                                 _e231198231502_
                                                 _hd231197231505_
                                                 _tl231196231507_
                                                 _e231201231510_
                                                 _hd231200231513_
                                                 _tl231199231515_))))
                                        (___match240029240030_
                                         _e231168231422_
                                         _hd231167231425_
                                         _tl231166231427_
                                         _e231180231454_
                                         _hd231179231457_
                                         _tl231178231459_
                                         _e231183231462_
                                         _hd231182231465_
                                         _tl231181231467_
                                         _e231186231470_
                                         _hd231185231473_
                                         _tl231184231475_
                                         _e231189231478_
                                         _hd231188231481_
                                         _tl231187231483_
                                         _e231192231486_
                                         _hd231191231489_
                                         _tl231190231491_
                                         _e231195231494_
                                         _hd231194231497_
                                         _tl231193231499_
                                         _e231198231502_
                                         _hd231197231505_
                                         _tl231196231507_
                                         _e231201231510_
                                         _hd231200231513_
                                         _tl231199231515_))))
                                (___match240029240030_
                                 _e231168231422_
                                 _hd231167231425_
                                 _tl231166231427_
                                 _e231180231454_
                                 _hd231179231457_
                                 _tl231178231459_
                                 _e231183231462_
                                 _hd231182231465_
                                 _tl231181231467_
                                 _e231186231470_
                                 _hd231185231473_
                                 _tl231184231475_
                                 _e231189231478_
                                 _hd231188231481_
                                 _tl231187231483_
                                 _e231192231486_
                                 _hd231191231489_
                                 _tl231190231491_
                                 _e231195231494_
                                 _hd231194231497_
                                 _tl231193231499_
                                 _e231198231502_
                                 _hd231197231505_
                                 _tl231196231507_
                                 _e231201231510_
                                 _hd231200231513_
                                 _tl231199231515_))))
                        (___match240029240030_
                         _e231168231422_
                         _hd231167231425_
                         _tl231166231427_
                         _e231180231454_
                         _hd231179231457_
                         _tl231178231459_
                         _e231183231462_
                         _hd231182231465_
                         _tl231181231467_
                         _e231186231470_
                         _hd231185231473_
                         _tl231184231475_
                         _e231189231478_
                         _hd231188231481_
                         _tl231187231483_
                         _e231192231486_
                         _hd231191231489_
                         _tl231190231491_
                         _e231195231494_
                         _hd231194231497_
                         _tl231193231499_
                         _e231198231502_
                         _hd231197231505_
                         _tl231196231507_
                         _e231201231510_
                         _hd231200231513_
                         _tl231199231515_))
                    (___match240029240030_
                     _e231168231422_
                     _hd231167231425_
                     _tl231166231427_
                     _e231180231454_
                     _hd231179231457_
                     _tl231178231459_
                     _e231183231462_
                     _hd231182231465_
                     _tl231181231467_
                     _e231186231470_
                     _hd231185231473_
                     _tl231184231475_
                     _e231189231478_
                     _hd231188231481_
                     _tl231187231483_
                     _e231192231486_
                     _hd231191231489_
                     _tl231190231491_
                     _e231195231494_
                     _hd231194231497_
                     _tl231193231499_
                     _e231198231502_
                     _hd231197231505_
                     _tl231196231507_
                     _e231201231510_
                     _hd231200231513_
                     _tl231199231515_))
                (___kont239932239933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont239932239933_))
                                            (___kont239932239933_))
                                        (___kont239932239933_))))
                                (___kont239932239933_))))
                        (___kont239932239933_))
                    (___kont239932239933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239932239933_))
                                                (___kont239932239933_))
                                            (___kont239932239933_))))
                                    (___kont239932239933_))))
                            (___kont239932239933_))
                        (___kont239932239933_))
                    (___kont239932239933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont239932239933_))))
                                            (___kont239932239933_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231172231435_ _target231169231430_ '())))))
                   (___match239947239948_
                    (lambda (_e231120231682_
                             _hd231119231685_
                             _tl231118231687_
                             ___splice239920239921_
                             _target231121231690_
                             _tl231123231692_)
                      (letrec ((_loop231124231695_
                                (lambda (_hd231122231698_ _arg231128231700_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231122231698_))
                                      (let ((_e231125231703_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231122231698_))))
                                        (let ((_lp-tl231127231708_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231125231703_)))
                                              (_lp-hd231126231706_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231125231703_))))
                                          (let ((__tmp241323
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd231126231706_
                                                         _arg231128231700_))))
                                            (declare (not safe))
                                            (_loop231124231695_
                                             _lp-tl231127231708_
                                             __tmp241323))))
                                      (let ((_arg231129231711_
                                             (reverse _arg231128231700_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl231118231687_))
                                            (let ((_e231132231714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl231118231687_))))
                                              (let ((_tl231130231719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e231132231714_)))
                                                    (_hd231131231717_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e231132231714_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd231131231717_))
                                                    (let ((_e231135231722_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd231131231717_))))
                                                      (let ((_tl231133231727_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231135231722_)))
                    (_hd231134231725_
                     (let () (declare (not safe)) (##car _e231135231722_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd231134231725_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd231134231725_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl231133231727_))
                            (let ((_e231138231730_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl231133231727_))))
                              (let ((_tl231136231735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e231138231730_)))
                                    (_hd231137231733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e231138231730_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd231137231733_))
                                    (let ((_e231141231738_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd231137231733_))))
                                      (let ((_tl231139231743_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e231141231738_)))
                                            (_hd231140231741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e231141231738_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd231140231741_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd231140231741_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl231139231743_))
                                                    (let ((_e231144231746_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl231139231743_))))
                                                      (let ((_tl231142231751_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e231144231746_)))
                    (_hd231143231749_
                     (let () (declare (not safe)) (##car _e231144231746_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl231142231751_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl231136231735_))
                        (let ((___splice239922239923_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl231136231735_
                                  '0))))
                          (let ((_tl231147231756_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239922239923_ '1)))
                                (_target231145231754_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice239922239923_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl231147231756_))
                                (letrec ((_loop231148231759_
                                          (lambda (_hd231146231762_
                                                   _xarg231152231764_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd231146231762_))
                                                (let ((_e231149231767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd231146231762_))))
                                                  (let ((_lp-tl231151231772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e231149231767_)))
                                                        (_lp-hd231150231770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e231149231767_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd231150231770_))
                                                        (let ((_e231156231775_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd231150231770_))))
                  (let ((_tl231154231780_
                         (let () (declare (not safe)) (##cdr _e231156231775_)))
                        (_hd231155231778_
                         (let ()
                           (declare (not safe))
                           (##car _e231156231775_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd231155231778_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd231155231778_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl231154231780_))
                                (let ((_e231159231783_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl231154231780_))))
                                  (let ((_tl231157231788_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e231159231783_)))
                                        (_hd231158231786_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e231159231783_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl231157231788_))
                                        (let ((__tmp241322
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd231158231786_
                                                       _xarg231152231764_))))
                                          (declare (not safe))
                                          (_loop231148231759_
                                           _lp-tl231151231772_
                                           __tmp241322))
                                        (___match239959239960_
                                         _e231120231682_
                                         _hd231119231685_
                                         _tl231118231687_
                                         ___splice239920239921_
                                         _target231121231690_
                                         _tl231123231692_))))
                                (___match239959239960_
                                 _e231120231682_
                                 _hd231119231685_
                                 _tl231118231687_
                                 ___splice239920239921_
                                 _target231121231690_
                                 _tl231123231692_))
                            (___match239959239960_
                             _e231120231682_
                             _hd231119231685_
                             _tl231118231687_
                             ___splice239920239921_
                             _target231121231690_
                             _tl231123231692_))
                        (___match239959239960_
                         _e231120231682_
                         _hd231119231685_
                         _tl231118231687_
                         ___splice239920239921_
                         _target231121231690_
                         _tl231123231692_))))
                (___match239959239960_
                 _e231120231682_
                 _hd231119231685_
                 _tl231118231687_
                 ___splice239920239921_
                 _target231121231690_
                 _tl231123231692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg231153231791_
                                                       (reverse _xarg231152231764_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl231130231719_))
                                                      (let ((_L231794_
                                                             _xarg231153231791_)
                                                            (_L231795_
                                                             _hd231143231749_)
                                                            (_L231796_
                                                             _arg231129231711_))
                                                        (if (and (let ((__tmp241320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp241321
                                       (lambda (_g231824231827_
                                                _g231825231829_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231824231827_
                                                 _g231825231829_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241321 '() _L231796_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp241320))
                         (fx= (length (let ((__tmp241318
                                             (lambda (_g231831231834_
                                                      _g231832231836_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231831231834_
                                                       _g231832231836_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241318 '() _L231796_)))
                              (length (let ((__tmp241319
                                             (lambda (_g231838231841_
                                                      _g231839231843_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g231838231841_
                                                       _g231839231843_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp241319 '() _L231794_))))
                         (let ((__tmp241316
                                (let ((__tmp241317
                                       (lambda (_g231845231848_
                                                _g231846231850_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231845231848_
                                                 _g231846231850_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241317 '() _L231796_)))
                               (__tmp241314
                                (let ((__tmp241315
                                       (lambda (_g231852231855_
                                                _g231853231857_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g231852231855_
                                                 _g231853231857_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp241315 '() _L231794_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp241316
                                    __tmp241314))
                         (let ((__tmp241310
                                (let ((__tmp241313
                                       (lambda (_g231859231861_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g231859231861_
                                            _L231795_))))
                                      (__tmp241311
                                       (let ((__tmp241312
                                              (lambda (_g231863231866_
                                                       _g231864231868_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g231863231866_
                                                        _g231864231868_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp241312 '() _L231796_))))
                                  (declare (not safe))
                                  (find __tmp241313 __tmp241311))))
                           (declare (not safe))
                           (not __tmp241310)))
                    (___kont239918239919_ _L231794_ _L231795_ _L231796_)
                    (___match239959239960_
                     _e231120231682_
                     _hd231119231685_
                     _tl231118231687_
                     ___splice239920239921_
                     _target231121231690_
                     _tl231123231692_)))
              (___match239959239960_
               _e231120231682_
               _hd231119231685_
               _tl231118231687_
               ___splice239920239921_
               _target231121231690_
               _tl231123231692_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop231148231759_
                                     _target231145231754_
                                     '())))
                                (___match239959239960_
                                 _e231120231682_
                                 _hd231119231685_
                                 _tl231118231687_
                                 ___splice239920239921_
                                 _target231121231690_
                                 _tl231123231692_))))
                        (___match239959239960_
                         _e231120231682_
                         _hd231119231685_
                         _tl231118231687_
                         ___splice239920239921_
                         _target231121231690_
                         _tl231123231692_))
                    (___match239959239960_
                     _e231120231682_
                     _hd231119231685_
                     _tl231118231687_
                     ___splice239920239921_
                     _target231121231690_
                     _tl231123231692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239959239960_
                                                     _e231120231682_
                                                     _hd231119231685_
                                                     _tl231118231687_
                                                     ___splice239920239921_
                                                     _target231121231690_
                                                     _tl231123231692_))
                                                (___match239959239960_
                                                 _e231120231682_
                                                 _hd231119231685_
                                                 _tl231118231687_
                                                 ___splice239920239921_
                                                 _target231121231690_
                                                 _tl231123231692_))
                                            (___match239959239960_
                                             _e231120231682_
                                             _hd231119231685_
                                             _tl231118231687_
                                             ___splice239920239921_
                                             _target231121231690_
                                             _tl231123231692_))))
                                    (___match239959239960_
                                     _e231120231682_
                                     _hd231119231685_
                                     _tl231118231687_
                                     ___splice239920239921_
                                     _target231121231690_
                                     _tl231123231692_))))
                            (___match239959239960_
                             _e231120231682_
                             _hd231119231685_
                             _tl231118231687_
                             ___splice239920239921_
                             _target231121231690_
                             _tl231123231692_))
                        (___match239959239960_
                         _e231120231682_
                         _hd231119231685_
                         _tl231118231687_
                         ___splice239920239921_
                         _target231121231690_
                         _tl231123231692_))
                    (___match239959239960_
                     _e231120231682_
                     _hd231119231685_
                     _tl231118231687_
                     ___splice239920239921_
                     _target231121231690_
                     _tl231123231692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match239959239960_
                                                     _e231120231682_
                                                     _hd231119231685_
                                                     _tl231118231687_
                                                     ___splice239920239921_
                                                     _target231121231690_
                                                     _tl231123231692_))))
                                            (___match239959239960_
                                             _e231120231682_
                                             _hd231119231685_
                                             _tl231118231687_
                                             ___splice239920239921_
                                             _target231121231690_
                                             _tl231123231692_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop231124231695_ _target231121231690_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx239916239917_))
                  (let ((_e231120231682_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx239916239917_))))
                    (let ((_tl231118231687_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231120231682_)))
                          (_hd231119231685_
                           (let ()
                             (declare (not safe))
                             (##car _e231120231682_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd231119231685_))
                          (let ((___splice239920239921_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd231119231685_
                                    '0))))
                            (let ((_tl231123231692_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice239920239921_ '1)))
                                  (_target231121231690_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice239920239921_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl231123231692_))
                                  (___match239947239948_
                                   _e231120231682_
                                   _hd231119231685_
                                   _tl231118231687_
                                   ___splice239920239921_
                                   _target231121231690_
                                   _tl231123231692_)
                                  (___match239959239960_
                                   _e231120231682_
                                   _hd231119231685_
                                   _tl231118231687_
                                   ___splice239920239921_
                                   _target231121231690_
                                   _tl231123231692_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231118231687_))
                              (let ((_e231235231290_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231118231687_))))
                                (let ((_tl231233231295_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231235231290_)))
                                      (_hd231234231293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231235231290_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd231234231293_))
                                      (let ((_e231238231298_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd231234231293_))))
                                        (let ((_tl231236231303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231238231298_)))
                                              (_hd231237231301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231238231298_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd231237231301_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd231237231301_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl231236231303_))
                                                      (let ((_e231241231306_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl231236231303_))))
                (let ((_tl231239231311_
                       (let () (declare (not safe)) (##cdr _e231241231306_)))
                      (_hd231240231309_
                       (let () (declare (not safe)) (##car _e231241231306_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd231240231309_))
                      (let ((_e231244231314_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd231240231309_))))
                        (let ((_tl231242231319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e231244231314_)))
                              (_hd231243231317_
                               (let ()
                                 (declare (not safe))
                                 (##car _e231244231314_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd231243231317_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd231243231317_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl231242231319_))
                                      (let ((_e231247231322_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl231242231319_))))
                                        (let ((_tl231245231327_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e231247231322_)))
                                              (_hd231246231325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e231247231322_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231245231327_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl231239231311_))
                                                  (let ((_e231250231330_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl231239231311_))))
                                                    (let ((_tl231248231335_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e231250231330_)))
                                                          (_hd231249231333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e231250231330_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd231249231333_))
                                                          (let ((_e231253231338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd231249231333_))))
                    (let ((_tl231251231343_
                           (let ()
                             (declare (not safe))
                             (##cdr _e231253231338_)))
                          (_hd231252231341_
                           (let ()
                             (declare (not safe))
                             (##car _e231253231338_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd231252231341_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd231252231341_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl231251231343_))
                                  (let ((_e231256231346_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl231251231343_))))
                                    (let ((_tl231254231351_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e231256231346_)))
                                          (_hd231255231349_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e231256231346_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231254231351_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl231248231335_))
                                              (let ((_e231259231354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl231248231335_))))
                                                (let ((_tl231257231359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e231259231354_)))
                                                      (_hd231258231357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e231259231354_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd231258231357_))
                                                      (let ((_e231262231362_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd231258231357_))))
                (let ((_tl231260231367_
                       (let () (declare (not safe)) (##cdr _e231262231362_)))
                      (_hd231261231365_
                       (let () (declare (not safe)) (##car _e231262231362_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd231261231365_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd231261231365_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl231260231367_))
                              (let ((_e231265231370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl231260231367_))))
                                (let ((_tl231263231375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e231265231370_)))
                                      (_hd231264231373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e231265231370_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl231263231375_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl231257231359_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl231233231295_))
                                              (___match240057240058_
                                               _e231120231682_
                                               _hd231119231685_
                                               _tl231118231687_
                                               _e231235231290_
                                               _hd231234231293_
                                               _tl231233231295_
                                               _e231238231298_
                                               _hd231237231301_
                                               _tl231236231303_
                                               _e231241231306_
                                               _hd231240231309_
                                               _tl231239231311_
                                               _e231244231314_
                                               _hd231243231317_
                                               _tl231242231319_
                                               _e231247231322_
                                               _hd231246231325_
                                               _tl231245231327_
                                               _e231250231330_
                                               _hd231249231333_
                                               _tl231248231335_
                                               _e231253231338_
                                               _hd231252231341_
                                               _tl231251231343_
                                               _e231256231346_
                                               _hd231255231349_
                                               _tl231254231351_
                                               _e231259231354_
                                               _hd231258231357_
                                               _tl231257231359_
                                               _e231262231362_
                                               _hd231261231365_
                                               _tl231260231367_
                                               _e231265231370_
                                               _hd231264231373_
                                               _tl231263231375_)
                                              (___kont239932239933_))
                                          (___kont239932239933_))
                                      (___kont239932239933_))))
                              (___kont239932239933_))
                          (___kont239932239933_))
                      (___kont239932239933_))))
              (___kont239932239933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont239932239933_))
                                          (___kont239932239933_))))
                                  (___kont239932239933_))
                              (___kont239932239933_))
                          (___kont239932239933_))))
                  (___kont239932239933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239932239933_))
                                              (___kont239932239933_))))
                                      (___kont239932239933_))
                                  (___kont239932239933_))
                              (___kont239932239933_))))
                      (___kont239932239933_))))
              (___kont239932239933_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont239932239933_))
                                              (___kont239932239933_))))
                                      (___kont239932239933_))))
                              (___kont239932239933_)))))
                  (___kont239932239933_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form230576_)
        (let* ((___stx240060240061_ _form230576_)
               (_g230580230704_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240060240061_)))))
          (let ((___kont240062240063_
                 (lambda (_L231074_ _L231075_ _L231076_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L231075_))))
                (___kont240068240069_
                 (lambda (_L230922_ _L230923_ _L230924_ _L230925_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230922_))))
                (___kont240072240073_
                 (lambda (_L230789_ _L230790_ _L230791_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L230789_)))))
            (let* ((___match240169240170_
                    (lambda (_e230672230709_
                             _hd230671230712_
                             _tl230670230714_
                             _e230675230717_
                             _hd230674230720_
                             _tl230673230722_
                             _e230678230725_
                             _hd230677230728_
                             _tl230676230730_
                             _e230681230733_
                             _hd230680230736_
                             _tl230679230738_
                             _e230684230741_
                             _hd230683230744_
                             _tl230682230746_
                             _e230687230749_
                             _hd230686230752_
                             _tl230685230754_
                             _e230690230757_
                             _hd230689230760_
                             _tl230688230762_
                             _e230693230765_
                             _hd230692230768_
                             _tl230691230770_
                             _e230696230773_
                             _hd230695230776_
                             _tl230694230778_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl230688230762_))
                          (let ((_e230699230781_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl230688230762_))))
                            (let ((_tl230697230786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e230699230781_)))
                                  (_hd230698230784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e230699230781_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230697230786_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230673230722_))
                                      (___kont240072240073_
                                       _hd230695230776_
                                       _hd230686230752_
                                       _hd230671230712_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230580230704_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230580230704_)))))
                          (let () (declare (not safe)) (_g230580230704_)))))
                   (___match240099240100_
                    (lambda (_e230633230826_
                             _hd230632230829_
                             _tl230631230831_
                             ___splice240070240071_
                             _target230634230834_
                             _tl230636230836_)
                      (letrec ((_loop230637230839_
                                (lambda (_hd230635230842_ _arg230641230844_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230635230842_))
                                      (let ((_e230638230847_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230635230842_))))
                                        (let ((_lp-tl230640230852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230638230847_)))
                                              (_lp-hd230639230850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230638230847_))))
                                          (let ((__tmp241324
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230639230850_
                                                         _arg230641230844_))))
                                            (declare (not safe))
                                            (_loop230637230839_
                                             _lp-tl230640230852_
                                             __tmp241324))))
                                      (let ((_arg230642230855_
                                             (reverse _arg230641230844_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230631230831_))
                                            (let ((_e230645230858_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230631230831_))))
                                              (let ((_tl230643230863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230645230858_)))
                                                    (_hd230644230861_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230645230858_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230644230861_))
                                                    (let ((_e230648230866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230644230861_))))
                                                      (let ((_tl230646230871_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230648230866_)))
                    (_hd230647230869_
                     (let () (declare (not safe)) (##car _e230648230866_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230647230869_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230647230869_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230646230871_))
                            (let ((_e230651230874_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230646230871_))))
                              (let ((_tl230649230879_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230651230874_)))
                                    (_hd230650230877_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230651230874_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230650230877_))
                                    (let ((_e230654230882_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230650230877_))))
                                      (let ((_tl230652230887_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230654230882_)))
                                            (_hd230653230885_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230654230882_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230653230885_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230653230885_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230652230887_))
                                                    (let ((_e230657230890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230652230887_))))
                                                      (let ((_tl230655230895_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230657230890_)))
                    (_hd230656230893_
                     (let () (declare (not safe)) (##car _e230657230890_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230655230895_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl230649230879_))
                        (let ((_e230660230898_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl230649230879_))))
                          (let ((_tl230658230903_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e230660230898_)))
                                (_hd230659230901_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e230660230898_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd230659230901_))
                                (let ((_e230663230906_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd230659230901_))))
                                  (let ((_tl230661230911_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230663230906_)))
                                        (_hd230662230909_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230663230906_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd230662230909_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd230662230909_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl230661230911_))
                                                (let ((_e230666230914_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl230661230911_))))
                                                  (let ((_tl230664230919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230666230914_)))
                                                        (_hd230665230917_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230666230914_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl230664230919_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl230643230863_))
                                                            (___kont240068240069_
                                                             _hd230665230917_
                                                             _hd230656230893_
                                                             _tl230636230836_
                                                             _arg230642230855_)
                                                            (___match240169240170_
                                                             _e230633230826_
                                                             _hd230632230829_
                                                             _tl230631230831_
                                                             _e230645230858_
                                                             _hd230644230861_
                                                             _tl230643230863_
                                                             _e230648230866_
                                                             _hd230647230869_
                                                             _tl230646230871_
                                                             _e230651230874_
                                                             _hd230650230877_
                                                             _tl230649230879_
                                                             _e230654230882_
                                                             _hd230653230885_
                                                             _tl230652230887_
                                                             _e230657230890_
                                                             _hd230656230893_
                                                             _tl230655230895_
                                                             _e230660230898_
                                                             _hd230659230901_
                                                             _tl230658230903_
                                                             _e230663230906_
                                                             _hd230662230909_
                                                             _tl230661230911_
                                                             _e230666230914_
                                                             _hd230665230917_
                                                             _tl230664230919_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g230580230704_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230580230704_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230580230704_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g230580230704_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g230580230704_)))))
                        (let () (declare (not safe)) (_g230580230704_)))
                    (let () (declare (not safe)) (_g230580230704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230580230704_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g230580230704_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g230580230704_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g230580230704_)))))
                            (let () (declare (not safe)) (_g230580230704_)))
                        (let () (declare (not safe)) (_g230580230704_)))
                    (let () (declare (not safe)) (_g230580230704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g230580230704_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g230580230704_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop230637230839_ _target230634230834_ '())))))
                   (___match240087240088_
                    (lambda (_e230587230962_
                             _hd230586230965_
                             _tl230585230967_
                             ___splice240064240065_
                             _target230588230970_
                             _tl230590230972_)
                      (letrec ((_loop230591230975_
                                (lambda (_hd230589230978_ _arg230595230980_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230589230978_))
                                      (let ((_e230592230983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230589230978_))))
                                        (let ((_lp-tl230594230988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230592230983_)))
                                              (_lp-hd230593230986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230592230983_))))
                                          (let ((__tmp241326
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd230593230986_
                                                         _arg230595230980_))))
                                            (declare (not safe))
                                            (_loop230591230975_
                                             _lp-tl230594230988_
                                             __tmp241326))))
                                      (let ((_arg230596230991_
                                             (reverse _arg230595230980_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230585230967_))
                                            (let ((_e230599230994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230585230967_))))
                                              (let ((_tl230597230999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230599230994_)))
                                                    (_hd230598230997_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230599230994_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd230598230997_))
                                                    (let ((_e230602231002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd230598230997_))))
                                                      (let ((_tl230600231007_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230602231002_)))
                    (_hd230601231005_
                     (let () (declare (not safe)) (##car _e230602231002_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd230601231005_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd230601231005_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230600231007_))
                            (let ((_e230605231010_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230600231007_))))
                              (let ((_tl230603231015_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230605231010_)))
                                    (_hd230604231013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230605231010_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd230604231013_))
                                    (let ((_e230608231018_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd230604231013_))))
                                      (let ((_tl230606231023_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e230608231018_)))
                                            (_hd230607231021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e230608231018_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd230607231021_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd230607231021_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl230606231023_))
                                                    (let ((_e230611231026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl230606231023_))))
                                                      (let ((_tl230609231031_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e230611231026_)))
                    (_hd230610231029_
                     (let () (declare (not safe)) (##car _e230611231026_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl230609231031_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl230603231015_))
                        (let ((___splice240066240067_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl230603231015_
                                  '0))))
                          (let ((_tl230614231036_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice240066240067_ '1)))
                                (_target230612231034_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice240066240067_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl230614231036_))
                                (letrec ((_loop230615231039_
                                          (lambda (_hd230613231042_
                                                   _xarg230619231044_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230613231042_))
                                                (let ((_e230616231047_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230613231042_))))
                                                  (let ((_lp-tl230618231052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230616231047_)))
                                                        (_lp-hd230617231050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230616231047_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd230617231050_))
                                                        (let ((_e230623231055_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd230617231050_))))
                  (let ((_tl230621231060_
                         (let () (declare (not safe)) (##cdr _e230623231055_)))
                        (_hd230622231058_
                         (let ()
                           (declare (not safe))
                           (##car _e230623231055_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230622231058_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd230622231058_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230621231060_))
                                (let ((_e230626231063_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230621231060_))))
                                  (let ((_tl230624231068_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230626231063_)))
                                        (_hd230625231066_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230626231063_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230624231068_))
                                        (let ((__tmp241325
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd230625231066_
                                                       _xarg230619231044_))))
                                          (declare (not safe))
                                          (_loop230615231039_
                                           _lp-tl230618231052_
                                           __tmp241325))
                                        (___match240099240100_
                                         _e230587230962_
                                         _hd230586230965_
                                         _tl230585230967_
                                         ___splice240064240065_
                                         _target230588230970_
                                         _tl230590230972_))))
                                (___match240099240100_
                                 _e230587230962_
                                 _hd230586230965_
                                 _tl230585230967_
                                 ___splice240064240065_
                                 _target230588230970_
                                 _tl230590230972_))
                            (___match240099240100_
                             _e230587230962_
                             _hd230586230965_
                             _tl230585230967_
                             ___splice240064240065_
                             _target230588230970_
                             _tl230590230972_))
                        (___match240099240100_
                         _e230587230962_
                         _hd230586230965_
                         _tl230585230967_
                         ___splice240064240065_
                         _target230588230970_
                         _tl230590230972_))))
                (___match240099240100_
                 _e230587230962_
                 _hd230586230965_
                 _tl230585230967_
                 ___splice240064240065_
                 _target230588230970_
                 _tl230590230972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg230620231071_
                                                       (reverse _xarg230619231044_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230597230999_))
                                                      (___kont240062240063_
                                                       _xarg230620231071_
                                                       _hd230610231029_
                                                       _arg230596230991_)
                                                      (___match240099240100_
                                                       _e230587230962_
                                                       _hd230586230965_
                                                       _tl230585230967_
                                                       ___splice240064240065_
                                                       _target230588230970_
                                                       _tl230590230972_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop230615231039_
                                     _target230612231034_
                                     '())))
                                (___match240099240100_
                                 _e230587230962_
                                 _hd230586230965_
                                 _tl230585230967_
                                 ___splice240064240065_
                                 _target230588230970_
                                 _tl230590230972_))))
                        (___match240099240100_
                         _e230587230962_
                         _hd230586230965_
                         _tl230585230967_
                         ___splice240064240065_
                         _target230588230970_
                         _tl230590230972_))
                    (___match240099240100_
                     _e230587230962_
                     _hd230586230965_
                     _tl230585230967_
                     ___splice240064240065_
                     _target230588230970_
                     _tl230590230972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240099240100_
                                                     _e230587230962_
                                                     _hd230586230965_
                                                     _tl230585230967_
                                                     ___splice240064240065_
                                                     _target230588230970_
                                                     _tl230590230972_))
                                                (___match240099240100_
                                                 _e230587230962_
                                                 _hd230586230965_
                                                 _tl230585230967_
                                                 ___splice240064240065_
                                                 _target230588230970_
                                                 _tl230590230972_))
                                            (___match240099240100_
                                             _e230587230962_
                                             _hd230586230965_
                                             _tl230585230967_
                                             ___splice240064240065_
                                             _target230588230970_
                                             _tl230590230972_))))
                                    (___match240099240100_
                                     _e230587230962_
                                     _hd230586230965_
                                     _tl230585230967_
                                     ___splice240064240065_
                                     _target230588230970_
                                     _tl230590230972_))))
                            (___match240099240100_
                             _e230587230962_
                             _hd230586230965_
                             _tl230585230967_
                             ___splice240064240065_
                             _target230588230970_
                             _tl230590230972_))
                        (___match240099240100_
                         _e230587230962_
                         _hd230586230965_
                         _tl230585230967_
                         ___splice240064240065_
                         _target230588230970_
                         _tl230590230972_))
                    (___match240099240100_
                     _e230587230962_
                     _hd230586230965_
                     _tl230585230967_
                     ___splice240064240065_
                     _target230588230970_
                     _tl230590230972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240099240100_
                                                     _e230587230962_
                                                     _hd230586230965_
                                                     _tl230585230967_
                                                     ___splice240064240065_
                                                     _target230588230970_
                                                     _tl230590230972_))))
                                            (___match240099240100_
                                             _e230587230962_
                                             _hd230586230965_
                                             _tl230585230967_
                                             ___splice240064240065_
                                             _target230588230970_
                                             _tl230590230972_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop230591230975_ _target230588230970_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx240060240061_))
                  (let ((_e230587230962_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx240060240061_))))
                    (let ((_tl230585230967_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230587230962_)))
                          (_hd230586230965_
                           (let ()
                             (declare (not safe))
                             (##car _e230587230962_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd230586230965_))
                          (let ((___splice240064240065_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd230586230965_
                                    '0))))
                            (let ((_tl230590230972_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice240064240065_ '1)))
                                  (_target230588230970_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice240064240065_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl230590230972_))
                                  (___match240087240088_
                                   _e230587230962_
                                   _hd230586230965_
                                   _tl230585230967_
                                   ___splice240064240065_
                                   _target230588230970_
                                   _tl230590230972_)
                                  (___match240099240100_
                                   _e230587230962_
                                   _hd230586230965_
                                   _tl230585230967_
                                   ___splice240064240065_
                                   _target230588230970_
                                   _tl230590230972_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230585230967_))
                              (let ((_e230675230717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230585230967_))))
                                (let ((_tl230673230722_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230675230717_)))
                                      (_hd230674230720_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230675230717_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd230674230720_))
                                      (let ((_e230678230725_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd230674230720_))))
                                        (let ((_tl230676230730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230678230725_)))
                                              (_hd230677230728_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230678230725_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd230677230728_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd230677230728_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl230676230730_))
                                                      (let ((_e230681230733_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl230676230730_))))
                (let ((_tl230679230738_
                       (let () (declare (not safe)) (##cdr _e230681230733_)))
                      (_hd230680230736_
                       (let () (declare (not safe)) (##car _e230681230733_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd230680230736_))
                      (let ((_e230684230741_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd230680230736_))))
                        (let ((_tl230682230746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230684230741_)))
                              (_hd230683230744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230684230741_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd230683230744_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd230683230744_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl230682230746_))
                                      (let ((_e230687230749_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl230682230746_))))
                                        (let ((_tl230685230754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e230687230749_)))
                                              (_hd230686230752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e230687230749_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl230685230754_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl230679230738_))
                                                  (let ((_e230690230757_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl230679230738_))))
                                                    (let ((_tl230688230762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e230690230757_)))
                                                          (_hd230689230760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e230690230757_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd230689230760_))
                                                          (let ((_e230693230765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd230689230760_))))
                    (let ((_tl230691230770_
                           (let ()
                             (declare (not safe))
                             (##cdr _e230693230765_)))
                          (_hd230692230768_
                           (let ()
                             (declare (not safe))
                             (##car _e230693230765_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd230692230768_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd230692230768_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl230691230770_))
                                  (let ((_e230696230773_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl230691230770_))))
                                    (let ((_tl230694230778_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e230696230773_)))
                                          (_hd230695230776_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e230696230773_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl230694230778_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl230688230762_))
                                              (let ((_e230699230781_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl230688230762_))))
                                                (let ((_tl230697230786_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e230699230781_)))
                                                      (_hd230698230784_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e230699230781_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl230697230786_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl230673230722_))
                                                          (___kont240072240073_
                                                           _hd230695230776_
                                                           _hd230686230752_
                                                           _hd230586230965_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g230580230704_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g230580230704_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g230580230704_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g230580230704_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g230580230704_)))
                              (let () (declare (not safe)) (_g230580230704_)))
                          (let () (declare (not safe)) (_g230580230704_)))))
                  (let () (declare (not safe)) (_g230580230704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230580230704_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230580230704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230580230704_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g230580230704_)))
                              (let ()
                                (declare (not safe))
                                (_g230580230704_)))))
                      (let () (declare (not safe)) (_g230580230704_)))))
              (let () (declare (not safe)) (_g230580230704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g230580230704_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g230580230704_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g230580230704_)))))
                              (let ()
                                (declare (not safe))
                                (_g230580230704_))))))
                  (let () (declare (not safe)) (_g230580230704_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form230380_)
        (let* ((_g230382230396_
                (lambda (_g230383230393_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g230383230393_))))
               (_g230381230573_
                (lambda (_g230383230399_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g230383230399_))
                      (let ((_e230388230401_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g230383230399_))))
                        (let ((_hd230387230404_
                               (let ()
                                 (declare (not safe))
                                 (##car _e230388230401_)))
                              (_tl230386230406_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e230388230401_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl230386230406_))
                              (let ((_e230391230409_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl230386230406_))))
                                (let ((_hd230390230412_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e230391230409_)))
                                      (_tl230389230414_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e230391230409_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl230389230414_))
                                      ((lambda (_L230417_ _L230418_)
                                         (let* ((___stx240182240183_ _L230418_)
                                                (_g230433230461_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx240182240183_)))))
                                           (let ((___kont240184240185_
                                                  (lambda (_L230552_)
                                                    (length (let ((__tmp241327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g230562230565_ _g230563230567_)
                             (let ()
                               (declare (not safe))
                               (cons _g230562230565_ _g230563230567_)))))
                      (declare (not safe))
                      (foldr1 __tmp241327 '() _L230552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240188240189_
                                                  (lambda (_L230503_ _L230504_)
                                                    (let ((__tmp241328
                                                           (length (let ((__tmp241329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g230515230518_ _g230516230520_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g230515230518_
                                            _g230516230520_)))))
                             (declare (not safe))
                             (foldr1 __tmp241329 '() _L230504_)))))
              (declare (not safe))
              (cons __tmp241328 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont240192240193_
                                                  (lambda (_L230466_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match240207240208_
                                                     (lambda (___splice240190240191_
                                                              _target230447230479_
                                                              _tl230449230481_)
                                                       (letrec ((_loop230450230484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230448230487_ _arg230454230489_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230448230487_))
                               (let ((_e230451230492_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230448230487_))))
                                 (let ((_lp-tl230453230497_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230451230492_)))
                                       (_lp-hd230452230495_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230451230492_))))
                                   (let ((__tmp241330
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230452230495_
                                                  _arg230454230489_))))
                                     (declare (not safe))
                                     (_loop230450230484_
                                      _lp-tl230453230497_
                                      __tmp241330))))
                               (let ((_arg230455230500_
                                      (reverse _arg230454230489_)))
                                 (___kont240188240189_
                                  _tl230449230481_
                                  _arg230455230500_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230450230484_ _target230447230479_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match240201240202_
                                                     (lambda (___splice240186240187_
                                                              _target230436230528_
                                                              _tl230438230530_)
                                                       (letrec ((_loop230439230533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd230437230536_ _arg230443230538_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd230437230536_))
                               (let ((_e230440230541_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd230437230536_))))
                                 (let ((_lp-tl230442230546_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e230440230541_)))
                                       (_lp-hd230441230544_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e230440230541_))))
                                   (let ((__tmp241331
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd230441230544_
                                                  _arg230443230538_))))
                                     (declare (not safe))
                                     (_loop230439230533_
                                      _lp-tl230442230546_
                                      __tmp241331))))
                               (let ((_arg230444230549_
                                      (reverse _arg230443230538_)))
                                 (___kont240184240185_ _arg230444230549_))))))
                 (let ()
                   (declare (not safe))
                   (_loop230439230533_ _target230436230528_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx240182240183_))
                                                   (let ((___splice240186240187_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx240182240183_
                                                             '0))))
                                                     (let ((_tl230438230530_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice240186240187_
                                                               '1)))
                                                           (_target230436230528_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice240186240187_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl230438230530_))
                                                           (___match240201240202_
                                                            ___splice240186240187_
                                                            _target230436230528_
                                                            _tl230438230530_)
                                                           (___match240207240208_
                                                            ___splice240186240187_
                                                            _target230436230528_
                                                            _tl230438230530_))))
                                                   (___kont240192240193_
                                                    ___stx240182240183_))))))
                                       _hd230390230412_
                                       _hd230387230404_)
                                      (let ()
                                        (declare (not safe))
                                        (_g230382230396_ _g230383230399_)))))
                              (let ()
                                (declare (not safe))
                                (_g230382230396_ _g230383230399_)))))
                      (let ()
                        (declare (not safe))
                        (_g230382230396_ _g230383230399_))))))
          (declare (not safe))
          (_g230381230573_ _form230380_))))
    (define gxc#lambda-expr?
      (lambda (_expr230333_)
        (let* ((___stx240210240211_ _expr230333_)
               (_g230336230346_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240210240211_)))))
          (let ((___kont240212240213_ (lambda (_L230366_) '#t))
                (___kont240214240215_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240210240211_))
                (let ((_e230341230358_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240210240211_))))
                  (let ((_tl230339230363_
                         (let () (declare (not safe)) (##cdr _e230341230358_)))
                        (_hd230340230361_
                         (let ()
                           (declare (not safe))
                           (##car _e230341230358_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230340230361_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd230340230361_))
                            (___kont240212240213_ _tl230339230363_)
                            (___kont240214240215_))
                        (___kont240214240215_))))
                (___kont240214240215_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr230286_)
        (let* ((___stx240228240229_ _expr230286_)
               (_g230289230299_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240228240229_)))))
          (let ((___kont240230240231_ (lambda (_L230319_) '#t))
                (___kont240232240233_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240228240229_))
                (let ((_e230294230311_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240228240229_))))
                  (let ((_tl230292230316_
                         (let () (declare (not safe)) (##cdr _e230294230311_)))
                        (_hd230293230314_
                         (let ()
                           (declare (not safe))
                           (##car _e230294230311_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230293230314_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd230293230314_))
                            (___kont240230240231_ _tl230292230316_)
                            (___kont240232240233_))
                        (___kont240232240233_))))
                (___kont240232240233_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr230155_)
        (let* ((___stx240246240247_ _expr230155_)
               (_g230158230188_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240246240247_)))))
          (let ((___kont240248240249_
                 (lambda (_L230256_ _L230257_ _L230258_)
                   (if (let () (declare (not safe)) (gx#identifier? _L230258_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L230257_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L230256_))
                           '#f)
                       '#f)))
                (___kont240250240251_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240246240247_))
                (let ((_e230165230200_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240246240247_))))
                  (let ((_tl230163230205_
                         (let () (declare (not safe)) (##cdr _e230165230200_)))
                        (_hd230164230203_
                         (let ()
                           (declare (not safe))
                           (##car _e230165230200_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd230164230203_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd230164230203_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl230163230205_))
                                (let ((_e230168230208_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl230163230205_))))
                                  (let ((_tl230166230213_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e230168230208_)))
                                        (_hd230167230211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e230168230208_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd230167230211_))
                                        (let ((_e230171230216_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd230167230211_))))
                                          (let ((_tl230169230221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e230171230216_)))
                                                (_hd230170230219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e230171230216_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd230170230219_))
                                                (let ((_e230174230224_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd230170230219_))))
                                                  (let ((_tl230172230229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e230174230224_)))
                                                        (_hd230173230227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e230174230224_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd230173230227_))
                                                        (let ((_e230177230232_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd230173230227_))))
                  (let ((_tl230175230237_
                         (let () (declare (not safe)) (##cdr _e230177230232_)))
                        (_hd230176230235_
                         (let ()
                           (declare (not safe))
                           (##car _e230177230232_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl230175230237_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl230172230229_))
                            (let ((_e230180230240_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl230172230229_))))
                              (let ((_tl230178230245_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e230180230240_)))
                                    (_hd230179230243_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e230180230240_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl230178230245_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl230169230221_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl230166230213_))
                                            (let ((_e230183230248_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl230166230213_))))
                                              (let ((_tl230181230253_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e230183230248_)))
                                                    (_hd230182230251_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e230183230248_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl230181230253_))
                                                    (___kont240248240249_
                                                     _hd230182230251_
                                                     _hd230179230243_
                                                     _hd230176230235_)
                                                    (___kont240250240251_))))
                                            (___kont240250240251_))
                                        (___kont240250240251_))
                                    (___kont240250240251_))))
                            (___kont240250240251_))
                        (___kont240250240251_))))
                (___kont240250240251_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240250240251_))))
                                        (___kont240250240251_))))
                                (___kont240250240251_))
                            (___kont240250240251_))
                        (___kont240250240251_))))
                (___kont240250240251_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr229480_)
        (let* ((___stx240308240309_ _expr229480_)
               (_g229483229641_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx240308240309_)))))
          (let ((___kont240310240311_
                 (lambda (_L230029_
                          _L230030_
                          _L230031_
                          _L230032_
                          _L230033_
                          _L230034_
                          _L230035_
                          _L230036_
                          _L230037_
                          _L230038_
                          _L230039_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L230036_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L230032_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L230031_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L230039_
                                      _L230030_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L230038_
                                          _L230035_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L230033_
                                              _L230029_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L230037_
                                              _L230034_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont240312240313_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx240308240309_))
                (let ((_e229498229653_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx240308240309_))))
                  (let ((_tl229496229658_
                         (let () (declare (not safe)) (##cdr _e229498229653_)))
                        (_hd229497229656_
                         (let ()
                           (declare (not safe))
                           (##car _e229498229653_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229497229656_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd229497229656_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229496229658_))
                                (let ((_e229501229661_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229496229658_))))
                                  (let ((_tl229499229666_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229501229661_)))
                                        (_hd229500229664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229501229661_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd229500229664_))
                                        (let ((_e229504229669_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd229500229664_))))
                                          (let ((_tl229502229674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229504229669_)))
                                                (_hd229503229672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229504229669_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229503229672_))
                                                (let ((_e229507229677_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229503229672_))))
                                                  (let ((_tl229505229682_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229507229677_)))
                                                        (_hd229506229680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229507229677_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229506229680_))
                                                        (let ((_e229510229685_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229506229680_))))
                  (let ((_tl229508229690_
                         (let () (declare (not safe)) (##cdr _e229510229685_)))
                        (_hd229509229688_
                         (let ()
                           (declare (not safe))
                           (##car _e229510229685_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl229508229690_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229505229682_))
                            (let ((_e229513229693_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229505229682_))))
                              (let ((_tl229511229698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229513229693_)))
                                    (_hd229512229696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229513229693_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229512229696_))
                                    (let ((_e229516229701_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229512229696_))))
                                      (let ((_tl229514229706_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229516229701_)))
                                            (_hd229515229704_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229516229701_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229515229704_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd229515229704_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229514229706_))
                                                    (let ((_e229519229709_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229514229706_))))
                                                      (let ((_tl229517229714_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229519229709_)))
                    (_hd229518229712_
                     (let () (declare (not safe)) (##car _e229519229709_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229518229712_))
                    (let ((_e229522229717_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229518229712_))))
                      (let ((_tl229520229722_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229522229717_)))
                            (_hd229521229720_
                             (let ()
                               (declare (not safe))
                               (##car _e229522229717_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229521229720_))
                            (let ((_e229525229725_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229521229720_))))
                              (let ((_tl229523229730_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229525229725_)))
                                    (_hd229524229728_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229525229725_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229524229728_))
                                    (let ((_e229528229733_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229524229728_))))
                                      (let ((_tl229526229738_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229528229733_)))
                                            (_hd229527229736_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229528229733_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229526229738_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229523229730_))
                                                (let ((_e229531229741_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229523229730_))))
                                                  (let ((_tl229529229746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229531229741_)))
                                                        (_hd229530229744_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229531229741_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229529229746_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl229520229722_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229517229714_))
                        (let ((_e229534229749_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229517229714_))))
                          (let ((_tl229532229754_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229534229749_)))
                                (_hd229533229752_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229534229749_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229533229752_))
                                (let ((_e229537229757_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229533229752_))))
                                  (let ((_tl229535229762_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229537229757_)))
                                        (_hd229536229760_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229537229757_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229536229760_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd229536229760_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229535229762_))
                                                (let ((_e229540229765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229535229762_))))
                                                  (let ((_tl229538229770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229540229765_)))
                                                        (_hd229539229768_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229540229765_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229539229768_))
                                                        (let ((_e229543229773_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229539229768_))))
                  (let ((_tl229541229778_
                         (let () (declare (not safe)) (##cdr _e229543229773_)))
                        (_hd229542229776_
                         (let ()
                           (declare (not safe))
                           (##car _e229543229773_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229538229770_))
                        (let ((_e229546229781_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229538229770_))))
                          (let ((_tl229544229786_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229546229781_)))
                                (_hd229545229784_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229546229781_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229545229784_))
                                (let ((_e229549229789_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229545229784_))))
                                  (let ((_tl229547229794_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229549229789_)))
                                        (_hd229548229792_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229549229789_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229548229792_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd229548229792_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229547229794_))
                                                (let ((_e229552229797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229547229794_))))
                                                  (let ((_tl229550229802_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229552229797_)))
                                                        (_hd229551229800_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229552229797_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd229551229800_))
                                                        (let ((_e229555229805_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd229551229800_))))
                  (let ((_tl229553229810_
                         (let () (declare (not safe)) (##cdr _e229555229805_)))
                        (_hd229554229808_
                         (let ()
                           (declare (not safe))
                           (##car _e229555229805_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd229554229808_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd229554229808_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl229553229810_))
                                (let ((_e229558229813_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl229553229810_))))
                                  (let ((_tl229556229818_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229558229813_)))
                                        (_hd229557229816_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229558229813_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229556229818_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229550229802_))
                                            (let ((_e229561229821_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229550229802_))))
                                              (let ((_tl229559229826_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229561229821_)))
                                                    (_hd229560229824_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229561229821_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229560229824_))
                                                    (let ((_e229564229829_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229560229824_))))
                                                      (let ((_tl229562229834_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229564229829_)))
                    (_hd229563229832_
                     (let () (declare (not safe)) (##car _e229564229829_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229563229832_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd229563229832_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229562229834_))
                            (let ((_e229567229837_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229562229834_))))
                              (let ((_tl229565229842_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229567229837_)))
                                    (_hd229566229840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229567229837_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229565229842_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229559229826_))
                                        (let ((_e229570229845_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229559229826_))))
                                          (let ((_tl229568229850_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229570229845_)))
                                                (_hd229569229848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229570229845_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd229569229848_))
                                                (let ((_e229573229853_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd229569229848_))))
                                                  (let ((_tl229571229858_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229573229853_)))
                                                        (_hd229572229856_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229573229853_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd229572229856_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd229572229856_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl229571229858_))
                        (let ((_e229576229861_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229571229858_))))
                          (let ((_tl229574229866_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229576229861_)))
                                (_hd229575229864_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229576229861_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl229574229866_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl229544229786_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl229532229754_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229511229698_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229502229674_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229499229666_))
                                                    (let ((_e229579229869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229499229666_))))
                                                      (let ((_tl229577229874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229579229869_)))
                    (_hd229578229872_
                     (let () (declare (not safe)) (##car _e229579229869_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229578229872_))
                    (let ((_e229582229877_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229578229872_))))
                      (let ((_tl229580229882_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229582229877_)))
                            (_hd229581229880_
                             (let ()
                               (declare (not safe))
                               (##car _e229582229877_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229581229880_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd229581229880_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229580229882_))
                                    (let ((_e229585229885_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229580229882_))))
                                      (let ((_tl229583229890_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229585229885_)))
                                            (_hd229584229888_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229585229885_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229583229890_))
                                            (let ((_e229588229893_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229583229890_))))
                                              (let ((_tl229586229898_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229588229893_)))
                                                    (_hd229587229896_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229588229893_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd229587229896_))
                                                    (let ((_e229591229901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd229587229896_))))
                                                      (let ((_tl229589229906_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229591229901_)))
                    (_hd229590229904_
                     (let () (declare (not safe)) (##car _e229591229901_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd229590229904_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd229590229904_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl229589229906_))
                            (let ((_e229594229909_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl229589229906_))))
                              (let ((_tl229592229914_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229594229909_)))
                                    (_hd229593229912_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229594229909_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd229593229912_))
                                    (let ((_e229597229917_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd229593229912_))))
                                      (let ((_tl229595229922_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229597229917_)))
                                            (_hd229596229920_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229597229917_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd229596229920_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd229596229920_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229595229922_))
                                                    (let ((_e229600229925_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229595229922_))))
                                                      (let ((_tl229598229930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229600229925_)))
                    (_hd229599229928_
                     (let () (declare (not safe)) (##car _e229600229925_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl229598229930_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl229592229914_))
                        (let ((_e229603229933_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl229592229914_))))
                          (let ((_tl229601229938_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229603229933_)))
                                (_hd229602229936_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229603229933_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd229602229936_))
                                (let ((_e229606229941_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd229602229936_))))
                                  (let ((_tl229604229946_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e229606229941_)))
                                        (_hd229605229944_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e229606229941_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd229605229944_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd229605229944_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl229604229946_))
                                                (let ((_e229609229949_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl229604229946_))))
                                                  (let ((_tl229607229954_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e229609229949_)))
                                                        (_hd229608229952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e229609229949_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229607229954_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl229601229938_))
                                                            (let ((_e229612229957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl229601229938_))))
                      (let ((_tl229610229962_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229612229957_)))
                            (_hd229611229960_
                             (let ()
                               (declare (not safe))
                               (##car _e229612229957_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd229611229960_))
                            (let ((_e229615229965_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd229611229960_))))
                              (let ((_tl229613229970_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e229615229965_)))
                                    (_hd229614229968_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e229615229965_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd229614229968_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd229614229968_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl229613229970_))
                                            (let ((_e229618229973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl229613229970_))))
                                              (let ((_tl229616229978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e229618229973_)))
                                                    (_hd229617229976_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e229618229973_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229616229978_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl229610229962_))
                                                        (let ((_e229621229981_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl229610229962_))))
                  (let ((_tl229619229986_
                         (let () (declare (not safe)) (##cdr _e229621229981_)))
                        (_hd229620229984_
                         (let ()
                           (declare (not safe))
                           (##car _e229621229981_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd229620229984_))
                        (let ((_e229624229989_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd229620229984_))))
                          (let ((_tl229622229994_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e229624229989_)))
                                (_hd229623229992_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e229624229989_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd229623229992_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd229623229992_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl229622229994_))
                                        (let ((_e229627229997_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl229622229994_))))
                                          (let ((_tl229625230002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e229627229997_)))
                                                (_hd229626230000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e229627229997_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229625230002_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl229619229986_))
                                                    (let ((_e229630230005_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl229619229986_))))
                                                      (let ((_tl229628230010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e229630230005_)))
                    (_hd229629230008_
                     (let () (declare (not safe)) (##car _e229630230005_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd229629230008_))
                    (let ((_e229633230013_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd229629230008_))))
                      (let ((_tl229631230018_
                             (let ()
                               (declare (not safe))
                               (##cdr _e229633230013_)))
                            (_hd229632230016_
                             (let ()
                               (declare (not safe))
                               (##car _e229633230013_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd229632230016_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd229632230016_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl229631230018_))
                                    (let ((_e229636230021_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl229631230018_))))
                                      (let ((_tl229634230026_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e229636230021_)))
                                            (_hd229635230024_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e229636230021_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl229634230026_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl229628230010_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl229586229898_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl229577229874_))
                                                        (___kont240310240311_
                                                         _hd229635230024_
                                                         _hd229626230000_
                                                         _hd229608229952_
                                                         _hd229599229928_
                                                         _hd229584229888_
                                                         _hd229575229864_
                                                         _hd229566229840_
                                                         _hd229557229816_
                                                         _hd229542229776_
                                                         _hd229527229736_
                                                         _hd229509229688_)
                                                        (___kont240312240313_))
                                                    (___kont240312240313_))
                                                (___kont240312240313_))
                                            (___kont240312240313_))))
                                    (___kont240312240313_))
                                (___kont240312240313_))
                            (___kont240312240313_))))
                    (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240312240313_))
                                                (___kont240312240313_))))
                                        (___kont240312240313_))
                                    (___kont240312240313_))
                                (___kont240312240313_))))
                        (___kont240312240313_))))
                (___kont240312240313_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240312240313_))))
                                            (___kont240312240313_))
                                        (___kont240312240313_))
                                    (___kont240312240313_))))
                            (___kont240312240313_))))
                    (___kont240312240313_))
                (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240312240313_))
                                            (___kont240312240313_))
                                        (___kont240312240313_))))
                                (___kont240312240313_))))
                        (___kont240312240313_))
                    (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240312240313_))
                                                (___kont240312240313_))
                                            (___kont240312240313_))))
                                    (___kont240312240313_))))
                            (___kont240312240313_))
                        (___kont240312240313_))
                    (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240312240313_))))
                                            (___kont240312240313_))))
                                    (___kont240312240313_))
                                (___kont240312240313_))
                            (___kont240312240313_))))
                    (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240312240313_))
                                                (___kont240312240313_))
                                            (___kont240312240313_))
                                        (___kont240312240313_))
                                    (___kont240312240313_))
                                (___kont240312240313_))))
                        (___kont240312240313_))
                    (___kont240312240313_))
                (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240312240313_))))
                                        (___kont240312240313_))
                                    (___kont240312240313_))))
                            (___kont240312240313_))
                        (___kont240312240313_))
                    (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240312240313_))))
                                            (___kont240312240313_))
                                        (___kont240312240313_))))
                                (___kont240312240313_))
                            (___kont240312240313_))
                        (___kont240312240313_))))
                (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240312240313_))
                                            (___kont240312240313_))
                                        (___kont240312240313_))))
                                (___kont240312240313_))))
                        (___kont240312240313_))))
                (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240312240313_))
                                            (___kont240312240313_))
                                        (___kont240312240313_))))
                                (___kont240312240313_))))
                        (___kont240312240313_))
                    (___kont240312240313_))
                (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240312240313_))
                                            (___kont240312240313_))))
                                    (___kont240312240313_))))
                            (___kont240312240313_))))
                    (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240312240313_))
                                                (___kont240312240313_))
                                            (___kont240312240313_))))
                                    (___kont240312240313_))))
                            (___kont240312240313_))
                        (___kont240312240313_))))
                (___kont240312240313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont240312240313_))))
                                        (___kont240312240313_))))
                                (___kont240312240313_))
                            (___kont240312240313_))
                        (___kont240312240313_))))
                (___kont240312240313_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx229222_ _id229223_ _clauses229224_ _gensym?229225_)
        (let _lp229227_ ((_rest229229_ _clauses229224_)
                         (_ids229230_ '())
                         (_impls229231_ '())
                         (_clauses229232_ '()))
          (let* ((_rest229233229241_ _rest229229_)
                 (_else229235229249_
                  (lambda ()
                    (values (reverse _ids229230_)
                            (reverse _impls229231_)
                            (reverse _clauses229232_))))
                 (_K229237229454_
                  (lambda (_rest229252_ _clause229253_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause229253_))
                        (let ((__tmp241387
                               (let ()
                                 (declare (not safe))
                                 (cons _clause229253_ _clauses229232_))))
                          (declare (not safe))
                          (_lp229227_
                           _rest229252_
                           _ids229230_
                           _impls229231_
                           __tmp241387))
                        (let* ((_g229255229266_
                                (lambda (_g229256229263_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g229256229263_))))
                               (_g229254229451_
                                (lambda (_g229256229269_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g229256229269_))
                                      (let ((_e229261229271_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g229256229269_))))
                                        (let ((_hd229260229274_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e229261229271_)))
                                              (_tl229259229276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e229261229271_))))
                                          ((lambda (_L229279_ _L229280_)
                                             (let* ((_id229297_
                                                     (let ((__tmp241334
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id229223_)))
                                                           (__tmp241333
                                                            (length _clauses229232_))
                                                           (__tmp241332
                                                            (if _gensym?229225_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp241334
                                                        '"__"
                                                        __tmp241333
                                                        __tmp241332)))
                                                    (_id229299_
                                                     (let ((__tmp241335
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx229222_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id229297_
                                                        __tmp241335)))
                                                    (_impl229301_
                                                     (let ((__tmp241336
                                                            (let ((__tmp241338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp241337
                           (let ()
                             (declare (not safe))
                             (cons _L229280_ _L229279_))))
                      (declare (not safe))
                      (cons __tmp241338 __tmp241337))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp241336 _stx229222_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause229448_
                                                     (let* ((___stx240692240693_
                                                             _L229280_)
                                                            (_g229305229333_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx240692240693_)))))
               (let ((___kont240694240695_
                      (lambda (_L229427_)
                        (let ((__tmp241339
                               (let ((__tmp241340
                                      (let ((__tmp241341
                                             (let ((__tmp241342
                                                    (let ((__tmp241348
                                                           (let ((__tmp241349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id229299_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241349)))
                  (__tmp241343
                   (let ((__tmp241344
                          (lambda (_g229437229440_ _g229438229442_)
                            (let ((__tmp241345
                                   (let ((__tmp241347
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp241346
                                          (let ()
                                            (declare (not safe))
                                            (cons _g229437229440_ '()))))
                                     (declare (not safe))
                                     (cons __tmp241347 __tmp241346))))
                              (declare (not safe))
                              (cons __tmp241345 _g229438229442_)))))
                     (declare (not safe))
                     (foldr1 __tmp241344 '() _L229427_))))
              (declare (not safe))
              (cons __tmp241348 __tmp241343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241342))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241341
                                         _stx229222_))))
                                 (declare (not safe))
                                 (cons __tmp241340 '()))))
                          (declare (not safe))
                          (cons _L229280_ __tmp241339))))
                     (___kont240698240699_
                      (lambda (_L229378_ _L229379_)
                        (let ((__tmp241350
                               (let ((__tmp241351
                                      (let ((__tmp241352
                                             (let ((__tmp241353
                                                    (let ((__tmp241367
                                                           (let ((__tmp241368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241368)))
                  (__tmp241354
                   (let ((__tmp241365
                          (let ((__tmp241366
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229299_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241366)))
                         (__tmp241355
                          (let ((__tmp241361
                                 (let ((__tmp241362
                                        (let ((__tmp241364
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp241363
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L229378_ '()))))
                                          (declare (not safe))
                                          (cons __tmp241364 __tmp241363))))
                                   (declare (not safe))
                                   (cons __tmp241362 '())))
                                (__tmp241356
                                 (let ((__tmp241357
                                        (lambda (_g229390229393_
                                                 _g229391229395_)
                                          (let ((__tmp241358
                                                 (let ((__tmp241360
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp241359
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g229390229393_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp241360
                                                         __tmp241359))))
                                            (declare (not safe))
                                            (cons __tmp241358
                                                  _g229391229395_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp241357 '() _L229379_))))
                            (declare (not safe))
                            (foldr1 cons __tmp241361 __tmp241356))))
                     (declare (not safe))
                     (cons __tmp241365 __tmp241355))))
              (declare (not safe))
              (cons __tmp241367 __tmp241354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241353))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241352
                                         _stx229222_))))
                                 (declare (not safe))
                                 (cons __tmp241351 '()))))
                          (declare (not safe))
                          (cons _L229280_ __tmp241350))))
                     (___kont240702240703_
                      (lambda (_L229338_)
                        (let ((__tmp241369
                               (let ((__tmp241370
                                      (let ((__tmp241371
                                             (let ((__tmp241372
                                                    (let ((__tmp241380
                                                           (let ((__tmp241381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp241381)))
                  (__tmp241373
                   (let ((__tmp241378
                          (let ((__tmp241379
                                 (let ()
                                   (declare (not safe))
                                   (cons _id229299_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp241379)))
                         (__tmp241374
                          (let ((__tmp241375
                                 (let ((__tmp241377
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp241376
                                        (let ()
                                          (declare (not safe))
                                          (cons _L229338_ '()))))
                                   (declare (not safe))
                                   (cons __tmp241377 __tmp241376))))
                            (declare (not safe))
                            (cons __tmp241375 '()))))
                     (declare (not safe))
                     (cons __tmp241378 __tmp241374))))
              (declare (not safe))
              (cons __tmp241380 __tmp241373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp241372))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp241371
                                         _stx229222_))))
                                 (declare (not safe))
                                 (cons __tmp241370 '()))))
                          (declare (not safe))
                          (cons _L229280_ __tmp241369)))))
                 (let* ((___match240717240718_
                         (lambda (___splice240700240701_
                                  _target229319229354_
                                  _tl229321229356_)
                           (letrec ((_loop229322229359_
                                     (lambda (_hd229320229362_
                                              _arg229326229364_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229320229362_))
                                           (let ((_e229323229367_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229320229362_))))
                                             (let ((_lp-tl229325229372_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229323229367_)))
                                                   (_lp-hd229324229370_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229323229367_))))
                                               (let ((__tmp241382
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229324229370_
                                                              _arg229326229364_))))
                                                 (declare (not safe))
                                                 (_loop229322229359_
                                                  _lp-tl229325229372_
                                                  __tmp241382))))
                                           (let ((_arg229327229375_
                                                  (reverse _arg229326229364_)))
                                             (___kont240698240699_
                                              _tl229321229356_
                                              _arg229327229375_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229322229359_
                                _target229319229354_
                                '())))))
                        (___match240711240712_
                         (lambda (___splice240696240697_
                                  _target229308229403_
                                  _tl229310229405_)
                           (letrec ((_loop229311229408_
                                     (lambda (_hd229309229411_
                                              _arg229315229413_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd229309229411_))
                                           (let ((_e229312229416_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd229309229411_))))
                                             (let ((_lp-tl229314229421_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e229312229416_)))
                                                   (_lp-hd229313229419_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e229312229416_))))
                                               (let ((__tmp241383
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd229313229419_
                                                              _arg229315229413_))))
                                                 (declare (not safe))
                                                 (_loop229311229408_
                                                  _lp-tl229314229421_
                                                  __tmp241383))))
                                           (let ((_arg229316229424_
                                                  (reverse _arg229315229413_)))
                                             (___kont240694240695_
                                              _arg229316229424_))))))
                             (let ()
                               (declare (not safe))
                               (_loop229311229408_
                                _target229308229403_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx240692240693_))
                       (let ((___splice240696240697_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx240692240693_
                                 '0))))
                         (let ((_tl229310229405_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240696240697_ '1)))
                               (_target229308229403_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice240696240697_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl229310229405_))
                               (___match240711240712_
                                ___splice240696240697_
                                _target229308229403_
                                _tl229310229405_)
                               (___match240717240718_
                                ___splice240696240697_
                                _target229308229403_
                                _tl229310229405_))))
                       (___kont240702240703_ ___stx240692240693_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp241386
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id229299_
                                                              _ids229230_)))
                                                     (__tmp241385
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl229301_
                                                              _impls229231_)))
                                                     (__tmp241384
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause229448_
                                                              _clauses229232_))))
                                                 (declare (not safe))
                                                 (_lp229227_
                                                  _rest229252_
                                                  __tmp241386
                                                  __tmp241385
                                                  __tmp241384))))
                                           _tl229259229276_
                                           _hd229260229274_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g229255229266_ _g229256229269_))))))
                          (declare (not safe))
                          (_g229254229451_ _clause229253_))))))
            (if (let () (declare (not safe)) (##pair? _rest229233229241_))
                (let ((_hd229238229457_
                       (let ()
                         (declare (not safe))
                         (##car _rest229233229241_)))
                      (_tl229239229459_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest229233229241_))))
                  (let* ((_clause229462_ _hd229238229457_)
                         (_rest229464_ _tl229239229459_))
                    (declare (not safe))
                    (_K229237229454_ _rest229464_ _clause229462_)))
                (let () (declare (not safe)) (_else229235229249_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx229469_ _id229470_ _clauses229471_)
        (let ((_gensym?229473_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx229469_
           _id229470_
           _clauses229471_
           _gensym?229473_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g241389_
        (let ((_g241388_ (let () (declare (not safe)) (##length _g241389_))))
          (cond ((let () (declare (not safe)) (##fx= _g241388_ 3))
                 (apply (lambda (_stx229469_ _id229470_ _clauses229471_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx229469_
                             _id229470_
                             _clauses229471_)))
                        _g241389_))
                ((let () (declare (not safe)) (##fx= _g241388_ 4))
                 (apply (lambda (_stx229475_
                                 _id229476_
                                 _clauses229477_
                                 _gensym?229478_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx229475_
                             _id229476_
                             _clauses229477_
                             _gensym?229478_)))
                        _g241389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g241389_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx228499_)
        (letrec ((_case-lambda-clause-def228501_
                  (lambda (_id229218_ _impl229219_)
                    (let ((__tmp241390
                           (let ((__tmp241391
                                  (let ((__tmp241394
                                         (let ()
                                           (declare (not safe))
                                           (cons _id229218_ '())))
                                        (__tmp241392
                                         (let ((__tmp241393
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl229219_))))
                                           (declare (not safe))
                                           (cons __tmp241393 '()))))
                                    (declare (not safe))
                                    (cons __tmp241394 __tmp241392))))
                             (declare (not safe))
                             (cons '%#define-values __tmp241391))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241390 _stx228499_))))
                 (_opt-lambda-dispatch-name228502_
                  (lambda (_id229214_)
                    (if (uninterned-symbol? _id229214_)
                        (let ((_str229216_ (symbol->string _id229214_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str229216_))
                              '"%"
                              _id229214_))
                        _id229214_)))
                 (_kw-lambda-dispatch-name228503_
                  (lambda (_id229209_ _name229210_)
                    (if (uninterned-symbol? _id229209_)
                        (let ((_str229212_ (symbol->string _id229209_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str229212_))
                              _name229210_
                              _id229209_))
                        _id229209_))))
          (let* ((___stx240740240741_ _stx228499_)
                 (_g228508228567_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx240740240741_)))))
            (let ((___kont240742240743_
                   (lambda (_L229118_ _L229119_)
                     (let* ((___stx240720240721_ _L229118_)
                            (_g229136229150_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240720240721_)))))
                       (let ((___kont240722240723_
                              (lambda (_L229194_) _stx228499_))
                             (___kont240724240725_
                              (lambda (_L229163_)
                                (let ((_g241395_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx228499_
                                          _L229119_
                                          _L229163_))))
                                  (begin
                                    (let ((_g241396_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g241395_)
                                                 (##vector-length _g241395_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g241396_ 3)))
                                          (error "Context expects 3 values"
                                                 _g241396_)))
                                    (let ((_ids229173_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241395_ 0)))
                                          (_impls229174_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241395_ 1)))
                                          (_clauses229175_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g241395_ 2))))
                                      (let* ((_g241397_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids229173_))
                                             (_defs229178_
                                              (map _case-lambda-clause-def228501_
                                                   _ids229173_
                                                   _impls229174_)))
                                        (let ((__tmp241399
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L229119_)))
                                              (__tmp241398
                                               (map gxc#identifier-symbol
                                                    _ids229173_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp241399
                                           '" => "
                                           __tmp241398))
                                        (let ((__tmp241400
                                               (let ((__tmp241401
                                                      (let ((__tmp241402
                                                             (let ((__tmp241403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp241404
                                   (let ((__tmp241405
                                          (let ((__tmp241410
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L229119_ '())))
                                                (__tmp241406
                                                 (let ((__tmp241407
                                                        (let ((__tmp241409
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses229175_)))
                      (__tmp241408
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp241409 __tmp241408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241407 '()))))
                                            (declare (not safe))
                                            (cons __tmp241410 __tmp241406))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp241405))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241404
                               _stx228499_))))
                       (declare (not safe))
                       (cons __tmp241403 '()))))
                (declare (not safe))
                (foldr1 cons __tmp241402 _defs229178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp241401))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp241400
                                           _stx228499_)))))))))
                         (let ((___match240731240732_
                                (lambda (_e229141229186_
                                         _hd229140229189_
                                         _tl229139229191_)
                                  (let ((_L229194_ _tl229139229191_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L229194_))
                                        (___kont240722240723_ _L229194_)
                                        (___kont240724240725_
                                         _tl229139229191_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx240720240721_))
                               (let ((_e229141229186_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx240720240721_))))
                                 (let ((_tl229139229191_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e229141229186_)))
                                       (_hd229140229189_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e229141229186_))))
                                   (___match240731240732_
                                    _e229141229186_
                                    _hd229140229189_
                                    _tl229139229191_)))
                               (let ()
                                 (declare (not safe))
                                 (_g229136229150_))))))))
                  (___kont240744240745_
                   (lambda (_L228936_ _L228937_)
                     (let* ((_g228953228983_
                             (lambda (_g228954228980_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228954228980_))))
                            (_g228952229078_
                             (lambda (_g228954228986_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228954228986_))
                                   (let ((_e228960228988_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228954228986_))))
                                     (let ((_hd228959228991_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228960228988_)))
                                           (_tl228958228993_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228960228988_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228958228993_))
                                           (let ((_e228963228996_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228958228993_))))
                                             (let ((_hd228962228999_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228963228996_)))
                                                   (_tl228961229001_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228963228996_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228962228999_))
                                                   (let ((_e228966229004_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228962228999_))))
                                                     (let ((_hd228965229007_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228966229004_)))
                                                           (_tl228964229009_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228966229004_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228965229007_))
                                                           (let ((_e228969229012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228965229007_))))
                     (let ((_hd228968229015_
                            (let ()
                              (declare (not safe))
                              (##car _e228969229012_)))
                           (_tl228967229017_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228969229012_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228968229015_))
                           (let ((_e228972229020_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228968229015_))))
                             (let ((_hd228971229023_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228972229020_)))
                                   (_tl228970229025_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228972229020_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228970229025_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228967229017_))
                                       (let ((_e228975229028_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228967229017_))))
                                         (let ((_hd228974229031_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228975229028_)))
                                               (_tl228973229033_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228975229028_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228973229033_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl228964229009_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228961229001_))
                                                       (let ((_e228978229036_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228961229001_))))
                 (let ((_hd228977229039_
                        (let () (declare (not safe)) (##car _e228978229036_)))
                       (_tl228976229041_
                        (let () (declare (not safe)) (##cdr _e228978229036_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228976229041_))
                       ((lambda (_L229044_ _L229045_ _L229046_)
                          (let* ((_lambda-id229070_
                                  (let ((__tmp241413
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L228937_)))
                                        (__tmp241411
                                         (let ((__tmp241412
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L229046_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name228502_
                                            __tmp241412))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp241413
                                     '"__"
                                     __tmp241411)))
                                 (_lambda-id229072_
                                  (let ((__tmp241414
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx228499_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id229070_
                                     __tmp241414)))
                                 (_g241415_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id229072_)))
                                 (_new-case-lambda-expr229075_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L229044_
                                     _L229046_
                                     _lambda-id229072_))))
                            (let ((__tmp241417
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L228937_)))
                                  (__tmp241416
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id229072_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp241417
                               '" => "
                               __tmp241416))
                            (let ((__tmp241418
                                   (let ((__tmp241419
                                          (let ((__tmp241427
                                                 (let ((__tmp241428
                                                        (let ((__tmp241429
                                                               (let ((__tmp241432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id229072_ '())))
                             (__tmp241430
                              (let ((__tmp241431
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L229045_))))
                                (declare (not safe))
                                (cons __tmp241431 '()))))
                         (declare (not safe))
                         (cons __tmp241432 __tmp241430))))
                  (declare (not safe))
                  (cons '%#define-values __tmp241429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp241428
                                                    _stx228499_)))
                                                (__tmp241420
                                                 (let ((__tmp241421
                                                        (let ((__tmp241422
                                                               (let ((__tmp241423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp241424
                                     (let ((__tmp241426
                                            (let ()
                                              (declare (not safe))
                                              (cons _L228937_ '())))
                                           (__tmp241425
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr229075_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp241426 __tmp241425))))
                                (declare (not safe))
                                (cons '%#define-values __tmp241424))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp241423 _stx228499_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp241422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp241421 '()))))
                                            (declare (not safe))
                                            (cons __tmp241427 __tmp241420))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp241419))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp241418
                               _stx228499_))))
                        _hd228977229039_
                        _hd228974229031_
                        _hd228971229023_)
                       (let ()
                         (declare (not safe))
                         (_g228953228983_ _g228954228986_)))))
               (let () (declare (not safe)) (_g228953228983_ _g228954228986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228953228983_
                                                      _g228954228986_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228953228983_
                                                  _g228954228986_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228953228983_ _g228954228986_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228953228983_ _g228954228986_)))))
                           (let ()
                             (declare (not safe))
                             (_g228953228983_ _g228954228986_)))))
                   (let ()
                     (declare (not safe))
                     (_g228953228983_ _g228954228986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228953228983_
                                                      _g228954228986_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228953228983_
                                              _g228954228986_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228953228983_ _g228954228986_))))))
                       (declare (not safe))
                       (_g228952229078_ _L228936_))))
                  (___kont240746240747_
                   (lambda (_L228650_ _L228651_)
                     (let* ((_g228667228720_
                             (lambda (_g228668228717_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g228668228717_))))
                            (_g228666228896_
                             (lambda (_g228668228723_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g228668228723_))
                                   (let ((_e228676228725_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g228668228723_))))
                                     (let ((_hd228675228728_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e228676228725_)))
                                           (_tl228674228730_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e228676228725_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl228674228730_))
                                           (let ((_e228679228733_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl228674228730_))))
                                             (let ((_hd228678228736_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228679228733_)))
                                                   (_tl228677228738_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228679228733_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228678228736_))
                                                   (let ((_e228682228741_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228678228736_))))
                                                     (let ((_hd228681228744_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228682228741_)))
                                                           (_tl228680228746_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228682228741_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd228681228744_))
                                                           (let ((_e228685228749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd228681228744_))))
                     (let ((_hd228684228752_
                            (let ()
                              (declare (not safe))
                              (##car _e228685228749_)))
                           (_tl228683228754_
                            (let ()
                              (declare (not safe))
                              (##cdr _e228685228749_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd228684228752_))
                           (let ((_e228688228757_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd228684228752_))))
                             (let ((_hd228687228760_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228688228757_)))
                                   (_tl228686228762_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228688228757_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228686228762_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl228683228754_))
                                       (let ((_e228691228765_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl228683228754_))))
                                         (let ((_hd228690228768_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228691228765_)))
                                               (_tl228689228770_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228691228765_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd228690228768_))
                                               (let ((_e228694228773_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd228690228768_))))
                                                 (let ((_hd228693228776_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228694228773_)))
                                                       (_tl228692228778_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228694228773_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228692228778_))
                                                       (let ((_e228697228781_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228692228778_))))
                 (let ((_hd228696228784_
                        (let () (declare (not safe)) (##car _e228697228781_)))
                       (_tl228695228786_
                        (let () (declare (not safe)) (##cdr _e228697228781_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd228696228784_))
                       (let ((_e228700228789_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd228696228784_))))
                         (let ((_hd228699228792_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228700228789_)))
                               (_tl228698228794_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228700228789_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd228699228792_))
                               (let ((_e228703228797_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd228699228792_))))
                                 (let ((_hd228702228800_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e228703228797_)))
                                       (_tl228701228802_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e228703228797_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd228702228800_))
                                       (let ((_e228706228805_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd228702228800_))))
                                         (let ((_hd228705228808_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e228706228805_)))
                                               (_tl228704228810_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e228706228805_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl228704228810_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl228701228802_))
                                                   (let ((_e228709228813_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl228701228802_))))
                                                     (let ((_hd228708228816_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228709228813_)))
                                                           (_tl228707228818_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228709228813_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228707228818_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl228698228794_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl228695228786_))
                           (let ((_e228712228821_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl228695228786_))))
                             (let ((_hd228711228824_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e228712228821_)))
                                   (_tl228710228826_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e228712228821_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl228710228826_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl228689228770_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl228680228746_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl228677228738_))
                                               (let ((_e228715228829_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl228677228738_))))
                                                 (let ((_hd228714228832_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e228715228829_)))
                                                       (_tl228713228834_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e228715228829_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl228713228834_))
                                                       ((lambda (_L228837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L228838_
                         _L228839_
                         _L228840_
                         _L228841_)
                  (let* ((_get-kws-id228881_
                          (let ((__tmp241435
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228651_)))
                                (__tmp241433
                                 (let ((__tmp241434
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228841_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228503_
                                    __tmp241434
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241435 '"__" __tmp241433)))
                         (_get-kws-id228883_
                          (let ((__tmp241436
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228499_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id228881_
                             __tmp241436)))
                         (_main-id228885_
                          (let ((__tmp241439
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L228651_)))
                                (__tmp241437
                                 (let ((__tmp241438
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L228840_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name228503_
                                    __tmp241438
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp241439 '"__" __tmp241437)))
                         (_main-id228887_
                          (let ((__tmp241440
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx228499_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id228885_
                             __tmp241440)))
                         (_g241441_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id228883_)))
                         (_g241442_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id228887_)))
                         (_new-kw-dispatch228891_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228837_
                             _L228841_
                             _get-kws-id228883_)))
                         (_new-get-kws228893_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L228838_
                             _L228840_
                             _main-id228887_))))
                    (let ((__tmp241445
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L228651_)))
                          (__tmp241444
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id228883_)))
                          (__tmp241443
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id228887_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp241445
                       '" => "
                       __tmp241444
                       '" => "
                       __tmp241443))
                    (let ((__tmp241446
                           (let ((__tmp241447
                                  (let ((__tmp241460
                                         (let ((__tmp241461
                                                (let ((__tmp241462
                                                       (let ((__tmp241463
                                                              (let ((__tmp241465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id228887_ '())))
                            (__tmp241464
                             (let ()
                               (declare (not safe))
                               (cons _L228839_ '()))))
                        (declare (not safe))
                        (cons __tmp241465 __tmp241464))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241462
                                                   _stx228499_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp241461)))
                                        (__tmp241448
                                         (let ((__tmp241455
                                                (let ((__tmp241456
                                                       (let ((__tmp241457
                                                              (let ((__tmp241459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id228883_ '())))
                            (__tmp241458
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws228893_ '()))))
                        (declare (not safe))
                        (cons __tmp241459 __tmp241458))))
                 (declare (not safe))
                 (cons '%#define-values __tmp241457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241456
                                                   _stx228499_)))
                                               (__tmp241449
                                                (let ((__tmp241450
                                                       (let ((__tmp241451
                                                              (let ((__tmp241452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp241454
                                    (let ()
                                      (declare (not safe))
                                      (cons _L228651_ '())))
                                   (__tmp241453
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch228891_ '()))))
                               (declare (not safe))
                               (cons __tmp241454 __tmp241453))))
                        (declare (not safe))
                        (cons '%#define-values __tmp241452))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp241451 _stx228499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp241450 '()))))
                                           (declare (not safe))
                                           (cons __tmp241455 __tmp241449))))
                                    (declare (not safe))
                                    (cons __tmp241460 __tmp241448))))
                             (declare (not safe))
                             (cons '%#begin __tmp241447))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp241446 _stx228499_))))
                _hd228714228832_
                _hd228711228824_
                _hd228708228816_
                _hd228705228808_
                _hd228687228760_)
               (let ()
                 (declare (not safe))
                 (_g228667228720_ _g228668228723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228667228720_
                                                  _g228668228723_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g228667228720_
                                              _g228668228723_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g228667228720_ _g228668228723_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228667228720_ _g228668228723_)))))
                           (let ()
                             (declare (not safe))
                             (_g228667228720_ _g228668228723_)))
                       (let ()
                         (declare (not safe))
                         (_g228667228720_ _g228668228723_)))
                   (let ()
                     (declare (not safe))
                     (_g228667228720_ _g228668228723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228667228720_
                                                      _g228668228723_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228667228720_
                                                  _g228668228723_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228667228720_ _g228668228723_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g228667228720_ _g228668228723_)))))
                       (let ()
                         (declare (not safe))
                         (_g228667228720_ _g228668228723_)))))
               (let ()
                 (declare (not safe))
                 (_g228667228720_ _g228668228723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g228667228720_
                                                  _g228668228723_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g228667228720_ _g228668228723_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g228667228720_ _g228668228723_)))))
                           (let ()
                             (declare (not safe))
                             (_g228667228720_ _g228668228723_)))))
                   (let ()
                     (declare (not safe))
                     (_g228667228720_ _g228668228723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g228667228720_
                                                      _g228668228723_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g228667228720_
                                              _g228668228723_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g228667228720_ _g228668228723_))))))
                       (declare (not safe))
                       (_g228666228896_ _L228650_))))
                  (___kont240748240749_
                   (lambda (_L228596_ _L228597_)
                     (let ((__tmp241466
                            (let ((__tmp241467
                                   (let ((__tmp241468
                                          (let ((__tmp241469
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L228596_))))
                                            (declare (not safe))
                                            (cons __tmp241469 '()))))
                                     (declare (not safe))
                                     (cons _L228597_ __tmp241468))))
                              (declare (not safe))
                              (cons '%#define-values __tmp241467))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp241466 _stx228499_)))))
              (let* ((___match240833240834_
                      (lambda (_e228542228618_
                               _hd228541228621_
                               _tl228540228623_
                               _e228545228626_
                               _hd228544228629_
                               _tl228543228631_
                               _e228548228634_
                               _hd228547228637_
                               _tl228546228639_
                               _e228551228642_
                               _hd228550228645_
                               _tl228549228647_)
                        (let ((_L228650_ _hd228550228645_)
                              (_L228651_ _hd228547228637_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228651_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L228650_)))
                              (___kont240746240747_ _L228650_ _L228651_)
                              (___kont240748240749_
                               _hd228550228645_
                               _hd228544228629_)))))
                     (___match240805240806_
                      (lambda (_e228528228904_
                               _hd228527228907_
                               _tl228526228909_
                               _e228531228912_
                               _hd228530228915_
                               _tl228529228917_
                               _e228534228920_
                               _hd228533228923_
                               _tl228532228925_
                               _e228537228928_
                               _hd228536228931_
                               _tl228535228933_)
                        (let ((_L228936_ _hd228536228931_)
                              (_L228937_ _hd228533228923_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L228937_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L228936_)))
                              (___kont240744240745_ _L228936_ _L228937_)
                              (___match240833240834_
                               _e228528228904_
                               _hd228527228907_
                               _tl228526228909_
                               _e228531228912_
                               _hd228530228915_
                               _tl228529228917_
                               _e228534228920_
                               _hd228533228923_
                               _tl228532228925_
                               _e228537228928_
                               _hd228536228931_
                               _tl228535228933_)))))
                     (___match240777240778_
                      (lambda (_e228514229086_
                               _hd228513229089_
                               _tl228512229091_
                               _e228517229094_
                               _hd228516229097_
                               _tl228515229099_
                               _e228520229102_
                               _hd228519229105_
                               _tl228518229107_
                               _e228523229110_
                               _hd228522229113_
                               _tl228521229115_)
                        (let ((_L229118_ _hd228522229113_)
                              (_L229119_ _hd228519229105_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L229119_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L229118_)))
                              (___kont240742240743_ _L229118_ _L229119_)
                              (___match240805240806_
                               _e228514229086_
                               _hd228513229089_
                               _tl228512229091_
                               _e228517229094_
                               _hd228516229097_
                               _tl228515229099_
                               _e228520229102_
                               _hd228519229105_
                               _tl228518229107_
                               _e228523229110_
                               _hd228522229113_
                               _tl228521229115_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx240740240741_))
                    (let ((_e228514229086_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx240740240741_))))
                      (let ((_tl228512229091_
                             (let ()
                               (declare (not safe))
                               (##cdr _e228514229086_)))
                            (_hd228513229089_
                             (let ()
                               (declare (not safe))
                               (##car _e228514229086_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl228512229091_))
                            (let ((_e228517229094_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl228512229091_))))
                              (let ((_tl228515229099_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e228517229094_)))
                                    (_hd228516229097_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e228517229094_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd228516229097_))
                                    (let ((_e228520229102_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd228516229097_))))
                                      (let ((_tl228518229107_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e228520229102_)))
                                            (_hd228519229105_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e228520229102_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl228518229107_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228515229099_))
                                                (let ((_e228523229110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228515229099_))))
                                                  (let ((_tl228521229115_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228523229110_)))
                                                        (_hd228522229113_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228523229110_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228521229115_))
                                                        (___match240777240778_
                                                         _e228514229086_
                                                         _hd228513229089_
                                                         _tl228512229091_
                                                         _e228517229094_
                                                         _hd228516229097_
                                                         _tl228515229099_
                                                         _e228520229102_
                                                         _hd228519229105_
                                                         _tl228518229107_
                                                         _e228523229110_
                                                         _hd228522229113_
                                                         _tl228521229115_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228508228567_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228508228567_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl228515229099_))
                                                (let ((_e228562228588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl228515229099_))))
                                                  (let ((_tl228560228593_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e228562228588_)))
                                                        (_hd228561228591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e228562228588_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl228560228593_))
                                                        (___kont240748240749_
                                                         _hd228561228591_
                                                         _hd228516229097_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g228508228567_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228508228567_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl228515229099_))
                                        (let ((_e228562228588_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl228515229099_))))
                                          (let ((_tl228560228593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e228562228588_)))
                                                (_hd228561228591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e228562228588_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl228560228593_))
                                                (___kont240748240749_
                                                 _hd228561228591_
                                                 _hd228516229097_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g228508228567_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g228508228567_))))))
                            (let () (declare (not safe)) (_g228508228567_)))))
                    (let () (declare (not safe)) (_g228508228567_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx227431_)
        (letrec* ((_bind-e__239136239137_
                   (lambda (_id228483_ _expr228484_ _compile?228485_)
                     (let ((__tmp241472
                            (let ()
                              (declare (not safe))
                              (cons _id228483_ '())))
                           (__tmp241470
                            (let ((__tmp241471
                                   (if _compile?228485_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr228484_))
                                       _expr228484_)))
                              (declare (not safe))
                              (cons __tmp241471 '()))))
                       (declare (not safe))
                       (cons __tmp241472 __tmp241470))))
                  (_bind-e__0__239138239139_
                   (lambda (_id228490_ _expr228491_)
                     (let ((_compile?228493_ '#t))
                       (declare (not safe))
                       (_bind-e__239136239137_
                        _id228490_
                        _expr228491_
                        _compile?228493_))))
                  (_bind-e227433_
                   (lambda _g241474_
                     (let ((_g241473_
                            (let ()
                              (declare (not safe))
                              (##length _g241474_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241473_ 2))
                              (apply (lambda (_id228490_ _expr228491_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__239138239139_
                                          _id228490_
                                          _expr228491_)))
                                     _g241474_))
                             ((let () (declare (not safe)) (##fx= _g241473_ 3))
                              (apply (lambda (_id228495_
                                              _expr228496_
                                              _compile?228497_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__239136239137_
                                          _id228495_
                                          _expr228496_
                                          _compile?228497_)))
                                     _g241474_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241474_))))))
                  (_compile-bindings227434_
                   (lambda (_bindings228067_)
                     (let _lp228069_ ((_rest228071_ _bindings228067_)
                                      (_lift1228072_ '())
                                      (_lift2228073_ '())
                                      (_bind228074_ '()))
                       (let* ((_rest228075228083_ _rest228071_)
                              (_else228077228091_
                               (lambda ()
                                 (values (reverse _lift1228072_)
                                         (reverse _lift2228073_)
                                         (reverse _bind228074_))))
                              (_K228079228470_
                               (lambda (_rest228094_ _hd228095_)
                                 (let* ((___stx240876240877_ _hd228095_)
                                        (_g228099228135_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240876240877_)))))
                                   (let ((___kont240878240879_
                                          (lambda (_L228377_ _L228378_)
                                            (let* ((___stx240856240857_
                                                    _L228377_)
                                                   (_g228393228407_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx240856240857_)))))
                                              (let ((___kont240858240859_
                                                     (lambda (_L228455_)
                                                       (let ((__tmp241475
                                                              (let ((__tmp241476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__239136239137_
                                _L228378_
                                _L228377_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241476 _bind228074_))))
                 (declare (not safe))
                 (_lp228069_
                  _rest228094_
                  _lift1228072_
                  _lift2228073_
                  __tmp241475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont240860240861_
                                                     (lambda (_L228420_)
                                                       (let ((_g241477_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx227431_
                         _L228378_
                         _L228420_
                         '#t))))
                 (begin
                   (let ((_g241478_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241477_)
                                (##vector-length _g241477_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241478_ 3)))
                         (error "Context expects 3 values" _g241478_)))
                   (let ((_ids228430_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241477_ 0)))
                         (_impls228431_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241477_ 1)))
                         (_clauses228432_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241477_ 2))))
                     (let* ((_g241479_
                             (for-each gx#core-bind-runtime! _ids228430_))
                            (_xbind228435_
                             (map _bind-e227433_ _ids228430_ _impls228431_))
                            (_expr*228437_
                             (let ((__tmp241481
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses228432_)))
                                   (__tmp241480
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241481
                                __tmp241480)))
                            (_bind*228439_
                             (let ()
                               (declare (not safe))
                               (_bind-e__239136239137_
                                _L228378_
                                _expr*228437_
                                '#f))))
                       (let ((__tmp241483
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L228378_)))
                             (__tmp241482
                              (map gxc#identifier-symbol _ids228430_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241483
                          '" => "
                          __tmp241482))
                       (let ((__tmp241485
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2228073_ _xbind228435_)))
                             (__tmp241484
                              (let ()
                                (declare (not safe))
                                (cons _bind*228439_ _bind228074_))))
                         (declare (not safe))
                         (_lp228069_
                          _rest228094_
                          _lift1228072_
                          __tmp241485
                          __tmp241484)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match240867240868_
                                                       (lambda (_e228398228447_
                                                                _hd228397228450_
                                                                _tl228396228452_)
                                                         (let ((_L228455_
                                                                _tl228396228452_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L228455_))
                       (___kont240858240859_ _L228455_)
                       (___kont240860240861_ _tl228396228452_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx240856240857_))
                                                      (let ((_e228398228447_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx240856240857_))))
                (let ((_tl228396228452_
                       (let () (declare (not safe)) (##cdr _e228398228447_)))
                      (_hd228397228450_
                       (let () (declare (not safe)) (##car _e228398228447_))))
                  (___match240867240868_
                   _e228398228447_
                   _hd228397228450_
                   _tl228396228452_)))
              (let () (declare (not safe)) (_g228393228407_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont240880240881_
                                          (lambda (_L228205_ _L228206_)
                                            (let* ((_g228220228250_
                                                    (lambda (_g228221228247_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g228221228247_))))
                                                   (_g228219228345_
                                                    (lambda (_g228221228253_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g228221228253_))
                                                          (let ((_e228227228255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g228221228253_))))
                    (let ((_hd228226228258_
                           (let ()
                             (declare (not safe))
                             (##car _e228227228255_)))
                          (_tl228225228260_
                           (let ()
                             (declare (not safe))
                             (##cdr _e228227228255_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl228225228260_))
                          (let ((_e228230228263_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl228225228260_))))
                            (let ((_hd228229228266_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e228230228263_)))
                                  (_tl228228228268_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e228230228263_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd228229228266_))
                                  (let ((_e228233228271_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd228229228266_))))
                                    (let ((_hd228232228274_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e228233228271_)))
                                          (_tl228231228276_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e228233228271_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd228232228274_))
                                          (let ((_e228236228279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd228232228274_))))
                                            (let ((_hd228235228282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e228236228279_)))
                                                  (_tl228234228284_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e228236228279_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd228235228282_))
                                                  (let ((_e228239228287_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd228235228282_))))
                                                    (let ((_hd228238228290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e228239228287_)))
                                                          (_tl228237228292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e228239228287_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl228237228292_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl228234228284_))
                      (let ((_e228242228295_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl228234228284_))))
                        (let ((_hd228241228298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e228242228295_)))
                              (_tl228240228300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e228242228295_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl228240228300_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl228231228276_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl228228228268_))
                                      (let ((_e228245228303_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl228228228268_))))
                                        (let ((_hd228244228306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e228245228303_)))
                                              (_tl228243228308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e228245228303_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl228243228308_))
                                              ((lambda (_L228311_
                                                        _L228312_
                                                        _L228313_)
                                                 (let* ((_lambda-id228337_
                                                         (let ((__tmp241487
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L228206_)))
                       (__tmp241486 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241487 __tmp241486)))
                (_lambda-id228339_
                 (let ((__tmp241488
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx227431_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id228337_ __tmp241488)))
                (_g241489_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id228339_)))
                (_new-case-lambda-expr228342_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L228311_
                    _L228313_
                    _lambda-id228339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241491
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L228206_)))
                                                         (__tmp241490
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id228339_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241491
                                                      '" => "
                                                      __tmp241490))
                                                   (let ((__tmp241494
                                                          (let ((__tmp241495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__239136239137_
                            _L228206_
                            _new-case-lambda-expr228342_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241495 _rest228094_)))
                 (__tmp241492
                  (let ((__tmp241493
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__239138239139_
                            _lambda-id228339_
                            _L228312_))))
                    (declare (not safe))
                    (cons __tmp241493 _lift1228072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp228069_
                                                      __tmp241494
                                                      __tmp241492
                                                      _lift2228073_
                                                      _bind228074_))))
                                               _hd228244228306_
                                               _hd228241228298_
                                               _hd228238228290_)
                                              (let ()
                                                (declare (not safe))
                                                (_g228220228250_
                                                 _g228221228253_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g228220228250_ _g228221228253_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g228220228250_ _g228221228253_)))
                              (let ()
                                (declare (not safe))
                                (_g228220228250_ _g228221228253_)))))
                      (let ()
                        (declare (not safe))
                        (_g228220228250_ _g228221228253_)))
                  (let ()
                    (declare (not safe))
                    (_g228220228250_ _g228221228253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g228220228250_
                                                     _g228221228253_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g228220228250_
                                             _g228221228253_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g228220228250_ _g228221228253_)))))
                          (let ()
                            (declare (not safe))
                            (_g228220228250_ _g228221228253_)))))
                  (let ()
                    (declare (not safe))
                    (_g228220228250_ _g228221228253_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g228219228345_ _L228205_))))
                                         (___kont240882240883_
                                          (lambda (_L228156_ _L228157_)
                                            (let ((__tmp241496
                                                   (let ((__tmp241497
                                                          (let ((__tmp241498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241499
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L228156_))))
                           (declare (not safe))
                           (cons __tmp241499 '()))))
                    (declare (not safe))
                    (cons _L228157_ __tmp241498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241497
                                                           _bind228074_))))
                                              (declare (not safe))
                                              (_lp228069_
                                               _rest228094_
                                               _lift1228072_
                                               _lift2228073_
                                               __tmp241496)))))
                                     (let* ((___match240927240928_
                                             (lambda (_e228116228181_
                                                      _hd228115228184_
                                                      _tl228114228186_
                                                      _e228119228189_
                                                      _hd228118228192_
                                                      _tl228117228194_
                                                      _e228122228197_
                                                      _hd228121228200_
                                                      _tl228120228202_)
                                               (let ((_L228205_
                                                      _hd228121228200_)
                                                     (_L228206_
                                                      _hd228118228192_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228206_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L228205_)))
                                                     (___kont240880240881_
                                                      _L228205_
                                                      _L228206_)
                                                     (___kont240882240883_
                                                      _hd228121228200_
                                                      _hd228115228184_)))))
                                            (___match240905240906_
                                             (lambda (_e228105228353_
                                                      _hd228104228356_
                                                      _tl228103228358_
                                                      _e228108228361_
                                                      _hd228107228364_
                                                      _tl228106228366_
                                                      _e228111228369_
                                                      _hd228110228372_
                                                      _tl228109228374_)
                                               (let ((_L228377_
                                                      _hd228110228372_)
                                                     (_L228378_
                                                      _hd228107228364_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L228378_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L228377_)))
                                                     (___kont240878240879_
                                                      _L228377_
                                                      _L228378_)
                                                     (___match240927240928_
                                                      _e228105228353_
                                                      _hd228104228356_
                                                      _tl228103228358_
                                                      _e228108228361_
                                                      _hd228107228364_
                                                      _tl228106228366_
                                                      _e228111228369_
                                                      _hd228110228372_
                                                      _tl228109228374_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240876240877_))
                                           (let ((_e228105228353_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240876240877_))))
                                             (let ((_tl228103228358_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e228105228353_)))
                                                   (_hd228104228356_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e228105228353_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd228104228356_))
                                                   (let ((_e228108228361_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd228104228356_))))
                                                     (let ((_tl228106228366_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e228108228361_)))
                                                           (_hd228107228364_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e228108228361_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl228106228366_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl228103228358_))
                       (let ((_e228111228369_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228103228358_))))
                         (let ((_tl228109228374_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228111228369_)))
                               (_hd228110228372_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228111228369_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228109228374_))
                               (___match240905240906_
                                _e228105228353_
                                _hd228104228356_
                                _tl228103228358_
                                _e228108228361_
                                _hd228107228364_
                                _tl228106228366_
                                _e228111228369_
                                _hd228110228372_
                                _tl228109228374_)
                               (let ()
                                 (declare (not safe))
                                 (_g228099228135_)))))
                       (let () (declare (not safe)) (_g228099228135_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl228103228358_))
                       (let ((_e228130228148_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl228103228358_))))
                         (let ((_tl228128228153_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e228130228148_)))
                               (_hd228129228151_
                                (let ()
                                  (declare (not safe))
                                  (##car _e228130228148_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl228128228153_))
                               (___kont240882240883_
                                _hd228129228151_
                                _hd228104228356_)
                               (let ()
                                 (declare (not safe))
                                 (_g228099228135_)))))
                       (let () (declare (not safe)) (_g228099228135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl228103228358_))
                                                       (let ((_e228130228148_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl228103228358_))))
                 (let ((_tl228128228153_
                        (let () (declare (not safe)) (##cdr _e228130228148_)))
                       (_hd228129228151_
                        (let () (declare (not safe)) (##car _e228130228148_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl228128228153_))
                       (___kont240882240883_ _hd228129228151_ _hd228104228356_)
                       (let () (declare (not safe)) (_g228099228135_)))))
               (let () (declare (not safe)) (_g228099228135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g228099228135_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest228075228083_))
                             (let ((_hd228080228473_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest228075228083_)))
                                   (_tl228081228475_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest228075228083_))))
                               (let* ((_hd228478_ _hd228080228473_)
                                      (_rest228480_ _tl228081228475_))
                                 (declare (not safe))
                                 (_K228079228470_ _rest228480_ _hd228478_)))
                             (let ()
                               (declare (not safe))
                               (_else228077228091_)))))))
                  (_lift-kw-lambda?227435_
                   (lambda (_bind227991_)
                     (let* ((___stx240944240945_ _bind227991_)
                            (_g227994228011_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx240944240945_)))))
                       (let ((___kont240946240947_
                              (lambda (_L228047_ _L228048_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L228048_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L228047_))
                                    '#f)))
                             (___kont240948240949_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx240944240945_))
                             (let ((_e228000228023_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx240944240945_))))
                               (let ((_tl227998228028_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e228000228023_)))
                                     (_hd227999228026_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e228000228023_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd227999228026_))
                                     (let ((_e228003228031_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd227999228026_))))
                                       (let ((_tl228001228036_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e228003228031_)))
                                             (_hd228002228034_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e228003228031_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl228001228036_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl227998228028_))
                                                 (let ((_e228006228039_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl227998228028_))))
                                                   (let ((_tl228004228044_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e228006228039_)))
                                                         (_hd228005228042_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e228006228039_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl228004228044_))
                                                         (___kont240946240947_
                                                          _hd228005228042_
                                                          _hd228002228034_)
                                                         (___kont240948240949_))))
                                                 (___kont240948240949_))
                                             (___kont240948240949_))))
                                     (___kont240948240949_))))
                             (___kont240948240949_))))))
                  (_lift-kw-lambda-bindings227436_
                   (lambda (_bindings227603_)
                     (let _lp227605_ ((_rest227607_ _bindings227603_)
                                      (_lift1227608_ '())
                                      (_lift2227609_ '())
                                      (_bind227610_ '()))
                       (let* ((_rest227611227619_ _rest227607_)
                              (_else227613227627_
                               (lambda ()
                                 (values (reverse _lift1227608_)
                                         (reverse _lift2227609_)
                                         (reverse _bind227610_))))
                              (_K227615227979_
                               (lambda (_rest227630_ _hd227631_)
                                 (let* ((___stx240974240975_ _hd227631_)
                                        (_g227634227659_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx240974240975_)))))
                                   (let ((___kont240976240977_
                                          (lambda (_L227729_ _L227730_)
                                            (let* ((_g227744227797_
                                                    (lambda (_g227745227794_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227745227794_))))
                                                   (_g227743227973_
                                                    (lambda (_g227745227800_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227745227800_))
                                                          (let ((_e227753227802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227745227800_))))
                    (let ((_hd227752227805_
                           (let ()
                             (declare (not safe))
                             (##car _e227753227802_)))
                          (_tl227751227807_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227753227802_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227751227807_))
                          (let ((_e227756227810_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227751227807_))))
                            (let ((_hd227755227813_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227756227810_)))
                                  (_tl227754227815_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227756227810_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227755227813_))
                                  (let ((_e227759227818_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227755227813_))))
                                    (let ((_hd227758227821_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227759227818_)))
                                          (_tl227757227823_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227759227818_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227758227821_))
                                          (let ((_e227762227826_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227758227821_))))
                                            (let ((_hd227761227829_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227762227826_)))
                                                  (_tl227760227831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227762227826_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227761227829_))
                                                  (let ((_e227765227834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227761227829_))))
                                                    (let ((_hd227764227837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227765227834_)))
                                                          (_tl227763227839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227765227834_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227763227839_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227760227831_))
                      (let ((_e227768227842_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227760227831_))))
                        (let ((_hd227767227845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227768227842_)))
                              (_tl227766227847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227768227842_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd227767227845_))
                              (let ((_e227771227850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd227767227845_))))
                                (let ((_hd227770227853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227771227850_)))
                                      (_tl227769227855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227771227850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227769227855_))
                                      (let ((_e227774227858_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227769227855_))))
                                        (let ((_hd227773227861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227774227858_)))
                                              (_tl227772227863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227774227858_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd227773227861_))
                                              (let ((_e227777227866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd227773227861_))))
                                                (let ((_hd227776227869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e227777227866_)))
                                                      (_tl227775227871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e227777227866_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd227776227869_))
                                                      (let ((_e227780227874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd227776227869_))))
                (let ((_hd227779227877_
                       (let () (declare (not safe)) (##car _e227780227874_)))
                      (_tl227778227879_
                       (let () (declare (not safe)) (##cdr _e227780227874_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd227779227877_))
                      (let ((_e227783227882_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd227779227877_))))
                        (let ((_hd227782227885_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227783227882_)))
                              (_tl227781227887_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227783227882_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227781227887_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl227778227879_))
                                  (let ((_e227786227890_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl227778227879_))))
                                    (let ((_hd227785227893_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227786227890_)))
                                          (_tl227784227895_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227786227890_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl227784227895_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227775227871_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl227772227863_))
                                                  (let ((_e227789227898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl227772227863_))))
                                                    (let ((_hd227788227901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227789227898_)))
                                                          (_tl227787227903_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227789227898_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227787227903_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl227766227847_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl227757227823_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl227754227815_))
                              (let ((_e227792227906_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl227754227815_))))
                                (let ((_hd227791227909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e227792227906_)))
                                      (_tl227790227911_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e227792227906_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl227790227911_))
                                      ((lambda (_L227914_
                                                _L227915_
                                                _L227916_
                                                _L227917_
                                                _L227918_)
                                         (let* ((_get-kws-id227958_
                                                 (let ((__tmp241501
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227730_)))
                                                       (__tmp241500
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241501
                                                    __tmp241500)))
                                                (_get-kws-id227960_
                                                 (let ((__tmp241502
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227431_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227958_
                                                    __tmp241502)))
                                                (_main-id227962_
                                                 (let ((__tmp241504
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L227730_)))
                                                       (__tmp241503
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241504
                                                    __tmp241503)))
                                                (_main-id227964_
                                                 (let ((__tmp241505
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx227431_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227962_
                                                    __tmp241505)))
                                                (_g241506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227960_)))
                                                (_g241507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227964_)))
                                                (_new-kw-dispatch227968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227914_
                                                    _L227918_
                                                    _get-kws-id227960_)))
                                                (_new-get-kws227970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227915_
                                                    _L227917_
                                                    _main-id227964_))))
                                           (let ((__tmp241510
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L227730_)))
                                                 (__tmp241509
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227960_)))
                                                 (__tmp241508
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227964_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241510
                                              '" => "
                                              __tmp241509
                                              '" => "
                                              __tmp241508))
                                           (let ((__tmp241515
                                                  (let ((__tmp241516
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239136239137_
                                                            _main-id227964_
                                                            _L227916_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241516
                                                          _lift1227608_)))
                                                 (__tmp241513
                                                  (let ((__tmp241514
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239136239137_
                                                            _get-kws-id227960_
                                                            _new-get-kws227970_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241514
                                                          _lift2227609_)))
                                                 (__tmp241511
                                                  (let ((__tmp241512
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239136239137_
                                                            _L227730_
                                                            _new-kw-dispatch227968_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp241512
                                                          _bind227610_))))
                                             (declare (not safe))
                                             (_lp227605_
                                              _rest227630_
                                              __tmp241515
                                              __tmp241513
                                              __tmp241511))))
                                       _hd227791227909_
                                       _hd227788227901_
                                       _hd227785227893_
                                       _hd227782227885_
                                       _hd227764227837_)
                                      (let ()
                                        (declare (not safe))
                                        (_g227744227797_ _g227745227800_)))))
                              (let ()
                                (declare (not safe))
                                (_g227744227797_ _g227745227800_)))
                          (let ()
                            (declare (not safe))
                            (_g227744227797_ _g227745227800_)))
                      (let ()
                        (declare (not safe))
                        (_g227744227797_ _g227745227800_)))
                  (let ()
                    (declare (not safe))
                    (_g227744227797_ _g227745227800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227744227797_
                                                     _g227745227800_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g227744227797_
                                                 _g227745227800_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g227744227797_
                                             _g227745227800_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227744227797_ _g227745227800_)))
                              (let ()
                                (declare (not safe))
                                (_g227744227797_ _g227745227800_)))))
                      (let ()
                        (declare (not safe))
                        (_g227744227797_ _g227745227800_)))))
              (let ()
                (declare (not safe))
                (_g227744227797_ _g227745227800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g227744227797_
                                                 _g227745227800_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227744227797_ _g227745227800_)))))
                              (let ()
                                (declare (not safe))
                                (_g227744227797_ _g227745227800_)))))
                      (let ()
                        (declare (not safe))
                        (_g227744227797_ _g227745227800_)))
                  (let ()
                    (declare (not safe))
                    (_g227744227797_ _g227745227800_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227744227797_
                                                     _g227745227800_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227744227797_
                                             _g227745227800_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227744227797_ _g227745227800_)))))
                          (let ()
                            (declare (not safe))
                            (_g227744227797_ _g227745227800_)))))
                  (let ()
                    (declare (not safe))
                    (_g227744227797_ _g227745227800_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227743227973_ _L227729_))))
                                         (___kont240978240979_
                                          (lambda (_L227680_ _L227681_)
                                            (let ((__tmp241517
                                                   (let ((__tmp241518
                                                          (let ((__tmp241519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L227680_ '()))))
                    (declare (not safe))
                    (cons _L227681_ __tmp241519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241518
                                                           _bind227610_))))
                                              (declare (not safe))
                                              (_lp227605_
                                               _rest227630_
                                               _lift1227608_
                                               _lift2227609_
                                               __tmp241517)))))
                                     (let ((___match241001241002_
                                            (lambda (_e227640227705_
                                                     _hd227639227708_
                                                     _tl227638227710_
                                                     _e227643227713_
                                                     _hd227642227716_
                                                     _tl227641227718_
                                                     _e227646227721_
                                                     _hd227645227724_
                                                     _tl227644227726_)
                                              (let ((_L227729_
                                                     _hd227645227724_)
                                                    (_L227730_
                                                     _hd227642227716_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L227730_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L227729_)))
                                                    (___kont240976240977_
                                                     _L227729_
                                                     _L227730_)
                                                    (___kont240978240979_
                                                     _hd227645227724_
                                                     _hd227639227708_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx240974240975_))
                                           (let ((_e227640227705_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx240974240975_))))
                                             (let ((_tl227638227710_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e227640227705_)))
                                                   (_hd227639227708_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e227640227705_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd227639227708_))
                                                   (let ((_e227643227713_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd227639227708_))))
                                                     (let ((_tl227641227718_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e227643227713_)))
                                                           (_hd227642227716_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e227643227713_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl227641227718_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl227638227710_))
                       (let ((_e227646227721_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227638227710_))))
                         (let ((_tl227644227726_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227646227721_)))
                               (_hd227645227724_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227646227721_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227644227726_))
                               (___match241001241002_
                                _e227640227705_
                                _hd227639227708_
                                _tl227638227710_
                                _e227643227713_
                                _hd227642227716_
                                _tl227641227718_
                                _e227646227721_
                                _hd227645227724_
                                _tl227644227726_)
                               (let ()
                                 (declare (not safe))
                                 (_g227634227659_)))))
                       (let () (declare (not safe)) (_g227634227659_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl227638227710_))
                       (let ((_e227654227672_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl227638227710_))))
                         (let ((_tl227652227677_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e227654227672_)))
                               (_hd227653227675_
                                (let ()
                                  (declare (not safe))
                                  (##car _e227654227672_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl227652227677_))
                               (___kont240978240979_
                                _hd227653227675_
                                _hd227639227708_)
                               (let ()
                                 (declare (not safe))
                                 (_g227634227659_)))))
                       (let () (declare (not safe)) (_g227634227659_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl227638227710_))
                                                       (let ((_e227654227672_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl227638227710_))))
                 (let ((_tl227652227677_
                        (let () (declare (not safe)) (##cdr _e227654227672_)))
                       (_hd227653227675_
                        (let () (declare (not safe)) (##car _e227654227672_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl227652227677_))
                       (___kont240978240979_ _hd227653227675_ _hd227639227708_)
                       (let () (declare (not safe)) (_g227634227659_)))))
               (let () (declare (not safe)) (_g227634227659_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g227634227659_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest227611227619_))
                             (let ((_hd227616227982_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest227611227619_)))
                                   (_tl227617227984_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest227611227619_))))
                               (let* ((_hd227987_ _hd227616227982_)
                                      (_rest227989_ _tl227617227984_))
                                 (declare (not safe))
                                 (_K227615227979_ _rest227989_ _hd227987_)))
                             (let ()
                               (declare (not safe))
                               (_else227613227627_))))))))
          (let* ((___stx241018241019_ _stx227431_)
                 (_g227439227465_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx241018241019_)))))
            (let ((___kont241020241021_
                   (lambda (_L227525_ _L227526_)
                     (let ((__tmp241521
                            (lambda ()
                              (if (let ((__tmp241548
                                         (let ((__tmp241549
                                                (lambda (_g227554227557_
                                                         _g227555227559_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g227554227557_
                                                          _g227555227559_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp241549
                                                   '()
                                                   _L227526_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?227435_
                                            __tmp241548))
                                  (let ((_g241535_
                                         (let ((__tmp241537
                                                (let ((__tmp241538
                                                       (lambda (_g227561227564_
                                                                _g227562227566_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227561227564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227562227566_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241538
                                                          '()
                                                          _L227526_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings227436_
                                            __tmp241537))))
                                    (begin
                                      (let ((_g241536_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241535_)
                                                   (##vector-length _g241535_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241536_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241536_)))
                                      (let ((_lift1227569_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241535_ 0)))
                                            (_lift2227570_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241535_ 1)))
                                            (_hd227571_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241535_ 2))))
                                        (let* ((_expr227573_
                                                (let ((__tmp241539
                                                       (let ((__tmp241540
                                                              (let ((__tmp241541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L227525_ '()))))
                        (declare (not safe))
                        (cons _hd227571_ __tmp241541))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241539
                                                   _stx227431_)))
                                               (_expr227575_
                                                (let ((__tmp241542
                                                       (let ((__tmp241543
                                                              (let ((__tmp241544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227573_ '()))))
                        (declare (not safe))
                        (cons _lift2227570_ __tmp241544))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241542
                                                   _stx227431_)))
                                               (_expr227577_
                                                (let ((__tmp241545
                                                       (let ((__tmp241546
                                                              (let ((__tmp241547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr227575_ '()))))
                        (declare (not safe))
                        (cons _lift1227569_ __tmp241547))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241545
                                                   _stx227431_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr227577_))))))
                                  (let ((_g241522_
                                         (let ((__tmp241524
                                                (let ((__tmp241525
                                                       (lambda (_g227579227582_
                                                                _g227580227584_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g227579227582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g227580227584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp241525
                                                          '()
                                                          _L227526_))))
                                           (declare (not safe))
                                           (_compile-bindings227434_
                                            __tmp241524))))
                                    (begin
                                      (let ((_g241523_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g241522_)
                                                   (##vector-length _g241522_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g241523_ 3)))
                                            (error "Context expects 3 values"
                                                   _g241523_)))
                                      (let ((_lift1227587_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241522_ 0)))
                                            (_lift2227588_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241522_ 1)))
                                            (_hd227589_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g241522_ 2))))
                                        (let* ((_body227591_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L227525_)))
                                               (_expr227593_
                                                (let ((__tmp241526
                                                       (let ((__tmp241527
                                                              (let ((__tmp241528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body227591_ '()))))
                        (declare (not safe))
                        (cons _hd227589_ __tmp241528))))
                 (declare (not safe))
                 (cons '%#let-values __tmp241527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp241526
                                                   _stx227431_)))
                                               (_expr227595_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2227588_))
                                                    _expr227593_
                                                    (let ((__tmp241529
                                                           (let ((__tmp241530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241531
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227593_ '()))))
                            (declare (not safe))
                            (cons _lift2227588_ __tmp241531))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241530))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241529 _stx227431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr227597_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1227587_))
                                                    _expr227595_
                                                    (let ((__tmp241532
                                                           (let ((__tmp241533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241534
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr227595_ '()))))
                            (declare (not safe))
                            (cons _lift1227587_ __tmp241534))))
                     (declare (not safe))
                     (cons '%#let-values __tmp241533))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp241532 _stx227431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr227597_)))))))
                           (__tmp241520
                            (let ((__obj241224
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241224)
                              __obj241224)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241521
                        gx#current-expander-context
                        __tmp241520))))
                  (___kont241024241025_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx227431_)))))
              (let ((___match241045241046_
                     (lambda (_e227445227477_
                              _hd227444227480_
                              _tl227443227482_
                              _e227448227485_
                              _hd227447227488_
                              _tl227446227490_
                              ___splice241022241023_
                              _target227449227493_
                              _tl227451227495_)
                       (letrec ((_loop227452227498_
                                 (lambda (_hd227450227501_ _bind227456227503_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd227450227501_))
                                       (let ((_e227453227506_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd227450227501_))))
                                         (let ((_lp-tl227455227511_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e227453227506_)))
                                               (_lp-hd227454227509_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e227453227506_))))
                                           (let ((__tmp241552
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd227454227509_
                                                          _bind227456227503_))))
                                             (declare (not safe))
                                             (_loop227452227498_
                                              _lp-tl227455227511_
                                              __tmp241552))))
                                       (let ((_bind227457227514_
                                              (reverse _bind227456227503_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl227446227490_))
                                             (let ((_e227460227517_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl227446227490_))))
                                               (let ((_tl227458227522_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e227460227517_)))
                                                     (_hd227459227520_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e227460227517_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl227458227522_))
                                                     (let ((_L227525_
                                                            _hd227459227520_)
                                                           (_L227526_
                                                            _bind227457227514_))
                                                       (if (let ((__tmp241550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241551
                                 (lambda (_g227546227549_ _g227547227551_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g227546227549_ _g227547227551_)))))
                            (declare (not safe))
                            (foldr1 __tmp241551 '() _L227526_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241550))
                   (___kont241020241021_ _L227525_ _L227526_)
                   (___kont241024241025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont241024241025_))))
                                             (___kont241024241025_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop227452227498_ _target227449227493_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx241018241019_))
                    (let ((_e227445227477_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx241018241019_))))
                      (let ((_tl227443227482_
                             (let ()
                               (declare (not safe))
                               (##cdr _e227445227477_)))
                            (_hd227444227480_
                             (let ()
                               (declare (not safe))
                               (##car _e227445227477_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl227443227482_))
                            (let ((_e227448227485_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl227443227482_))))
                              (let ((_tl227446227490_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e227448227485_)))
                                    (_hd227447227488_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e227448227485_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd227447227488_))
                                    (let ((___splice241022241023_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd227447227488_
                                              '0))))
                                      (let ((_tl227451227495_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241022241023_
                                                '1)))
                                            (_target227449227493_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241022241023_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl227451227495_))
                                            (___match241045241046_
                                             _e227445227477_
                                             _hd227444227480_
                                             _tl227443227482_
                                             _e227448227485_
                                             _hd227447227488_
                                             _tl227446227490_
                                             ___splice241022241023_
                                             _target227449227493_
                                             _tl227451227495_)
                                            (___kont241024241025_))))
                                    (___kont241024241025_))))
                            (___kont241024241025_))))
                    (___kont241024241025_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx226575_)
        (letrec* ((_bind-e__239141239142_
                   (lambda (_id227415_ _expr227416_ _compile?227417_)
                     (let ((__tmp241555
                            (let ()
                              (declare (not safe))
                              (cons _id227415_ '())))
                           (__tmp241553
                            (let ((__tmp241554
                                   (if _compile?227417_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr227416_))
                                       _expr227416_)))
                              (declare (not safe))
                              (cons __tmp241554 '()))))
                       (declare (not safe))
                       (cons __tmp241555 __tmp241553))))
                  (_bind-e__0__239143239144_
                   (lambda (_id227422_ _expr227423_)
                     (let ((_compile?227425_ '#t))
                       (declare (not safe))
                       (_bind-e__239141239142_
                        _id227422_
                        _expr227423_
                        _compile?227425_))))
                  (_bind-e226577_
                   (lambda _g241557_
                     (let ((_g241556_
                            (let ()
                              (declare (not safe))
                              (##length _g241557_))))
                       (cond ((let () (declare (not safe)) (##fx= _g241556_ 2))
                              (apply (lambda (_id227422_ _expr227423_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__239143239144_
                                          _id227422_
                                          _expr227423_)))
                                     _g241557_))
                             ((let () (declare (not safe)) (##fx= _g241556_ 3))
                              (apply (lambda (_id227427_
                                              _expr227428_
                                              _compile?227429_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__239141239142_
                                          _id227427_
                                          _expr227428_
                                          _compile?227429_)))
                                     _g241557_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g241557_))))))
                  (_compile-bindings226578_
                   (lambda (_rest226713_)
                     (let _lp226715_ ((_rest226717_ _rest226713_)
                                      (_bind226718_ '()))
                       (let* ((_rest226719226727_ _rest226717_)
                              (_else226721226735_
                               (lambda () (reverse _bind226718_)))
                              (_K226723227402_
                               (lambda (_rest226738_ _hd226739_)
                                 (let* ((___stx241068241069_ _hd226739_)
                                        (_g226744226791_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx241068241069_)))))
                                   (let ((___kont241070241071_
                                          (lambda (_L227309_ _L227310_)
                                            (let* ((___stx241048241049_
                                                    _L227309_)
                                                   (_g227325227339_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx241048241049_)))))
                                              (let ((___kont241050241051_
                                                     (lambda (_L227387_)
                                                       (let ((__tmp241558
                                                              (let ((__tmp241559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__239141239142_
                                _L227310_
                                _L227309_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp241559 _bind226718_))))
                 (declare (not safe))
                 (_lp226715_ _rest226738_ __tmp241558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont241052241053_
                                                     (lambda (_L227352_)
                                                       (let ((_g241560_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx226575_
                         _L227310_
                         _L227352_
                         '#t))))
                 (begin
                   (let ((_g241561_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g241560_)
                                (##vector-length _g241560_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g241561_ 3)))
                         (error "Context expects 3 values" _g241561_)))
                   (let ((_ids227362_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241560_ 0)))
                         (_impls227363_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241560_ 1)))
                         (_clauses227364_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g241560_ 2))))
                     (let* ((_g241562_
                             (for-each gx#core-bind-runtime! _ids227362_))
                            (_xbind227367_
                             (map _bind-e226577_ _ids227362_ _impls227363_))
                            (_expr*227369_
                             (let ((__tmp241564
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses227364_)))
                                   (__tmp241563
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp241564
                                __tmp241563)))
                            (_bind*227371_
                             (let ()
                               (declare (not safe))
                               (_bind-e__239141239142_
                                _L227310_
                                _expr*227369_
                                '#f))))
                       (let ((__tmp241566
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L227310_)))
                             (__tmp241565
                              (map gxc#identifier-symbol _ids227362_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp241566
                          '" => "
                          __tmp241565))
                       (let ((__tmp241567
                              (let ((__tmp241568
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind226718_
                                               _xbind227367_))))
                                (declare (not safe))
                                (cons _bind*227371_ __tmp241568))))
                         (declare (not safe))
                         (_lp226715_ _rest226738_ __tmp241567)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match241059241060_
                                                       (lambda (_e227330227379_
                                                                _hd227329227382_
                                                                _tl227328227384_)
                                                         (let ((_L227387_
                                                                _tl227328227384_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L227387_))
                       (___kont241050241051_ _L227387_)
                       (___kont241052241053_ _tl227328227384_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx241048241049_))
                                                      (let ((_e227330227379_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx241048241049_))))
                (let ((_tl227328227384_
                       (let () (declare (not safe)) (##cdr _e227330227379_)))
                      (_hd227329227382_
                       (let () (declare (not safe)) (##car _e227330227379_))))
                  (___match241059241060_
                   _e227330227379_
                   _hd227329227382_
                   _tl227328227384_)))
              (let () (declare (not safe)) (_g227325227339_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont241072241073_
                                          (lambda (_L227137_ _L227138_)
                                            (let* ((_g227152227182_
                                                    (lambda (_g227153227179_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g227153227179_))))
                                                   (_g227151227277_
                                                    (lambda (_g227153227185_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g227153227185_))
                                                          (let ((_e227159227187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g227153227185_))))
                    (let ((_hd227158227190_
                           (let ()
                             (declare (not safe))
                             (##car _e227159227187_)))
                          (_tl227157227192_
                           (let ()
                             (declare (not safe))
                             (##cdr _e227159227187_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl227157227192_))
                          (let ((_e227162227195_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl227157227192_))))
                            (let ((_hd227161227198_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e227162227195_)))
                                  (_tl227160227200_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e227162227195_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd227161227198_))
                                  (let ((_e227165227203_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd227161227198_))))
                                    (let ((_hd227164227206_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e227165227203_)))
                                          (_tl227163227208_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e227165227203_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd227164227206_))
                                          (let ((_e227168227211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd227164227206_))))
                                            (let ((_hd227167227214_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e227168227211_)))
                                                  (_tl227166227216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e227168227211_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd227167227214_))
                                                  (let ((_e227171227219_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd227167227214_))))
                                                    (let ((_hd227170227222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e227171227219_)))
                                                          (_tl227169227224_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e227171227219_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl227169227224_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl227166227216_))
                      (let ((_e227174227227_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl227166227216_))))
                        (let ((_hd227173227230_
                               (let ()
                                 (declare (not safe))
                                 (##car _e227174227227_)))
                              (_tl227172227232_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e227174227227_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl227172227232_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl227163227208_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl227160227200_))
                                      (let ((_e227177227235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl227160227200_))))
                                        (let ((_hd227176227238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e227177227235_)))
                                              (_tl227175227240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e227177227235_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl227175227240_))
                                              ((lambda (_L227243_
                                                        _L227244_
                                                        _L227245_)
                                                 (let* ((_lambda-id227269_
                                                         (let ((__tmp241570
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L227138_)))
                       (__tmp241569 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp241570 __tmp241569)))
                (_lambda-id227271_
                 (let ((__tmp241571
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx226575_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id227269_ __tmp241571)))
                (_g241572_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id227271_)))
                (_new-case-lambda-expr227274_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L227243_
                    _L227245_
                    _lambda-id227271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp241574
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L227138_)))
                                                         (__tmp241573
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id227271_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp241574
                                                      '" => "
                                                      __tmp241573))
                                                   (let ((__tmp241577
                                                          (let ((__tmp241578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__239141239142_
                            _L227138_
                            _new-case-lambda-expr227274_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp241578 _rest226738_)))
                 (__tmp241575
                  (let ((__tmp241576
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__239143239144_
                            _lambda-id227271_
                            _L227244_))))
                    (declare (not safe))
                    (cons __tmp241576 _bind226718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp226715_
                                                      __tmp241577
                                                      __tmp241575))))
                                               _hd227176227238_
                                               _hd227173227230_
                                               _hd227170227222_)
                                              (let ()
                                                (declare (not safe))
                                                (_g227152227182_
                                                 _g227153227185_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g227152227182_ _g227153227185_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g227152227182_ _g227153227185_)))
                              (let ()
                                (declare (not safe))
                                (_g227152227182_ _g227153227185_)))))
                      (let ()
                        (declare (not safe))
                        (_g227152227182_ _g227153227185_)))
                  (let ()
                    (declare (not safe))
                    (_g227152227182_ _g227153227185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g227152227182_
                                                     _g227153227185_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g227152227182_
                                             _g227153227185_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g227152227182_ _g227153227185_)))))
                          (let ()
                            (declare (not safe))
                            (_g227152227182_ _g227153227185_)))))
                  (let ()
                    (declare (not safe))
                    (_g227152227182_ _g227153227185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g227151227277_ _L227137_))))
                                         (___kont241074241075_
                                          (lambda (_L226861_ _L226862_)
                                            (let* ((_g226876226929_
                                                    (lambda (_g226877226926_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g226877226926_))))
                                                   (_g226875227105_
                                                    (lambda (_g226877226932_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g226877226932_))
                                                          (let ((_e226885226934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g226877226932_))))
                    (let ((_hd226884226937_
                           (let ()
                             (declare (not safe))
                             (##car _e226885226934_)))
                          (_tl226883226939_
                           (let ()
                             (declare (not safe))
                             (##cdr _e226885226934_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl226883226939_))
                          (let ((_e226888226942_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl226883226939_))))
                            (let ((_hd226887226945_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e226888226942_)))
                                  (_tl226886226947_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e226888226942_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd226887226945_))
                                  (let ((_e226891226950_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd226887226945_))))
                                    (let ((_hd226890226953_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226891226950_)))
                                          (_tl226889226955_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226891226950_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd226890226953_))
                                          (let ((_e226894226958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd226890226953_))))
                                            (let ((_hd226893226961_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e226894226958_)))
                                                  (_tl226892226963_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e226894226958_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd226893226961_))
                                                  (let ((_e226897226966_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd226893226961_))))
                                                    (let ((_hd226896226969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226897226966_)))
                                                          (_tl226895226971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226897226966_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226895226971_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl226892226963_))
                      (let ((_e226900226974_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl226892226963_))))
                        (let ((_hd226899226977_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226900226974_)))
                              (_tl226898226979_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226900226974_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd226899226977_))
                              (let ((_e226903226982_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd226899226977_))))
                                (let ((_hd226902226985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226903226982_)))
                                      (_tl226901226987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226903226982_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl226901226987_))
                                      (let ((_e226906226990_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl226901226987_))))
                                        (let ((_hd226905226993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e226906226990_)))
                                              (_tl226904226995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e226906226990_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd226905226993_))
                                              (let ((_e226909226998_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd226905226993_))))
                                                (let ((_hd226908227001_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e226909226998_)))
                                                      (_tl226907227003_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e226909226998_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd226908227001_))
                                                      (let ((_e226912227006_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd226908227001_))))
                (let ((_hd226911227009_
                       (let () (declare (not safe)) (##car _e226912227006_)))
                      (_tl226910227011_
                       (let () (declare (not safe)) (##cdr _e226912227006_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd226911227009_))
                      (let ((_e226915227014_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd226911227009_))))
                        (let ((_hd226914227017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e226915227014_)))
                              (_tl226913227019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e226915227014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl226913227019_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl226910227011_))
                                  (let ((_e226918227022_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl226910227011_))))
                                    (let ((_hd226917227025_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e226918227022_)))
                                          (_tl226916227027_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e226918227022_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl226916227027_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl226907227003_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl226904226995_))
                                                  (let ((_e226921227030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl226904226995_))))
                                                    (let ((_hd226920227033_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e226921227030_)))
                                                          (_tl226919227035_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e226921227030_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl226919227035_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl226898226979_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl226889226955_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl226886226947_))
                              (let ((_e226924227038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl226886226947_))))
                                (let ((_hd226923227041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e226924227038_)))
                                      (_tl226922227043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e226924227038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl226922227043_))
                                      ((lambda (_L227046_
                                                _L227047_
                                                _L227048_
                                                _L227049_
                                                _L227050_)
                                         (let* ((_get-kws-id227090_
                                                 (let ((__tmp241580
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226862_)))
                                                       (__tmp241579
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241580
                                                    __tmp241579)))
                                                (_get-kws-id227092_
                                                 (let ((__tmp241581
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226575_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id227090_
                                                    __tmp241581)))
                                                (_main-id227094_
                                                 (let ((__tmp241583
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L226862_)))
                                                       (__tmp241582
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp241583
                                                    __tmp241582)))
                                                (_main-id227096_
                                                 (let ((__tmp241584
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx226575_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id227094_
                                                    __tmp241584)))
                                                (_g241585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id227092_)))
                                                (_g241586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id227096_)))
                                                (_new-kw-dispatch227100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227046_
                                                    _L227050_
                                                    _get-kws-id227092_)))
                                                (_new-get-kws227102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L227047_
                                                    _L227049_
                                                    _main-id227096_))))
                                           (let ((__tmp241589
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L226862_)))
                                                 (__tmp241588
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id227092_)))
                                                 (__tmp241587
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id227096_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp241589
                                              '" => "
                                              __tmp241588
                                              '" => "
                                              __tmp241587))
                                           (let ((__tmp241590
                                                  (let ((__tmp241595
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__239141239142_
                                                            _main-id227096_
                                                            _L227048_
                                                            '#f)))
                                                        (__tmp241591
                                                         (let ((__tmp241594
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__239141239142_
                           _get-kws-id227092_
                           _new-get-kws227102_
                           '#f)))
                       (__tmp241592
                        (let ((__tmp241593
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__239141239142_
                                  _L226862_
                                  _new-kw-dispatch227100_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp241593 _rest226738_))))
                   (declare (not safe))
                   (cons __tmp241594 __tmp241592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp241595
                                                          __tmp241591))))
                                             (declare (not safe))
                                             (_lp226715_
                                              __tmp241590
                                              _bind226718_))))
                                       _hd226923227041_
                                       _hd226920227033_
                                       _hd226917227025_
                                       _hd226914227017_
                                       _hd226896226969_)
                                      (let ()
                                        (declare (not safe))
                                        (_g226876226929_ _g226877226932_)))))
                              (let ()
                                (declare (not safe))
                                (_g226876226929_ _g226877226932_)))
                          (let ()
                            (declare (not safe))
                            (_g226876226929_ _g226877226932_)))
                      (let ()
                        (declare (not safe))
                        (_g226876226929_ _g226877226932_)))
                  (let ()
                    (declare (not safe))
                    (_g226876226929_ _g226877226932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226876226929_
                                                     _g226877226932_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g226876226929_
                                                 _g226877226932_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g226876226929_
                                             _g226877226932_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226876226929_ _g226877226932_)))
                              (let ()
                                (declare (not safe))
                                (_g226876226929_ _g226877226932_)))))
                      (let ()
                        (declare (not safe))
                        (_g226876226929_ _g226877226932_)))))
              (let ()
                (declare (not safe))
                (_g226876226929_ _g226877226932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g226876226929_
                                                 _g226877226932_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g226876226929_ _g226877226932_)))))
                              (let ()
                                (declare (not safe))
                                (_g226876226929_ _g226877226932_)))))
                      (let ()
                        (declare (not safe))
                        (_g226876226929_ _g226877226932_)))
                  (let ()
                    (declare (not safe))
                    (_g226876226929_ _g226877226932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g226876226929_
                                                     _g226877226932_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g226876226929_
                                             _g226877226932_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g226876226929_ _g226877226932_)))))
                          (let ()
                            (declare (not safe))
                            (_g226876226929_ _g226877226932_)))))
                  (let ()
                    (declare (not safe))
                    (_g226876226929_ _g226877226932_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g226875227105_ _L226861_))))
                                         (___kont241076241077_
                                          (lambda (_L226812_ _L226813_)
                                            (let ((__tmp241596
                                                   (let ((__tmp241597
                                                          (let ((__tmp241598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp241599
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L226812_))))
                           (declare (not safe))
                           (cons __tmp241599 '()))))
                    (declare (not safe))
                    (cons _L226813_ __tmp241598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp241597
                                                           _bind226718_))))
                                              (declare (not safe))
                                              (_lp226715_
                                               _rest226738_
                                               __tmp241596)))))
                                     (let* ((___match241143241144_
                                             (lambda (_e226772226837_
                                                      _hd226771226840_
                                                      _tl226770226842_
                                                      _e226775226845_
                                                      _hd226774226848_
                                                      _tl226773226850_
                                                      _e226778226853_
                                                      _hd226777226856_
                                                      _tl226776226858_)
                                               (let ((_L226861_
                                                      _hd226777226856_)
                                                     (_L226862_
                                                      _hd226774226848_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L226862_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L226861_)))
                                                     (___kont241074241075_
                                                      _L226861_
                                                      _L226862_)
                                                     (___kont241076241077_
                                                      _hd226777226856_
                                                      _hd226771226840_)))))
                                            (___match241121241122_
                                             (lambda (_e226761227113_
                                                      _hd226760227116_
                                                      _tl226759227118_
                                                      _e226764227121_
                                                      _hd226763227124_
                                                      _tl226762227126_
                                                      _e226767227129_
                                                      _hd226766227132_
                                                      _tl226765227134_)
                                               (let ((_L227137_
                                                      _hd226766227132_)
                                                     (_L227138_
                                                      _hd226763227124_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227138_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L227137_)))
                                                     (___kont241072241073_
                                                      _L227137_
                                                      _L227138_)
                                                     (___match241143241144_
                                                      _e226761227113_
                                                      _hd226760227116_
                                                      _tl226759227118_
                                                      _e226764227121_
                                                      _hd226763227124_
                                                      _tl226762227126_
                                                      _e226767227129_
                                                      _hd226766227132_
                                                      _tl226765227134_)))))
                                            (___match241099241100_
                                             (lambda (_e226750227285_
                                                      _hd226749227288_
                                                      _tl226748227290_
                                                      _e226753227293_
                                                      _hd226752227296_
                                                      _tl226751227298_
                                                      _e226756227301_
                                                      _hd226755227304_
                                                      _tl226754227306_)
                                               (let ((_L227309_
                                                      _hd226755227304_)
                                                     (_L227310_
                                                      _hd226752227296_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L227310_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L227309_)))
                                                     (___kont241070241071_
                                                      _L227309_
                                                      _L227310_)
                                                     (___match241121241122_
                                                      _e226750227285_
                                                      _hd226749227288_
                                                      _tl226748227290_
                                                      _e226753227293_
                                                      _hd226752227296_
                                                      _tl226751227298_
                                                      _e226756227301_
                                                      _hd226755227304_
                                                      _tl226754227306_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx241068241069_))
                                           (let ((_e226750227285_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx241068241069_))))
                                             (let ((_tl226748227290_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e226750227285_)))
                                                   (_hd226749227288_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e226750227285_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd226749227288_))
                                                   (let ((_e226753227293_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd226749227288_))))
                                                     (let ((_tl226751227298_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e226753227293_)))
                                                           (_hd226752227296_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e226753227293_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl226751227298_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl226748227290_))
                       (let ((_e226756227301_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226748227290_))))
                         (let ((_tl226754227306_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226756227301_)))
                               (_hd226755227304_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226756227301_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226754227306_))
                               (___match241099241100_
                                _e226750227285_
                                _hd226749227288_
                                _tl226748227290_
                                _e226753227293_
                                _hd226752227296_
                                _tl226751227298_
                                _e226756227301_
                                _hd226755227304_
                                _tl226754227306_)
                               (let ()
                                 (declare (not safe))
                                 (_g226744226791_)))))
                       (let () (declare (not safe)) (_g226744226791_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl226748227290_))
                       (let ((_e226786226804_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl226748227290_))))
                         (let ((_tl226784226809_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e226786226804_)))
                               (_hd226785226807_
                                (let ()
                                  (declare (not safe))
                                  (##car _e226786226804_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl226784226809_))
                               (___kont241076241077_
                                _hd226785226807_
                                _hd226749227288_)
                               (let ()
                                 (declare (not safe))
                                 (_g226744226791_)))))
                       (let () (declare (not safe)) (_g226744226791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl226748227290_))
                                                       (let ((_e226786226804_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl226748227290_))))
                 (let ((_tl226784226809_
                        (let () (declare (not safe)) (##cdr _e226786226804_)))
                       (_hd226785226807_
                        (let () (declare (not safe)) (##car _e226786226804_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl226784226809_))
                       (___kont241076241077_ _hd226785226807_ _hd226749227288_)
                       (let () (declare (not safe)) (_g226744226791_)))))
               (let () (declare (not safe)) (_g226744226791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g226744226791_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest226719226727_))
                             (let ((_hd226724227405_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest226719226727_)))
                                   (_tl226725227407_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest226719226727_))))
                               (let* ((_hd227410_ _hd226724227405_)
                                      (_rest227412_ _tl226725227407_))
                                 (declare (not safe))
                                 (_K226723227402_ _rest227412_ _hd227410_)))
                             (let ()
                               (declare (not safe))
                               (_else226721226735_))))))))
          (let* ((___stx241160241161_ _stx226575_)
                 (_g226581226608_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx241160241161_)))))
            (let ((___kont241162241163_
                   (lambda (_L226668_ _L226669_ _L226670_)
                     (let ((__tmp241601
                            (lambda ()
                              (let ((_hd226707_
                                     (let ((__tmp241602
                                            (let ((__tmp241603
                                                   (lambda (_g226699226702_
                                                            _g226700226704_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g226699226702_
                                                             _g226700226704_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp241603
                                                      '()
                                                      _L226669_))))
                                       (declare (not safe))
                                       (_compile-bindings226578_ __tmp241602)))
                                    (_body226708_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L226668_))))
                                (let ((__tmp241604
                                       (let ((__tmp241605
                                              (let ((__tmp241606
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body226708_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd226707_
                                                      __tmp241606))))
                                         (declare (not safe))
                                         (cons _L226670_ __tmp241605))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp241604
                                   _stx226575_)))))
                           (__tmp241600
                            (let ((__obj241225
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj241225)
                              __obj241225)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp241601
                        gx#current-expander-context
                        __tmp241600))))
                  (___kont241166241167_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx226575_)))))
              (let ((___match241187241188_
                     (lambda (_e226588226620_
                              _hd226587226623_
                              _tl226586226625_
                              _e226591226628_
                              _hd226590226631_
                              _tl226589226633_
                              ___splice241164241165_
                              _target226592226636_
                              _tl226594226638_)
                       (letrec ((_loop226595226641_
                                 (lambda (_hd226593226644_ _bind226599226646_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd226593226644_))
                                       (let ((_e226596226649_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd226593226644_))))
                                         (let ((_lp-tl226598226654_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e226596226649_)))
                                               (_lp-hd226597226652_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e226596226649_))))
                                           (let ((__tmp241609
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd226597226652_
                                                          _bind226599226646_))))
                                             (declare (not safe))
                                             (_loop226595226641_
                                              _lp-tl226598226654_
                                              __tmp241609))))
                                       (let ((_bind226600226657_
                                              (reverse _bind226599226646_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl226589226633_))
                                             (let ((_e226603226660_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl226589226633_))))
                                               (let ((_tl226601226665_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e226603226660_)))
                                                     (_hd226602226663_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e226603226660_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl226601226665_))
                                                     (let ((_L226668_
                                                            _hd226602226663_)
                                                           (_L226669_
                                                            _bind226600226657_)
                                                           (_L226670_
                                                            _hd226587226623_))
                                                       (if (let ((__tmp241607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp241608
                                 (lambda (_g226691226694_ _g226692226696_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g226691226694_ _g226692226696_)))))
                            (declare (not safe))
                            (foldr1 __tmp241608 '() _L226669_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp241607))
                   (___kont241162241163_ _L226668_ _L226669_ _L226670_)
                   (___kont241166241167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont241166241167_))))
                                             (___kont241166241167_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop226595226641_ _target226592226636_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx241160241161_))
                    (let ((_e226588226620_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx241160241161_))))
                      (let ((_tl226586226625_
                             (let ()
                               (declare (not safe))
                               (##cdr _e226588226620_)))
                            (_hd226587226623_
                             (let ()
                               (declare (not safe))
                               (##car _e226588226620_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl226586226625_))
                            (let ((_e226591226628_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl226586226625_))))
                              (let ((_tl226589226633_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e226591226628_)))
                                    (_hd226590226631_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e226591226628_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd226590226631_))
                                    (let ((___splice241164241165_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd226590226631_
                                              '0))))
                                      (let ((_tl226594226638_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241164241165_
                                                '1)))
                                            (_target226592226636_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice241164241165_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226594226638_))
                                            (___match241187241188_
                                             _e226588226620_
                                             _hd226587226623_
                                             _tl226586226625_
                                             _e226591226628_
                                             _hd226590226631_
                                             _tl226589226633_
                                             ___splice241164241165_
                                             _target226592226636_
                                             _tl226594226638_)
                                            (___kont241166241167_))))
                                    (___kont241166241167_))))
                            (___kont241166241167_))))
                    (___kont241166241167_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind226493_)
        (let* ((___stx241190241191_ _bind226493_)
               (_g226496226513_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx241190241191_)))))
          (let ((___kont241192241193_
                 (lambda (_L226549_ _L226550_)
                   (if (let () (declare (not safe)) (gx#identifier? _L226550_))
                       (let ((_$e226566_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L226549_))))
                         (if _$e226566_
                             _$e226566_
                             (let ((_$e226569_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L226549_))))
                               (if _$e226569_
                                   _$e226569_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L226549_))))))
                       '#f)))
                (___kont241194241195_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx241190241191_))
                (let ((_e226502226525_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx241190241191_))))
                  (let ((_tl226500226530_
                         (let () (declare (not safe)) (##cdr _e226502226525_)))
                        (_hd226501226528_
                         (let ()
                           (declare (not safe))
                           (##car _e226502226525_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd226501226528_))
                        (let ((_e226505226533_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd226501226528_))))
                          (let ((_tl226503226538_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e226505226533_)))
                                (_hd226504226536_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e226505226533_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl226503226538_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl226500226530_))
                                    (let ((_e226508226541_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl226500226530_))))
                                      (let ((_tl226506226546_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e226508226541_)))
                                            (_hd226507226544_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e226508226541_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl226506226546_))
                                            (___kont241192241193_
                                             _hd226507226544_
                                             _hd226504226536_)
                                            (___kont241194241195_))))
                                    (___kont241194241195_))
                                (___kont241194241195_))))
                        (___kont241194241195_))))
                (___kont241194241195_))))))))
