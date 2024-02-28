(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709159708)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126722_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128815 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126722_ __tmp128815))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126722_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126722_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126722_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126722_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126722_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126705_ . _args126707_)
        (let ((__tmp128817
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126707_)
                     (gxc#compile-e__0 _stx126705_)
                     (let ((_arg1126712_ (car _args126707_))
                           (_rest126714_ (cdr _args126707_)))
                       (if (null? _rest126714_)
                           (gxc#compile-e__1 _stx126705_ _arg1126712_)
                           (let ((_arg2126717_ (car _rest126714_))
                                 (_rest126719_ (cdr _rest126714_)))
                             (if (null? _rest126719_)
                                 (gxc#compile-e__2
                                  _stx126705_
                                  _arg1126712_
                                  _arg2126717_)
                                 (apply gxc#compile-e
                                        _stx126705_
                                        _arg1126712_
                                        _arg2126717_
                                        _rest126719_))))))))
              (__tmp128816 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128817
           gxc#current-compile-methods
           __tmp128816))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126702_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128818 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126702_ __tmp128818))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126702_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126702_ '%#call gxc#basic-expression-type-call%))
           _tbl126702_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126685_ . _args126687_)
        (let ((__tmp128820
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126687_)
                     (gxc#compile-e__0 _stx126685_)
                     (let ((_arg1126692_ (car _args126687_))
                           (_rest126694_ (cdr _args126687_)))
                       (if (null? _rest126694_)
                           (gxc#compile-e__1 _stx126685_ _arg1126692_)
                           (let ((_arg2126697_ (car _rest126694_))
                                 (_rest126699_ (cdr _rest126694_)))
                             (if (null? _rest126699_)
                                 (gxc#compile-e__2
                                  _stx126685_
                                  _arg1126692_
                                  _arg2126697_)
                                 (apply gxc#compile-e
                                        _stx126685_
                                        _arg1126692_
                                        _arg2126697_
                                        _rest126699_))))))))
              (__tmp128819 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128820
           gxc#current-compile-methods
           __tmp128819))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126682_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128821 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126682_ __tmp128821))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126682_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126682_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126682_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126682_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126682_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126682_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126682_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126682_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126682_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126682_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126682_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126682_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126682_ '%#set! gxc#collect-body-setq%))
           _tbl126682_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126665_ . _args126667_)
        (let ((__tmp128823
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126667_)
                     (gxc#compile-e__0 _stx126665_)
                     (let ((_arg1126672_ (car _args126667_))
                           (_rest126674_ (cdr _args126667_)))
                       (if (null? _rest126674_)
                           (gxc#compile-e__1 _stx126665_ _arg1126672_)
                           (let ((_arg2126677_ (car _rest126674_))
                                 (_rest126679_ (cdr _rest126674_)))
                             (if (null? _rest126679_)
                                 (gxc#compile-e__2
                                  _stx126665_
                                  _arg1126672_
                                  _arg2126677_)
                                 (apply gxc#compile-e
                                        _stx126665_
                                        _arg1126672_
                                        _arg2126677_
                                        _rest126679_))))))))
              (__tmp128822 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128823
           gxc#current-compile-methods
           __tmp128822))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126662_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128824 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126662_ __tmp128824))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126662_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126662_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126662_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126662_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126662_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126662_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126662_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126662_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126662_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126662_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126645_ . _args126647_)
        (let ((__tmp128826
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126647_)
                     (gxc#compile-e__0 _stx126645_)
                     (let ((_arg1126652_ (car _args126647_))
                           (_rest126654_ (cdr _args126647_)))
                       (if (null? _rest126654_)
                           (gxc#compile-e__1 _stx126645_ _arg1126652_)
                           (let ((_arg2126657_ (car _rest126654_))
                                 (_rest126659_ (cdr _rest126654_)))
                             (if (null? _rest126659_)
                                 (gxc#compile-e__2
                                  _stx126645_
                                  _arg1126652_
                                  _arg2126657_)
                                 (apply gxc#compile-e
                                        _stx126645_
                                        _arg1126652_
                                        _arg2126657_
                                        _rest126659_))))))))
              (__tmp128825 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128826
           gxc#current-compile-methods
           __tmp128825))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl126642_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128827 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl126642_ __tmp128827))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126642_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126642_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126642_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126642_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl126642_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126625_ . _args126627_)
        (let ((__tmp128829
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126627_)
                     (gxc#compile-e__0 _stx126625_)
                     (let ((_arg1126632_ (car _args126627_))
                           (_rest126634_ (cdr _args126627_)))
                       (if (null? _rest126634_)
                           (gxc#compile-e__1 _stx126625_ _arg1126632_)
                           (let ((_arg2126637_ (car _rest126634_))
                                 (_rest126639_ (cdr _rest126634_)))
                             (if (null? _rest126639_)
                                 (gxc#compile-e__2
                                  _stx126625_
                                  _arg1126632_
                                  _arg2126637_)
                                 (apply gxc#compile-e
                                        _stx126625_
                                        _arg1126632_
                                        _arg2126637_
                                        _rest126639_))))))))
              (__tmp128828 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128829
           gxc#current-compile-methods
           __tmp128828))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126528_)
        (let* ((___stx126735126736_ _stx126528_)
               (_g126531126551_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126735126736_)))))
          (let ((___kont126737126738_
                 (lambda (_L126595_ _L126596_)
                   (let ((_sym126614_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126596_))))
                     (if (let ((__tmp128830 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128830 _sym126614_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126614_))
                         (let ((_type126615126617_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126595_))))
                           (if _type126615126617_
                               (let ((_type126620_ _type126615126617_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126614_
                                  _type126620_))
                               '#f))))))
                (___kont126739126740_ (lambda () '#!void)))
            (let ((___match126768126769_
                   (lambda (_e126537126563_
                            _hd126536126566_
                            _tl126535126568_
                            _e126540126571_
                            _hd126539126574_
                            _tl126538126576_
                            _e126543126579_
                            _hd126542126582_
                            _tl126541126584_
                            _e126546126587_
                            _hd126545126590_
                            _tl126544126592_)
                     (let ((_L126595_ _hd126545126590_)
                           (_L126596_ _hd126542126582_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126596_))
                           (___kont126737126738_ _L126595_ _L126596_)
                           (___kont126739126740_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126735126736_))
                  (let ((_e126537126563_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126735126736_))))
                    (let ((_tl126535126568_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126537126563_)))
                          (_hd126536126566_
                           (let ()
                             (declare (not safe))
                             (##car _e126537126563_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126535126568_))
                          (let ((_e126540126571_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126535126568_))))
                            (let ((_tl126538126576_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126540126571_)))
                                  (_hd126539126574_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126540126571_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126539126574_))
                                  (let ((_e126543126579_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126539126574_))))
                                    (let ((_tl126541126584_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126543126579_)))
                                          (_hd126542126582_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126543126579_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126541126584_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126538126576_))
                                              (let ((_e126546126587_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126538126576_))))
                                                (let ((_tl126544126592_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126546126587_)))
                                                      (_hd126545126590_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126546126587_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126544126592_))
                                                      (___match126768126769_
                                                       _e126537126563_
                                                       _hd126536126566_
                                                       _tl126535126568_
                                                       _e126540126571_
                                                       _hd126539126574_
                                                       _tl126538126576_
                                                       _e126543126579_
                                                       _hd126542126582_
                                                       _tl126541126584_
                                                       _e126546126587_
                                                       _hd126545126590_
                                                       _tl126544126592_)
                                                      (___kont126739126740_))))
                                              (___kont126739126740_))
                                          (___kont126739126740_))))
                                  (___kont126739126740_))))
                          (___kont126739126740_))))
                  (___kont126739126740_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx126384_)
        (let* ((___stx126771126772_ _stx126384_)
               (_g126387126418_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126771126772_)))))
          (let ((___kont126773126774_
                 (lambda (_L126500_ _L126501_)
                   (let ((_sym126517_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126501_))))
                     (if (let ((__tmp128831 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128831 _sym126517_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126517_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126517_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126517_))
                             (let ((_type126518126520_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126500_))))
                               (if _type126518126520_
                                   (let ((_type126523_ _type126518126520_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126517_
                                      _type126523_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126500_)))))
                (___kont126775126776_
                 (lambda (_L126447_ _L126448_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126447_)))))
            (let ((___match126804126805_
                   (lambda (_e126393126468_
                            _hd126392126471_
                            _tl126391126473_
                            _e126396126476_
                            _hd126395126479_
                            _tl126394126481_
                            _e126399126484_
                            _hd126398126487_
                            _tl126397126489_
                            _e126402126492_
                            _hd126401126495_
                            _tl126400126497_)
                     (let ((_L126500_ _hd126401126495_)
                           (_L126501_ _hd126398126487_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126501_))
                           (___kont126773126774_ _L126500_ _L126501_)
                           (___kont126775126776_
                            _hd126401126495_
                            _hd126395126479_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126771126772_))
                  (let ((_e126393126468_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126771126772_))))
                    (let ((_tl126391126473_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126393126468_)))
                          (_hd126392126471_
                           (let ()
                             (declare (not safe))
                             (##car _e126393126468_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126391126473_))
                          (let ((_e126396126476_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126391126473_))))
                            (let ((_tl126394126481_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126396126476_)))
                                  (_hd126395126479_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126396126476_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126395126479_))
                                  (let ((_e126399126484_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126395126479_))))
                                    (let ((_tl126397126489_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126399126484_)))
                                          (_hd126398126487_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126399126484_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126397126489_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126394126481_))
                                              (let ((_e126402126492_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126394126481_))))
                                                (let ((_tl126400126497_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126402126492_)))
                                                      (_hd126401126495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126402126492_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126400126497_))
                                                      (___match126804126805_
                                                       _e126393126468_
                                                       _hd126392126471_
                                                       _tl126391126473_
                                                       _e126396126476_
                                                       _hd126395126479_
                                                       _tl126394126481_
                                                       _e126399126484_
                                                       _hd126398126487_
                                                       _tl126397126489_
                                                       _e126402126492_
                                                       _hd126401126495_
                                                       _tl126400126497_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126387126418_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126387126418_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126394126481_))
                                              (let ((_e126413126439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126394126481_))))
                                                (let ((_tl126411126444_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126413126439_)))
                                                      (_hd126412126442_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126413126439_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126411126444_))
                                                      (___kont126775126776_
                                                       _hd126412126442_
                                                       _hd126395126479_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126387126418_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126387126418_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126394126481_))
                                      (let ((_e126413126439_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126394126481_))))
                                        (let ((_tl126411126444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126413126439_)))
                                              (_hd126412126442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126413126439_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126411126444_))
                                              (___kont126775126776_
                                               _hd126412126442_
                                               _hd126395126479_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126387126418_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126387126418_))))))
                          (let () (declare (not safe)) (_g126387126418_)))))
                  (let () (declare (not safe)) (_g126387126418_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx126169_)
        (letrec ((_collect-e126171_
                  (lambda (_hd126328_ _expr126329_)
                    (let* ((___stx126827126828_ _hd126328_)
                           (_g126332126342_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126827126828_)))))
                      (let ((___kont126829126830_
                             (lambda (_L126362_)
                               (let ((_sym126373_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126362_))))
                                 (if (let ((__tmp128832
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128832 _sym126373_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126373_))
                                     (let ((_type126374126376_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126329_))))
                                       (if _type126374126376_
                                           (let ((_type126379_
                                                  _type126374126376_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126373_
                                              _type126379_
                                              '#t))
                                           '#f))))))
                            (___kont126831126832_ (lambda () '#!void)))
                        (let ((___match126840126841_
                               (lambda (_e126337126354_
                                        _hd126336126357_
                                        _tl126335126359_)
                                 (let ((_L126362_ _hd126336126357_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126362_))
                                       (___kont126829126830_ _L126362_)
                                       (___kont126831126832_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126827126828_))
                              (let ((_e126337126354_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126827126828_))))
                                (let ((_tl126335126359_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126337126354_)))
                                      (_hd126336126357_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126337126354_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126335126359_))
                                      (___match126840126841_
                                       _e126337126354_
                                       _hd126336126357_
                                       _tl126335126359_)
                                      (___kont126831126832_))))
                              (___kont126831126832_))))))))
          (let* ((_g126173126208_
                  (lambda (_g126174126205_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126174126205_))))
                 (_g126172126325_
                  (lambda (_g126174126211_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126174126211_))
                        (let ((_e126180126213_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126174126211_))))
                          (let ((_hd126179126216_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126180126213_)))
                                (_tl126178126218_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126180126213_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126178126218_))
                                (let ((_e126183126221_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126178126218_))))
                                  (let ((_hd126182126224_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126183126221_)))
                                        (_tl126181126226_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126183126221_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126182126224_))
                                        (let ((_g128833_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126182126224_
                                                  '0))))
                                          (begin
                                            (let ((_g128834_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128833_)
                                                         (##vector-length
                                                          _g128833_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128834_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128834_)))
                                            (let ((_target126184126229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128833_
                                                      0)))
                                                  (_tl126186126231_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128833_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126186126231_))
                                                  (letrec ((_loop126187126234_
                                                            (lambda (_hd126185126237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126191126239_
                             _hd126192126241_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126185126237_))
                          (let ((_e126188126244_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126185126237_))))
                            (let ((_lp-hd126189126247_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126188126244_)))
                                  (_lp-tl126190126249_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126188126244_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126189126247_))
                                  (let ((_e126197126252_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126189126247_))))
                                    (let ((_hd126196126255_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126197126252_)))
                                          (_tl126195126257_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126197126252_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126195126257_))
                                          (let ((_e126200126260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126195126257_))))
                                            (let ((_hd126199126263_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126200126260_)))
                                                  (_tl126198126265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126200126260_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126198126265_))
                                                  (let ((__tmp128839
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126199126263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126191126239_)))
                (__tmp128838
                 (let ()
                   (declare (not safe))
                   (cons _hd126196126255_ _hd126192126241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126187126234_
                                                     _lp-tl126190126249_
                                                     __tmp128839
                                                     __tmp128838))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126173126208_
                                                     _g126174126211_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126173126208_
                                             _g126174126211_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126173126208_ _g126174126211_)))))
                          (let ((_expr126193126268_
                                 (reverse _expr126191126239_))
                                (_hd126194126270_ (reverse _hd126192126241_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126181126226_))
                                (let ((_e126203126273_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126181126226_))))
                                  (let ((_hd126202126276_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126203126273_)))
                                        (_tl126201126278_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126203126273_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126201126278_))
                                        ((lambda (_L126281_
                                                  _L126282_
                                                  _L126283_)
                                           (for-each
                                            _collect-e126171_
                                            (let ((__tmp128835
                                                   (lambda (_g126303126306_
                                                            _g126304126308_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126303126306_
                                                             _g126304126308_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128835
                                                      '()
                                                      _L126283_))
                                            (let ((__tmp128836
                                                   (lambda (_g126310126313_
                                                            _g126311126315_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126310126313_
                                                             _g126311126315_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128836
                                                      '()
                                                      _L126282_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128837
                                                   (lambda (_g126317126320_
                                                            _g126318126322_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126317126320_
                                                             _g126318126322_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128837
                                                      '()
                                                      _L126282_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L126281_)))
                                         _hd126202126276_
                                         _expr126193126268_
                                         _hd126194126270_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126173126208_ _g126174126211_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126173126208_ _g126174126211_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126187126234_
                                                       _target126184126229_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126173126208_
                                                     _g126174126211_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126173126208_ _g126174126211_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126173126208_ _g126174126211_)))))
                        (let ()
                          (declare (not safe))
                          (_g126173126208_ _g126174126211_))))))
            (declare (not safe))
            (_g126172126325_ _stx126169_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125661_)
        (let* ((___stx126843126844_ _stx125661_)
               (_g125665125780_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126843126844_)))))
          (let ((___kont126845126846_
                 (lambda (_L126119_ _L126120_ _L126121_ _L126122_ _L126123_)
                   (let ((__tmp128843
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126122_)))
                         (__tmp128842
                          (let () (declare (not safe)) (gx#stx-e _L126121_)))
                         (__tmp128841
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126120_)))
                         (__tmp128840
                          (let () (declare (not safe)) (gx#stx-e _L126119_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128843
                      __tmp128842
                      __tmp128841
                      __tmp128840))))
                (___kont126847126848_
                 (lambda (_L125947_ _L125948_ _L125949_ _L125950_)
                   (let ((__tmp128846
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125949_)))
                         (__tmp128845
                          (let () (declare (not safe)) (gx#stx-e _L125948_)))
                         (__tmp128844
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125947_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128846
                      __tmp128845
                      __tmp128844
                      '#f))))
                (___kont126849126850_
                 (lambda (_L125817_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128847
                           (lambda (_g125830125833_ _g125831125835_)
                             (let ()
                               (declare (not safe))
                               (cons _g125830125833_ _g125831125835_)))))
                      (declare (not safe))
                      (foldr1 __tmp128847 '() _L125817_))))))
            (let* ((___match127100127101_
                    (lambda (_e125766125785_
                             _hd125765125788_
                             _tl125764125790_
                             ___splice126851126852_
                             _target125767125793_
                             _tl125769125795_)
                      (letrec ((_loop125770125798_
                                (lambda (_hd125768125801_ _expr125774125803_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125768125801_))
                                      (let ((_e125771125806_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125768125801_))))
                                        (let ((_lp-tl125773125811_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125771125806_)))
                                              (_lp-hd125772125809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125771125806_))))
                                          (let ((__tmp128848
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125772125809_
                                                         _expr125774125803_))))
                                            (declare (not safe))
                                            (_loop125770125798_
                                             _lp-tl125773125811_
                                             __tmp128848))))
                                      (let ((_expr125775125814_
                                             (reverse _expr125774125803_)))
                                        (___kont126849126850_
                                         _expr125775125814_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125770125798_ _target125767125793_ '())))))
                   (___match126980126981_
                    (lambda (_e125674125991_
                             _hd125673125994_
                             _tl125672125996_
                             _e125677125999_
                             _hd125676126002_
                             _tl125675126004_
                             _e125680126007_
                             _hd125679126010_
                             _tl125678126012_
                             _e125683126015_
                             _hd125682126018_
                             _tl125681126020_
                             _e125686126023_
                             _hd125685126026_
                             _tl125684126028_
                             _e125689126031_
                             _hd125688126034_
                             _tl125687126036_
                             _e125692126039_
                             _hd125691126042_
                             _tl125690126044_
                             _e125695126047_
                             _hd125694126050_
                             _tl125693126052_
                             _e125698126055_
                             _hd125697126058_
                             _tl125696126060_
                             _e125701126063_
                             _hd125700126066_
                             _tl125699126068_
                             _e125704126071_
                             _hd125703126074_
                             _tl125702126076_
                             _e125707126079_
                             _hd125706126082_
                             _tl125705126084_
                             _e125710126087_
                             _hd125709126090_
                             _tl125708126092_
                             _e125713126095_
                             _hd125712126098_
                             _tl125711126100_
                             _e125716126103_
                             _hd125715126106_
                             _tl125714126108_
                             _e125719126111_
                             _hd125718126114_
                             _tl125717126116_)
                      (let ((_L126119_ _hd125718126114_)
                            (_L126120_ _hd125709126090_)
                            (_L126121_ _hd125700126066_)
                            (_L126122_ _hd125691126042_)
                            (_L126123_ _hd125682126018_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126123_
                               'bind-method!))
                            (___kont126845126846_
                             _L126119_
                             _L126120_
                             _L126121_
                             _L126122_
                             _L126123_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125672125996_))
                                (let ((___splice126851126852_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125672125996_
                                          '0))))
                                  (let ((_tl125769125795_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126851126852_
                                            '1)))
                                        (_target125767125793_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126851126852_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125769125795_))
                                        (___match127100127101_
                                         _e125674125991_
                                         _hd125673125994_
                                         _tl125672125996_
                                         ___splice126851126852_
                                         _target125767125793_
                                         _tl125769125795_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125665125780_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125665125780_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126843126844_))
                  (let ((_e125674125991_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126843126844_))))
                    (let ((_tl125672125996_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125674125991_)))
                          (_hd125673125994_
                           (let ()
                             (declare (not safe))
                             (##car _e125674125991_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125672125996_))
                          (let ((_e125677125999_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125672125996_))))
                            (let ((_tl125675126004_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125677125999_)))
                                  (_hd125676126002_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125677125999_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125676126002_))
                                  (let ((_e125680126007_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125676126002_))))
                                    (let ((_tl125678126012_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125680126007_)))
                                          (_hd125679126010_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125680126007_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125679126010_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125679126010_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125678126012_))
                                                  (let ((_e125683126015_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125678126012_))))
                                                    (let ((_tl125681126020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125683126015_)))
                                                          (_hd125682126018_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125683126015_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125681126020_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125675126004_))
                      (let ((_e125686126023_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125675126004_))))
                        (let ((_tl125684126028_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125686126023_)))
                              (_hd125685126026_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125686126023_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125685126026_))
                              (let ((_e125689126031_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125685126026_))))
                                (let ((_tl125687126036_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125689126031_)))
                                      (_hd125688126034_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125689126031_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125688126034_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125688126034_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125687126036_))
                                              (let ((_e125692126039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125687126036_))))
                                                (let ((_tl125690126044_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125692126039_)))
                                                      (_hd125691126042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125692126039_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125690126044_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125684126028_))
                                                          (let ((_e125695126047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125684126028_))))
                    (let ((_tl125693126052_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125695126047_)))
                          (_hd125694126050_
                           (let ()
                             (declare (not safe))
                             (##car _e125695126047_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125694126050_))
                          (let ((_e125698126055_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125694126050_))))
                            (let ((_tl125696126060_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125698126055_)))
                                  (_hd125697126058_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125698126055_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125697126058_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125697126058_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125696126060_))
                                          (let ((_e125701126063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125696126060_))))
                                            (let ((_tl125699126068_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125701126063_)))
                                                  (_hd125700126066_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125701126063_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125699126068_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125693126052_))
                                                      (let ((_e125704126071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125693126052_))))
                (let ((_tl125702126076_
                       (let () (declare (not safe)) (##cdr _e125704126071_)))
                      (_hd125703126074_
                       (let () (declare (not safe)) (##car _e125704126071_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125703126074_))
                      (let ((_e125707126079_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125703126074_))))
                        (let ((_tl125705126084_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125707126079_)))
                              (_hd125706126082_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125707126079_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125706126082_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125706126082_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125705126084_))
                                      (let ((_e125710126087_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125705126084_))))
                                        (let ((_tl125708126092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125710126087_)))
                                              (_hd125709126090_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125710126087_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125708126092_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125702126076_))
                                                  (let ((_e125713126095_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125702126076_))))
                                                    (let ((_tl125711126100_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125713126095_)))
                                                          (_hd125712126098_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125713126095_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125712126098_))
                                                          (let ((_e125716126103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125712126098_))))
                    (let ((_tl125714126108_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125716126103_)))
                          (_hd125715126106_
                           (let ()
                             (declare (not safe))
                             (##car _e125716126103_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125715126106_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125715126106_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125714126108_))
                                  (let ((_e125719126111_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125714126108_))))
                                    (let ((_tl125717126116_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125719126111_)))
                                          (_hd125718126114_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125719126111_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125717126116_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125711126100_))
                                              (___match126980126981_
                                               _e125674125991_
                                               _hd125673125994_
                                               _tl125672125996_
                                               _e125677125999_
                                               _hd125676126002_
                                               _tl125675126004_
                                               _e125680126007_
                                               _hd125679126010_
                                               _tl125678126012_
                                               _e125683126015_
                                               _hd125682126018_
                                               _tl125681126020_
                                               _e125686126023_
                                               _hd125685126026_
                                               _tl125684126028_
                                               _e125689126031_
                                               _hd125688126034_
                                               _tl125687126036_
                                               _e125692126039_
                                               _hd125691126042_
                                               _tl125690126044_
                                               _e125695126047_
                                               _hd125694126050_
                                               _tl125693126052_
                                               _e125698126055_
                                               _hd125697126058_
                                               _tl125696126060_
                                               _e125701126063_
                                               _hd125700126066_
                                               _tl125699126068_
                                               _e125704126071_
                                               _hd125703126074_
                                               _tl125702126076_
                                               _e125707126079_
                                               _hd125706126082_
                                               _tl125705126084_
                                               _e125710126087_
                                               _hd125709126090_
                                               _tl125708126092_
                                               _e125713126095_
                                               _hd125712126098_
                                               _tl125711126100_
                                               _e125716126103_
                                               _hd125715126106_
                                               _tl125714126108_
                                               _e125719126111_
                                               _hd125718126114_
                                               _tl125717126116_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125672125996_))
                                                  (let ((___splice126851126852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125672125996_
                                                            '0))))
                                                    (let ((_tl125769125795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '1)))
                                                          (_target125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125769125795_))
                                                          (___match127100127101_
                                                           _e125674125991_
                                                           _hd125673125994_
                                                           _tl125672125996_
                                                           ___splice126851126852_
                                                           _target125767125793_
                                                           _tl125769125795_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125665125780_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125665125780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125672125996_))
                                              (let ((___splice126851126852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125672125996_
                                                        '0))))
                                                (let ((_tl125769125795_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '1)))
                                                      (_target125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125769125795_))
                                                      (___match127100127101_
                                                       _e125674125991_
                                                       _hd125673125994_
                                                       _tl125672125996_
                                                       ___splice126851126852_
                                                       _target125767125793_
                                                       _tl125769125795_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125665125780_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125672125996_))
                                      (let ((___splice126851126852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125672125996_
                                                '0))))
                                        (let ((_tl125769125795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '1)))
                                              (_target125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125769125795_))
                                              (___match127100127101_
                                               _e125674125991_
                                               _hd125673125994_
                                               _tl125672125996_
                                               ___splice126851126852_
                                               _target125767125793_
                                               _tl125769125795_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125665125780_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125672125996_))
                                  (let ((___splice126851126852_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125672125996_
                                            '0))))
                                    (let ((_tl125769125795_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126851126852_
                                              '1)))
                                          (_target125767125793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126851126852_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125769125795_))
                                          (___match127100127101_
                                           _e125674125991_
                                           _hd125673125994_
                                           _tl125672125996_
                                           ___splice126851126852_
                                           _target125767125793_
                                           _tl125769125795_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125665125780_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125665125780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125672125996_))
                              (let ((___splice126851126852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125672125996_
                                        '0))))
                                (let ((_tl125769125795_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126851126852_
                                          '1)))
                                      (_target125767125793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126851126852_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125769125795_))
                                      (___match127100127101_
                                       _e125674125991_
                                       _hd125673125994_
                                       _tl125672125996_
                                       ___splice126851126852_
                                       _target125767125793_
                                       _tl125769125795_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125665125780_)))))
                              (let ()
                                (declare (not safe))
                                (_g125665125780_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125672125996_))
                      (let ((___splice126851126852_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125672125996_ '0))))
                        (let ((_tl125769125795_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '1)))
                              (_target125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125769125795_))
                              (___match127100127101_
                               _e125674125991_
                               _hd125673125994_
                               _tl125672125996_
                               ___splice126851126852_
                               _target125767125793_
                               _tl125769125795_)
                              (let ()
                                (declare (not safe))
                                (_g125665125780_)))))
                      (let () (declare (not safe)) (_g125665125780_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125702126076_))
                                                      (if (let ((__tmp128849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128849 'bind-method!))
                  (let ((_L125947_ _hd125709126090_)
                        (_L125948_ _hd125700126066_)
                        (_L125949_ _hd125691126042_)
                        (_L125950_ _hd125682126018_))
                    (___kont126847126848_
                     _L125947_
                     _L125948_
                     _L125949_
                     _L125950_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125672125996_))
                      (let ((___splice126851126852_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125672125996_ '0))))
                        (let ((_tl125769125795_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '1)))
                              (_target125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125769125795_))
                              (___match127100127101_
                               _e125674125991_
                               _hd125673125994_
                               _tl125672125996_
                               ___splice126851126852_
                               _target125767125793_
                               _tl125769125795_)
                              (let ()
                                (declare (not safe))
                                (_g125665125780_)))))
                      (let () (declare (not safe)) (_g125665125780_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125672125996_))
                  (let ((___splice126851126852_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125672125996_ '0))))
                    (let ((_tl125769125795_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126851126852_ '1)))
                          (_target125767125793_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126851126852_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125769125795_))
                          (___match127100127101_
                           _e125674125991_
                           _hd125673125994_
                           _tl125672125996_
                           ___splice126851126852_
                           _target125767125793_
                           _tl125769125795_)
                          (let () (declare (not safe)) (_g125665125780_)))))
                  (let () (declare (not safe)) (_g125665125780_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125672125996_))
                                                  (let ((___splice126851126852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125672125996_
                                                            '0))))
                                                    (let ((_tl125769125795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '1)))
                                                          (_target125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125769125795_))
                                                          (___match127100127101_
                                                           _e125674125991_
                                                           _hd125673125994_
                                                           _tl125672125996_
                                                           ___splice126851126852_
                                                           _target125767125793_
                                                           _tl125769125795_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125665125780_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125665125780_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125672125996_))
                                          (let ((___splice126851126852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125672125996_
                                                    '0))))
                                            (let ((_tl125769125795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126851126852_
                                                      '1)))
                                                  (_target125767125793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126851126852_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125769125795_))
                                                  (___match127100127101_
                                                   _e125674125991_
                                                   _hd125673125994_
                                                   _tl125672125996_
                                                   ___splice126851126852_
                                                   _target125767125793_
                                                   _tl125769125795_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125665125780_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125665125780_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125672125996_))
                                      (let ((___splice126851126852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125672125996_
                                                '0))))
                                        (let ((_tl125769125795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '1)))
                                              (_target125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125769125795_))
                                              (___match127100127101_
                                               _e125674125991_
                                               _hd125673125994_
                                               _tl125672125996_
                                               ___splice126851126852_
                                               _target125767125793_
                                               _tl125769125795_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125665125780_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125672125996_))
                                  (let ((___splice126851126852_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125672125996_
                                            '0))))
                                    (let ((_tl125769125795_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126851126852_
                                              '1)))
                                          (_target125767125793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126851126852_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125769125795_))
                                          (___match127100127101_
                                           _e125674125991_
                                           _hd125673125994_
                                           _tl125672125996_
                                           ___splice126851126852_
                                           _target125767125793_
                                           _tl125769125795_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125665125780_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125665125780_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125672125996_))
                          (let ((___splice126851126852_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125672125996_
                                    '0))))
                            (let ((_tl125769125795_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126851126852_ '1)))
                                  (_target125767125793_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126851126852_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125769125795_))
                                  (___match127100127101_
                                   _e125674125991_
                                   _hd125673125994_
                                   _tl125672125996_
                                   ___splice126851126852_
                                   _target125767125793_
                                   _tl125769125795_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125665125780_)))))
                          (let () (declare (not safe)) (_g125665125780_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125672125996_))
                  (let ((___splice126851126852_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125672125996_ '0))))
                    (let ((_tl125769125795_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126851126852_ '1)))
                          (_target125767125793_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126851126852_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125769125795_))
                          (___match127100127101_
                           _e125674125991_
                           _hd125673125994_
                           _tl125672125996_
                           ___splice126851126852_
                           _target125767125793_
                           _tl125769125795_)
                          (let () (declare (not safe)) (_g125665125780_)))))
                  (let () (declare (not safe)) (_g125665125780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125672125996_))
                                                      (let ((___splice126851126852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125672125996_ '0))))
                (let ((_tl125769125795_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126851126852_ '1)))
                      (_target125767125793_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126851126852_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125769125795_))
                      (___match127100127101_
                       _e125674125991_
                       _hd125673125994_
                       _tl125672125996_
                       ___splice126851126852_
                       _target125767125793_
                       _tl125769125795_)
                      (let () (declare (not safe)) (_g125665125780_)))))
              (let () (declare (not safe)) (_g125665125780_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125672125996_))
                                              (let ((___splice126851126852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125672125996_
                                                        '0))))
                                                (let ((_tl125769125795_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '1)))
                                                      (_target125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125769125795_))
                                                      (___match127100127101_
                                                       _e125674125991_
                                                       _hd125673125994_
                                                       _tl125672125996_
                                                       ___splice126851126852_
                                                       _target125767125793_
                                                       _tl125769125795_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125665125780_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125672125996_))
                                          (let ((___splice126851126852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125672125996_
                                                    '0))))
                                            (let ((_tl125769125795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126851126852_
                                                      '1)))
                                                  (_target125767125793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126851126852_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125769125795_))
                                                  (___match127100127101_
                                                   _e125674125991_
                                                   _hd125673125994_
                                                   _tl125672125996_
                                                   ___splice126851126852_
                                                   _target125767125793_
                                                   _tl125769125795_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125665125780_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125665125780_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125672125996_))
                                      (let ((___splice126851126852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125672125996_
                                                '0))))
                                        (let ((_tl125769125795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '1)))
                                              (_target125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125769125795_))
                                              (___match127100127101_
                                               _e125674125991_
                                               _hd125673125994_
                                               _tl125672125996_
                                               ___splice126851126852_
                                               _target125767125793_
                                               _tl125769125795_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125665125780_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125672125996_))
                              (let ((___splice126851126852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125672125996_
                                        '0))))
                                (let ((_tl125769125795_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126851126852_
                                          '1)))
                                      (_target125767125793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126851126852_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125769125795_))
                                      (___match127100127101_
                                       _e125674125991_
                                       _hd125673125994_
                                       _tl125672125996_
                                       ___splice126851126852_
                                       _target125767125793_
                                       _tl125769125795_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125665125780_)))))
                              (let ()
                                (declare (not safe))
                                (_g125665125780_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125672125996_))
                      (let ((___splice126851126852_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125672125996_ '0))))
                        (let ((_tl125769125795_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '1)))
                              (_target125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125769125795_))
                              (___match127100127101_
                               _e125674125991_
                               _hd125673125994_
                               _tl125672125996_
                               ___splice126851126852_
                               _target125767125793_
                               _tl125769125795_)
                              (let ()
                                (declare (not safe))
                                (_g125665125780_)))))
                      (let () (declare (not safe)) (_g125665125780_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125672125996_))
                  (let ((___splice126851126852_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125672125996_ '0))))
                    (let ((_tl125769125795_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126851126852_ '1)))
                          (_target125767125793_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126851126852_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125769125795_))
                          (___match127100127101_
                           _e125674125991_
                           _hd125673125994_
                           _tl125672125996_
                           ___splice126851126852_
                           _target125767125793_
                           _tl125769125795_)
                          (let () (declare (not safe)) (_g125665125780_)))))
                  (let () (declare (not safe)) (_g125665125780_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125672125996_))
                                                  (let ((___splice126851126852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125672125996_
                                                            '0))))
                                                    (let ((_tl125769125795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '1)))
                                                          (_target125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125769125795_))
                                                          (___match127100127101_
                                                           _e125674125991_
                                                           _hd125673125994_
                                                           _tl125672125996_
                                                           ___splice126851126852_
                                                           _target125767125793_
                                                           _tl125769125795_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125665125780_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125665125780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125672125996_))
                                              (let ((___splice126851126852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125672125996_
                                                        '0))))
                                                (let ((_tl125769125795_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '1)))
                                                      (_target125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125769125795_))
                                                      (___match127100127101_
                                                       _e125674125991_
                                                       _hd125673125994_
                                                       _tl125672125996_
                                                       ___splice126851126852_
                                                       _target125767125793_
                                                       _tl125769125795_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125665125780_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125672125996_))
                                          (let ((___splice126851126852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125672125996_
                                                    '0))))
                                            (let ((_tl125769125795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126851126852_
                                                      '1)))
                                                  (_target125767125793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126851126852_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125769125795_))
                                                  (___match127100127101_
                                                   _e125674125991_
                                                   _hd125673125994_
                                                   _tl125672125996_
                                                   ___splice126851126852_
                                                   _target125767125793_
                                                   _tl125769125795_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125665125780_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125665125780_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125672125996_))
                                  (let ((___splice126851126852_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125672125996_
                                            '0))))
                                    (let ((_tl125769125795_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126851126852_
                                              '1)))
                                          (_target125767125793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126851126852_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125769125795_))
                                          (___match127100127101_
                                           _e125674125991_
                                           _hd125673125994_
                                           _tl125672125996_
                                           ___splice126851126852_
                                           _target125767125793_
                                           _tl125769125795_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125665125780_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125665125780_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125672125996_))
                          (let ((___splice126851126852_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125672125996_
                                    '0))))
                            (let ((_tl125769125795_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126851126852_ '1)))
                                  (_target125767125793_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126851126852_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125769125795_))
                                  (___match127100127101_
                                   _e125674125991_
                                   _hd125673125994_
                                   _tl125672125996_
                                   ___splice126851126852_
                                   _target125767125793_
                                   _tl125769125795_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125665125780_)))))
                          (let () (declare (not safe)) (_g125665125780_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125672125996_))
                      (let ((___splice126851126852_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125672125996_ '0))))
                        (let ((_tl125769125795_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '1)))
                              (_target125767125793_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126851126852_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125769125795_))
                              (___match127100127101_
                               _e125674125991_
                               _hd125673125994_
                               _tl125672125996_
                               ___splice126851126852_
                               _target125767125793_
                               _tl125769125795_)
                              (let ()
                                (declare (not safe))
                                (_g125665125780_)))))
                      (let () (declare (not safe)) (_g125665125780_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125672125996_))
                                                      (let ((___splice126851126852_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125672125996_ '0))))
                (let ((_tl125769125795_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126851126852_ '1)))
                      (_target125767125793_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126851126852_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125769125795_))
                      (___match127100127101_
                       _e125674125991_
                       _hd125673125994_
                       _tl125672125996_
                       ___splice126851126852_
                       _target125767125793_
                       _tl125769125795_)
                      (let () (declare (not safe)) (_g125665125780_)))))
              (let () (declare (not safe)) (_g125665125780_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125672125996_))
                                                  (let ((___splice126851126852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125672125996_
                                                            '0))))
                                                    (let ((_tl125769125795_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '1)))
                                                          (_target125767125793_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126851126852_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125769125795_))
                                                          (___match127100127101_
                                                           _e125674125991_
                                                           _hd125673125994_
                                                           _tl125672125996_
                                                           ___splice126851126852_
                                                           _target125767125793_
                                                           _tl125769125795_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125665125780_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125665125780_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125672125996_))
                                              (let ((___splice126851126852_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125672125996_
                                                        '0))))
                                                (let ((_tl125769125795_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '1)))
                                                      (_target125767125793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126851126852_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125769125795_))
                                                      (___match127100127101_
                                                       _e125674125991_
                                                       _hd125673125994_
                                                       _tl125672125996_
                                                       ___splice126851126852_
                                                       _target125767125793_
                                                       _tl125769125795_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125665125780_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125672125996_))
                                      (let ((___splice126851126852_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125672125996_
                                                '0))))
                                        (let ((_tl125769125795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '1)))
                                              (_target125767125793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126851126852_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125769125795_))
                                              (___match127100127101_
                                               _e125674125991_
                                               _hd125673125994_
                                               _tl125672125996_
                                               ___splice126851126852_
                                               _target125767125793_
                                               _tl125769125795_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125665125780_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125665125780_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125672125996_))
                              (let ((___splice126851126852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125672125996_
                                        '0))))
                                (let ((_tl125769125795_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126851126852_
                                          '1)))
                                      (_target125767125793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126851126852_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125769125795_))
                                      (___match127100127101_
                                       _e125674125991_
                                       _hd125673125994_
                                       _tl125672125996_
                                       ___splice126851126852_
                                       _target125767125793_
                                       _tl125769125795_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125665125780_)))))
                              (let ()
                                (declare (not safe))
                                (_g125665125780_))))))
                  (let () (declare (not safe)) (_g125665125780_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125601_)
        (let* ((___stx127103127104_ _stx125601_)
               (_g125604125617_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127103127104_)))))
          (let ((___kont127105127106_
                 (lambda (_L125645_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125645_))))
                (___kont127107127108_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127103127104_))
                (let ((_e125609125629_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127103127104_))))
                  (let ((_tl125607125634_
                         (let () (declare (not safe)) (##cdr _e125609125629_)))
                        (_hd125608125632_
                         (let ()
                           (declare (not safe))
                           (##car _e125609125629_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125607125634_))
                        (let ((_e125612125637_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125607125634_))))
                          (let ((_tl125610125642_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125612125637_)))
                                (_hd125611125640_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125612125637_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125610125642_))
                                (___kont127105127106_ _hd125611125640_)
                                (___kont127107127108_))))
                        (___kont127107127108_))))
                (___kont127107127108_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125481_)
        (let* ((_g125483125500_
                (lambda (_g125484125497_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125484125497_))))
               (_g125482125598_
                (lambda (_g125484125503_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125484125503_))
                      (let ((_e125489125505_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125484125503_))))
                        (let ((_hd125488125508_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125489125505_)))
                              (_tl125487125510_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125489125505_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125487125510_))
                              (let ((_e125492125513_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125487125510_))))
                                (let ((_hd125491125516_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125492125513_)))
                                      (_tl125490125518_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125492125513_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125490125518_))
                                      (let ((_e125495125521_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125490125518_))))
                                        (let ((_hd125494125524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125495125521_)))
                                              (_tl125493125526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125495125521_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125493125526_))
                                              ((lambda (_L125529_ _L125530_)
                                                 (let* ((___stx127125127126_
                                                         _L125530_)
                                                        (_g125546125557_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127125127126_)))))
                                                   (let ((___kont127127127128_
                                                          (lambda (_L125577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125578_)
                    (let ((_$e125590_
                           (let ((__tmp128850
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125578_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128850))))
                      (if _$e125590_
                          ((lambda (_type-e125593_)
                             (_type-e125593_ _stx125481_ _L125530_))
                           _$e125590_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125529_))))))
                 (___kont127129127130_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125529_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127136127137_
                                                            (lambda (_e125552125569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125551125572_
                             _tl125550125574_)
                      (let ((_L125577_ _tl125550125574_)
                            (_L125578_ _hd125551125572_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125578_))
                            (___kont127127127128_ _L125577_ _L125578_)
                            (___kont127129127130_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127125127126_))
                   (let ((_e125552125569_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127125127126_))))
                     (let ((_tl125550125574_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125552125569_)))
                           (_hd125551125572_
                            (let ()
                              (declare (not safe))
                              (##car _e125552125569_))))
                       (___match127136127137_
                        _e125552125569_
                        _hd125551125572_
                        _tl125550125574_)))
                   (___kont127129127130_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125494125524_
                                               _hd125491125516_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125483125500_
                                                 _g125484125503_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125483125500_ _g125484125503_)))))
                              (let ()
                                (declare (not safe))
                                (_g125483125500_ _g125484125503_)))))
                      (let ()
                        (declare (not safe))
                        (_g125483125500_ _g125484125503_))))))
          (declare (not safe))
          (_g125482125598_ _stx125481_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125325_ _ann125326_)
        (let* ((_g125328125365_
                (lambda (_g125329125362_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125329125362_))))
               (_g125327125478_
                (lambda (_g125329125368_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125329125368_))
                      (let ((_e125339125370_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125329125368_))))
                        (let ((_hd125338125373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125339125370_)))
                              (_tl125337125375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125339125370_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125337125375_))
                              (let ((_e125342125378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125337125375_))))
                                (let ((_hd125341125381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125342125378_)))
                                      (_tl125340125383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125342125378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125340125383_))
                                      (let ((_e125345125386_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125340125383_))))
                                        (let ((_hd125344125389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125345125386_)))
                                              (_tl125343125391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125345125386_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125343125391_))
                                              (let ((_e125348125394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125343125391_))))
                                                (let ((_hd125347125397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125348125394_)))
                                                      (_tl125346125399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125348125394_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125346125399_))
                                                      (let ((_e125351125402_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125346125399_))))
                (let ((_hd125350125405_
                       (let () (declare (not safe)) (##car _e125351125402_)))
                      (_tl125349125407_
                       (let () (declare (not safe)) (##cdr _e125351125402_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125349125407_))
                      (let ((_e125354125410_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125349125407_))))
                        (let ((_hd125353125413_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125354125410_)))
                              (_tl125352125415_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125354125410_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125352125415_))
                              (let ((_e125357125418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125352125415_))))
                                (let ((_hd125356125421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125357125418_)))
                                      (_tl125355125423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125357125418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125355125423_))
                                      (let ((_e125360125426_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125355125423_))))
                                        (let ((_hd125359125429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125360125426_)))
                                              (_tl125358125431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125360125426_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125358125431_))
                                              ((lambda (_L125434_
                                                        _L125435_
                                                        _L125436_
                                                        _L125437_
                                                        _L125438_
                                                        _L125439_
                                                        _L125440_)
                                                 (let ((_type-id125470_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125440_)))
                                                       (_super125471_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125439_)))
                                                       (_slots125472_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125438_)))
                                                       (_ctor-method125473_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125437_)))
                                                       (_struct?125474_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125436_)))
                                                       (_final?125475_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125435_)))
                                                       (_metaclass125476_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125434_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125434_))
                                                            '#f)))
                                                   (let ((__obj128808
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
                                                      __obj128808
                                                      _type-id125470_
                                                      _super125471_
                                                      _slots125472_
                                                      _ctor-method125473_
                                                      _struct?125474_
                                                      _final?125475_
                                                      _metaclass125476_)
                                                     __obj128808)))
                                               _hd125359125429_
                                               _hd125356125421_
                                               _hd125353125413_
                                               _hd125350125405_
                                               _hd125347125397_
                                               _hd125344125389_
                                               _hd125341125381_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125328125365_
                                                 _g125329125368_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125328125365_ _g125329125368_)))))
                              (let ()
                                (declare (not safe))
                                (_g125328125365_ _g125329125368_)))))
                      (let ()
                        (declare (not safe))
                        (_g125328125365_ _g125329125368_)))))
              (let ()
                (declare (not safe))
                (_g125328125365_ _g125329125368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125328125365_
                                                 _g125329125368_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125328125365_ _g125329125368_)))))
                              (let ()
                                (declare (not safe))
                                (_g125328125365_ _g125329125368_)))))
                      (let ()
                        (declare (not safe))
                        (_g125328125365_ _g125329125368_))))))
          (declare (not safe))
          (_g125327125478_ _ann125326_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125273_ _ann125274_)
        (let* ((_g125276125289_
                (lambda (_g125277125286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125277125286_))))
               (_g125275125322_
                (lambda (_g125277125292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125277125292_))
                      (let ((_e125281125294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125277125292_))))
                        (let ((_hd125280125297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125281125294_)))
                              (_tl125279125299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125281125294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125279125299_))
                              (let ((_e125284125302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125279125299_))))
                                (let ((_hd125283125305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125284125302_)))
                                      (_tl125282125307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125284125302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125282125307_))
                                      ((lambda (_L125310_)
                                         (let ((__tmp128851
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125310_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128851)))
                                       _hd125283125305_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125276125289_ _g125277125292_)))))
                              (let ()
                                (declare (not safe))
                                (_g125276125289_ _g125277125292_)))))
                      (let ()
                        (declare (not safe))
                        (_g125276125289_ _g125277125292_))))))
          (declare (not safe))
          (_g125275125322_ _ann125274_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125221_ _ann125222_)
        (let* ((_g125224125237_
                (lambda (_g125225125234_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125225125234_))))
               (_g125223125270_
                (lambda (_g125225125240_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125225125240_))
                      (let ((_e125229125242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125225125240_))))
                        (let ((_hd125228125245_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125229125242_)))
                              (_tl125227125247_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125229125242_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125227125247_))
                              (let ((_e125232125250_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125227125247_))))
                                (let ((_hd125231125253_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125232125250_)))
                                      (_tl125230125255_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125232125250_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125230125255_))
                                      ((lambda (_L125258_)
                                         (let ((__tmp128852
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125258_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128852)))
                                       _hd125231125253_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125224125237_ _g125225125240_)))))
                              (let ()
                                (declare (not safe))
                                (_g125224125237_ _g125225125240_)))))
                      (let ()
                        (declare (not safe))
                        (_g125224125237_ _g125225125240_))))))
          (declare (not safe))
          (_g125223125270_ _ann125222_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125137_ _ann125138_)
        (let* ((_g125140125161_
                (lambda (_g125141125158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125141125158_))))
               (_g125139125218_
                (lambda (_g125141125164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125141125164_))
                      (let ((_e125147125166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125141125164_))))
                        (let ((_hd125146125169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125147125166_)))
                              (_tl125145125171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125147125166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125145125171_))
                              (let ((_e125150125174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125145125171_))))
                                (let ((_hd125149125177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125150125174_)))
                                      (_tl125148125179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125150125174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125148125179_))
                                      (let ((_e125153125182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125148125179_))))
                                        (let ((_hd125152125185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125153125182_)))
                                              (_tl125151125187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125153125182_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125151125187_))
                                              (let ((_e125156125190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125151125187_))))
                                                (let ((_hd125155125193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125156125190_)))
                                                      (_tl125154125195_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125156125190_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125154125195_))
                                                      ((lambda (_L125198_
                                                                _L125199_
                                                                _L125200_)
                                                         (let ((__tmp128855
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125200_)))
                       (__tmp128854
                        (let () (declare (not safe)) (gx#stx-e _L125199_)))
                       (__tmp128853
                        (let () (declare (not safe)) (gx#stx-e _L125198_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128855
                    __tmp128854
                    __tmp128853)))
               _hd125155125193_
               _hd125152125185_
               _hd125149125177_)
              (let ()
                (declare (not safe))
                (_g125140125161_ _g125141125164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125140125161_
                                                 _g125141125164_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125140125161_ _g125141125164_)))))
                              (let ()
                                (declare (not safe))
                                (_g125140125161_ _g125141125164_)))))
                      (let ()
                        (declare (not safe))
                        (_g125140125161_ _g125141125164_))))))
          (declare (not safe))
          (_g125139125218_ _ann125138_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125053_ _ann125054_)
        (let* ((_g125056125077_
                (lambda (_g125057125074_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125057125074_))))
               (_g125055125134_
                (lambda (_g125057125080_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125057125080_))
                      (let ((_e125063125082_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125057125080_))))
                        (let ((_hd125062125085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125063125082_)))
                              (_tl125061125087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125063125082_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125061125087_))
                              (let ((_e125066125090_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125061125087_))))
                                (let ((_hd125065125093_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125066125090_)))
                                      (_tl125064125095_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125066125090_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125064125095_))
                                      (let ((_e125069125098_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125064125095_))))
                                        (let ((_hd125068125101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125069125098_)))
                                              (_tl125067125103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125069125098_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125067125103_))
                                              (let ((_e125072125106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125067125103_))))
                                                (let ((_hd125071125109_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125072125106_)))
                                                      (_tl125070125111_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125072125106_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125070125111_))
                                                      ((lambda (_L125114_
                                                                _L125115_
                                                                _L125116_)
                                                         (let ((__tmp128858
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125116_)))
                       (__tmp128857
                        (let () (declare (not safe)) (gx#stx-e _L125115_)))
                       (__tmp128856
                        (let () (declare (not safe)) (gx#stx-e _L125114_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128858
                    __tmp128857
                    __tmp128856)))
               _hd125071125109_
               _hd125068125101_
               _hd125065125093_)
              (let ()
                (declare (not safe))
                (_g125056125077_ _g125057125080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125056125077_
                                                 _g125057125080_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125056125077_ _g125057125080_)))))
                              (let ()
                                (declare (not safe))
                                (_g125056125077_ _g125057125080_)))))
                      (let ()
                        (declare (not safe))
                        (_g125056125077_ _g125057125080_))))))
          (declare (not safe))
          (_g125055125134_ _ann125054_))))
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
      (lambda (_stx124173_)
        (let* ((___stx127139127140_ _stx124173_)
               (_g124179124375_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127139127140_)))))
          (let ((___kont127141127142_
                 (lambda (_L125041_)
                   (let ((__obj128809
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128809
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125041_))
                      '#f)
                     __obj128809)))
                (___kont127143127144_
                 (lambda (_L124968_
                          _L124969_
                          _L124970_
                          _L124971_
                          _L124972_
                          _L124973_)
                   (let* ((_tab125023_
                           (let () (declare (not safe)) (gx#stx-e _L124970_)))
                          (_keys125025_
                           (if _tab125023_
                               (let ((__tmp128859 (vector->list _tab125023_)))
                                 (declare (not safe))
                                 (filter values __tmp128859))
                               '#f)))
                     (let ((__tmp128860
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124969_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125025_
                        __tmp128860)))))
                (___kont127145127146_
                 (lambda (_L124701_
                          _L124702_
                          _L124703_
                          _L124704_
                          _L124705_
                          _L124706_
                          _L124707_
                          _L124708_
                          _L124709_
                          _L124710_)
                   (let ((__tmp128862
                          (map gx#stx-e
                               (let ((__tmp128863
                                      (lambda (_g124803124806_ _g124804124808_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124803124806_
                                                _g124804124808_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128863 '() _L124703_))))
                         (__tmp128861
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124707_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128862
                      __tmp128861))))
                (___kont127149127150_
                 (lambda (_L124411_)
                   (let ((__obj128810
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128810
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124411_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124411_)))
                     __obj128810)))
                (___kont127151127152_
                 (lambda (_L124388_)
                   (let ((__obj128811
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128811
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124388_))
                      '#f)
                     __obj128811))))
            (let* ((___match127458127459_
                    (lambda (_e124366124403_ _hd124365124406_ _tl124364124408_)
                      (let ((_L124411_ _tl124364124408_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124411_))
                            (___kont127149127150_ _L124411_)
                            (___kont127151127152_ _tl124364124408_)))))
                   (___match127452127453_
                    (lambda (_e124260124425_
                             _hd124259124428_
                             _tl124258124430_
                             _e124263124433_
                             _hd124262124436_
                             _tl124261124438_
                             _e124266124441_
                             _hd124265124444_
                             _tl124264124446_
                             _e124269124449_
                             _hd124268124452_
                             _tl124267124454_
                             _e124272124457_
                             _hd124271124460_
                             _tl124270124462_
                             _e124275124465_
                             _hd124274124468_
                             _tl124273124470_
                             _e124278124473_
                             _hd124277124476_
                             _tl124276124478_
                             _e124281124481_
                             _hd124280124484_
                             _tl124279124486_
                             _e124284124489_
                             _hd124283124492_
                             _tl124282124494_
                             _e124287124497_
                             _hd124286124500_
                             _tl124285124502_
                             _e124290124505_
                             _hd124289124508_
                             _tl124288124510_
                             _e124293124513_
                             _hd124292124516_
                             _tl124291124518_
                             _e124296124521_
                             _hd124295124524_
                             _tl124294124526_
                             _e124299124529_
                             _hd124298124532_
                             _tl124297124534_
                             ___splice127147127148_
                             _target124300124537_
                             _tl124302124539_
                             _e124317124542_
                             _hd124316124545_
                             _tl124315124547_
                             _e124320124550_
                             _hd124319124553_
                             _tl124318124555_
                             _e124323124558_
                             _hd124322124561_
                             _tl124321124563_)
                      (letrec ((_loop124303124566_
                                (lambda (_hd124301124569_
                                         _-absent-value124307124571_
                                         _key124308124573_
                                         _-xkwvar124309124575_
                                         _-hash-ref124310124577_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124301124569_))
                                      (let ((_e124304124580_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124301124569_))))
                                        (let ((_lp-tl124306124585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124304124580_)))
                                              (_lp-hd124305124583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124304124580_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124305124583_))
                                              (let ((_e124326124588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124305124583_))))
                                                (let ((_tl124324124593_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124326124588_)))
                                                      (_hd124325124591_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124326124588_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124325124591_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124325124591_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124324124593_))
                      (let ((_e124329124596_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124324124593_))))
                        (let ((_tl124327124601_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124329124596_)))
                              (_hd124328124599_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124329124596_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124328124599_))
                              (let ((_e124332124604_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124328124599_))))
                                (let ((_tl124330124609_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124332124604_)))
                                      (_hd124331124607_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124332124604_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124331124607_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124331124607_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124330124609_))
                                              (let ((_e124335124612_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124330124609_))))
                                                (let ((_tl124333124617_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124335124612_)))
                                                      (_hd124334124615_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124335124612_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124333124617_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124327124601_))
                                                          (let ((_e124338124620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124327124601_))))
                    (let ((_tl124336124625_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124338124620_)))
                          (_hd124337124623_
                           (let ()
                             (declare (not safe))
                             (##car _e124338124620_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124337124623_))
                          (let ((_e124341124628_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124337124623_))))
                            (let ((_tl124339124633_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124341124628_)))
                                  (_hd124340124631_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124341124628_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124340124631_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124340124631_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124339124633_))
                                          (let ((_e124344124636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124339124633_))))
                                            (let ((_tl124342124641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124344124636_)))
                                                  (_hd124343124639_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124344124636_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124342124641_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124336124625_))
                                                      (let ((_e124347124644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124336124625_))))
                (let ((_tl124345124649_
                       (let () (declare (not safe)) (##cdr _e124347124644_)))
                      (_hd124346124647_
                       (let () (declare (not safe)) (##car _e124347124644_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124346124647_))
                      (let ((_e124350124652_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124346124647_))))
                        (let ((_tl124348124657_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124350124652_)))
                              (_hd124349124655_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124350124652_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124349124655_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124349124655_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124348124657_))
                                      (let ((_e124353124660_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124348124657_))))
                                        (let ((_tl124351124665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124353124660_)))
                                              (_hd124352124663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124353124660_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124351124665_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124345124649_))
                                                  (let ((_e124356124668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124345124649_))))
                                                    (let ((_tl124354124673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124356124668_)))
                                                          (_hd124355124671_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124356124668_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124355124671_))
                                                          (let ((_e124359124676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124355124671_))))
                    (let ((_tl124357124681_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124359124676_)))
                          (_hd124358124679_
                           (let ()
                             (declare (not safe))
                             (##car _e124359124676_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124358124679_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124358124679_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124357124681_))
                                  (let ((_e124362124684_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124357124681_))))
                                    (let ((_tl124360124689_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124362124684_)))
                                          (_hd124361124687_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124362124684_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124360124689_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124354124673_))
                                              (let ((__tmp128878
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124361124687_
                                                             _-absent-value124307124571_)))
                                                    (__tmp128877
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124352124663_
                                                             _key124308124573_)))
                                                    (__tmp128876
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124343124639_
                                                             _-xkwvar124309124575_)))
                                                    (__tmp128875
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124334124615_
                                                             _-hash-ref124310124577_))))
                                                (declare (not safe))
                                                (_loop124303124566_
                                                 _lp-tl124306124585_
                                                 __tmp128878
                                                 __tmp128877
                                                 __tmp128876
                                                 __tmp128875))
                                              (___match127458127459_
                                               _e124260124425_
                                               _hd124259124428_
                                               _tl124258124430_))
                                          (___match127458127459_
                                           _e124260124425_
                                           _hd124259124428_
                                           _tl124258124430_))))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))
                              (___match127458127459_
                               _e124260124425_
                               _hd124259124428_
                               _tl124258124430_))
                          (___match127458127459_
                           _e124260124425_
                           _hd124259124428_
                           _tl124258124430_))))
                  (___match127458127459_
                   _e124260124425_
                   _hd124259124428_
                   _tl124258124430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_))
                                              (___match127458127459_
                                               _e124260124425_
                                               _hd124259124428_
                                               _tl124258124430_))))
                                      (___match127458127459_
                                       _e124260124425_
                                       _hd124259124428_
                                       _tl124258124430_))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))
                              (___match127458127459_
                               _e124260124425_
                               _hd124259124428_
                               _tl124258124430_))))
                      (___match127458127459_
                       _e124260124425_
                       _hd124259124428_
                       _tl124258124430_))))
              (___match127458127459_
               _e124260124425_
               _hd124259124428_
               _tl124258124430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_))))
                                          (___match127458127459_
                                           _e124260124425_
                                           _hd124259124428_
                                           _tl124258124430_))
                                      (___match127458127459_
                                       _e124260124425_
                                       _hd124259124428_
                                       _tl124258124430_))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))))
                          (___match127458127459_
                           _e124260124425_
                           _hd124259124428_
                           _tl124258124430_))))
                  (___match127458127459_
                   _e124260124425_
                   _hd124259124428_
                   _tl124258124430_))
              (___match127458127459_
               _e124260124425_
               _hd124259124428_
               _tl124258124430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127458127459_
                                               _e124260124425_
                                               _hd124259124428_
                                               _tl124258124430_))
                                          (___match127458127459_
                                           _e124260124425_
                                           _hd124259124428_
                                           _tl124258124430_))
                                      (___match127458127459_
                                       _e124260124425_
                                       _hd124259124428_
                                       _tl124258124430_))))
                              (___match127458127459_
                               _e124260124425_
                               _hd124259124428_
                               _tl124258124430_))))
                      (___match127458127459_
                       _e124260124425_
                       _hd124259124428_
                       _tl124258124430_))
                  (___match127458127459_
                   _e124260124425_
                   _hd124259124428_
                   _tl124258124430_))
              (___match127458127459_
               _e124260124425_
               _hd124259124428_
               _tl124258124430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127458127459_
                                               _e124260124425_
                                               _hd124259124428_
                                               _tl124258124430_))))
                                      (let ((_-hash-ref124314124698_
                                             (reverse _-hash-ref124310124577_))
                                            (_-xkwvar124313124696_
                                             (reverse _-xkwvar124309124575_))
                                            (_key124312124694_
                                             (reverse _key124308124573_))
                                            (_-absent-value124311124692_
                                             (reverse _-absent-value124307124571_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124267124454_))
                                            (let ((_L124701_ _hd124322124561_)
                                                  (_L124702_
                                                   _-absent-value124311124692_)
                                                  (_L124703_ _key124312124694_)
                                                  (_L124704_
                                                   _-xkwvar124313124696_)
                                                  (_L124705_
                                                   _-hash-ref124314124698_)
                                                  (_L124706_ _hd124298124532_)
                                                  (_L124707_ _hd124289124508_)
                                                  (_L124708_ _hd124280124484_)
                                                  (_L124709_ _tl124264124446_)
                                                  (_L124710_ _hd124265124444_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124710_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124709_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124708_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124710_
                                                          _L124706_))
                                                       (let ((__tmp128873
                                                              (let ((__tmp128874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124763124766_ _g124764124768_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124763124766_ _g124764124768_)))))
                        (declare (not safe))
                        (foldr1 __tmp128874 '() _L124703_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128873))
               (let ((__tmp128872
                      (lambda (_g124770124772_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124770124772_
                           'hash-ref))))
                     (__tmp128870
                      (let ((__tmp128871
                             (lambda (_g124774124777_ _g124775124779_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124774124777_ _g124775124779_)))))
                        (declare (not safe))
                        (foldr1 __tmp128871 '() _L124705_))))
                 (declare (not safe))
                 (andmap1 __tmp128872 __tmp128870))
               (let ((__tmp128869
                      (lambda (_g124781124783_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124781124783_
                           'absent-value))))
                     (__tmp128867
                      (let ((__tmp128868
                             (lambda (_g124785124788_ _g124786124790_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124785124788_ _g124786124790_)))))
                        (declare (not safe))
                        (foldr1 __tmp128868 '() _L124702_))))
                 (declare (not safe))
                 (andmap1 __tmp128869 __tmp128867))
               (let ((__tmp128866
                      (lambda (_g124792124794_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124792124794_ _L124710_))))
                     (__tmp128864
                      (let ((__tmp128865
                             (lambda (_g124796124799_ _g124797124801_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124796124799_ _g124797124801_)))))
                        (declare (not safe))
                        (foldr1 __tmp128865 '() _L124704_))))
                 (declare (not safe))
                 (andmap1 __tmp128866 __tmp128864)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127145127146_
                                                   _L124701_
                                                   _L124702_
                                                   _L124703_
                                                   _L124704_
                                                   _L124705_
                                                   _L124706_
                                                   _L124707_
                                                   _L124708_
                                                   _L124709_
                                                   _L124710_)
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_)))
                                            (___match127458127459_
                                             _e124260124425_
                                             _hd124259124428_
                                             _tl124258124430_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124303124566_
                           _target124300124537_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127324127325_
                    (lambda (_e124260124425_
                             _hd124259124428_
                             _tl124258124430_
                             _e124263124433_
                             _hd124262124436_
                             _tl124261124438_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124262124436_))
                          (let ((_e124266124441_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124262124436_))))
                            (let ((_tl124264124446_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124266124441_)))
                                  (_hd124265124444_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124266124441_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124261124438_))
                                  (let ((_e124269124449_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124261124438_))))
                                    (let ((_tl124267124454_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124269124449_)))
                                          (_hd124268124452_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124269124449_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124268124452_))
                                          (let ((_e124272124457_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124268124452_))))
                                            (let ((_tl124270124462_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124272124457_)))
                                                  (_hd124271124460_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124272124457_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124271124460_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124271124460_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124270124462_))
                                                          (let ((_e124275124465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124270124462_))))
                    (let ((_tl124273124470_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124275124465_)))
                          (_hd124274124468_
                           (let ()
                             (declare (not safe))
                             (##car _e124275124465_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124274124468_))
                          (let ((_e124278124473_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124274124468_))))
                            (let ((_tl124276124478_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124278124473_)))
                                  (_hd124277124476_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124278124473_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124277124476_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124277124476_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124276124478_))
                                          (let ((_e124281124481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124276124478_))))
                                            (let ((_tl124279124486_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124281124481_)))
                                                  (_hd124280124484_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124281124481_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124279124486_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124273124470_))
                                                      (let ((_e124284124489_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124273124470_))))
                (let ((_tl124282124494_
                       (let () (declare (not safe)) (##cdr _e124284124489_)))
                      (_hd124283124492_
                       (let () (declare (not safe)) (##car _e124284124489_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124283124492_))
                      (let ((_e124287124497_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124283124492_))))
                        (let ((_tl124285124502_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124287124497_)))
                              (_hd124286124500_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124287124497_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124286124500_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124286124500_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124285124502_))
                                      (let ((_e124290124505_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124285124502_))))
                                        (let ((_tl124288124510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124290124505_)))
                                              (_hd124289124508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124290124505_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124288124510_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124282124494_))
                                                  (let ((_e124293124513_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124282124494_))))
                                                    (let ((_tl124291124518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124293124513_)))
                                                          (_hd124292124516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124293124513_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124292124516_))
                                                          (let ((_e124296124521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124292124516_))))
                    (let ((_tl124294124526_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124296124521_)))
                          (_hd124295124524_
                           (let ()
                             (declare (not safe))
                             (##car _e124296124521_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124295124524_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124295124524_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124294124526_))
                                  (let ((_e124299124529_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124294124526_))))
                                    (let ((_tl124297124534_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124299124529_)))
                                          (_hd124298124532_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124299124529_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124297124534_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124291124518_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124291124518_))
                                                        '1)
                                                  (let ((___splice127147127148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124291124518_
                                                            '1))))
                                                    (let ((_tl124302124539_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127147127148_
                                                              '1)))
                                                          (_target124300124537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127147127148_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124302124539_))
                                                          (let ((_e124317124542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124302124539_))))
                    (let ((_tl124315124547_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124317124542_)))
                          (_hd124316124545_
                           (let ()
                             (declare (not safe))
                             (##car _e124317124542_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124316124545_))
                          (let ((_e124320124550_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124316124545_))))
                            (let ((_tl124318124555_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124320124550_)))
                                  (_hd124319124553_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124320124550_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124319124553_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124319124553_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124318124555_))
                                          (let ((_e124323124558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124318124555_))))
                                            (let ((_tl124321124563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124323124558_)))
                                                  (_hd124322124561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124323124558_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124321124563_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124315124547_))
                                                      (___match127452127453_
                                                       _e124260124425_
                                                       _hd124259124428_
                                                       _tl124258124430_
                                                       _e124263124433_
                                                       _hd124262124436_
                                                       _tl124261124438_
                                                       _e124266124441_
                                                       _hd124265124444_
                                                       _tl124264124446_
                                                       _e124269124449_
                                                       _hd124268124452_
                                                       _tl124267124454_
                                                       _e124272124457_
                                                       _hd124271124460_
                                                       _tl124270124462_
                                                       _e124275124465_
                                                       _hd124274124468_
                                                       _tl124273124470_
                                                       _e124278124473_
                                                       _hd124277124476_
                                                       _tl124276124478_
                                                       _e124281124481_
                                                       _hd124280124484_
                                                       _tl124279124486_
                                                       _e124284124489_
                                                       _hd124283124492_
                                                       _tl124282124494_
                                                       _e124287124497_
                                                       _hd124286124500_
                                                       _tl124285124502_
                                                       _e124290124505_
                                                       _hd124289124508_
                                                       _tl124288124510_
                                                       _e124293124513_
                                                       _hd124292124516_
                                                       _tl124291124518_
                                                       _e124296124521_
                                                       _hd124295124524_
                                                       _tl124294124526_
                                                       _e124299124529_
                                                       _hd124298124532_
                                                       _tl124297124534_
                                                       ___splice127147127148_
                                                       _target124300124537_
                                                       _tl124302124539_
                                                       _e124317124542_
                                                       _hd124316124545_
                                                       _tl124315124547_
                                                       _e124320124550_
                                                       _hd124319124553_
                                                       _tl124318124555_
                                                       _e124323124558_
                                                       _hd124322124561_
                                                       _tl124321124563_)
                                                      (___match127458127459_
                                                       _e124260124425_
                                                       _hd124259124428_
                                                       _tl124258124430_))
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_))))
                                          (___match127458127459_
                                           _e124260124425_
                                           _hd124259124428_
                                           _tl124258124430_))
                                      (___match127458127459_
                                       _e124260124425_
                                       _hd124259124428_
                                       _tl124258124430_))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))))
                          (___match127458127459_
                           _e124260124425_
                           _hd124259124428_
                           _tl124258124430_))))
                  (___match127458127459_
                   _e124260124425_
                   _hd124259124428_
                   _tl124258124430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_))
                                              (___match127458127459_
                                               _e124260124425_
                                               _hd124259124428_
                                               _tl124258124430_))
                                          (___match127458127459_
                                           _e124260124425_
                                           _hd124259124428_
                                           _tl124258124430_))))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))
                              (___match127458127459_
                               _e124260124425_
                               _hd124259124428_
                               _tl124258124430_))
                          (___match127458127459_
                           _e124260124425_
                           _hd124259124428_
                           _tl124258124430_))))
                  (___match127458127459_
                   _e124260124425_
                   _hd124259124428_
                   _tl124258124430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_))
                                              (___match127458127459_
                                               _e124260124425_
                                               _hd124259124428_
                                               _tl124258124430_))))
                                      (___match127458127459_
                                       _e124260124425_
                                       _hd124259124428_
                                       _tl124258124430_))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))
                              (___match127458127459_
                               _e124260124425_
                               _hd124259124428_
                               _tl124258124430_))))
                      (___match127458127459_
                       _e124260124425_
                       _hd124259124428_
                       _tl124258124430_))))
              (___match127458127459_
               _e124260124425_
               _hd124259124428_
               _tl124258124430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_))))
                                          (___match127458127459_
                                           _e124260124425_
                                           _hd124259124428_
                                           _tl124258124430_))
                                      (___match127458127459_
                                       _e124260124425_
                                       _hd124259124428_
                                       _tl124258124430_))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))))
                          (___match127458127459_
                           _e124260124425_
                           _hd124259124428_
                           _tl124258124430_))))
                  (___match127458127459_
                   _e124260124425_
                   _hd124259124428_
                   _tl124258124430_))
              (___match127458127459_
               _e124260124425_
               _hd124259124428_
               _tl124258124430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127458127459_
                                                   _e124260124425_
                                                   _hd124259124428_
                                                   _tl124258124430_))))
                                          (___match127458127459_
                                           _e124260124425_
                                           _hd124259124428_
                                           _tl124258124430_))))
                                  (___match127458127459_
                                   _e124260124425_
                                   _hd124259124428_
                                   _tl124258124430_))))
                          (___match127458127459_
                           _e124260124425_
                           _hd124259124428_
                           _tl124258124430_))))
                   (___match127312127313_
                    (lambda (_e124193124816_
                             _hd124192124819_
                             _tl124191124821_
                             _e124196124824_
                             _hd124195124827_
                             _tl124194124829_
                             _e124199124832_
                             _hd124198124835_
                             _tl124197124837_
                             _e124202124840_
                             _hd124201124843_
                             _tl124200124845_
                             _e124205124848_
                             _hd124204124851_
                             _tl124203124853_
                             _e124208124856_
                             _hd124207124859_
                             _tl124206124861_
                             _e124211124864_
                             _hd124210124867_
                             _tl124209124869_
                             _e124214124872_
                             _hd124213124875_
                             _tl124212124877_
                             _e124217124880_
                             _hd124216124883_
                             _tl124215124885_
                             _e124220124888_
                             _hd124219124891_
                             _tl124218124893_
                             _e124223124896_
                             _hd124222124899_
                             _tl124221124901_
                             _e124226124904_
                             _hd124225124907_
                             _tl124224124909_
                             _e124229124912_
                             _hd124228124915_
                             _tl124227124917_
                             _e124232124920_
                             _hd124231124923_
                             _tl124230124925_
                             _e124235124928_
                             _hd124234124931_
                             _tl124233124933_
                             _e124238124936_
                             _hd124237124939_
                             _tl124236124941_
                             _e124241124944_
                             _hd124240124947_
                             _tl124239124949_
                             _e124244124952_
                             _hd124243124955_
                             _tl124242124957_
                             _e124247124960_
                             _hd124246124963_
                             _tl124245124965_)
                      (let ((_L124968_ _hd124246124963_)
                            (_L124969_ _hd124237124939_)
                            (_L124970_ _hd124228124915_)
                            (_L124971_ _hd124219124891_)
                            (_L124972_ _hd124210124867_)
                            (_L124973_ _hd124195124827_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124973_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124972_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124971_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124973_ _L124968_)))
                            (___kont127143127144_
                             _L124968_
                             _L124969_
                             _L124970_
                             _L124971_
                             _L124972_
                             _L124973_)
                            (___match127324127325_
                             _e124193124816_
                             _hd124192124819_
                             _tl124191124821_
                             _e124196124824_
                             _hd124195124827_
                             _tl124194124829_)))))
                   (___match127166127167_
                    (lambda (_e124193124816_ _hd124192124819_ _tl124191124821_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124191124821_))
                          (let ((_e124196124824_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124191124821_))))
                            (let ((_tl124194124829_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124196124824_)))
                                  (_hd124195124827_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124196124824_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124194124829_))
                                  (let ((_e124199124832_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124194124829_))))
                                    (let ((_tl124197124837_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124199124832_)))
                                          (_hd124198124835_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124199124832_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124198124835_))
                                          (let ((_e124202124840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124198124835_))))
                                            (let ((_tl124200124845_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124202124840_)))
                                                  (_hd124201124843_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124202124840_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124201124843_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124201124843_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124200124845_))
                                                          (let ((_e124205124848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124200124845_))))
                    (let ((_tl124203124853_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124205124848_)))
                          (_hd124204124851_
                           (let ()
                             (declare (not safe))
                             (##car _e124205124848_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124204124851_))
                          (let ((_e124208124856_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124204124851_))))
                            (let ((_tl124206124861_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124208124856_)))
                                  (_hd124207124859_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124208124856_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124207124859_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124207124859_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124206124861_))
                                          (let ((_e124211124864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124206124861_))))
                                            (let ((_tl124209124869_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124211124864_)))
                                                  (_hd124210124867_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124211124864_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124209124869_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124203124853_))
                                                      (let ((_e124214124872_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124203124853_))))
                (let ((_tl124212124877_
                       (let () (declare (not safe)) (##cdr _e124214124872_)))
                      (_hd124213124875_
                       (let () (declare (not safe)) (##car _e124214124872_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124213124875_))
                      (let ((_e124217124880_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124213124875_))))
                        (let ((_tl124215124885_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124217124880_)))
                              (_hd124216124883_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124217124880_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124216124883_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124216124883_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124215124885_))
                                      (let ((_e124220124888_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124215124885_))))
                                        (let ((_tl124218124893_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124220124888_)))
                                              (_hd124219124891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124220124888_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124218124893_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124212124877_))
                                                  (let ((_e124223124896_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124212124877_))))
                                                    (let ((_tl124221124901_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124223124896_)))
                                                          (_hd124222124899_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124223124896_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124222124899_))
                                                          (let ((_e124226124904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124222124899_))))
                    (let ((_tl124224124909_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124226124904_)))
                          (_hd124225124907_
                           (let ()
                             (declare (not safe))
                             (##car _e124226124904_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124225124907_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124225124907_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124224124909_))
                                  (let ((_e124229124912_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124224124909_))))
                                    (let ((_tl124227124917_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124229124912_)))
                                          (_hd124228124915_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124229124912_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124227124917_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124221124901_))
                                              (let ((_e124232124920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124221124901_))))
                                                (let ((_tl124230124925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124232124920_)))
                                                      (_hd124231124923_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124232124920_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124231124923_))
                                                      (let ((_e124235124928_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124231124923_))))
                (let ((_tl124233124933_
                       (let () (declare (not safe)) (##cdr _e124235124928_)))
                      (_hd124234124931_
                       (let () (declare (not safe)) (##car _e124235124928_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124234124931_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124234124931_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124233124933_))
                              (let ((_e124238124936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124233124933_))))
                                (let ((_tl124236124941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124238124936_)))
                                      (_hd124237124939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124238124936_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124236124941_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124230124925_))
                                          (let ((_e124241124944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124230124925_))))
                                            (let ((_tl124239124949_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124241124944_)))
                                                  (_hd124240124947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124241124944_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124240124947_))
                                                  (let ((_e124244124952_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124240124947_))))
                                                    (let ((_tl124242124957_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124244124952_)))
                                                          (_hd124243124955_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124244124952_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124243124955_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124243124955_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124242124957_))
                          (let ((_e124247124960_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124242124957_))))
                            (let ((_tl124245124965_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124247124960_)))
                                  (_hd124246124963_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124247124960_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124245124965_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124239124949_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124197124837_))
                                          (___match127312127313_
                                           _e124193124816_
                                           _hd124192124819_
                                           _tl124191124821_
                                           _e124196124824_
                                           _hd124195124827_
                                           _tl124194124829_
                                           _e124199124832_
                                           _hd124198124835_
                                           _tl124197124837_
                                           _e124202124840_
                                           _hd124201124843_
                                           _tl124200124845_
                                           _e124205124848_
                                           _hd124204124851_
                                           _tl124203124853_
                                           _e124208124856_
                                           _hd124207124859_
                                           _tl124206124861_
                                           _e124211124864_
                                           _hd124210124867_
                                           _tl124209124869_
                                           _e124214124872_
                                           _hd124213124875_
                                           _tl124212124877_
                                           _e124217124880_
                                           _hd124216124883_
                                           _tl124215124885_
                                           _e124220124888_
                                           _hd124219124891_
                                           _tl124218124893_
                                           _e124223124896_
                                           _hd124222124899_
                                           _tl124221124901_
                                           _e124226124904_
                                           _hd124225124907_
                                           _tl124224124909_
                                           _e124229124912_
                                           _hd124228124915_
                                           _tl124227124917_
                                           _e124232124920_
                                           _hd124231124923_
                                           _tl124230124925_
                                           _e124235124928_
                                           _hd124234124931_
                                           _tl124233124933_
                                           _e124238124936_
                                           _hd124237124939_
                                           _tl124236124941_
                                           _e124241124944_
                                           _hd124240124947_
                                           _tl124239124949_
                                           _e124244124952_
                                           _hd124243124955_
                                           _tl124242124957_
                                           _e124247124960_
                                           _hd124246124963_
                                           _tl124245124965_)
                                          (___match127324127325_
                                           _e124193124816_
                                           _hd124192124819_
                                           _tl124191124821_
                                           _e124196124824_
                                           _hd124195124827_
                                           _tl124194124829_))
                                      (___match127324127325_
                                       _e124193124816_
                                       _hd124192124819_
                                       _tl124191124821_
                                       _e124196124824_
                                       _hd124195124827_
                                       _tl124194124829_))
                                  (___match127324127325_
                                   _e124193124816_
                                   _hd124192124819_
                                   _tl124191124821_
                                   _e124196124824_
                                   _hd124195124827_
                                   _tl124194124829_))))
                          (___match127324127325_
                           _e124193124816_
                           _hd124192124819_
                           _tl124191124821_
                           _e124196124824_
                           _hd124195124827_
                           _tl124194124829_))
                      (___match127324127325_
                       _e124193124816_
                       _hd124192124819_
                       _tl124191124821_
                       _e124196124824_
                       _hd124195124827_
                       _tl124194124829_))
                  (___match127324127325_
                   _e124193124816_
                   _hd124192124819_
                   _tl124191124821_
                   _e124196124824_
                   _hd124195124827_
                   _tl124194124829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127324127325_
                                                   _e124193124816_
                                                   _hd124192124819_
                                                   _tl124191124821_
                                                   _e124196124824_
                                                   _hd124195124827_
                                                   _tl124194124829_))))
                                          (___match127324127325_
                                           _e124193124816_
                                           _hd124192124819_
                                           _tl124191124821_
                                           _e124196124824_
                                           _hd124195124827_
                                           _tl124194124829_))
                                      (___match127324127325_
                                       _e124193124816_
                                       _hd124192124819_
                                       _tl124191124821_
                                       _e124196124824_
                                       _hd124195124827_
                                       _tl124194124829_))))
                              (___match127324127325_
                               _e124193124816_
                               _hd124192124819_
                               _tl124191124821_
                               _e124196124824_
                               _hd124195124827_
                               _tl124194124829_))
                          (___match127324127325_
                           _e124193124816_
                           _hd124192124819_
                           _tl124191124821_
                           _e124196124824_
                           _hd124195124827_
                           _tl124194124829_))
                      (___match127324127325_
                       _e124193124816_
                       _hd124192124819_
                       _tl124191124821_
                       _e124196124824_
                       _hd124195124827_
                       _tl124194124829_))))
              (___match127324127325_
               _e124193124816_
               _hd124192124819_
               _tl124191124821_
               _e124196124824_
               _hd124195124827_
               _tl124194124829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127324127325_
                                               _e124193124816_
                                               _hd124192124819_
                                               _tl124191124821_
                                               _e124196124824_
                                               _hd124195124827_
                                               _tl124194124829_))
                                          (___match127324127325_
                                           _e124193124816_
                                           _hd124192124819_
                                           _tl124191124821_
                                           _e124196124824_
                                           _hd124195124827_
                                           _tl124194124829_))))
                                  (___match127324127325_
                                   _e124193124816_
                                   _hd124192124819_
                                   _tl124191124821_
                                   _e124196124824_
                                   _hd124195124827_
                                   _tl124194124829_))
                              (___match127324127325_
                               _e124193124816_
                               _hd124192124819_
                               _tl124191124821_
                               _e124196124824_
                               _hd124195124827_
                               _tl124194124829_))
                          (___match127324127325_
                           _e124193124816_
                           _hd124192124819_
                           _tl124191124821_
                           _e124196124824_
                           _hd124195124827_
                           _tl124194124829_))))
                  (___match127324127325_
                   _e124193124816_
                   _hd124192124819_
                   _tl124191124821_
                   _e124196124824_
                   _hd124195124827_
                   _tl124194124829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127324127325_
                                                   _e124193124816_
                                                   _hd124192124819_
                                                   _tl124191124821_
                                                   _e124196124824_
                                                   _hd124195124827_
                                                   _tl124194124829_))
                                              (___match127324127325_
                                               _e124193124816_
                                               _hd124192124819_
                                               _tl124191124821_
                                               _e124196124824_
                                               _hd124195124827_
                                               _tl124194124829_))))
                                      (___match127324127325_
                                       _e124193124816_
                                       _hd124192124819_
                                       _tl124191124821_
                                       _e124196124824_
                                       _hd124195124827_
                                       _tl124194124829_))
                                  (___match127324127325_
                                   _e124193124816_
                                   _hd124192124819_
                                   _tl124191124821_
                                   _e124196124824_
                                   _hd124195124827_
                                   _tl124194124829_))
                              (___match127324127325_
                               _e124193124816_
                               _hd124192124819_
                               _tl124191124821_
                               _e124196124824_
                               _hd124195124827_
                               _tl124194124829_))))
                      (___match127324127325_
                       _e124193124816_
                       _hd124192124819_
                       _tl124191124821_
                       _e124196124824_
                       _hd124195124827_
                       _tl124194124829_))))
              (___match127324127325_
               _e124193124816_
               _hd124192124819_
               _tl124191124821_
               _e124196124824_
               _hd124195124827_
               _tl124194124829_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127324127325_
                                                   _e124193124816_
                                                   _hd124192124819_
                                                   _tl124191124821_
                                                   _e124196124824_
                                                   _hd124195124827_
                                                   _tl124194124829_))))
                                          (___match127324127325_
                                           _e124193124816_
                                           _hd124192124819_
                                           _tl124191124821_
                                           _e124196124824_
                                           _hd124195124827_
                                           _tl124194124829_))
                                      (___match127324127325_
                                       _e124193124816_
                                       _hd124192124819_
                                       _tl124191124821_
                                       _e124196124824_
                                       _hd124195124827_
                                       _tl124194124829_))
                                  (___match127324127325_
                                   _e124193124816_
                                   _hd124192124819_
                                   _tl124191124821_
                                   _e124196124824_
                                   _hd124195124827_
                                   _tl124194124829_))))
                          (___match127324127325_
                           _e124193124816_
                           _hd124192124819_
                           _tl124191124821_
                           _e124196124824_
                           _hd124195124827_
                           _tl124194124829_))))
                  (___match127324127325_
                   _e124193124816_
                   _hd124192124819_
                   _tl124191124821_
                   _e124196124824_
                   _hd124195124827_
                   _tl124194124829_))
              (___match127324127325_
               _e124193124816_
               _hd124192124819_
               _tl124191124821_
               _e124196124824_
               _hd124195124827_
               _tl124194124829_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127324127325_
                                                   _e124193124816_
                                                   _hd124192124819_
                                                   _tl124191124821_
                                                   _e124196124824_
                                                   _hd124195124827_
                                                   _tl124194124829_))))
                                          (___match127324127325_
                                           _e124193124816_
                                           _hd124192124819_
                                           _tl124191124821_
                                           _e124196124824_
                                           _hd124195124827_
                                           _tl124194124829_))))
                                  (___match127324127325_
                                   _e124193124816_
                                   _hd124192124819_
                                   _tl124191124821_
                                   _e124196124824_
                                   _hd124195124827_
                                   _tl124194124829_))))
                          (___match127458127459_
                           _e124193124816_
                           _hd124192124819_
                           _tl124191124821_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127139127140_))
                  (let ((_e124184125033_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127139127140_))))
                    (let ((_tl124182125038_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124184125033_)))
                          (_hd124183125036_
                           (let ()
                             (declare (not safe))
                             (##car _e124184125033_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125041_ _tl124182125038_))
                            (___kont127141127142_ _L125041_))
                          (___match127166127167_
                           _e124184125033_
                           _hd124183125036_
                           _tl124182125038_))))
                  (let () (declare (not safe)) (_g124179124375_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx124128_)
        (letrec ((_clause-e124130_
                  (lambda (_form124171_)
                    (let ((__obj128812
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
                       __obj128812
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124171_))
                       (if (let ((__tmp128879
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128879))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124171_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124171_))
                               '#f)
                           '#f))
                      __obj128812))))
          (let* ((_g124132124142_
                  (lambda (_g124133124139_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124133124139_))))
                 (_g124131124168_
                  (lambda (_g124133124145_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124133124145_))
                        (let ((_e124137124147_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124133124145_))))
                          (let ((_hd124136124150_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124137124147_)))
                                (_tl124135124152_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124137124147_))))
                            ((lambda (_L124155_)
                               (let ((_clauses124166_
                                      (map _clause-e124130_ _L124155_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124166_)))
                             _tl124135124152_)))
                        (let ()
                          (declare (not safe))
                          (_g124132124142_ _g124133124145_))))))
            (declare (not safe))
            (_g124131124168_ _stx124128_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx124060_)
        (let* ((_g124062124079_
                (lambda (_g124063124076_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124063124076_))))
               (_g124061124125_
                (lambda (_g124063124082_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124063124082_))
                      (let ((_e124068124084_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124063124082_))))
                        (let ((_hd124067124087_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124068124084_)))
                              (_tl124066124089_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124068124084_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124066124089_))
                              (let ((_e124071124092_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124066124089_))))
                                (let ((_hd124070124095_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124071124092_)))
                                      (_tl124069124097_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124071124092_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124069124097_))
                                      (let ((_e124074124100_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124069124097_))))
                                        (let ((_hd124073124103_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124074124100_)))
                                              (_tl124072124105_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124074124100_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124072124105_))
                                              ((lambda (_L124108_ _L124109_)
                                                 (let ((__tmp128880
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L124108_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128880
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124073124103_
                                               _hd124070124095_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124062124079_
                                                 _g124063124082_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124062124079_ _g124063124082_)))))
                              (let ()
                                (declare (not safe))
                                (_g124062124079_ _g124063124082_)))))
                      (let ()
                        (declare (not safe))
                        (_g124062124079_ _g124063124082_))))))
          (declare (not safe))
          (_g124061124125_ _stx124060_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123965_)
        (let* ((___stx127467127468_ _stx123965_)
               (_g123968123988_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127467127468_)))))
          (let ((___kont127469127470_
                 (lambda (_L124032_ _L124033_)
                   (let ((_type-e124050124052_
                          (let ((__tmp128881
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124033_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128881))))
                     (if _type-e124050124052_
                         (let ((_type-e124055_ _type-e124050124052_))
                           (_type-e124055_ _stx123965_ _L124032_))
                         '#f))))
                (___kont127471127472_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127467127468_))
                (let ((_e123974124000_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127467127468_))))
                  (let ((_tl123972124005_
                         (let () (declare (not safe)) (##cdr _e123974124000_)))
                        (_hd123973124003_
                         (let ()
                           (declare (not safe))
                           (##car _e123974124000_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123972124005_))
                        (let ((_e123977124008_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123972124005_))))
                          (let ((_tl123975124013_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123977124008_)))
                                (_hd123976124011_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123977124008_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123976124011_))
                                (let ((_e123980124016_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123976124011_))))
                                  (let ((_tl123978124021_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123980124016_)))
                                        (_hd123979124019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123980124016_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123979124019_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123979124019_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123978124021_))
                                                (let ((_e123983124024_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123978124021_))))
                                                  (let ((_tl123981124029_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123983124024_)))
                                                        (_hd123982124027_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123983124024_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123981124029_))
                                                        (___kont127469127470_
                                                         _tl123975124013_
                                                         _hd123982124027_)
                                                        (___kont127471127472_))))
                                                (___kont127471127472_))
                                            (___kont127471127472_))
                                        (___kont127471127472_))))
                                (___kont127471127472_))))
                        (___kont127471127472_))))
                (___kont127471127472_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123914_)
        (let* ((_g123916123929_
                (lambda (_g123917123926_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123917123926_))))
               (_g123915123962_
                (lambda (_g123917123932_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123917123932_))
                      (let ((_e123921123934_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123917123932_))))
                        (let ((_hd123920123937_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123921123934_)))
                              (_tl123919123939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123921123934_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123919123939_))
                              (let ((_e123924123942_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123919123939_))))
                                (let ((_hd123923123945_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123924123942_)))
                                      (_tl123922123947_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123924123942_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123922123947_))
                                      ((lambda (_L123950_)
                                         (let ((__tmp128882
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123950_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128882)))
                                       _hd123923123945_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123916123929_ _g123917123932_)))))
                              (let ()
                                (declare (not safe))
                                (_g123916123929_ _g123917123932_)))))
                      (let ()
                        (declare (not safe))
                        (_g123916123929_ _g123917123932_))))))
          (declare (not safe))
          (_g123915123962_ _stx123914_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123148_)
        (let* ((___stx127505127506_ _form123148_)
               (_g123153123310_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127505127506_)))))
          (let ((___kont127507127508_
                 (lambda (_L123834_ _L123835_ _L123836_) '#t))
                (___kont127513127514_
                 (lambda (_L123622_
                          _L123623_
                          _L123624_
                          _L123625_
                          _L123626_
                          _L123627_)
                   '#t))
                (___kont127519127520_
                 (lambda (_L123418_ _L123419_ _L123420_ _L123421_) '#t))
                (___kont127521127522_ (lambda () '#f)))
            (let* ((___match127646127647_
                    (lambda (_e123272123322_
                             _hd123271123325_
                             _tl123270123327_
                             _e123275123330_
                             _hd123274123333_
                             _tl123273123335_
                             _e123278123338_
                             _hd123277123341_
                             _tl123276123343_
                             _e123281123346_
                             _hd123280123349_
                             _tl123279123351_
                             _e123284123354_
                             _hd123283123357_
                             _tl123282123359_
                             _e123287123362_
                             _hd123286123365_
                             _tl123285123367_
                             _e123290123370_
                             _hd123289123373_
                             _tl123288123375_
                             _e123293123378_
                             _hd123292123381_
                             _tl123291123383_
                             _e123296123386_
                             _hd123295123389_
                             _tl123294123391_
                             _e123299123394_
                             _hd123298123397_
                             _tl123297123399_
                             _e123302123402_
                             _hd123301123405_
                             _tl123300123407_
                             _e123305123410_
                             _hd123304123413_
                             _tl123303123415_)
                      (let ((_L123418_ _hd123304123413_)
                            (_L123419_ _hd123295123389_)
                            (_L123420_ _hd123286123365_)
                            (_L123421_ _hd123271123325_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123421_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123420_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123421_ _L123418_))
                                 (let ((__tmp128883
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123419_
                                           _L123421_))))
                                   (declare (not safe))
                                   (not __tmp128883)))
                            (___kont127519127520_
                             _L123418_
                             _L123419_
                             _L123420_
                             _L123421_)
                            (___kont127521127522_)))))
                   (___match127618127619_
                    (lambda (_e123272123322_
                             _hd123271123325_
                             _tl123270123327_
                             _e123275123330_
                             _hd123274123333_
                             _tl123273123335_
                             _e123278123338_
                             _hd123277123341_
                             _tl123276123343_
                             _e123281123346_
                             _hd123280123349_
                             _tl123279123351_
                             _e123284123354_
                             _hd123283123357_
                             _tl123282123359_
                             _e123287123362_
                             _hd123286123365_
                             _tl123285123367_
                             _e123290123370_
                             _hd123289123373_
                             _tl123288123375_
                             _e123293123378_
                             _hd123292123381_
                             _tl123291123383_
                             _e123296123386_
                             _hd123295123389_
                             _tl123294123391_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123288123375_))
                          (let ((_e123299123394_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123288123375_))))
                            (let ((_tl123297123399_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123299123394_)))
                                  (_hd123298123397_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123299123394_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123298123397_))
                                  (let ((_e123302123402_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123298123397_))))
                                    (let ((_tl123300123407_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123302123402_)))
                                          (_hd123301123405_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123302123402_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123301123405_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123301123405_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123300123407_))
                                                  (let ((_e123305123410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123300123407_))))
                                                    (let ((_tl123303123415_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123305123410_)))
                                                          (_hd123304123413_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123305123410_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123303123415_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123297123399_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123273123335_))
                          (___match127646127647_
                           _e123272123322_
                           _hd123271123325_
                           _tl123270123327_
                           _e123275123330_
                           _hd123274123333_
                           _tl123273123335_
                           _e123278123338_
                           _hd123277123341_
                           _tl123276123343_
                           _e123281123346_
                           _hd123280123349_
                           _tl123279123351_
                           _e123284123354_
                           _hd123283123357_
                           _tl123282123359_
                           _e123287123362_
                           _hd123286123365_
                           _tl123285123367_
                           _e123290123370_
                           _hd123289123373_
                           _tl123288123375_
                           _e123293123378_
                           _hd123292123381_
                           _tl123291123383_
                           _e123296123386_
                           _hd123295123389_
                           _tl123294123391_
                           _e123299123394_
                           _hd123298123397_
                           _tl123297123399_
                           _e123302123402_
                           _hd123301123405_
                           _tl123300123407_
                           _e123305123410_
                           _hd123304123413_
                           _tl123303123415_)
                          (___kont127521127522_))
                      (___kont127521127522_))
                  (___kont127521127522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127521127522_))
                                              (___kont127521127522_))
                                          (___kont127521127522_))))
                                  (___kont127521127522_))))
                          (___kont127521127522_))))
                   (___match127548127549_
                    (lambda (_e123208123462_
                             _hd123207123465_
                             _tl123206123467_
                             ___splice127515127516_
                             _target123209123470_
                             _tl123211123472_)
                      (letrec ((_loop123212123475_
                                (lambda (_hd123210123478_ _arg123216123480_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123210123478_))
                                      (let ((_e123213123483_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123210123478_))))
                                        (let ((_lp-tl123215123488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123213123483_)))
                                              (_lp-hd123214123486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123213123483_))))
                                          (let ((__tmp128898
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123214123486_
                                                         _arg123216123480_))))
                                            (declare (not safe))
                                            (_loop123212123475_
                                             _lp-tl123215123488_
                                             __tmp128898))))
                                      (let ((_arg123217123491_
                                             (reverse _arg123216123480_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123206123467_))
                                            (let ((_e123220123494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123206123467_))))
                                              (let ((_tl123218123499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123220123494_)))
                                                    (_hd123219123497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123220123494_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123219123497_))
                                                    (let ((_e123223123502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123219123497_))))
                                                      (let ((_tl123221123507_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123223123502_)))
                    (_hd123222123505_
                     (let () (declare (not safe)) (##car _e123223123502_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123222123505_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123222123505_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123221123507_))
                            (let ((_e123226123510_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123221123507_))))
                              (let ((_tl123224123515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123226123510_)))
                                    (_hd123225123513_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123226123510_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123225123513_))
                                    (let ((_e123229123518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123225123513_))))
                                      (let ((_tl123227123523_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123229123518_)))
                                            (_hd123228123521_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123229123518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123228123521_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123228123521_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123227123523_))
                                                    (let ((_e123232123526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123227123523_))))
                                                      (let ((_tl123230123531_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123232123526_)))
                    (_hd123231123529_
                     (let () (declare (not safe)) (##car _e123232123526_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123230123531_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123224123515_))
                        (let ((_e123235123534_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123224123515_))))
                          (let ((_tl123233123539_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123235123534_)))
                                (_hd123234123537_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123235123534_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123234123537_))
                                (let ((_e123238123542_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123234123537_))))
                                  (let ((_tl123236123547_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123238123542_)))
                                        (_hd123237123545_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123238123542_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123237123545_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123237123545_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123236123547_))
                                                (let ((_e123241123550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123236123547_))))
                                                  (let ((_tl123239123555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123241123550_)))
                                                        (_hd123240123553_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123241123550_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123239123555_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123233123539_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123233123539_))
                              '1)
                        (let ((___splice127517127518_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123233123539_
                                  '1))))
                          (let ((_tl123244123560_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127517127518_ '1)))
                                (_target123242123558_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127517127518_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123244123560_))
                                (let ((_e123253123563_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123244123560_))))
                                  (let ((_tl123251123568_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123253123563_)))
                                        (_hd123252123566_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123253123563_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123252123566_))
                                        (let ((_e123256123571_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123252123566_))))
                                          (let ((_tl123254123576_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123256123571_)))
                                                (_hd123255123574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123256123571_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123255123574_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123255123574_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123254123576_))
                                                        (let ((_e123259123579_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123254123576_))))
                  (let ((_tl123257123584_
                         (let () (declare (not safe)) (##cdr _e123259123579_)))
                        (_hd123258123582_
                         (let ()
                           (declare (not safe))
                           (##car _e123259123579_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123257123584_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123251123568_))
                            (letrec ((_loop123245123587_
                                      (lambda (_hd123243123590_
                                               _xarg123249123592_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123243123590_))
                                            (let ((_e123246123595_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123243123590_))))
                                              (let ((_lp-tl123248123600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123246123595_)))
                                                    (_lp-hd123247123598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123246123595_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123247123598_))
                                                    (let ((_e123262123603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123247123598_))))
                                                      (let ((_tl123260123608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123262123603_)))
                    (_hd123261123606_
                     (let () (declare (not safe)) (##car _e123262123603_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123261123606_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123261123606_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123260123608_))
                            (let ((_e123265123611_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123260123608_))))
                              (let ((_tl123263123616_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123265123611_)))
                                    (_hd123264123614_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123265123611_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123263123616_))
                                    (let ((__tmp128897
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123264123614_
                                                   _xarg123249123592_))))
                                      (declare (not safe))
                                      (_loop123245123587_
                                       _lp-tl123248123600_
                                       __tmp128897))
                                    (___match127618127619_
                                     _e123208123462_
                                     _hd123207123465_
                                     _tl123206123467_
                                     _e123220123494_
                                     _hd123219123497_
                                     _tl123218123499_
                                     _e123223123502_
                                     _hd123222123505_
                                     _tl123221123507_
                                     _e123226123510_
                                     _hd123225123513_
                                     _tl123224123515_
                                     _e123229123518_
                                     _hd123228123521_
                                     _tl123227123523_
                                     _e123232123526_
                                     _hd123231123529_
                                     _tl123230123531_
                                     _e123235123534_
                                     _hd123234123537_
                                     _tl123233123539_
                                     _e123238123542_
                                     _hd123237123545_
                                     _tl123236123547_
                                     _e123241123550_
                                     _hd123240123553_
                                     _tl123239123555_))))
                            (___match127618127619_
                             _e123208123462_
                             _hd123207123465_
                             _tl123206123467_
                             _e123220123494_
                             _hd123219123497_
                             _tl123218123499_
                             _e123223123502_
                             _hd123222123505_
                             _tl123221123507_
                             _e123226123510_
                             _hd123225123513_
                             _tl123224123515_
                             _e123229123518_
                             _hd123228123521_
                             _tl123227123523_
                             _e123232123526_
                             _hd123231123529_
                             _tl123230123531_
                             _e123235123534_
                             _hd123234123537_
                             _tl123233123539_
                             _e123238123542_
                             _hd123237123545_
                             _tl123236123547_
                             _e123241123550_
                             _hd123240123553_
                             _tl123239123555_))
                        (___match127618127619_
                         _e123208123462_
                         _hd123207123465_
                         _tl123206123467_
                         _e123220123494_
                         _hd123219123497_
                         _tl123218123499_
                         _e123223123502_
                         _hd123222123505_
                         _tl123221123507_
                         _e123226123510_
                         _hd123225123513_
                         _tl123224123515_
                         _e123229123518_
                         _hd123228123521_
                         _tl123227123523_
                         _e123232123526_
                         _hd123231123529_
                         _tl123230123531_
                         _e123235123534_
                         _hd123234123537_
                         _tl123233123539_
                         _e123238123542_
                         _hd123237123545_
                         _tl123236123547_
                         _e123241123550_
                         _hd123240123553_
                         _tl123239123555_))
                    (___match127618127619_
                     _e123208123462_
                     _hd123207123465_
                     _tl123206123467_
                     _e123220123494_
                     _hd123219123497_
                     _tl123218123499_
                     _e123223123502_
                     _hd123222123505_
                     _tl123221123507_
                     _e123226123510_
                     _hd123225123513_
                     _tl123224123515_
                     _e123229123518_
                     _hd123228123521_
                     _tl123227123523_
                     _e123232123526_
                     _hd123231123529_
                     _tl123230123531_
                     _e123235123534_
                     _hd123234123537_
                     _tl123233123539_
                     _e123238123542_
                     _hd123237123545_
                     _tl123236123547_
                     _e123241123550_
                     _hd123240123553_
                     _tl123239123555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127618127619_
                                                     _e123208123462_
                                                     _hd123207123465_
                                                     _tl123206123467_
                                                     _e123220123494_
                                                     _hd123219123497_
                                                     _tl123218123499_
                                                     _e123223123502_
                                                     _hd123222123505_
                                                     _tl123221123507_
                                                     _e123226123510_
                                                     _hd123225123513_
                                                     _tl123224123515_
                                                     _e123229123518_
                                                     _hd123228123521_
                                                     _tl123227123523_
                                                     _e123232123526_
                                                     _hd123231123529_
                                                     _tl123230123531_
                                                     _e123235123534_
                                                     _hd123234123537_
                                                     _tl123233123539_
                                                     _e123238123542_
                                                     _hd123237123545_
                                                     _tl123236123547_
                                                     _e123241123550_
                                                     _hd123240123553_
                                                     _tl123239123555_))))
                                            (let ((_xarg123250123619_
                                                   (reverse _xarg123249123592_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123218123499_))
                                                  (let ((_L123622_
                                                         _hd123258123582_)
                                                        (_L123623_
                                                         _xarg123250123619_)
                                                        (_L123624_
                                                         _hd123240123553_)
                                                        (_L123625_
                                                         _hd123231123529_)
                                                        (_L123626_
                                                         _tl123211123472_)
                                                        (_L123627_
                                                         _arg123217123491_))
                                                    (if (and (let ((__tmp128895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128896
                                   (lambda (_g123670123673_ _g123671123675_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123670123673_
                                             _g123671123675_)))))
                              (declare (not safe))
                              (foldr1 __tmp128896 '() _L123627_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128895))
                     (let () (declare (not safe)) (gx#identifier? _L123626_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123625_ 'apply))
                     (fx= (length (let ((__tmp128893
                                         (lambda (_g123677123680_
                                                  _g123678123682_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123677123680_
                                                   _g123678123682_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128893 '() _L123627_)))
                          (length (let ((__tmp128894
                                         (lambda (_g123684123687_
                                                  _g123685123689_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123684123687_
                                                   _g123685123689_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128894 '() _L123623_))))
                     (let ((__tmp128891
                            (let ((__tmp128892
                                   (lambda (_g123691123694_ _g123692123696_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123691123694_
                                             _g123692123696_)))))
                              (declare (not safe))
                              (foldr1 __tmp128892 '() _L123627_)))
                           (__tmp128889
                            (let ((__tmp128890
                                   (lambda (_g123698123701_ _g123699123703_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123698123701_
                                             _g123699123703_)))))
                              (declare (not safe))
                              (foldr1 __tmp128890 '() _L123623_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128891 __tmp128889))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123626_ _L123622_))
                     (let ((__tmp128884
                            (let ((__tmp128888
                                   (lambda (_g123705123707_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123705123707_
                                        _L123624_))))
                                  (__tmp128885
                                   (let ((__tmp128887
                                          (lambda (_g123709123712_
                                                   _g123710123714_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123709123712_
                                                    _g123710123714_))))
                                         (__tmp128886
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123626_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128887
                                             __tmp128886
                                             _L123627_))))
                              (declare (not safe))
                              (find __tmp128888 __tmp128885))))
                       (declare (not safe))
                       (not __tmp128884)))
                (___kont127513127514_
                 _L123622_
                 _L123623_
                 _L123624_
                 _L123625_
                 _L123626_
                 _L123627_)
                (___match127618127619_
                 _e123208123462_
                 _hd123207123465_
                 _tl123206123467_
                 _e123220123494_
                 _hd123219123497_
                 _tl123218123499_
                 _e123223123502_
                 _hd123222123505_
                 _tl123221123507_
                 _e123226123510_
                 _hd123225123513_
                 _tl123224123515_
                 _e123229123518_
                 _hd123228123521_
                 _tl123227123523_
                 _e123232123526_
                 _hd123231123529_
                 _tl123230123531_
                 _e123235123534_
                 _hd123234123537_
                 _tl123233123539_
                 _e123238123542_
                 _hd123237123545_
                 _tl123236123547_
                 _e123241123550_
                 _hd123240123553_
                 _tl123239123555_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127618127619_
                                                   _e123208123462_
                                                   _hd123207123465_
                                                   _tl123206123467_
                                                   _e123220123494_
                                                   _hd123219123497_
                                                   _tl123218123499_
                                                   _e123223123502_
                                                   _hd123222123505_
                                                   _tl123221123507_
                                                   _e123226123510_
                                                   _hd123225123513_
                                                   _tl123224123515_
                                                   _e123229123518_
                                                   _hd123228123521_
                                                   _tl123227123523_
                                                   _e123232123526_
                                                   _hd123231123529_
                                                   _tl123230123531_
                                                   _e123235123534_
                                                   _hd123234123537_
                                                   _tl123233123539_
                                                   _e123238123542_
                                                   _hd123237123545_
                                                   _tl123236123547_
                                                   _e123241123550_
                                                   _hd123240123553_
                                                   _tl123239123555_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123245123587_ _target123242123558_ '())))
                            (___match127618127619_
                             _e123208123462_
                             _hd123207123465_
                             _tl123206123467_
                             _e123220123494_
                             _hd123219123497_
                             _tl123218123499_
                             _e123223123502_
                             _hd123222123505_
                             _tl123221123507_
                             _e123226123510_
                             _hd123225123513_
                             _tl123224123515_
                             _e123229123518_
                             _hd123228123521_
                             _tl123227123523_
                             _e123232123526_
                             _hd123231123529_
                             _tl123230123531_
                             _e123235123534_
                             _hd123234123537_
                             _tl123233123539_
                             _e123238123542_
                             _hd123237123545_
                             _tl123236123547_
                             _e123241123550_
                             _hd123240123553_
                             _tl123239123555_))
                        (___match127618127619_
                         _e123208123462_
                         _hd123207123465_
                         _tl123206123467_
                         _e123220123494_
                         _hd123219123497_
                         _tl123218123499_
                         _e123223123502_
                         _hd123222123505_
                         _tl123221123507_
                         _e123226123510_
                         _hd123225123513_
                         _tl123224123515_
                         _e123229123518_
                         _hd123228123521_
                         _tl123227123523_
                         _e123232123526_
                         _hd123231123529_
                         _tl123230123531_
                         _e123235123534_
                         _hd123234123537_
                         _tl123233123539_
                         _e123238123542_
                         _hd123237123545_
                         _tl123236123547_
                         _e123241123550_
                         _hd123240123553_
                         _tl123239123555_))))
                (___match127618127619_
                 _e123208123462_
                 _hd123207123465_
                 _tl123206123467_
                 _e123220123494_
                 _hd123219123497_
                 _tl123218123499_
                 _e123223123502_
                 _hd123222123505_
                 _tl123221123507_
                 _e123226123510_
                 _hd123225123513_
                 _tl123224123515_
                 _e123229123518_
                 _hd123228123521_
                 _tl123227123523_
                 _e123232123526_
                 _hd123231123529_
                 _tl123230123531_
                 _e123235123534_
                 _hd123234123537_
                 _tl123233123539_
                 _e123238123542_
                 _hd123237123545_
                 _tl123236123547_
                 _e123241123550_
                 _hd123240123553_
                 _tl123239123555_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127618127619_
                                                     _e123208123462_
                                                     _hd123207123465_
                                                     _tl123206123467_
                                                     _e123220123494_
                                                     _hd123219123497_
                                                     _tl123218123499_
                                                     _e123223123502_
                                                     _hd123222123505_
                                                     _tl123221123507_
                                                     _e123226123510_
                                                     _hd123225123513_
                                                     _tl123224123515_
                                                     _e123229123518_
                                                     _hd123228123521_
                                                     _tl123227123523_
                                                     _e123232123526_
                                                     _hd123231123529_
                                                     _tl123230123531_
                                                     _e123235123534_
                                                     _hd123234123537_
                                                     _tl123233123539_
                                                     _e123238123542_
                                                     _hd123237123545_
                                                     _tl123236123547_
                                                     _e123241123550_
                                                     _hd123240123553_
                                                     _tl123239123555_))
                                                (___match127618127619_
                                                 _e123208123462_
                                                 _hd123207123465_
                                                 _tl123206123467_
                                                 _e123220123494_
                                                 _hd123219123497_
                                                 _tl123218123499_
                                                 _e123223123502_
                                                 _hd123222123505_
                                                 _tl123221123507_
                                                 _e123226123510_
                                                 _hd123225123513_
                                                 _tl123224123515_
                                                 _e123229123518_
                                                 _hd123228123521_
                                                 _tl123227123523_
                                                 _e123232123526_
                                                 _hd123231123529_
                                                 _tl123230123531_
                                                 _e123235123534_
                                                 _hd123234123537_
                                                 _tl123233123539_
                                                 _e123238123542_
                                                 _hd123237123545_
                                                 _tl123236123547_
                                                 _e123241123550_
                                                 _hd123240123553_
                                                 _tl123239123555_))))
                                        (___match127618127619_
                                         _e123208123462_
                                         _hd123207123465_
                                         _tl123206123467_
                                         _e123220123494_
                                         _hd123219123497_
                                         _tl123218123499_
                                         _e123223123502_
                                         _hd123222123505_
                                         _tl123221123507_
                                         _e123226123510_
                                         _hd123225123513_
                                         _tl123224123515_
                                         _e123229123518_
                                         _hd123228123521_
                                         _tl123227123523_
                                         _e123232123526_
                                         _hd123231123529_
                                         _tl123230123531_
                                         _e123235123534_
                                         _hd123234123537_
                                         _tl123233123539_
                                         _e123238123542_
                                         _hd123237123545_
                                         _tl123236123547_
                                         _e123241123550_
                                         _hd123240123553_
                                         _tl123239123555_))))
                                (___match127618127619_
                                 _e123208123462_
                                 _hd123207123465_
                                 _tl123206123467_
                                 _e123220123494_
                                 _hd123219123497_
                                 _tl123218123499_
                                 _e123223123502_
                                 _hd123222123505_
                                 _tl123221123507_
                                 _e123226123510_
                                 _hd123225123513_
                                 _tl123224123515_
                                 _e123229123518_
                                 _hd123228123521_
                                 _tl123227123523_
                                 _e123232123526_
                                 _hd123231123529_
                                 _tl123230123531_
                                 _e123235123534_
                                 _hd123234123537_
                                 _tl123233123539_
                                 _e123238123542_
                                 _hd123237123545_
                                 _tl123236123547_
                                 _e123241123550_
                                 _hd123240123553_
                                 _tl123239123555_))))
                        (___match127618127619_
                         _e123208123462_
                         _hd123207123465_
                         _tl123206123467_
                         _e123220123494_
                         _hd123219123497_
                         _tl123218123499_
                         _e123223123502_
                         _hd123222123505_
                         _tl123221123507_
                         _e123226123510_
                         _hd123225123513_
                         _tl123224123515_
                         _e123229123518_
                         _hd123228123521_
                         _tl123227123523_
                         _e123232123526_
                         _hd123231123529_
                         _tl123230123531_
                         _e123235123534_
                         _hd123234123537_
                         _tl123233123539_
                         _e123238123542_
                         _hd123237123545_
                         _tl123236123547_
                         _e123241123550_
                         _hd123240123553_
                         _tl123239123555_))
                    (___match127618127619_
                     _e123208123462_
                     _hd123207123465_
                     _tl123206123467_
                     _e123220123494_
                     _hd123219123497_
                     _tl123218123499_
                     _e123223123502_
                     _hd123222123505_
                     _tl123221123507_
                     _e123226123510_
                     _hd123225123513_
                     _tl123224123515_
                     _e123229123518_
                     _hd123228123521_
                     _tl123227123523_
                     _e123232123526_
                     _hd123231123529_
                     _tl123230123531_
                     _e123235123534_
                     _hd123234123537_
                     _tl123233123539_
                     _e123238123542_
                     _hd123237123545_
                     _tl123236123547_
                     _e123241123550_
                     _hd123240123553_
                     _tl123239123555_))
                (___kont127521127522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127521127522_))
                                            (___kont127521127522_))
                                        (___kont127521127522_))))
                                (___kont127521127522_))))
                        (___kont127521127522_))
                    (___kont127521127522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127521127522_))
                                                (___kont127521127522_))
                                            (___kont127521127522_))))
                                    (___kont127521127522_))))
                            (___kont127521127522_))
                        (___kont127521127522_))
                    (___kont127521127522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127521127522_))))
                                            (___kont127521127522_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123212123475_ _target123209123470_ '())))))
                   (___match127536127537_
                    (lambda (_e123160123722_
                             _hd123159123725_
                             _tl123158123727_
                             ___splice127509127510_
                             _target123161123730_
                             _tl123163123732_)
                      (letrec ((_loop123164123735_
                                (lambda (_hd123162123738_ _arg123168123740_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123162123738_))
                                      (let ((_e123165123743_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123162123738_))))
                                        (let ((_lp-tl123167123748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123165123743_)))
                                              (_lp-hd123166123746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123165123743_))))
                                          (let ((__tmp128912
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123166123746_
                                                         _arg123168123740_))))
                                            (declare (not safe))
                                            (_loop123164123735_
                                             _lp-tl123167123748_
                                             __tmp128912))))
                                      (let ((_arg123169123751_
                                             (reverse _arg123168123740_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123158123727_))
                                            (let ((_e123172123754_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123158123727_))))
                                              (let ((_tl123170123759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123172123754_)))
                                                    (_hd123171123757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123172123754_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123171123757_))
                                                    (let ((_e123175123762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123171123757_))))
                                                      (let ((_tl123173123767_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123175123762_)))
                    (_hd123174123765_
                     (let () (declare (not safe)) (##car _e123175123762_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123174123765_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123174123765_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123173123767_))
                            (let ((_e123178123770_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123173123767_))))
                              (let ((_tl123176123775_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123178123770_)))
                                    (_hd123177123773_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123178123770_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123177123773_))
                                    (let ((_e123181123778_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123177123773_))))
                                      (let ((_tl123179123783_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123181123778_)))
                                            (_hd123180123781_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123181123778_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123180123781_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123180123781_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123179123783_))
                                                    (let ((_e123184123786_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123179123783_))))
                                                      (let ((_tl123182123791_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123184123786_)))
                    (_hd123183123789_
                     (let () (declare (not safe)) (##car _e123184123786_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123182123791_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123176123775_))
                        (let ((___splice127511127512_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123176123775_
                                  '0))))
                          (let ((_tl123187123796_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127511127512_ '1)))
                                (_target123185123794_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127511127512_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123187123796_))
                                (letrec ((_loop123188123799_
                                          (lambda (_hd123186123802_
                                                   _xarg123192123804_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123186123802_))
                                                (let ((_e123189123807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123186123802_))))
                                                  (let ((_lp-tl123191123812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123189123807_)))
                                                        (_lp-hd123190123810_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123189123807_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123190123810_))
                                                        (let ((_e123196123815_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123190123810_))))
                  (let ((_tl123194123820_
                         (let () (declare (not safe)) (##cdr _e123196123815_)))
                        (_hd123195123818_
                         (let ()
                           (declare (not safe))
                           (##car _e123196123815_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123195123818_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123195123818_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123194123820_))
                                (let ((_e123199123823_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123194123820_))))
                                  (let ((_tl123197123828_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123199123823_)))
                                        (_hd123198123826_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123199123823_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123197123828_))
                                        (let ((__tmp128911
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123198123826_
                                                       _xarg123192123804_))))
                                          (declare (not safe))
                                          (_loop123188123799_
                                           _lp-tl123191123812_
                                           __tmp128911))
                                        (___match127548127549_
                                         _e123160123722_
                                         _hd123159123725_
                                         _tl123158123727_
                                         ___splice127509127510_
                                         _target123161123730_
                                         _tl123163123732_))))
                                (___match127548127549_
                                 _e123160123722_
                                 _hd123159123725_
                                 _tl123158123727_
                                 ___splice127509127510_
                                 _target123161123730_
                                 _tl123163123732_))
                            (___match127548127549_
                             _e123160123722_
                             _hd123159123725_
                             _tl123158123727_
                             ___splice127509127510_
                             _target123161123730_
                             _tl123163123732_))
                        (___match127548127549_
                         _e123160123722_
                         _hd123159123725_
                         _tl123158123727_
                         ___splice127509127510_
                         _target123161123730_
                         _tl123163123732_))))
                (___match127548127549_
                 _e123160123722_
                 _hd123159123725_
                 _tl123158123727_
                 ___splice127509127510_
                 _target123161123730_
                 _tl123163123732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123193123831_
                                                       (reverse _xarg123192123804_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123170123759_))
                                                      (let ((_L123834_
                                                             _xarg123193123831_)
                                                            (_L123835_
                                                             _hd123183123789_)
                                                            (_L123836_
                                                             _arg123169123751_))
                                                        (if (and (let ((__tmp128909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128910
                                       (lambda (_g123864123867_
                                                _g123865123869_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123864123867_
                                                 _g123865123869_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128910 '() _L123836_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128909))
                         (fx= (length (let ((__tmp128907
                                             (lambda (_g123871123874_
                                                      _g123872123876_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123871123874_
                                                       _g123872123876_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128907 '() _L123836_)))
                              (length (let ((__tmp128908
                                             (lambda (_g123878123881_
                                                      _g123879123883_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123878123881_
                                                       _g123879123883_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128908 '() _L123834_))))
                         (let ((__tmp128905
                                (let ((__tmp128906
                                       (lambda (_g123885123888_
                                                _g123886123890_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123885123888_
                                                 _g123886123890_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128906 '() _L123836_)))
                               (__tmp128903
                                (let ((__tmp128904
                                       (lambda (_g123892123895_
                                                _g123893123897_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123892123895_
                                                 _g123893123897_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128904 '() _L123834_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128905
                                    __tmp128903))
                         (let ((__tmp128899
                                (let ((__tmp128902
                                       (lambda (_g123899123901_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123899123901_
                                            _L123835_))))
                                      (__tmp128900
                                       (let ((__tmp128901
                                              (lambda (_g123903123906_
                                                       _g123904123908_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123903123906_
                                                        _g123904123908_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128901 '() _L123836_))))
                                  (declare (not safe))
                                  (find __tmp128902 __tmp128900))))
                           (declare (not safe))
                           (not __tmp128899)))
                    (___kont127507127508_ _L123834_ _L123835_ _L123836_)
                    (___match127548127549_
                     _e123160123722_
                     _hd123159123725_
                     _tl123158123727_
                     ___splice127509127510_
                     _target123161123730_
                     _tl123163123732_)))
              (___match127548127549_
               _e123160123722_
               _hd123159123725_
               _tl123158123727_
               ___splice127509127510_
               _target123161123730_
               _tl123163123732_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123188123799_
                                     _target123185123794_
                                     '())))
                                (___match127548127549_
                                 _e123160123722_
                                 _hd123159123725_
                                 _tl123158123727_
                                 ___splice127509127510_
                                 _target123161123730_
                                 _tl123163123732_))))
                        (___match127548127549_
                         _e123160123722_
                         _hd123159123725_
                         _tl123158123727_
                         ___splice127509127510_
                         _target123161123730_
                         _tl123163123732_))
                    (___match127548127549_
                     _e123160123722_
                     _hd123159123725_
                     _tl123158123727_
                     ___splice127509127510_
                     _target123161123730_
                     _tl123163123732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127548127549_
                                                     _e123160123722_
                                                     _hd123159123725_
                                                     _tl123158123727_
                                                     ___splice127509127510_
                                                     _target123161123730_
                                                     _tl123163123732_))
                                                (___match127548127549_
                                                 _e123160123722_
                                                 _hd123159123725_
                                                 _tl123158123727_
                                                 ___splice127509127510_
                                                 _target123161123730_
                                                 _tl123163123732_))
                                            (___match127548127549_
                                             _e123160123722_
                                             _hd123159123725_
                                             _tl123158123727_
                                             ___splice127509127510_
                                             _target123161123730_
                                             _tl123163123732_))))
                                    (___match127548127549_
                                     _e123160123722_
                                     _hd123159123725_
                                     _tl123158123727_
                                     ___splice127509127510_
                                     _target123161123730_
                                     _tl123163123732_))))
                            (___match127548127549_
                             _e123160123722_
                             _hd123159123725_
                             _tl123158123727_
                             ___splice127509127510_
                             _target123161123730_
                             _tl123163123732_))
                        (___match127548127549_
                         _e123160123722_
                         _hd123159123725_
                         _tl123158123727_
                         ___splice127509127510_
                         _target123161123730_
                         _tl123163123732_))
                    (___match127548127549_
                     _e123160123722_
                     _hd123159123725_
                     _tl123158123727_
                     ___splice127509127510_
                     _target123161123730_
                     _tl123163123732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127548127549_
                                                     _e123160123722_
                                                     _hd123159123725_
                                                     _tl123158123727_
                                                     ___splice127509127510_
                                                     _target123161123730_
                                                     _tl123163123732_))))
                                            (___match127548127549_
                                             _e123160123722_
                                             _hd123159123725_
                                             _tl123158123727_
                                             ___splice127509127510_
                                             _target123161123730_
                                             _tl123163123732_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123164123735_ _target123161123730_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127505127506_))
                  (let ((_e123160123722_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127505127506_))))
                    (let ((_tl123158123727_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123160123722_)))
                          (_hd123159123725_
                           (let ()
                             (declare (not safe))
                             (##car _e123160123722_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123159123725_))
                          (let ((___splice127509127510_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123159123725_
                                    '0))))
                            (let ((_tl123163123732_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127509127510_ '1)))
                                  (_target123161123730_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127509127510_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123163123732_))
                                  (___match127536127537_
                                   _e123160123722_
                                   _hd123159123725_
                                   _tl123158123727_
                                   ___splice127509127510_
                                   _target123161123730_
                                   _tl123163123732_)
                                  (___match127548127549_
                                   _e123160123722_
                                   _hd123159123725_
                                   _tl123158123727_
                                   ___splice127509127510_
                                   _target123161123730_
                                   _tl123163123732_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123158123727_))
                              (let ((_e123275123330_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123158123727_))))
                                (let ((_tl123273123335_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123275123330_)))
                                      (_hd123274123333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123275123330_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123274123333_))
                                      (let ((_e123278123338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123274123333_))))
                                        (let ((_tl123276123343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123278123338_)))
                                              (_hd123277123341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123278123338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123277123341_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123277123341_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123276123343_))
                                                      (let ((_e123281123346_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123276123343_))))
                (let ((_tl123279123351_
                       (let () (declare (not safe)) (##cdr _e123281123346_)))
                      (_hd123280123349_
                       (let () (declare (not safe)) (##car _e123281123346_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123280123349_))
                      (let ((_e123284123354_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123280123349_))))
                        (let ((_tl123282123359_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123284123354_)))
                              (_hd123283123357_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123284123354_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123283123357_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123283123357_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123282123359_))
                                      (let ((_e123287123362_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123282123359_))))
                                        (let ((_tl123285123367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123287123362_)))
                                              (_hd123286123365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123287123362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123285123367_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123279123351_))
                                                  (let ((_e123290123370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123279123351_))))
                                                    (let ((_tl123288123375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123290123370_)))
                                                          (_hd123289123373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123290123370_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123289123373_))
                                                          (let ((_e123293123378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123289123373_))))
                    (let ((_tl123291123383_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123293123378_)))
                          (_hd123292123381_
                           (let ()
                             (declare (not safe))
                             (##car _e123293123378_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123292123381_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123292123381_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123291123383_))
                                  (let ((_e123296123386_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123291123383_))))
                                    (let ((_tl123294123391_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123296123386_)))
                                          (_hd123295123389_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123296123386_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123294123391_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123288123375_))
                                              (let ((_e123299123394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123288123375_))))
                                                (let ((_tl123297123399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123299123394_)))
                                                      (_hd123298123397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123299123394_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123298123397_))
                                                      (let ((_e123302123402_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123298123397_))))
                (let ((_tl123300123407_
                       (let () (declare (not safe)) (##cdr _e123302123402_)))
                      (_hd123301123405_
                       (let () (declare (not safe)) (##car _e123302123402_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123301123405_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123301123405_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123300123407_))
                              (let ((_e123305123410_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123300123407_))))
                                (let ((_tl123303123415_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123305123410_)))
                                      (_hd123304123413_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123305123410_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123303123415_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123297123399_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123273123335_))
                                              (___match127646127647_
                                               _e123160123722_
                                               _hd123159123725_
                                               _tl123158123727_
                                               _e123275123330_
                                               _hd123274123333_
                                               _tl123273123335_
                                               _e123278123338_
                                               _hd123277123341_
                                               _tl123276123343_
                                               _e123281123346_
                                               _hd123280123349_
                                               _tl123279123351_
                                               _e123284123354_
                                               _hd123283123357_
                                               _tl123282123359_
                                               _e123287123362_
                                               _hd123286123365_
                                               _tl123285123367_
                                               _e123290123370_
                                               _hd123289123373_
                                               _tl123288123375_
                                               _e123293123378_
                                               _hd123292123381_
                                               _tl123291123383_
                                               _e123296123386_
                                               _hd123295123389_
                                               _tl123294123391_
                                               _e123299123394_
                                               _hd123298123397_
                                               _tl123297123399_
                                               _e123302123402_
                                               _hd123301123405_
                                               _tl123300123407_
                                               _e123305123410_
                                               _hd123304123413_
                                               _tl123303123415_)
                                              (___kont127521127522_))
                                          (___kont127521127522_))
                                      (___kont127521127522_))))
                              (___kont127521127522_))
                          (___kont127521127522_))
                      (___kont127521127522_))))
              (___kont127521127522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127521127522_))
                                          (___kont127521127522_))))
                                  (___kont127521127522_))
                              (___kont127521127522_))
                          (___kont127521127522_))))
                  (___kont127521127522_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127521127522_))
                                              (___kont127521127522_))))
                                      (___kont127521127522_))
                                  (___kont127521127522_))
                              (___kont127521127522_))))
                      (___kont127521127522_))))
              (___kont127521127522_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127521127522_))
                                              (___kont127521127522_))))
                                      (___kont127521127522_))))
                              (___kont127521127522_)))))
                  (___kont127521127522_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122616_)
        (let* ((___stx127649127650_ _form122616_)
               (_g122620122744_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127649127650_)))))
          (let ((___kont127651127652_
                 (lambda (_L123114_ _L123115_ _L123116_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123115_))))
                (___kont127657127658_
                 (lambda (_L122962_ _L122963_ _L122964_ _L122965_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122962_))))
                (___kont127661127662_
                 (lambda (_L122829_ _L122830_ _L122831_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122829_)))))
            (let* ((___match127758127759_
                    (lambda (_e122712122749_
                             _hd122711122752_
                             _tl122710122754_
                             _e122715122757_
                             _hd122714122760_
                             _tl122713122762_
                             _e122718122765_
                             _hd122717122768_
                             _tl122716122770_
                             _e122721122773_
                             _hd122720122776_
                             _tl122719122778_
                             _e122724122781_
                             _hd122723122784_
                             _tl122722122786_
                             _e122727122789_
                             _hd122726122792_
                             _tl122725122794_
                             _e122730122797_
                             _hd122729122800_
                             _tl122728122802_
                             _e122733122805_
                             _hd122732122808_
                             _tl122731122810_
                             _e122736122813_
                             _hd122735122816_
                             _tl122734122818_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122728122802_))
                          (let ((_e122739122821_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122728122802_))))
                            (let ((_tl122737122826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122739122821_)))
                                  (_hd122738122824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122739122821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122737122826_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122713122762_))
                                      (___kont127661127662_
                                       _hd122735122816_
                                       _hd122726122792_
                                       _hd122711122752_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122620122744_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122620122744_)))))
                          (let () (declare (not safe)) (_g122620122744_)))))
                   (___match127688127689_
                    (lambda (_e122673122866_
                             _hd122672122869_
                             _tl122671122871_
                             ___splice127659127660_
                             _target122674122874_
                             _tl122676122876_)
                      (letrec ((_loop122677122879_
                                (lambda (_hd122675122882_ _arg122681122884_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122675122882_))
                                      (let ((_e122678122887_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122675122882_))))
                                        (let ((_lp-tl122680122892_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122678122887_)))
                                              (_lp-hd122679122890_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122678122887_))))
                                          (let ((__tmp128913
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122679122890_
                                                         _arg122681122884_))))
                                            (declare (not safe))
                                            (_loop122677122879_
                                             _lp-tl122680122892_
                                             __tmp128913))))
                                      (let ((_arg122682122895_
                                             (reverse _arg122681122884_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122671122871_))
                                            (let ((_e122685122898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122671122871_))))
                                              (let ((_tl122683122903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122685122898_)))
                                                    (_hd122684122901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122685122898_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122684122901_))
                                                    (let ((_e122688122906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122684122901_))))
                                                      (let ((_tl122686122911_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122688122906_)))
                    (_hd122687122909_
                     (let () (declare (not safe)) (##car _e122688122906_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122687122909_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122687122909_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122686122911_))
                            (let ((_e122691122914_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122686122911_))))
                              (let ((_tl122689122919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122691122914_)))
                                    (_hd122690122917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122691122914_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122690122917_))
                                    (let ((_e122694122922_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122690122917_))))
                                      (let ((_tl122692122927_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122694122922_)))
                                            (_hd122693122925_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122694122922_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122693122925_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122693122925_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122692122927_))
                                                    (let ((_e122697122930_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122692122927_))))
                                                      (let ((_tl122695122935_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122697122930_)))
                    (_hd122696122933_
                     (let () (declare (not safe)) (##car _e122697122930_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122695122935_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122689122919_))
                        (let ((_e122700122938_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122689122919_))))
                          (let ((_tl122698122943_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122700122938_)))
                                (_hd122699122941_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122700122938_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122699122941_))
                                (let ((_e122703122946_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122699122941_))))
                                  (let ((_tl122701122951_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122703122946_)))
                                        (_hd122702122949_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122703122946_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122702122949_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122702122949_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122701122951_))
                                                (let ((_e122706122954_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122701122951_))))
                                                  (let ((_tl122704122959_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122706122954_)))
                                                        (_hd122705122957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122706122954_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122704122959_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122683122903_))
                                                            (___kont127657127658_
                                                             _hd122705122957_
                                                             _hd122696122933_
                                                             _tl122676122876_
                                                             _arg122682122895_)
                                                            (___match127758127759_
                                                             _e122673122866_
                                                             _hd122672122869_
                                                             _tl122671122871_
                                                             _e122685122898_
                                                             _hd122684122901_
                                                             _tl122683122903_
                                                             _e122688122906_
                                                             _hd122687122909_
                                                             _tl122686122911_
                                                             _e122691122914_
                                                             _hd122690122917_
                                                             _tl122689122919_
                                                             _e122694122922_
                                                             _hd122693122925_
                                                             _tl122692122927_
                                                             _e122697122930_
                                                             _hd122696122933_
                                                             _tl122695122935_
                                                             _e122700122938_
                                                             _hd122699122941_
                                                             _tl122698122943_
                                                             _e122703122946_
                                                             _hd122702122949_
                                                             _tl122701122951_
                                                             _e122706122954_
                                                             _hd122705122957_
                                                             _tl122704122959_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122620122744_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122620122744_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122620122744_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122620122744_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122620122744_)))))
                        (let () (declare (not safe)) (_g122620122744_)))
                    (let () (declare (not safe)) (_g122620122744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122620122744_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122620122744_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122620122744_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122620122744_)))))
                            (let () (declare (not safe)) (_g122620122744_)))
                        (let () (declare (not safe)) (_g122620122744_)))
                    (let () (declare (not safe)) (_g122620122744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122620122744_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122620122744_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122677122879_ _target122674122874_ '())))))
                   (___match127676127677_
                    (lambda (_e122627123002_
                             _hd122626123005_
                             _tl122625123007_
                             ___splice127653127654_
                             _target122628123010_
                             _tl122630123012_)
                      (letrec ((_loop122631123015_
                                (lambda (_hd122629123018_ _arg122635123020_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122629123018_))
                                      (let ((_e122632123023_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122629123018_))))
                                        (let ((_lp-tl122634123028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122632123023_)))
                                              (_lp-hd122633123026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122632123023_))))
                                          (let ((__tmp128915
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122633123026_
                                                         _arg122635123020_))))
                                            (declare (not safe))
                                            (_loop122631123015_
                                             _lp-tl122634123028_
                                             __tmp128915))))
                                      (let ((_arg122636123031_
                                             (reverse _arg122635123020_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122625123007_))
                                            (let ((_e122639123034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122625123007_))))
                                              (let ((_tl122637123039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122639123034_)))
                                                    (_hd122638123037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122639123034_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122638123037_))
                                                    (let ((_e122642123042_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122638123037_))))
                                                      (let ((_tl122640123047_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122642123042_)))
                    (_hd122641123045_
                     (let () (declare (not safe)) (##car _e122642123042_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122641123045_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122641123045_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122640123047_))
                            (let ((_e122645123050_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122640123047_))))
                              (let ((_tl122643123055_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122645123050_)))
                                    (_hd122644123053_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122645123050_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122644123053_))
                                    (let ((_e122648123058_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122644123053_))))
                                      (let ((_tl122646123063_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122648123058_)))
                                            (_hd122647123061_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122648123058_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122647123061_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122647123061_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122646123063_))
                                                    (let ((_e122651123066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122646123063_))))
                                                      (let ((_tl122649123071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122651123066_)))
                    (_hd122650123069_
                     (let () (declare (not safe)) (##car _e122651123066_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122649123071_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122643123055_))
                        (let ((___splice127655127656_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122643123055_
                                  '0))))
                          (let ((_tl122654123076_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127655127656_ '1)))
                                (_target122652123074_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127655127656_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122654123076_))
                                (letrec ((_loop122655123079_
                                          (lambda (_hd122653123082_
                                                   _xarg122659123084_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122653123082_))
                                                (let ((_e122656123087_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122653123082_))))
                                                  (let ((_lp-tl122658123092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122656123087_)))
                                                        (_lp-hd122657123090_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122656123087_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122657123090_))
                                                        (let ((_e122663123095_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122657123090_))))
                  (let ((_tl122661123100_
                         (let () (declare (not safe)) (##cdr _e122663123095_)))
                        (_hd122662123098_
                         (let ()
                           (declare (not safe))
                           (##car _e122663123095_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122662123098_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122662123098_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122661123100_))
                                (let ((_e122666123103_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122661123100_))))
                                  (let ((_tl122664123108_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122666123103_)))
                                        (_hd122665123106_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122666123103_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122664123108_))
                                        (let ((__tmp128914
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122665123106_
                                                       _xarg122659123084_))))
                                          (declare (not safe))
                                          (_loop122655123079_
                                           _lp-tl122658123092_
                                           __tmp128914))
                                        (___match127688127689_
                                         _e122627123002_
                                         _hd122626123005_
                                         _tl122625123007_
                                         ___splice127653127654_
                                         _target122628123010_
                                         _tl122630123012_))))
                                (___match127688127689_
                                 _e122627123002_
                                 _hd122626123005_
                                 _tl122625123007_
                                 ___splice127653127654_
                                 _target122628123010_
                                 _tl122630123012_))
                            (___match127688127689_
                             _e122627123002_
                             _hd122626123005_
                             _tl122625123007_
                             ___splice127653127654_
                             _target122628123010_
                             _tl122630123012_))
                        (___match127688127689_
                         _e122627123002_
                         _hd122626123005_
                         _tl122625123007_
                         ___splice127653127654_
                         _target122628123010_
                         _tl122630123012_))))
                (___match127688127689_
                 _e122627123002_
                 _hd122626123005_
                 _tl122625123007_
                 ___splice127653127654_
                 _target122628123010_
                 _tl122630123012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122660123111_
                                                       (reverse _xarg122659123084_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122637123039_))
                                                      (___kont127651127652_
                                                       _xarg122660123111_
                                                       _hd122650123069_
                                                       _arg122636123031_)
                                                      (___match127688127689_
                                                       _e122627123002_
                                                       _hd122626123005_
                                                       _tl122625123007_
                                                       ___splice127653127654_
                                                       _target122628123010_
                                                       _tl122630123012_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122655123079_
                                     _target122652123074_
                                     '())))
                                (___match127688127689_
                                 _e122627123002_
                                 _hd122626123005_
                                 _tl122625123007_
                                 ___splice127653127654_
                                 _target122628123010_
                                 _tl122630123012_))))
                        (___match127688127689_
                         _e122627123002_
                         _hd122626123005_
                         _tl122625123007_
                         ___splice127653127654_
                         _target122628123010_
                         _tl122630123012_))
                    (___match127688127689_
                     _e122627123002_
                     _hd122626123005_
                     _tl122625123007_
                     ___splice127653127654_
                     _target122628123010_
                     _tl122630123012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127688127689_
                                                     _e122627123002_
                                                     _hd122626123005_
                                                     _tl122625123007_
                                                     ___splice127653127654_
                                                     _target122628123010_
                                                     _tl122630123012_))
                                                (___match127688127689_
                                                 _e122627123002_
                                                 _hd122626123005_
                                                 _tl122625123007_
                                                 ___splice127653127654_
                                                 _target122628123010_
                                                 _tl122630123012_))
                                            (___match127688127689_
                                             _e122627123002_
                                             _hd122626123005_
                                             _tl122625123007_
                                             ___splice127653127654_
                                             _target122628123010_
                                             _tl122630123012_))))
                                    (___match127688127689_
                                     _e122627123002_
                                     _hd122626123005_
                                     _tl122625123007_
                                     ___splice127653127654_
                                     _target122628123010_
                                     _tl122630123012_))))
                            (___match127688127689_
                             _e122627123002_
                             _hd122626123005_
                             _tl122625123007_
                             ___splice127653127654_
                             _target122628123010_
                             _tl122630123012_))
                        (___match127688127689_
                         _e122627123002_
                         _hd122626123005_
                         _tl122625123007_
                         ___splice127653127654_
                         _target122628123010_
                         _tl122630123012_))
                    (___match127688127689_
                     _e122627123002_
                     _hd122626123005_
                     _tl122625123007_
                     ___splice127653127654_
                     _target122628123010_
                     _tl122630123012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127688127689_
                                                     _e122627123002_
                                                     _hd122626123005_
                                                     _tl122625123007_
                                                     ___splice127653127654_
                                                     _target122628123010_
                                                     _tl122630123012_))))
                                            (___match127688127689_
                                             _e122627123002_
                                             _hd122626123005_
                                             _tl122625123007_
                                             ___splice127653127654_
                                             _target122628123010_
                                             _tl122630123012_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122631123015_ _target122628123010_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127649127650_))
                  (let ((_e122627123002_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127649127650_))))
                    (let ((_tl122625123007_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122627123002_)))
                          (_hd122626123005_
                           (let ()
                             (declare (not safe))
                             (##car _e122627123002_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122626123005_))
                          (let ((___splice127653127654_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122626123005_
                                    '0))))
                            (let ((_tl122630123012_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127653127654_ '1)))
                                  (_target122628123010_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127653127654_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122630123012_))
                                  (___match127676127677_
                                   _e122627123002_
                                   _hd122626123005_
                                   _tl122625123007_
                                   ___splice127653127654_
                                   _target122628123010_
                                   _tl122630123012_)
                                  (___match127688127689_
                                   _e122627123002_
                                   _hd122626123005_
                                   _tl122625123007_
                                   ___splice127653127654_
                                   _target122628123010_
                                   _tl122630123012_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122625123007_))
                              (let ((_e122715122757_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122625123007_))))
                                (let ((_tl122713122762_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122715122757_)))
                                      (_hd122714122760_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122715122757_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122714122760_))
                                      (let ((_e122718122765_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122714122760_))))
                                        (let ((_tl122716122770_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122718122765_)))
                                              (_hd122717122768_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122718122765_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122717122768_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122717122768_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122716122770_))
                                                      (let ((_e122721122773_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122716122770_))))
                (let ((_tl122719122778_
                       (let () (declare (not safe)) (##cdr _e122721122773_)))
                      (_hd122720122776_
                       (let () (declare (not safe)) (##car _e122721122773_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122720122776_))
                      (let ((_e122724122781_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122720122776_))))
                        (let ((_tl122722122786_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122724122781_)))
                              (_hd122723122784_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122724122781_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122723122784_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122723122784_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122722122786_))
                                      (let ((_e122727122789_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122722122786_))))
                                        (let ((_tl122725122794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122727122789_)))
                                              (_hd122726122792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122727122789_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122725122794_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122719122778_))
                                                  (let ((_e122730122797_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122719122778_))))
                                                    (let ((_tl122728122802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122730122797_)))
                                                          (_hd122729122800_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122730122797_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122729122800_))
                                                          (let ((_e122733122805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122729122800_))))
                    (let ((_tl122731122810_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122733122805_)))
                          (_hd122732122808_
                           (let ()
                             (declare (not safe))
                             (##car _e122733122805_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122732122808_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122732122808_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122731122810_))
                                  (let ((_e122736122813_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122731122810_))))
                                    (let ((_tl122734122818_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122736122813_)))
                                          (_hd122735122816_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122736122813_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122734122818_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122728122802_))
                                              (let ((_e122739122821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122728122802_))))
                                                (let ((_tl122737122826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122739122821_)))
                                                      (_hd122738122824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122739122821_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122737122826_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122713122762_))
                                                          (___kont127661127662_
                                                           _hd122735122816_
                                                           _hd122726122792_
                                                           _hd122626123005_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122620122744_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122620122744_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122620122744_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122620122744_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122620122744_)))
                              (let () (declare (not safe)) (_g122620122744_)))
                          (let () (declare (not safe)) (_g122620122744_)))))
                  (let () (declare (not safe)) (_g122620122744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122620122744_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122620122744_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122620122744_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122620122744_)))
                              (let ()
                                (declare (not safe))
                                (_g122620122744_)))))
                      (let () (declare (not safe)) (_g122620122744_)))))
              (let () (declare (not safe)) (_g122620122744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122620122744_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122620122744_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122620122744_)))))
                              (let ()
                                (declare (not safe))
                                (_g122620122744_))))))
                  (let () (declare (not safe)) (_g122620122744_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122420_)
        (let* ((_g122422122436_
                (lambda (_g122423122433_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122423122433_))))
               (_g122421122613_
                (lambda (_g122423122439_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122423122439_))
                      (let ((_e122428122441_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122423122439_))))
                        (let ((_hd122427122444_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122428122441_)))
                              (_tl122426122446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122428122441_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122426122446_))
                              (let ((_e122431122449_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122426122446_))))
                                (let ((_hd122430122452_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122431122449_)))
                                      (_tl122429122454_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122431122449_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122429122454_))
                                      ((lambda (_L122457_ _L122458_)
                                         (let* ((___stx127771127772_ _L122458_)
                                                (_g122473122501_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127771127772_)))))
                                           (let ((___kont127773127774_
                                                  (lambda (_L122592_)
                                                    (length (let ((__tmp128916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122602122605_ _g122603122607_)
                             (let ()
                               (declare (not safe))
                               (cons _g122602122605_ _g122603122607_)))))
                      (declare (not safe))
                      (foldr1 __tmp128916 '() _L122592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127777127778_
                                                  (lambda (_L122543_ _L122544_)
                                                    (let ((__tmp128917
                                                           (length (let ((__tmp128918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122555122558_ _g122556122560_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122555122558_
                                            _g122556122560_)))))
                             (declare (not safe))
                             (foldr1 __tmp128918 '() _L122544_)))))
              (declare (not safe))
              (cons __tmp128917 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127781127782_
                                                  (lambda (_L122506_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127796127797_
                                                     (lambda (___splice127779127780_
                                                              _target122487122519_
                                                              _tl122489122521_)
                                                       (letrec ((_loop122490122524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122488122527_ _arg122494122529_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122488122527_))
                               (let ((_e122491122532_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122488122527_))))
                                 (let ((_lp-tl122493122537_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122491122532_)))
                                       (_lp-hd122492122535_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122491122532_))))
                                   (let ((__tmp128919
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122492122535_
                                                  _arg122494122529_))))
                                     (declare (not safe))
                                     (_loop122490122524_
                                      _lp-tl122493122537_
                                      __tmp128919))))
                               (let ((_arg122495122540_
                                      (reverse _arg122494122529_)))
                                 (___kont127777127778_
                                  _tl122489122521_
                                  _arg122495122540_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122490122524_ _target122487122519_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127790127791_
                                                     (lambda (___splice127775127776_
                                                              _target122476122568_
                                                              _tl122478122570_)
                                                       (letrec ((_loop122479122573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122477122576_ _arg122483122578_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122477122576_))
                               (let ((_e122480122581_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122477122576_))))
                                 (let ((_lp-tl122482122586_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122480122581_)))
                                       (_lp-hd122481122584_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122480122581_))))
                                   (let ((__tmp128920
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122481122584_
                                                  _arg122483122578_))))
                                     (declare (not safe))
                                     (_loop122479122573_
                                      _lp-tl122482122586_
                                      __tmp128920))))
                               (let ((_arg122484122589_
                                      (reverse _arg122483122578_)))
                                 (___kont127773127774_ _arg122484122589_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122479122573_ _target122476122568_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127771127772_))
                                                   (let ((___splice127775127776_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127771127772_
                                                             '0))))
                                                     (let ((_tl122478122570_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127775127776_
                                                               '1)))
                                                           (_target122476122568_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127775127776_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122478122570_))
                                                           (___match127790127791_
                                                            ___splice127775127776_
                                                            _target122476122568_
                                                            _tl122478122570_)
                                                           (___match127796127797_
                                                            ___splice127775127776_
                                                            _target122476122568_
                                                            _tl122478122570_))))
                                                   (___kont127781127782_
                                                    ___stx127771127772_))))))
                                       _hd122430122452_
                                       _hd122427122444_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122422122436_ _g122423122439_)))))
                              (let ()
                                (declare (not safe))
                                (_g122422122436_ _g122423122439_)))))
                      (let ()
                        (declare (not safe))
                        (_g122422122436_ _g122423122439_))))))
          (declare (not safe))
          (_g122421122613_ _form122420_))))
    (define gxc#lambda-expr?
      (lambda (_expr122373_)
        (let* ((___stx127799127800_ _expr122373_)
               (_g122376122386_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127799127800_)))))
          (let ((___kont127801127802_ (lambda (_L122406_) '#t))
                (___kont127803127804_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127799127800_))
                (let ((_e122381122398_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127799127800_))))
                  (let ((_tl122379122403_
                         (let () (declare (not safe)) (##cdr _e122381122398_)))
                        (_hd122380122401_
                         (let ()
                           (declare (not safe))
                           (##car _e122381122398_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122380122401_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122380122401_))
                            (___kont127801127802_ _tl122379122403_)
                            (___kont127803127804_))
                        (___kont127803127804_))))
                (___kont127803127804_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122326_)
        (let* ((___stx127817127818_ _expr122326_)
               (_g122329122339_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127817127818_)))))
          (let ((___kont127819127820_ (lambda (_L122359_) '#t))
                (___kont127821127822_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127817127818_))
                (let ((_e122334122351_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127817127818_))))
                  (let ((_tl122332122356_
                         (let () (declare (not safe)) (##cdr _e122334122351_)))
                        (_hd122333122354_
                         (let ()
                           (declare (not safe))
                           (##car _e122334122351_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122333122354_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122333122354_))
                            (___kont127819127820_ _tl122332122356_)
                            (___kont127821127822_))
                        (___kont127821127822_))))
                (___kont127821127822_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122195_)
        (let* ((___stx127835127836_ _expr122195_)
               (_g122198122228_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127835127836_)))))
          (let ((___kont127837127838_
                 (lambda (_L122296_ _L122297_ _L122298_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122298_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122297_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122296_))
                           '#f)
                       '#f)))
                (___kont127839127840_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127835127836_))
                (let ((_e122205122240_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127835127836_))))
                  (let ((_tl122203122245_
                         (let () (declare (not safe)) (##cdr _e122205122240_)))
                        (_hd122204122243_
                         (let ()
                           (declare (not safe))
                           (##car _e122205122240_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122204122243_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122204122243_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122203122245_))
                                (let ((_e122208122248_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122203122245_))))
                                  (let ((_tl122206122253_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122208122248_)))
                                        (_hd122207122251_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122208122248_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122207122251_))
                                        (let ((_e122211122256_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122207122251_))))
                                          (let ((_tl122209122261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122211122256_)))
                                                (_hd122210122259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122211122256_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122210122259_))
                                                (let ((_e122214122264_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122210122259_))))
                                                  (let ((_tl122212122269_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122214122264_)))
                                                        (_hd122213122267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122214122264_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122213122267_))
                                                        (let ((_e122217122272_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122213122267_))))
                  (let ((_tl122215122277_
                         (let () (declare (not safe)) (##cdr _e122217122272_)))
                        (_hd122216122275_
                         (let ()
                           (declare (not safe))
                           (##car _e122217122272_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122215122277_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122212122269_))
                            (let ((_e122220122280_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122212122269_))))
                              (let ((_tl122218122285_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122220122280_)))
                                    (_hd122219122283_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122220122280_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122218122285_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122209122261_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122206122253_))
                                            (let ((_e122223122288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122206122253_))))
                                              (let ((_tl122221122293_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122223122288_)))
                                                    (_hd122222122291_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122223122288_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122221122293_))
                                                    (___kont127837127838_
                                                     _hd122222122291_
                                                     _hd122219122283_
                                                     _hd122216122275_)
                                                    (___kont127839127840_))))
                                            (___kont127839127840_))
                                        (___kont127839127840_))
                                    (___kont127839127840_))))
                            (___kont127839127840_))
                        (___kont127839127840_))))
                (___kont127839127840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127839127840_))))
                                        (___kont127839127840_))))
                                (___kont127839127840_))
                            (___kont127839127840_))
                        (___kont127839127840_))))
                (___kont127839127840_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121520_)
        (let* ((___stx127897127898_ _expr121520_)
               (_g121523121681_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127897127898_)))))
          (let ((___kont127899127900_
                 (lambda (_L122069_
                          _L122070_
                          _L122071_
                          _L122072_
                          _L122073_
                          _L122074_
                          _L122075_
                          _L122076_
                          _L122077_
                          _L122078_
                          _L122079_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122076_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122072_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122071_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122079_
                                      _L122070_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122078_
                                          _L122075_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122073_
                                              _L122069_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122077_
                                              _L122074_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127901127902_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127897127898_))
                (let ((_e121538121693_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127897127898_))))
                  (let ((_tl121536121698_
                         (let () (declare (not safe)) (##cdr _e121538121693_)))
                        (_hd121537121696_
                         (let ()
                           (declare (not safe))
                           (##car _e121538121693_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121537121696_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121537121696_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121536121698_))
                                (let ((_e121541121701_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121536121698_))))
                                  (let ((_tl121539121706_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121541121701_)))
                                        (_hd121540121704_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121541121701_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121540121704_))
                                        (let ((_e121544121709_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121540121704_))))
                                          (let ((_tl121542121714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121544121709_)))
                                                (_hd121543121712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121544121709_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121543121712_))
                                                (let ((_e121547121717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121543121712_))))
                                                  (let ((_tl121545121722_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121547121717_)))
                                                        (_hd121546121720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121547121717_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121546121720_))
                                                        (let ((_e121550121725_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121546121720_))))
                  (let ((_tl121548121730_
                         (let () (declare (not safe)) (##cdr _e121550121725_)))
                        (_hd121549121728_
                         (let ()
                           (declare (not safe))
                           (##car _e121550121725_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121548121730_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121545121722_))
                            (let ((_e121553121733_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121545121722_))))
                              (let ((_tl121551121738_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121553121733_)))
                                    (_hd121552121736_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121553121733_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121552121736_))
                                    (let ((_e121556121741_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121552121736_))))
                                      (let ((_tl121554121746_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121556121741_)))
                                            (_hd121555121744_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121556121741_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121555121744_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121555121744_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121554121746_))
                                                    (let ((_e121559121749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121554121746_))))
                                                      (let ((_tl121557121754_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121559121749_)))
                    (_hd121558121752_
                     (let () (declare (not safe)) (##car _e121559121749_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121558121752_))
                    (let ((_e121562121757_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121558121752_))))
                      (let ((_tl121560121762_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121562121757_)))
                            (_hd121561121760_
                             (let ()
                               (declare (not safe))
                               (##car _e121562121757_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121561121760_))
                            (let ((_e121565121765_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121561121760_))))
                              (let ((_tl121563121770_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121565121765_)))
                                    (_hd121564121768_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121565121765_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121564121768_))
                                    (let ((_e121568121773_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121564121768_))))
                                      (let ((_tl121566121778_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121568121773_)))
                                            (_hd121567121776_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121568121773_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121566121778_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121563121770_))
                                                (let ((_e121571121781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121563121770_))))
                                                  (let ((_tl121569121786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121571121781_)))
                                                        (_hd121570121784_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121571121781_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121569121786_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121560121762_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121557121754_))
                        (let ((_e121574121789_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121557121754_))))
                          (let ((_tl121572121794_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121574121789_)))
                                (_hd121573121792_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121574121789_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121573121792_))
                                (let ((_e121577121797_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121573121792_))))
                                  (let ((_tl121575121802_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121577121797_)))
                                        (_hd121576121800_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121577121797_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121576121800_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121576121800_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121575121802_))
                                                (let ((_e121580121805_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121575121802_))))
                                                  (let ((_tl121578121810_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121580121805_)))
                                                        (_hd121579121808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121580121805_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121579121808_))
                                                        (let ((_e121583121813_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121579121808_))))
                  (let ((_tl121581121818_
                         (let () (declare (not safe)) (##cdr _e121583121813_)))
                        (_hd121582121816_
                         (let ()
                           (declare (not safe))
                           (##car _e121583121813_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121578121810_))
                        (let ((_e121586121821_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121578121810_))))
                          (let ((_tl121584121826_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121586121821_)))
                                (_hd121585121824_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121586121821_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121585121824_))
                                (let ((_e121589121829_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121585121824_))))
                                  (let ((_tl121587121834_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121589121829_)))
                                        (_hd121588121832_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121589121829_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121588121832_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121588121832_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121587121834_))
                                                (let ((_e121592121837_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121587121834_))))
                                                  (let ((_tl121590121842_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121592121837_)))
                                                        (_hd121591121840_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121592121837_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121591121840_))
                                                        (let ((_e121595121845_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121591121840_))))
                  (let ((_tl121593121850_
                         (let () (declare (not safe)) (##cdr _e121595121845_)))
                        (_hd121594121848_
                         (let ()
                           (declare (not safe))
                           (##car _e121595121845_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121594121848_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121594121848_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121593121850_))
                                (let ((_e121598121853_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121593121850_))))
                                  (let ((_tl121596121858_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121598121853_)))
                                        (_hd121597121856_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121598121853_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121596121858_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121590121842_))
                                            (let ((_e121601121861_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121590121842_))))
                                              (let ((_tl121599121866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121601121861_)))
                                                    (_hd121600121864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121601121861_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121600121864_))
                                                    (let ((_e121604121869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121600121864_))))
                                                      (let ((_tl121602121874_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121604121869_)))
                    (_hd121603121872_
                     (let () (declare (not safe)) (##car _e121604121869_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121603121872_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121603121872_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121602121874_))
                            (let ((_e121607121877_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121602121874_))))
                              (let ((_tl121605121882_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121607121877_)))
                                    (_hd121606121880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121607121877_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121605121882_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121599121866_))
                                        (let ((_e121610121885_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121599121866_))))
                                          (let ((_tl121608121890_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121610121885_)))
                                                (_hd121609121888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121610121885_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121609121888_))
                                                (let ((_e121613121893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121609121888_))))
                                                  (let ((_tl121611121898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121613121893_)))
                                                        (_hd121612121896_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121613121893_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121612121896_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121612121896_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121611121898_))
                        (let ((_e121616121901_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121611121898_))))
                          (let ((_tl121614121906_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121616121901_)))
                                (_hd121615121904_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121616121901_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121614121906_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121584121826_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121572121794_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121551121738_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121542121714_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121539121706_))
                                                    (let ((_e121619121909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121539121706_))))
                                                      (let ((_tl121617121914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121619121909_)))
                    (_hd121618121912_
                     (let () (declare (not safe)) (##car _e121619121909_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121618121912_))
                    (let ((_e121622121917_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121618121912_))))
                      (let ((_tl121620121922_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121622121917_)))
                            (_hd121621121920_
                             (let ()
                               (declare (not safe))
                               (##car _e121622121917_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121621121920_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121621121920_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121620121922_))
                                    (let ((_e121625121925_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121620121922_))))
                                      (let ((_tl121623121930_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121625121925_)))
                                            (_hd121624121928_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121625121925_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121623121930_))
                                            (let ((_e121628121933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121623121930_))))
                                              (let ((_tl121626121938_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121628121933_)))
                                                    (_hd121627121936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121628121933_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121627121936_))
                                                    (let ((_e121631121941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121627121936_))))
                                                      (let ((_tl121629121946_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121631121941_)))
                    (_hd121630121944_
                     (let () (declare (not safe)) (##car _e121631121941_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121630121944_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121630121944_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121629121946_))
                            (let ((_e121634121949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121629121946_))))
                              (let ((_tl121632121954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121634121949_)))
                                    (_hd121633121952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121634121949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121633121952_))
                                    (let ((_e121637121957_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121633121952_))))
                                      (let ((_tl121635121962_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121637121957_)))
                                            (_hd121636121960_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121637121957_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121636121960_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121636121960_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121635121962_))
                                                    (let ((_e121640121965_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121635121962_))))
                                                      (let ((_tl121638121970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121640121965_)))
                    (_hd121639121968_
                     (let () (declare (not safe)) (##car _e121640121965_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121638121970_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121632121954_))
                        (let ((_e121643121973_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121632121954_))))
                          (let ((_tl121641121978_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121643121973_)))
                                (_hd121642121976_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121643121973_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121642121976_))
                                (let ((_e121646121981_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121642121976_))))
                                  (let ((_tl121644121986_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121646121981_)))
                                        (_hd121645121984_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121646121981_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121645121984_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121645121984_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121644121986_))
                                                (let ((_e121649121989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121644121986_))))
                                                  (let ((_tl121647121994_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121649121989_)))
                                                        (_hd121648121992_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121649121989_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121647121994_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121641121978_))
                                                            (let ((_e121652121997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121641121978_))))
                      (let ((_tl121650122002_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121652121997_)))
                            (_hd121651122000_
                             (let ()
                               (declare (not safe))
                               (##car _e121652121997_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121651122000_))
                            (let ((_e121655122005_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121651122000_))))
                              (let ((_tl121653122010_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121655122005_)))
                                    (_hd121654122008_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121655122005_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121654122008_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121654122008_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121653122010_))
                                            (let ((_e121658122013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121653122010_))))
                                              (let ((_tl121656122018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121658122013_)))
                                                    (_hd121657122016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121658122013_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121656122018_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121650122002_))
                                                        (let ((_e121661122021_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121650122002_))))
                  (let ((_tl121659122026_
                         (let () (declare (not safe)) (##cdr _e121661122021_)))
                        (_hd121660122024_
                         (let ()
                           (declare (not safe))
                           (##car _e121661122021_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121660122024_))
                        (let ((_e121664122029_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121660122024_))))
                          (let ((_tl121662122034_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121664122029_)))
                                (_hd121663122032_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121664122029_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121663122032_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121663122032_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121662122034_))
                                        (let ((_e121667122037_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121662122034_))))
                                          (let ((_tl121665122042_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121667122037_)))
                                                (_hd121666122040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121667122037_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121665122042_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121659122026_))
                                                    (let ((_e121670122045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121659122026_))))
                                                      (let ((_tl121668122050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121670122045_)))
                    (_hd121669122048_
                     (let () (declare (not safe)) (##car _e121670122045_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121669122048_))
                    (let ((_e121673122053_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121669122048_))))
                      (let ((_tl121671122058_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121673122053_)))
                            (_hd121672122056_
                             (let ()
                               (declare (not safe))
                               (##car _e121673122053_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121672122056_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121672122056_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121671122058_))
                                    (let ((_e121676122061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121671122058_))))
                                      (let ((_tl121674122066_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121676122061_)))
                                            (_hd121675122064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121676122061_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121674122066_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121668122050_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121626121938_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121617121914_))
                                                        (___kont127899127900_
                                                         _hd121675122064_
                                                         _hd121666122040_
                                                         _hd121648121992_
                                                         _hd121639121968_
                                                         _hd121624121928_
                                                         _hd121615121904_
                                                         _hd121606121880_
                                                         _hd121597121856_
                                                         _hd121582121816_
                                                         _hd121567121776_
                                                         _hd121549121728_)
                                                        (___kont127901127902_))
                                                    (___kont127901127902_))
                                                (___kont127901127902_))
                                            (___kont127901127902_))))
                                    (___kont127901127902_))
                                (___kont127901127902_))
                            (___kont127901127902_))))
                    (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127901127902_))
                                                (___kont127901127902_))))
                                        (___kont127901127902_))
                                    (___kont127901127902_))
                                (___kont127901127902_))))
                        (___kont127901127902_))))
                (___kont127901127902_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127901127902_))))
                                            (___kont127901127902_))
                                        (___kont127901127902_))
                                    (___kont127901127902_))))
                            (___kont127901127902_))))
                    (___kont127901127902_))
                (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127901127902_))
                                            (___kont127901127902_))
                                        (___kont127901127902_))))
                                (___kont127901127902_))))
                        (___kont127901127902_))
                    (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127901127902_))
                                                (___kont127901127902_))
                                            (___kont127901127902_))))
                                    (___kont127901127902_))))
                            (___kont127901127902_))
                        (___kont127901127902_))
                    (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127901127902_))))
                                            (___kont127901127902_))))
                                    (___kont127901127902_))
                                (___kont127901127902_))
                            (___kont127901127902_))))
                    (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127901127902_))
                                                (___kont127901127902_))
                                            (___kont127901127902_))
                                        (___kont127901127902_))
                                    (___kont127901127902_))
                                (___kont127901127902_))))
                        (___kont127901127902_))
                    (___kont127901127902_))
                (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127901127902_))))
                                        (___kont127901127902_))
                                    (___kont127901127902_))))
                            (___kont127901127902_))
                        (___kont127901127902_))
                    (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127901127902_))))
                                            (___kont127901127902_))
                                        (___kont127901127902_))))
                                (___kont127901127902_))
                            (___kont127901127902_))
                        (___kont127901127902_))))
                (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127901127902_))
                                            (___kont127901127902_))
                                        (___kont127901127902_))))
                                (___kont127901127902_))))
                        (___kont127901127902_))))
                (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127901127902_))
                                            (___kont127901127902_))
                                        (___kont127901127902_))))
                                (___kont127901127902_))))
                        (___kont127901127902_))
                    (___kont127901127902_))
                (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127901127902_))
                                            (___kont127901127902_))))
                                    (___kont127901127902_))))
                            (___kont127901127902_))))
                    (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127901127902_))
                                                (___kont127901127902_))
                                            (___kont127901127902_))))
                                    (___kont127901127902_))))
                            (___kont127901127902_))
                        (___kont127901127902_))))
                (___kont127901127902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127901127902_))))
                                        (___kont127901127902_))))
                                (___kont127901127902_))
                            (___kont127901127902_))
                        (___kont127901127902_))))
                (___kont127901127902_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121262_ _id121263_ _clauses121264_ _gensym?121265_)
        (let _lp121267_ ((_rest121269_ _clauses121264_)
                         (_ids121270_ '())
                         (_impls121271_ '())
                         (_clauses121272_ '()))
          (let* ((_rest121273121281_ _rest121269_)
                 (_else121275121289_
                  (lambda ()
                    (values (reverse _ids121270_)
                            (reverse _impls121271_)
                            (reverse _clauses121272_))))
                 (_K121277121494_
                  (lambda (_rest121292_ _clause121293_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121293_))
                        (let ((__tmp128976
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121293_ _clauses121272_))))
                          (declare (not safe))
                          (_lp121267_
                           _rest121292_
                           _ids121270_
                           _impls121271_
                           __tmp128976))
                        (let* ((_g121295121306_
                                (lambda (_g121296121303_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121296121303_))))
                               (_g121294121491_
                                (lambda (_g121296121309_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121296121309_))
                                      (let ((_e121301121311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121296121309_))))
                                        (let ((_hd121300121314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121301121311_)))
                                              (_tl121299121316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121301121311_))))
                                          ((lambda (_L121319_ _L121320_)
                                             (let* ((_id121337_
                                                     (let ((__tmp128923
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121263_)))
                                                           (__tmp128922
                                                            (length _clauses121272_))
                                                           (__tmp128921
                                                            (if _gensym?121265_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128923
                                                        '"__"
                                                        __tmp128922
                                                        __tmp128921)))
                                                    (_id121339_
                                                     (let ((__tmp128924
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121262_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121337_
                                                        __tmp128924)))
                                                    (_impl121341_
                                                     (let ((__tmp128925
                                                            (let ((__tmp128927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128926
                           (let ()
                             (declare (not safe))
                             (cons _L121320_ _L121319_))))
                      (declare (not safe))
                      (cons __tmp128927 __tmp128926))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128925 _stx121262_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121488_
                                                     (let* ((___stx128281128282_
                                                             _L121320_)
                                                            (_g121345121373_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128281128282_)))))
               (let ((___kont128283128284_
                      (lambda (_L121467_)
                        (let ((__tmp128928
                               (let ((__tmp128929
                                      (let ((__tmp128930
                                             (let ((__tmp128931
                                                    (let ((__tmp128937
                                                           (let ((__tmp128938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121339_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128938)))
                  (__tmp128932
                   (let ((__tmp128933
                          (lambda (_g121477121480_ _g121478121482_)
                            (let ((__tmp128934
                                   (let ((__tmp128936
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128935
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121477121480_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128936 __tmp128935))))
                              (declare (not safe))
                              (cons __tmp128934 _g121478121482_)))))
                     (declare (not safe))
                     (foldr1 __tmp128933 '() _L121467_))))
              (declare (not safe))
              (cons __tmp128937 __tmp128932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128931))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128930
                                         _stx121262_))))
                                 (declare (not safe))
                                 (cons __tmp128929 '()))))
                          (declare (not safe))
                          (cons _L121320_ __tmp128928))))
                     (___kont128287128288_
                      (lambda (_L121418_ _L121419_)
                        (let ((__tmp128939
                               (let ((__tmp128940
                                      (let ((__tmp128941
                                             (let ((__tmp128942
                                                    (let ((__tmp128956
                                                           (let ((__tmp128957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128957)))
                  (__tmp128943
                   (let ((__tmp128954
                          (let ((__tmp128955
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121339_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128955)))
                         (__tmp128944
                          (let ((__tmp128950
                                 (let ((__tmp128951
                                        (let ((__tmp128953
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128952
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121418_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128953 __tmp128952))))
                                   (declare (not safe))
                                   (cons __tmp128951 '())))
                                (__tmp128945
                                 (let ((__tmp128946
                                        (lambda (_g121430121433_
                                                 _g121431121435_)
                                          (let ((__tmp128947
                                                 (let ((__tmp128949
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128948
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121430121433_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128949
                                                         __tmp128948))))
                                            (declare (not safe))
                                            (cons __tmp128947
                                                  _g121431121435_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128946 '() _L121419_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128950 __tmp128945))))
                     (declare (not safe))
                     (cons __tmp128954 __tmp128944))))
              (declare (not safe))
              (cons __tmp128956 __tmp128943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128942))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128941
                                         _stx121262_))))
                                 (declare (not safe))
                                 (cons __tmp128940 '()))))
                          (declare (not safe))
                          (cons _L121320_ __tmp128939))))
                     (___kont128291128292_
                      (lambda (_L121378_)
                        (let ((__tmp128958
                               (let ((__tmp128959
                                      (let ((__tmp128960
                                             (let ((__tmp128961
                                                    (let ((__tmp128969
                                                           (let ((__tmp128970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128970)))
                  (__tmp128962
                   (let ((__tmp128967
                          (let ((__tmp128968
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121339_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128968)))
                         (__tmp128963
                          (let ((__tmp128964
                                 (let ((__tmp128966
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128965
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121378_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128966 __tmp128965))))
                            (declare (not safe))
                            (cons __tmp128964 '()))))
                     (declare (not safe))
                     (cons __tmp128967 __tmp128963))))
              (declare (not safe))
              (cons __tmp128969 __tmp128962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128961))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128960
                                         _stx121262_))))
                                 (declare (not safe))
                                 (cons __tmp128959 '()))))
                          (declare (not safe))
                          (cons _L121320_ __tmp128958)))))
                 (let* ((___match128306128307_
                         (lambda (___splice128289128290_
                                  _target121359121394_
                                  _tl121361121396_)
                           (letrec ((_loop121362121399_
                                     (lambda (_hd121360121402_
                                              _arg121366121404_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121360121402_))
                                           (let ((_e121363121407_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121360121402_))))
                                             (let ((_lp-tl121365121412_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121363121407_)))
                                                   (_lp-hd121364121410_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121363121407_))))
                                               (let ((__tmp128971
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121364121410_
                                                              _arg121366121404_))))
                                                 (declare (not safe))
                                                 (_loop121362121399_
                                                  _lp-tl121365121412_
                                                  __tmp128971))))
                                           (let ((_arg121367121415_
                                                  (reverse _arg121366121404_)))
                                             (___kont128287128288_
                                              _tl121361121396_
                                              _arg121367121415_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121362121399_
                                _target121359121394_
                                '())))))
                        (___match128300128301_
                         (lambda (___splice128285128286_
                                  _target121348121443_
                                  _tl121350121445_)
                           (letrec ((_loop121351121448_
                                     (lambda (_hd121349121451_
                                              _arg121355121453_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121349121451_))
                                           (let ((_e121352121456_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121349121451_))))
                                             (let ((_lp-tl121354121461_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121352121456_)))
                                                   (_lp-hd121353121459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121352121456_))))
                                               (let ((__tmp128972
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121353121459_
                                                              _arg121355121453_))))
                                                 (declare (not safe))
                                                 (_loop121351121448_
                                                  _lp-tl121354121461_
                                                  __tmp128972))))
                                           (let ((_arg121356121464_
                                                  (reverse _arg121355121453_)))
                                             (___kont128283128284_
                                              _arg121356121464_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121351121448_
                                _target121348121443_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128281128282_))
                       (let ((___splice128285128286_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128281128282_
                                 '0))))
                         (let ((_tl121350121445_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128285128286_ '1)))
                               (_target121348121443_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128285128286_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121350121445_))
                               (___match128300128301_
                                ___splice128285128286_
                                _target121348121443_
                                _tl121350121445_)
                               (___match128306128307_
                                ___splice128285128286_
                                _target121348121443_
                                _tl121350121445_))))
                       (___kont128291128292_ ___stx128281128282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128975
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121339_
                                                              _ids121270_)))
                                                     (__tmp128974
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121341_
                                                              _impls121271_)))
                                                     (__tmp128973
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121488_
                                                              _clauses121272_))))
                                                 (declare (not safe))
                                                 (_lp121267_
                                                  _rest121292_
                                                  __tmp128975
                                                  __tmp128974
                                                  __tmp128973))))
                                           _tl121299121316_
                                           _hd121300121314_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121295121306_ _g121296121309_))))))
                          (declare (not safe))
                          (_g121294121491_ _clause121293_))))))
            (if (let () (declare (not safe)) (##pair? _rest121273121281_))
                (let ((_hd121278121497_
                       (let ()
                         (declare (not safe))
                         (##car _rest121273121281_)))
                      (_tl121279121499_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121273121281_))))
                  (let* ((_clause121502_ _hd121278121497_)
                         (_rest121504_ _tl121279121499_))
                    (declare (not safe))
                    (_K121277121494_ _rest121504_ _clause121502_)))
                (let () (declare (not safe)) (_else121275121289_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121509_ _id121510_ _clauses121511_)
        (let ((_gensym?121513_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121509_
           _id121510_
           _clauses121511_
           _gensym?121513_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128978_
        (let ((_g128977_ (let () (declare (not safe)) (##length _g128978_))))
          (cond ((let () (declare (not safe)) (##fx= _g128977_ 3))
                 (apply (lambda (_stx121509_ _id121510_ _clauses121511_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121509_
                             _id121510_
                             _clauses121511_)))
                        _g128978_))
                ((let () (declare (not safe)) (##fx= _g128977_ 4))
                 (apply (lambda (_stx121515_
                                 _id121516_
                                 _clauses121517_
                                 _gensym?121518_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121515_
                             _id121516_
                             _clauses121517_
                             _gensym?121518_)))
                        _g128978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128978_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120539_)
        (letrec ((_case-lambda-clause-def120541_
                  (lambda (_id121258_ _impl121259_)
                    (let ((__tmp128979
                           (let ((__tmp128980
                                  (let ((__tmp128983
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121258_ '())))
                                        (__tmp128981
                                         (let ((__tmp128982
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl121259_))))
                                           (declare (not safe))
                                           (cons __tmp128982 '()))))
                                    (declare (not safe))
                                    (cons __tmp128983 __tmp128981))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128980))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128979 _stx120539_))))
                 (_opt-lambda-dispatch-name120542_
                  (lambda (_id121254_)
                    (if (uninterned-symbol? _id121254_)
                        (let ((_str121256_ (symbol->string _id121254_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121256_))
                              '"%"
                              _id121254_))
                        _id121254_)))
                 (_kw-lambda-dispatch-name120543_
                  (lambda (_id121249_ _name121250_)
                    (if (uninterned-symbol? _id121249_)
                        (let ((_str121252_ (symbol->string _id121249_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121252_))
                              _name121250_
                              _id121249_))
                        _id121249_))))
          (let* ((___stx128329128330_ _stx120539_)
                 (_g120548120607_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128329128330_)))))
            (let ((___kont128331128332_
                   (lambda (_L121158_ _L121159_)
                     (let* ((___stx128309128310_ _L121158_)
                            (_g121176121190_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128309128310_)))))
                       (let ((___kont128311128312_
                              (lambda (_L121234_) _stx120539_))
                             (___kont128313128314_
                              (lambda (_L121203_)
                                (let ((_g128984_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120539_
                                          _L121159_
                                          _L121203_))))
                                  (begin
                                    (let ((_g128985_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128984_)
                                                 (##vector-length _g128984_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128985_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128985_)))
                                    (let ((_ids121213_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128984_ 0)))
                                          (_impls121214_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128984_ 1)))
                                          (_clauses121215_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128984_ 2))))
                                      (let* ((_g128986_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121213_))
                                             (_defs121218_
                                              (map _case-lambda-clause-def120541_
                                                   _ids121213_
                                                   _impls121214_)))
                                        (let ((__tmp128988
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121159_)))
                                              (__tmp128987
                                               (map gxc#identifier-symbol
                                                    _ids121213_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128988
                                           '" => "
                                           __tmp128987))
                                        (let ((__tmp128989
                                               (let ((__tmp128990
                                                      (let ((__tmp128991
                                                             (let ((__tmp128992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128993
                                   (let ((__tmp128994
                                          (let ((__tmp128999
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121159_ '())))
                                                (__tmp128995
                                                 (let ((__tmp128996
                                                        (let ((__tmp128998
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121215_)))
                      (__tmp128997
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp128998 __tmp128997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp128996 '()))))
                                            (declare (not safe))
                                            (cons __tmp128999 __tmp128995))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp128994))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp128993
                               _stx120539_))))
                       (declare (not safe))
                       (cons __tmp128992 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128991 _defs121218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128990))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128989
                                           _stx120539_)))))))))
                         (let ((___match128320128321_
                                (lambda (_e121181121226_
                                         _hd121180121229_
                                         _tl121179121231_)
                                  (let ((_L121234_ _tl121179121231_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121234_))
                                        (___kont128311128312_ _L121234_)
                                        (___kont128313128314_
                                         _tl121179121231_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128309128310_))
                               (let ((_e121181121226_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128309128310_))))
                                 (let ((_tl121179121231_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121181121226_)))
                                       (_hd121180121229_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121181121226_))))
                                   (___match128320128321_
                                    _e121181121226_
                                    _hd121180121229_
                                    _tl121179121231_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121176121190_))))))))
                  (___kont128333128334_
                   (lambda (_L120976_ _L120977_)
                     (let* ((_g120993121023_
                             (lambda (_g120994121020_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120994121020_))))
                            (_g120992121118_
                             (lambda (_g120994121026_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120994121026_))
                                   (let ((_e121000121028_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120994121026_))))
                                     (let ((_hd120999121031_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121000121028_)))
                                           (_tl120998121033_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121000121028_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120998121033_))
                                           (let ((_e121003121036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120998121033_))))
                                             (let ((_hd121002121039_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121003121036_)))
                                                   (_tl121001121041_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121003121036_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121002121039_))
                                                   (let ((_e121006121044_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121002121039_))))
                                                     (let ((_hd121005121047_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121006121044_)))
                                                           (_tl121004121049_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121006121044_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121005121047_))
                                                           (let ((_e121009121052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121005121047_))))
                     (let ((_hd121008121055_
                            (let ()
                              (declare (not safe))
                              (##car _e121009121052_)))
                           (_tl121007121057_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121009121052_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121008121055_))
                           (let ((_e121012121060_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121008121055_))))
                             (let ((_hd121011121063_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121012121060_)))
                                   (_tl121010121065_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121012121060_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121010121065_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121007121057_))
                                       (let ((_e121015121068_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121007121057_))))
                                         (let ((_hd121014121071_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121015121068_)))
                                               (_tl121013121073_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121015121068_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121013121073_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121004121049_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121001121041_))
                                                       (let ((_e121018121076_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121001121041_))))
                 (let ((_hd121017121079_
                        (let () (declare (not safe)) (##car _e121018121076_)))
                       (_tl121016121081_
                        (let () (declare (not safe)) (##cdr _e121018121076_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121016121081_))
                       ((lambda (_L121084_ _L121085_ _L121086_)
                          (let* ((_lambda-id121110_
                                  (let ((__tmp129002
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120977_)))
                                        (__tmp129000
                                         (let ((__tmp129001
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121086_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120542_
                                            __tmp129001))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129002
                                     '"__"
                                     __tmp129000)))
                                 (_lambda-id121112_
                                  (let ((__tmp129003
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120539_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121110_
                                     __tmp129003)))
                                 (_g129004_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121112_)))
                                 (_new-case-lambda-expr121115_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121084_
                                     _L121086_
                                     _lambda-id121112_))))
                            (let ((__tmp129006
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120977_)))
                                  (__tmp129005
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121112_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129006
                               '" => "
                               __tmp129005))
                            (let ((__tmp129007
                                   (let ((__tmp129008
                                          (let ((__tmp129016
                                                 (let ((__tmp129017
                                                        (let ((__tmp129018
                                                               (let ((__tmp129021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121112_ '())))
                             (__tmp129019
                              (let ((__tmp129020
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L121085_))))
                                (declare (not safe))
                                (cons __tmp129020 '()))))
                         (declare (not safe))
                         (cons __tmp129021 __tmp129019))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129017
                                                    _stx120539_)))
                                                (__tmp129009
                                                 (let ((__tmp129010
                                                        (let ((__tmp129011
                                                               (let ((__tmp129012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129013
                                     (let ((__tmp129015
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120977_ '())))
                                           (__tmp129014
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121115_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129015 __tmp129014))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129013))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129012 _stx120539_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp129011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129010 '()))))
                                            (declare (not safe))
                                            (cons __tmp129016 __tmp129009))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129008))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129007
                               _stx120539_))))
                        _hd121017121079_
                        _hd121014121071_
                        _hd121011121063_)
                       (let ()
                         (declare (not safe))
                         (_g120993121023_ _g120994121026_)))))
               (let () (declare (not safe)) (_g120993121023_ _g120994121026_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120993121023_
                                                      _g120994121026_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120993121023_
                                                  _g120994121026_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120993121023_ _g120994121026_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120993121023_ _g120994121026_)))))
                           (let ()
                             (declare (not safe))
                             (_g120993121023_ _g120994121026_)))))
                   (let ()
                     (declare (not safe))
                     (_g120993121023_ _g120994121026_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120993121023_
                                                      _g120994121026_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120993121023_
                                              _g120994121026_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120993121023_ _g120994121026_))))))
                       (declare (not safe))
                       (_g120992121118_ _L120976_))))
                  (___kont128335128336_
                   (lambda (_L120690_ _L120691_)
                     (let* ((_g120707120760_
                             (lambda (_g120708120757_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120708120757_))))
                            (_g120706120936_
                             (lambda (_g120708120763_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120708120763_))
                                   (let ((_e120716120765_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120708120763_))))
                                     (let ((_hd120715120768_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120716120765_)))
                                           (_tl120714120770_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120716120765_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120714120770_))
                                           (let ((_e120719120773_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120714120770_))))
                                             (let ((_hd120718120776_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120719120773_)))
                                                   (_tl120717120778_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120719120773_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120718120776_))
                                                   (let ((_e120722120781_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120718120776_))))
                                                     (let ((_hd120721120784_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120722120781_)))
                                                           (_tl120720120786_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120722120781_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120721120784_))
                                                           (let ((_e120725120789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120721120784_))))
                     (let ((_hd120724120792_
                            (let ()
                              (declare (not safe))
                              (##car _e120725120789_)))
                           (_tl120723120794_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120725120789_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120724120792_))
                           (let ((_e120728120797_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120724120792_))))
                             (let ((_hd120727120800_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120728120797_)))
                                   (_tl120726120802_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120728120797_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120726120802_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120723120794_))
                                       (let ((_e120731120805_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120723120794_))))
                                         (let ((_hd120730120808_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120731120805_)))
                                               (_tl120729120810_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120731120805_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120730120808_))
                                               (let ((_e120734120813_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120730120808_))))
                                                 (let ((_hd120733120816_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120734120813_)))
                                                       (_tl120732120818_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120734120813_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120732120818_))
                                                       (let ((_e120737120821_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120732120818_))))
                 (let ((_hd120736120824_
                        (let () (declare (not safe)) (##car _e120737120821_)))
                       (_tl120735120826_
                        (let () (declare (not safe)) (##cdr _e120737120821_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120736120824_))
                       (let ((_e120740120829_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120736120824_))))
                         (let ((_hd120739120832_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120740120829_)))
                               (_tl120738120834_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120740120829_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120739120832_))
                               (let ((_e120743120837_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120739120832_))))
                                 (let ((_hd120742120840_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120743120837_)))
                                       (_tl120741120842_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120743120837_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120742120840_))
                                       (let ((_e120746120845_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120742120840_))))
                                         (let ((_hd120745120848_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120746120845_)))
                                               (_tl120744120850_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120746120845_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120744120850_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120741120842_))
                                                   (let ((_e120749120853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120741120842_))))
                                                     (let ((_hd120748120856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120749120853_)))
                                                           (_tl120747120858_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120749120853_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120747120858_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120738120834_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120735120826_))
                           (let ((_e120752120861_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120735120826_))))
                             (let ((_hd120751120864_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120752120861_)))
                                   (_tl120750120866_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120752120861_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120750120866_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120729120810_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120720120786_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120717120778_))
                                               (let ((_e120755120869_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120717120778_))))
                                                 (let ((_hd120754120872_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120755120869_)))
                                                       (_tl120753120874_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120755120869_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120753120874_))
                                                       ((lambda (_L120877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120878_
                         _L120879_
                         _L120880_
                         _L120881_)
                  (let* ((_get-kws-id120921_
                          (let ((__tmp129024
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120691_)))
                                (__tmp129022
                                 (let ((__tmp129023
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120881_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120543_
                                    __tmp129023
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129024 '"__" __tmp129022)))
                         (_get-kws-id120923_
                          (let ((__tmp129025
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120539_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120921_
                             __tmp129025)))
                         (_main-id120925_
                          (let ((__tmp129028
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120691_)))
                                (__tmp129026
                                 (let ((__tmp129027
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120880_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120543_
                                    __tmp129027
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129028 '"__" __tmp129026)))
                         (_main-id120927_
                          (let ((__tmp129029
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120539_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120925_
                             __tmp129029)))
                         (_g129030_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120923_)))
                         (_g129031_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120927_)))
                         (_new-kw-dispatch120931_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120877_
                             _L120881_
                             _get-kws-id120923_)))
                         (_new-get-kws120933_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120878_
                             _L120880_
                             _main-id120927_))))
                    (let ((__tmp129034
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120691_)))
                          (__tmp129033
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120923_)))
                          (__tmp129032
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120927_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129034
                       '" => "
                       __tmp129033
                       '" => "
                       __tmp129032))
                    (let ((__tmp129035
                           (let ((__tmp129036
                                  (let ((__tmp129049
                                         (let ((__tmp129050
                                                (let ((__tmp129051
                                                       (let ((__tmp129052
                                                              (let ((__tmp129054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120927_ '())))
                            (__tmp129053
                             (let ()
                               (declare (not safe))
                               (cons _L120879_ '()))))
                        (declare (not safe))
                        (cons __tmp129054 __tmp129053))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129051
                                                   _stx120539_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp129050)))
                                        (__tmp129037
                                         (let ((__tmp129044
                                                (let ((__tmp129045
                                                       (let ((__tmp129046
                                                              (let ((__tmp129048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120923_ '())))
                            (__tmp129047
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120933_ '()))))
                        (declare (not safe))
                        (cons __tmp129048 __tmp129047))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129045
                                                   _stx120539_)))
                                               (__tmp129038
                                                (let ((__tmp129039
                                                       (let ((__tmp129040
                                                              (let ((__tmp129041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129043
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120691_ '())))
                                   (__tmp129042
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120931_ '()))))
                               (declare (not safe))
                               (cons __tmp129043 __tmp129042))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129041))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129040 _stx120539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129039 '()))))
                                           (declare (not safe))
                                           (cons __tmp129044 __tmp129038))))
                                    (declare (not safe))
                                    (cons __tmp129049 __tmp129037))))
                             (declare (not safe))
                             (cons '%#begin __tmp129036))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129035 _stx120539_))))
                _hd120754120872_
                _hd120751120864_
                _hd120748120856_
                _hd120745120848_
                _hd120727120800_)
               (let ()
                 (declare (not safe))
                 (_g120707120760_ _g120708120763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120707120760_
                                                  _g120708120763_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120707120760_
                                              _g120708120763_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120707120760_ _g120708120763_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120707120760_ _g120708120763_)))))
                           (let ()
                             (declare (not safe))
                             (_g120707120760_ _g120708120763_)))
                       (let ()
                         (declare (not safe))
                         (_g120707120760_ _g120708120763_)))
                   (let ()
                     (declare (not safe))
                     (_g120707120760_ _g120708120763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120707120760_
                                                      _g120708120763_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120707120760_
                                                  _g120708120763_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120707120760_ _g120708120763_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120707120760_ _g120708120763_)))))
                       (let ()
                         (declare (not safe))
                         (_g120707120760_ _g120708120763_)))))
               (let ()
                 (declare (not safe))
                 (_g120707120760_ _g120708120763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120707120760_
                                                  _g120708120763_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120707120760_ _g120708120763_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120707120760_ _g120708120763_)))))
                           (let ()
                             (declare (not safe))
                             (_g120707120760_ _g120708120763_)))))
                   (let ()
                     (declare (not safe))
                     (_g120707120760_ _g120708120763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120707120760_
                                                      _g120708120763_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120707120760_
                                              _g120708120763_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120707120760_ _g120708120763_))))))
                       (declare (not safe))
                       (_g120706120936_ _L120690_))))
                  (___kont128337128338_
                   (lambda (_L120636_ _L120637_)
                     (let ((__tmp129055
                            (let ((__tmp129056
                                   (let ((__tmp129057
                                          (let ((__tmp129058
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120636_))))
                                            (declare (not safe))
                                            (cons __tmp129058 '()))))
                                     (declare (not safe))
                                     (cons _L120637_ __tmp129057))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129056))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129055 _stx120539_)))))
              (let* ((___match128422128423_
                      (lambda (_e120582120658_
                               _hd120581120661_
                               _tl120580120663_
                               _e120585120666_
                               _hd120584120669_
                               _tl120583120671_
                               _e120588120674_
                               _hd120587120677_
                               _tl120586120679_
                               _e120591120682_
                               _hd120590120685_
                               _tl120589120687_)
                        (let ((_L120690_ _hd120590120685_)
                              (_L120691_ _hd120587120677_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120691_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120690_)))
                              (___kont128335128336_ _L120690_ _L120691_)
                              (___kont128337128338_
                               _hd120590120685_
                               _hd120584120669_)))))
                     (___match128394128395_
                      (lambda (_e120568120944_
                               _hd120567120947_
                               _tl120566120949_
                               _e120571120952_
                               _hd120570120955_
                               _tl120569120957_
                               _e120574120960_
                               _hd120573120963_
                               _tl120572120965_
                               _e120577120968_
                               _hd120576120971_
                               _tl120575120973_)
                        (let ((_L120976_ _hd120576120971_)
                              (_L120977_ _hd120573120963_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120977_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120976_)))
                              (___kont128333128334_ _L120976_ _L120977_)
                              (___match128422128423_
                               _e120568120944_
                               _hd120567120947_
                               _tl120566120949_
                               _e120571120952_
                               _hd120570120955_
                               _tl120569120957_
                               _e120574120960_
                               _hd120573120963_
                               _tl120572120965_
                               _e120577120968_
                               _hd120576120971_
                               _tl120575120973_)))))
                     (___match128366128367_
                      (lambda (_e120554121126_
                               _hd120553121129_
                               _tl120552121131_
                               _e120557121134_
                               _hd120556121137_
                               _tl120555121139_
                               _e120560121142_
                               _hd120559121145_
                               _tl120558121147_
                               _e120563121150_
                               _hd120562121153_
                               _tl120561121155_)
                        (let ((_L121158_ _hd120562121153_)
                              (_L121159_ _hd120559121145_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121159_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121158_)))
                              (___kont128331128332_ _L121158_ _L121159_)
                              (___match128394128395_
                               _e120554121126_
                               _hd120553121129_
                               _tl120552121131_
                               _e120557121134_
                               _hd120556121137_
                               _tl120555121139_
                               _e120560121142_
                               _hd120559121145_
                               _tl120558121147_
                               _e120563121150_
                               _hd120562121153_
                               _tl120561121155_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128329128330_))
                    (let ((_e120554121126_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128329128330_))))
                      (let ((_tl120552121131_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120554121126_)))
                            (_hd120553121129_
                             (let ()
                               (declare (not safe))
                               (##car _e120554121126_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120552121131_))
                            (let ((_e120557121134_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120552121131_))))
                              (let ((_tl120555121139_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120557121134_)))
                                    (_hd120556121137_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120557121134_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120556121137_))
                                    (let ((_e120560121142_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120556121137_))))
                                      (let ((_tl120558121147_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120560121142_)))
                                            (_hd120559121145_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120560121142_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120558121147_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120555121139_))
                                                (let ((_e120563121150_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120555121139_))))
                                                  (let ((_tl120561121155_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120563121150_)))
                                                        (_hd120562121153_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120563121150_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120561121155_))
                                                        (___match128366128367_
                                                         _e120554121126_
                                                         _hd120553121129_
                                                         _tl120552121131_
                                                         _e120557121134_
                                                         _hd120556121137_
                                                         _tl120555121139_
                                                         _e120560121142_
                                                         _hd120559121145_
                                                         _tl120558121147_
                                                         _e120563121150_
                                                         _hd120562121153_
                                                         _tl120561121155_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120548120607_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120548120607_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120555121139_))
                                                (let ((_e120602120628_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120555121139_))))
                                                  (let ((_tl120600120633_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120602120628_)))
                                                        (_hd120601120631_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120602120628_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120600120633_))
                                                        (___kont128337128338_
                                                         _hd120601120631_
                                                         _hd120556121137_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120548120607_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120548120607_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120555121139_))
                                        (let ((_e120602120628_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120555121139_))))
                                          (let ((_tl120600120633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120602120628_)))
                                                (_hd120601120631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120602120628_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120600120633_))
                                                (___kont128337128338_
                                                 _hd120601120631_
                                                 _hd120556121137_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120548120607_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120548120607_))))))
                            (let () (declare (not safe)) (_g120548120607_)))))
                    (let () (declare (not safe)) (_g120548120607_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119471_)
        (letrec* ((_bind-e__126725126726_
                   (lambda (_id120523_ _expr120524_ _compile?120525_)
                     (let ((__tmp129061
                            (let ()
                              (declare (not safe))
                              (cons _id120523_ '())))
                           (__tmp129059
                            (let ((__tmp129060
                                   (if _compile?120525_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120524_))
                                       _expr120524_)))
                              (declare (not safe))
                              (cons __tmp129060 '()))))
                       (declare (not safe))
                       (cons __tmp129061 __tmp129059))))
                  (_bind-e__0__126727126728_
                   (lambda (_id120530_ _expr120531_)
                     (let ((_compile?120533_ '#t))
                       (declare (not safe))
                       (_bind-e__126725126726_
                        _id120530_
                        _expr120531_
                        _compile?120533_))))
                  (_bind-e119473_
                   (lambda _g129063_
                     (let ((_g129062_
                            (let ()
                              (declare (not safe))
                              (##length _g129063_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129062_ 2))
                              (apply (lambda (_id120530_ _expr120531_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126727126728_
                                          _id120530_
                                          _expr120531_)))
                                     _g129063_))
                             ((let () (declare (not safe)) (##fx= _g129062_ 3))
                              (apply (lambda (_id120535_
                                              _expr120536_
                                              _compile?120537_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126725126726_
                                          _id120535_
                                          _expr120536_
                                          _compile?120537_)))
                                     _g129063_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129063_))))))
                  (_compile-bindings119474_
                   (lambda (_bindings120107_)
                     (let _lp120109_ ((_rest120111_ _bindings120107_)
                                      (_lift1120112_ '())
                                      (_lift2120113_ '())
                                      (_bind120114_ '()))
                       (let* ((_rest120115120123_ _rest120111_)
                              (_else120117120131_
                               (lambda ()
                                 (values (reverse _lift1120112_)
                                         (reverse _lift2120113_)
                                         (reverse _bind120114_))))
                              (_K120119120510_
                               (lambda (_rest120134_ _hd120135_)
                                 (let* ((___stx128465128466_ _hd120135_)
                                        (_g120139120175_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128465128466_)))))
                                   (let ((___kont128467128468_
                                          (lambda (_L120417_ _L120418_)
                                            (let* ((___stx128445128446_
                                                    _L120417_)
                                                   (_g120433120447_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128445128446_)))))
                                              (let ((___kont128447128448_
                                                     (lambda (_L120495_)
                                                       (let ((__tmp129064
                                                              (let ((__tmp129065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126725126726_
                                _L120418_
                                _L120417_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129065 _bind120114_))))
                 (declare (not safe))
                 (_lp120109_
                  _rest120134_
                  _lift1120112_
                  _lift2120113_
                  __tmp129064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128449128450_
                                                     (lambda (_L120460_)
                                                       (let ((_g129066_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119471_
                         _L120418_
                         _L120460_
                         '#t))))
                 (begin
                   (let ((_g129067_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129066_)
                                (##vector-length _g129066_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129067_ 3)))
                         (error "Context expects 3 values" _g129067_)))
                   (let ((_ids120470_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129066_ 0)))
                         (_impls120471_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129066_ 1)))
                         (_clauses120472_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129066_ 2))))
                     (let* ((_g129068_
                             (for-each gx#core-bind-runtime! _ids120470_))
                            (_xbind120475_
                             (map _bind-e119473_ _ids120470_ _impls120471_))
                            (_expr*120477_
                             (let ((__tmp129070
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120472_)))
                                   (__tmp129069
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129070
                                __tmp129069)))
                            (_bind*120479_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126725126726_
                                _L120418_
                                _expr*120477_
                                '#f))))
                       (let ((__tmp129072
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120418_)))
                             (__tmp129071
                              (map gxc#identifier-symbol _ids120470_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129072
                          '" => "
                          __tmp129071))
                       (let ((__tmp129074
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120113_ _xbind120475_)))
                             (__tmp129073
                              (let ()
                                (declare (not safe))
                                (cons _bind*120479_ _bind120114_))))
                         (declare (not safe))
                         (_lp120109_
                          _rest120134_
                          _lift1120112_
                          __tmp129074
                          __tmp129073)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128456128457_
                                                       (lambda (_e120438120487_
                                                                _hd120437120490_
                                                                _tl120436120492_)
                                                         (let ((_L120495_
                                                                _tl120436120492_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120495_))
                       (___kont128447128448_ _L120495_)
                       (___kont128449128450_ _tl120436120492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128445128446_))
                                                      (let ((_e120438120487_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128445128446_))))
                (let ((_tl120436120492_
                       (let () (declare (not safe)) (##cdr _e120438120487_)))
                      (_hd120437120490_
                       (let () (declare (not safe)) (##car _e120438120487_))))
                  (___match128456128457_
                   _e120438120487_
                   _hd120437120490_
                   _tl120436120492_)))
              (let () (declare (not safe)) (_g120433120447_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128469128470_
                                          (lambda (_L120245_ _L120246_)
                                            (let* ((_g120260120290_
                                                    (lambda (_g120261120287_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120261120287_))))
                                                   (_g120259120385_
                                                    (lambda (_g120261120293_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120261120293_))
                                                          (let ((_e120267120295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120261120293_))))
                    (let ((_hd120266120298_
                           (let ()
                             (declare (not safe))
                             (##car _e120267120295_)))
                          (_tl120265120300_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120267120295_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120265120300_))
                          (let ((_e120270120303_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120265120300_))))
                            (let ((_hd120269120306_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120270120303_)))
                                  (_tl120268120308_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120270120303_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120269120306_))
                                  (let ((_e120273120311_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120269120306_))))
                                    (let ((_hd120272120314_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120273120311_)))
                                          (_tl120271120316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120273120311_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120272120314_))
                                          (let ((_e120276120319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120272120314_))))
                                            (let ((_hd120275120322_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120276120319_)))
                                                  (_tl120274120324_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120276120319_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120275120322_))
                                                  (let ((_e120279120327_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120275120322_))))
                                                    (let ((_hd120278120330_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120279120327_)))
                                                          (_tl120277120332_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120279120327_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120277120332_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120274120324_))
                      (let ((_e120282120335_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120274120324_))))
                        (let ((_hd120281120338_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120282120335_)))
                              (_tl120280120340_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120282120335_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120280120340_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120271120316_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120268120308_))
                                      (let ((_e120285120343_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120268120308_))))
                                        (let ((_hd120284120346_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120285120343_)))
                                              (_tl120283120348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120285120343_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120283120348_))
                                              ((lambda (_L120351_
                                                        _L120352_
                                                        _L120353_)
                                                 (let* ((_lambda-id120377_
                                                         (let ((__tmp129076
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120246_)))
                       (__tmp129075 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129076 __tmp129075)))
                (_lambda-id120379_
                 (let ((__tmp129077
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119471_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120377_ __tmp129077)))
                (_g129078_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120379_)))
                (_new-case-lambda-expr120382_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120351_
                    _L120353_
                    _lambda-id120379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129080
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120246_)))
                                                         (__tmp129079
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120379_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129080
                                                      '" => "
                                                      __tmp129079))
                                                   (let ((__tmp129083
                                                          (let ((__tmp129084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126725126726_
                            _L120246_
                            _new-case-lambda-expr120382_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129084 _rest120134_)))
                 (__tmp129081
                  (let ((__tmp129082
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126727126728_
                            _lambda-id120379_
                            _L120352_))))
                    (declare (not safe))
                    (cons __tmp129082 _lift1120112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120109_
                                                      __tmp129083
                                                      __tmp129081
                                                      _lift2120113_
                                                      _bind120114_))))
                                               _hd120284120346_
                                               _hd120281120338_
                                               _hd120278120330_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120260120290_
                                                 _g120261120293_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120260120290_ _g120261120293_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120260120290_ _g120261120293_)))
                              (let ()
                                (declare (not safe))
                                (_g120260120290_ _g120261120293_)))))
                      (let ()
                        (declare (not safe))
                        (_g120260120290_ _g120261120293_)))
                  (let ()
                    (declare (not safe))
                    (_g120260120290_ _g120261120293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120260120290_
                                                     _g120261120293_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120260120290_
                                             _g120261120293_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120260120290_ _g120261120293_)))))
                          (let ()
                            (declare (not safe))
                            (_g120260120290_ _g120261120293_)))))
                  (let ()
                    (declare (not safe))
                    (_g120260120290_ _g120261120293_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120259120385_ _L120245_))))
                                         (___kont128471128472_
                                          (lambda (_L120196_ _L120197_)
                                            (let ((__tmp129085
                                                   (let ((__tmp129086
                                                          (let ((__tmp129087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129088
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L120196_))))
                           (declare (not safe))
                           (cons __tmp129088 '()))))
                    (declare (not safe))
                    (cons _L120197_ __tmp129087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129086
                                                           _bind120114_))))
                                              (declare (not safe))
                                              (_lp120109_
                                               _rest120134_
                                               _lift1120112_
                                               _lift2120113_
                                               __tmp129085)))))
                                     (let* ((___match128516128517_
                                             (lambda (_e120156120221_
                                                      _hd120155120224_
                                                      _tl120154120226_
                                                      _e120159120229_
                                                      _hd120158120232_
                                                      _tl120157120234_
                                                      _e120162120237_
                                                      _hd120161120240_
                                                      _tl120160120242_)
                                               (let ((_L120245_
                                                      _hd120161120240_)
                                                     (_L120246_
                                                      _hd120158120232_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120246_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120245_)))
                                                     (___kont128469128470_
                                                      _L120245_
                                                      _L120246_)
                                                     (___kont128471128472_
                                                      _hd120161120240_
                                                      _hd120155120224_)))))
                                            (___match128494128495_
                                             (lambda (_e120145120393_
                                                      _hd120144120396_
                                                      _tl120143120398_
                                                      _e120148120401_
                                                      _hd120147120404_
                                                      _tl120146120406_
                                                      _e120151120409_
                                                      _hd120150120412_
                                                      _tl120149120414_)
                                               (let ((_L120417_
                                                      _hd120150120412_)
                                                     (_L120418_
                                                      _hd120147120404_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120418_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120417_)))
                                                     (___kont128467128468_
                                                      _L120417_
                                                      _L120418_)
                                                     (___match128516128517_
                                                      _e120145120393_
                                                      _hd120144120396_
                                                      _tl120143120398_
                                                      _e120148120401_
                                                      _hd120147120404_
                                                      _tl120146120406_
                                                      _e120151120409_
                                                      _hd120150120412_
                                                      _tl120149120414_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128465128466_))
                                           (let ((_e120145120393_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128465128466_))))
                                             (let ((_tl120143120398_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120145120393_)))
                                                   (_hd120144120396_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120145120393_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120144120396_))
                                                   (let ((_e120148120401_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120144120396_))))
                                                     (let ((_tl120146120406_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120148120401_)))
                                                           (_hd120147120404_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120148120401_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120146120406_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120143120398_))
                       (let ((_e120151120409_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120143120398_))))
                         (let ((_tl120149120414_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120151120409_)))
                               (_hd120150120412_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120151120409_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120149120414_))
                               (___match128494128495_
                                _e120145120393_
                                _hd120144120396_
                                _tl120143120398_
                                _e120148120401_
                                _hd120147120404_
                                _tl120146120406_
                                _e120151120409_
                                _hd120150120412_
                                _tl120149120414_)
                               (let ()
                                 (declare (not safe))
                                 (_g120139120175_)))))
                       (let () (declare (not safe)) (_g120139120175_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120143120398_))
                       (let ((_e120170120188_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120143120398_))))
                         (let ((_tl120168120193_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120170120188_)))
                               (_hd120169120191_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120170120188_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120168120193_))
                               (___kont128471128472_
                                _hd120169120191_
                                _hd120144120396_)
                               (let ()
                                 (declare (not safe))
                                 (_g120139120175_)))))
                       (let () (declare (not safe)) (_g120139120175_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120143120398_))
                                                       (let ((_e120170120188_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120143120398_))))
                 (let ((_tl120168120193_
                        (let () (declare (not safe)) (##cdr _e120170120188_)))
                       (_hd120169120191_
                        (let () (declare (not safe)) (##car _e120170120188_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120168120193_))
                       (___kont128471128472_ _hd120169120191_ _hd120144120396_)
                       (let () (declare (not safe)) (_g120139120175_)))))
               (let () (declare (not safe)) (_g120139120175_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120139120175_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120115120123_))
                             (let ((_hd120120120513_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120115120123_)))
                                   (_tl120121120515_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120115120123_))))
                               (let* ((_hd120518_ _hd120120120513_)
                                      (_rest120520_ _tl120121120515_))
                                 (declare (not safe))
                                 (_K120119120510_ _rest120520_ _hd120518_)))
                             (let ()
                               (declare (not safe))
                               (_else120117120131_)))))))
                  (_lift-kw-lambda?119475_
                   (lambda (_bind120031_)
                     (let* ((___stx128533128534_ _bind120031_)
                            (_g120034120051_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128533128534_)))))
                       (let ((___kont128535128536_
                              (lambda (_L120087_ _L120088_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120088_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120087_))
                                    '#f)))
                             (___kont128537128538_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128533128534_))
                             (let ((_e120040120063_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128533128534_))))
                               (let ((_tl120038120068_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120040120063_)))
                                     (_hd120039120066_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120040120063_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120039120066_))
                                     (let ((_e120043120071_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120039120066_))))
                                       (let ((_tl120041120076_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120043120071_)))
                                             (_hd120042120074_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120043120071_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120041120076_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120038120068_))
                                                 (let ((_e120046120079_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120038120068_))))
                                                   (let ((_tl120044120084_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120046120079_)))
                                                         (_hd120045120082_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120046120079_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120044120084_))
                                                         (___kont128535128536_
                                                          _hd120045120082_
                                                          _hd120042120074_)
                                                         (___kont128537128538_))))
                                                 (___kont128537128538_))
                                             (___kont128537128538_))))
                                     (___kont128537128538_))))
                             (___kont128537128538_))))))
                  (_lift-kw-lambda-bindings119476_
                   (lambda (_bindings119643_)
                     (let _lp119645_ ((_rest119647_ _bindings119643_)
                                      (_lift1119648_ '())
                                      (_lift2119649_ '())
                                      (_bind119650_ '()))
                       (let* ((_rest119651119659_ _rest119647_)
                              (_else119653119667_
                               (lambda ()
                                 (values (reverse _lift1119648_)
                                         (reverse _lift2119649_)
                                         (reverse _bind119650_))))
                              (_K119655120019_
                               (lambda (_rest119670_ _hd119671_)
                                 (let* ((___stx128563128564_ _hd119671_)
                                        (_g119674119699_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128563128564_)))))
                                   (let ((___kont128565128566_
                                          (lambda (_L119769_ _L119770_)
                                            (let* ((_g119784119837_
                                                    (lambda (_g119785119834_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119785119834_))))
                                                   (_g119783120013_
                                                    (lambda (_g119785119840_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119785119840_))
                                                          (let ((_e119793119842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119785119840_))))
                    (let ((_hd119792119845_
                           (let ()
                             (declare (not safe))
                             (##car _e119793119842_)))
                          (_tl119791119847_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119793119842_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119791119847_))
                          (let ((_e119796119850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119791119847_))))
                            (let ((_hd119795119853_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119796119850_)))
                                  (_tl119794119855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119796119850_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119795119853_))
                                  (let ((_e119799119858_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119795119853_))))
                                    (let ((_hd119798119861_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119799119858_)))
                                          (_tl119797119863_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119799119858_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119798119861_))
                                          (let ((_e119802119866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119798119861_))))
                                            (let ((_hd119801119869_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119802119866_)))
                                                  (_tl119800119871_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119802119866_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119801119869_))
                                                  (let ((_e119805119874_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119801119869_))))
                                                    (let ((_hd119804119877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119805119874_)))
                                                          (_tl119803119879_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119805119874_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119803119879_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119800119871_))
                      (let ((_e119808119882_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119800119871_))))
                        (let ((_hd119807119885_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119808119882_)))
                              (_tl119806119887_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119808119882_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119807119885_))
                              (let ((_e119811119890_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119807119885_))))
                                (let ((_hd119810119893_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119811119890_)))
                                      (_tl119809119895_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119811119890_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119809119895_))
                                      (let ((_e119814119898_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119809119895_))))
                                        (let ((_hd119813119901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119814119898_)))
                                              (_tl119812119903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119814119898_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119813119901_))
                                              (let ((_e119817119906_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119813119901_))))
                                                (let ((_hd119816119909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119817119906_)))
                                                      (_tl119815119911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119817119906_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119816119909_))
                                                      (let ((_e119820119914_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119816119909_))))
                (let ((_hd119819119917_
                       (let () (declare (not safe)) (##car _e119820119914_)))
                      (_tl119818119919_
                       (let () (declare (not safe)) (##cdr _e119820119914_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119819119917_))
                      (let ((_e119823119922_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119819119917_))))
                        (let ((_hd119822119925_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119823119922_)))
                              (_tl119821119927_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119823119922_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119821119927_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119818119919_))
                                  (let ((_e119826119930_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119818119919_))))
                                    (let ((_hd119825119933_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119826119930_)))
                                          (_tl119824119935_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119826119930_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119824119935_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119815119911_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119812119903_))
                                                  (let ((_e119829119938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119812119903_))))
                                                    (let ((_hd119828119941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119829119938_)))
                                                          (_tl119827119943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119829119938_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119827119943_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119806119887_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119797119863_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119794119855_))
                              (let ((_e119832119946_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119794119855_))))
                                (let ((_hd119831119949_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119832119946_)))
                                      (_tl119830119951_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119832119946_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119830119951_))
                                      ((lambda (_L119954_
                                                _L119955_
                                                _L119956_
                                                _L119957_
                                                _L119958_)
                                         (let* ((_get-kws-id119998_
                                                 (let ((__tmp129090
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119770_)))
                                                       (__tmp129089
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129090
                                                    __tmp129089)))
                                                (_get-kws-id120000_
                                                 (let ((__tmp129091
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119471_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119998_
                                                    __tmp129091)))
                                                (_main-id120002_
                                                 (let ((__tmp129093
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119770_)))
                                                       (__tmp129092
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129093
                                                    __tmp129092)))
                                                (_main-id120004_
                                                 (let ((__tmp129094
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119471_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120002_
                                                    __tmp129094)))
                                                (_g129095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120000_)))
                                                (_g129096_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120004_)))
                                                (_new-kw-dispatch120008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119954_
                                                    _L119958_
                                                    _get-kws-id120000_)))
                                                (_new-get-kws120010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119955_
                                                    _L119957_
                                                    _main-id120004_))))
                                           (let ((__tmp129099
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119770_)))
                                                 (__tmp129098
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120000_)))
                                                 (__tmp129097
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120004_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129099
                                              '" => "
                                              __tmp129098
                                              '" => "
                                              __tmp129097))
                                           (let ((__tmp129104
                                                  (let ((__tmp129105
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126725126726_
                                                            _main-id120004_
                                                            _L119956_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129105
                                                          _lift1119648_)))
                                                 (__tmp129102
                                                  (let ((__tmp129103
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126725126726_
                                                            _get-kws-id120000_
                                                            _new-get-kws120010_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129103
                                                          _lift2119649_)))
                                                 (__tmp129100
                                                  (let ((__tmp129101
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126725126726_
                                                            _L119770_
                                                            _new-kw-dispatch120008_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129101
                                                          _bind119650_))))
                                             (declare (not safe))
                                             (_lp119645_
                                              _rest119670_
                                              __tmp129104
                                              __tmp129102
                                              __tmp129100))))
                                       _hd119831119949_
                                       _hd119828119941_
                                       _hd119825119933_
                                       _hd119822119925_
                                       _hd119804119877_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119784119837_ _g119785119840_)))))
                              (let ()
                                (declare (not safe))
                                (_g119784119837_ _g119785119840_)))
                          (let ()
                            (declare (not safe))
                            (_g119784119837_ _g119785119840_)))
                      (let ()
                        (declare (not safe))
                        (_g119784119837_ _g119785119840_)))
                  (let ()
                    (declare (not safe))
                    (_g119784119837_ _g119785119840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119784119837_
                                                     _g119785119840_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119784119837_
                                                 _g119785119840_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119784119837_
                                             _g119785119840_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119784119837_ _g119785119840_)))
                              (let ()
                                (declare (not safe))
                                (_g119784119837_ _g119785119840_)))))
                      (let ()
                        (declare (not safe))
                        (_g119784119837_ _g119785119840_)))))
              (let ()
                (declare (not safe))
                (_g119784119837_ _g119785119840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119784119837_
                                                 _g119785119840_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119784119837_ _g119785119840_)))))
                              (let ()
                                (declare (not safe))
                                (_g119784119837_ _g119785119840_)))))
                      (let ()
                        (declare (not safe))
                        (_g119784119837_ _g119785119840_)))
                  (let ()
                    (declare (not safe))
                    (_g119784119837_ _g119785119840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119784119837_
                                                     _g119785119840_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119784119837_
                                             _g119785119840_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119784119837_ _g119785119840_)))))
                          (let ()
                            (declare (not safe))
                            (_g119784119837_ _g119785119840_)))))
                  (let ()
                    (declare (not safe))
                    (_g119784119837_ _g119785119840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119783120013_ _L119769_))))
                                         (___kont128567128568_
                                          (lambda (_L119720_ _L119721_)
                                            (let ((__tmp129106
                                                   (let ((__tmp129107
                                                          (let ((__tmp129108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119720_ '()))))
                    (declare (not safe))
                    (cons _L119721_ __tmp129108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129107
                                                           _bind119650_))))
                                              (declare (not safe))
                                              (_lp119645_
                                               _rest119670_
                                               _lift1119648_
                                               _lift2119649_
                                               __tmp129106)))))
                                     (let ((___match128590128591_
                                            (lambda (_e119680119745_
                                                     _hd119679119748_
                                                     _tl119678119750_
                                                     _e119683119753_
                                                     _hd119682119756_
                                                     _tl119681119758_
                                                     _e119686119761_
                                                     _hd119685119764_
                                                     _tl119684119766_)
                                              (let ((_L119769_
                                                     _hd119685119764_)
                                                    (_L119770_
                                                     _hd119682119756_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119770_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119769_)))
                                                    (___kont128565128566_
                                                     _L119769_
                                                     _L119770_)
                                                    (___kont128567128568_
                                                     _hd119685119764_
                                                     _hd119679119748_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128563128564_))
                                           (let ((_e119680119745_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128563128564_))))
                                             (let ((_tl119678119750_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119680119745_)))
                                                   (_hd119679119748_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119680119745_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119679119748_))
                                                   (let ((_e119683119753_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119679119748_))))
                                                     (let ((_tl119681119758_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119683119753_)))
                                                           (_hd119682119756_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119683119753_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119681119758_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119678119750_))
                       (let ((_e119686119761_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119678119750_))))
                         (let ((_tl119684119766_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119686119761_)))
                               (_hd119685119764_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119686119761_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119684119766_))
                               (___match128590128591_
                                _e119680119745_
                                _hd119679119748_
                                _tl119678119750_
                                _e119683119753_
                                _hd119682119756_
                                _tl119681119758_
                                _e119686119761_
                                _hd119685119764_
                                _tl119684119766_)
                               (let ()
                                 (declare (not safe))
                                 (_g119674119699_)))))
                       (let () (declare (not safe)) (_g119674119699_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119678119750_))
                       (let ((_e119694119712_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119678119750_))))
                         (let ((_tl119692119717_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119694119712_)))
                               (_hd119693119715_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119694119712_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119692119717_))
                               (___kont128567128568_
                                _hd119693119715_
                                _hd119679119748_)
                               (let ()
                                 (declare (not safe))
                                 (_g119674119699_)))))
                       (let () (declare (not safe)) (_g119674119699_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119678119750_))
                                                       (let ((_e119694119712_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119678119750_))))
                 (let ((_tl119692119717_
                        (let () (declare (not safe)) (##cdr _e119694119712_)))
                       (_hd119693119715_
                        (let () (declare (not safe)) (##car _e119694119712_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119692119717_))
                       (___kont128567128568_ _hd119693119715_ _hd119679119748_)
                       (let () (declare (not safe)) (_g119674119699_)))))
               (let () (declare (not safe)) (_g119674119699_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119674119699_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119651119659_))
                             (let ((_hd119656120022_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119651119659_)))
                                   (_tl119657120024_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119651119659_))))
                               (let* ((_hd120027_ _hd119656120022_)
                                      (_rest120029_ _tl119657120024_))
                                 (declare (not safe))
                                 (_K119655120019_ _rest120029_ _hd120027_)))
                             (let ()
                               (declare (not safe))
                               (_else119653119667_))))))))
          (let* ((___stx128607128608_ _stx119471_)
                 (_g119479119505_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128607128608_)))))
            (let ((___kont128609128610_
                   (lambda (_L119565_ _L119566_)
                     (let ((__tmp129110
                            (lambda ()
                              (if (let ((__tmp129137
                                         (let ((__tmp129138
                                                (lambda (_g119594119597_
                                                         _g119595119599_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119594119597_
                                                          _g119595119599_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129138
                                                   '()
                                                   _L119566_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119475_
                                            __tmp129137))
                                  (let ((_g129124_
                                         (let ((__tmp129126
                                                (let ((__tmp129127
                                                       (lambda (_g119601119604_
                                                                _g119602119606_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119601119604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119602119606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129127
                                                          '()
                                                          _L119566_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119476_
                                            __tmp129126))))
                                    (begin
                                      (let ((_g129125_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129124_)
                                                   (##vector-length _g129124_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129125_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129125_)))
                                      (let ((_lift1119609_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129124_ 0)))
                                            (_lift2119610_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129124_ 1)))
                                            (_hd119611_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129124_ 2))))
                                        (let* ((_expr119613_
                                                (let ((__tmp129128
                                                       (let ((__tmp129129
                                                              (let ((__tmp129130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119565_ '()))))
                        (declare (not safe))
                        (cons _hd119611_ __tmp129130))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129128
                                                   _stx119471_)))
                                               (_expr119615_
                                                (let ((__tmp129131
                                                       (let ((__tmp129132
                                                              (let ((__tmp129133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119613_ '()))))
                        (declare (not safe))
                        (cons _lift2119610_ __tmp129133))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129131
                                                   _stx119471_)))
                                               (_expr119617_
                                                (let ((__tmp129134
                                                       (let ((__tmp129135
                                                              (let ((__tmp129136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119615_ '()))))
                        (declare (not safe))
                        (cons _lift1119609_ __tmp129136))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129134
                                                   _stx119471_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119617_))))))
                                  (let ((_g129111_
                                         (let ((__tmp129113
                                                (let ((__tmp129114
                                                       (lambda (_g119619119622_
                                                                _g119620119624_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119619119622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119620119624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129114
                                                          '()
                                                          _L119566_))))
                                           (declare (not safe))
                                           (_compile-bindings119474_
                                            __tmp129113))))
                                    (begin
                                      (let ((_g129112_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129111_)
                                                   (##vector-length _g129111_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129112_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129112_)))
                                      (let ((_lift1119627_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129111_ 0)))
                                            (_lift2119628_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129111_ 1)))
                                            (_hd119629_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129111_ 2))))
                                        (let* ((_body119631_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119565_)))
                                               (_expr119633_
                                                (let ((__tmp129115
                                                       (let ((__tmp129116
                                                              (let ((__tmp129117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119631_ '()))))
                        (declare (not safe))
                        (cons _hd119629_ __tmp129117))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129115
                                                   _stx119471_)))
                                               (_expr119635_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119628_))
                                                    _expr119633_
                                                    (let ((__tmp129118
                                                           (let ((__tmp129119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129120
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119633_ '()))))
                            (declare (not safe))
                            (cons _lift2119628_ __tmp129120))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129119))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129118 _stx119471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119637_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119627_))
                                                    _expr119635_
                                                    (let ((__tmp129121
                                                           (let ((__tmp129122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129123
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119635_ '()))))
                            (declare (not safe))
                            (cons _lift1119627_ __tmp129123))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129122))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129121 _stx119471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119637_)))))))
                           (__tmp129109
                            (let ((__obj128813
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128813)
                              __obj128813)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129110
                        gx#current-expander-context
                        __tmp129109))))
                  (___kont128613128614_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119471_)))))
              (let ((___match128634128635_
                     (lambda (_e119485119517_
                              _hd119484119520_
                              _tl119483119522_
                              _e119488119525_
                              _hd119487119528_
                              _tl119486119530_
                              ___splice128611128612_
                              _target119489119533_
                              _tl119491119535_)
                       (letrec ((_loop119492119538_
                                 (lambda (_hd119490119541_ _bind119496119543_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119490119541_))
                                       (let ((_e119493119546_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119490119541_))))
                                         (let ((_lp-tl119495119551_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119493119546_)))
                                               (_lp-hd119494119549_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119493119546_))))
                                           (let ((__tmp129141
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119494119549_
                                                          _bind119496119543_))))
                                             (declare (not safe))
                                             (_loop119492119538_
                                              _lp-tl119495119551_
                                              __tmp129141))))
                                       (let ((_bind119497119554_
                                              (reverse _bind119496119543_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119486119530_))
                                             (let ((_e119500119557_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119486119530_))))
                                               (let ((_tl119498119562_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119500119557_)))
                                                     (_hd119499119560_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119500119557_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119498119562_))
                                                     (let ((_L119565_
                                                            _hd119499119560_)
                                                           (_L119566_
                                                            _bind119497119554_))
                                                       (if (let ((__tmp129139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129140
                                 (lambda (_g119586119589_ _g119587119591_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119586119589_ _g119587119591_)))))
                            (declare (not safe))
                            (foldr1 __tmp129140 '() _L119566_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129139))
                   (___kont128609128610_ _L119565_ _L119566_)
                   (___kont128613128614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128613128614_))))
                                             (___kont128613128614_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119492119538_ _target119489119533_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128607128608_))
                    (let ((_e119485119517_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128607128608_))))
                      (let ((_tl119483119522_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119485119517_)))
                            (_hd119484119520_
                             (let ()
                               (declare (not safe))
                               (##car _e119485119517_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119483119522_))
                            (let ((_e119488119525_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119483119522_))))
                              (let ((_tl119486119530_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119488119525_)))
                                    (_hd119487119528_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119488119525_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119487119528_))
                                    (let ((___splice128611128612_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119487119528_
                                              '0))))
                                      (let ((_tl119491119535_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128611128612_
                                                '1)))
                                            (_target119489119533_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128611128612_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119491119535_))
                                            (___match128634128635_
                                             _e119485119517_
                                             _hd119484119520_
                                             _tl119483119522_
                                             _e119488119525_
                                             _hd119487119528_
                                             _tl119486119530_
                                             ___splice128611128612_
                                             _target119489119533_
                                             _tl119491119535_)
                                            (___kont128613128614_))))
                                    (___kont128613128614_))))
                            (___kont128613128614_))))
                    (___kont128613128614_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118615_)
        (letrec* ((_bind-e__126730126731_
                   (lambda (_id119455_ _expr119456_ _compile?119457_)
                     (let ((__tmp129144
                            (let ()
                              (declare (not safe))
                              (cons _id119455_ '())))
                           (__tmp129142
                            (let ((__tmp129143
                                   (if _compile?119457_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119456_))
                                       _expr119456_)))
                              (declare (not safe))
                              (cons __tmp129143 '()))))
                       (declare (not safe))
                       (cons __tmp129144 __tmp129142))))
                  (_bind-e__0__126732126733_
                   (lambda (_id119462_ _expr119463_)
                     (let ((_compile?119465_ '#t))
                       (declare (not safe))
                       (_bind-e__126730126731_
                        _id119462_
                        _expr119463_
                        _compile?119465_))))
                  (_bind-e118617_
                   (lambda _g129146_
                     (let ((_g129145_
                            (let ()
                              (declare (not safe))
                              (##length _g129146_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129145_ 2))
                              (apply (lambda (_id119462_ _expr119463_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126732126733_
                                          _id119462_
                                          _expr119463_)))
                                     _g129146_))
                             ((let () (declare (not safe)) (##fx= _g129145_ 3))
                              (apply (lambda (_id119467_
                                              _expr119468_
                                              _compile?119469_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126730126731_
                                          _id119467_
                                          _expr119468_
                                          _compile?119469_)))
                                     _g129146_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129146_))))))
                  (_compile-bindings118618_
                   (lambda (_rest118753_)
                     (let _lp118755_ ((_rest118757_ _rest118753_)
                                      (_bind118758_ '()))
                       (let* ((_rest118759118767_ _rest118757_)
                              (_else118761118775_
                               (lambda () (reverse _bind118758_)))
                              (_K118763119442_
                               (lambda (_rest118778_ _hd118779_)
                                 (let* ((___stx128657128658_ _hd118779_)
                                        (_g118784118831_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128657128658_)))))
                                   (let ((___kont128659128660_
                                          (lambda (_L119349_ _L119350_)
                                            (let* ((___stx128637128638_
                                                    _L119349_)
                                                   (_g119365119379_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128637128638_)))))
                                              (let ((___kont128639128640_
                                                     (lambda (_L119427_)
                                                       (let ((__tmp129147
                                                              (let ((__tmp129148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126730126731_
                                _L119350_
                                _L119349_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129148 _bind118758_))))
                 (declare (not safe))
                 (_lp118755_ _rest118778_ __tmp129147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128641128642_
                                                     (lambda (_L119392_)
                                                       (let ((_g129149_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118615_
                         _L119350_
                         _L119392_
                         '#t))))
                 (begin
                   (let ((_g129150_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129149_)
                                (##vector-length _g129149_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129150_ 3)))
                         (error "Context expects 3 values" _g129150_)))
                   (let ((_ids119402_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129149_ 0)))
                         (_impls119403_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129149_ 1)))
                         (_clauses119404_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129149_ 2))))
                     (let* ((_g129151_
                             (for-each gx#core-bind-runtime! _ids119402_))
                            (_xbind119407_
                             (map _bind-e118617_ _ids119402_ _impls119403_))
                            (_expr*119409_
                             (let ((__tmp129153
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119404_)))
                                   (__tmp129152
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129153
                                __tmp129152)))
                            (_bind*119411_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126730126731_
                                _L119350_
                                _expr*119409_
                                '#f))))
                       (let ((__tmp129155
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119350_)))
                             (__tmp129154
                              (map gxc#identifier-symbol _ids119402_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129155
                          '" => "
                          __tmp129154))
                       (let ((__tmp129156
                              (let ((__tmp129157
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118758_
                                               _xbind119407_))))
                                (declare (not safe))
                                (cons _bind*119411_ __tmp129157))))
                         (declare (not safe))
                         (_lp118755_ _rest118778_ __tmp129156)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128648128649_
                                                       (lambda (_e119370119419_
                                                                _hd119369119422_
                                                                _tl119368119424_)
                                                         (let ((_L119427_
                                                                _tl119368119424_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119427_))
                       (___kont128639128640_ _L119427_)
                       (___kont128641128642_ _tl119368119424_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128637128638_))
                                                      (let ((_e119370119419_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128637128638_))))
                (let ((_tl119368119424_
                       (let () (declare (not safe)) (##cdr _e119370119419_)))
                      (_hd119369119422_
                       (let () (declare (not safe)) (##car _e119370119419_))))
                  (___match128648128649_
                   _e119370119419_
                   _hd119369119422_
                   _tl119368119424_)))
              (let () (declare (not safe)) (_g119365119379_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128661128662_
                                          (lambda (_L119177_ _L119178_)
                                            (let* ((_g119192119222_
                                                    (lambda (_g119193119219_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119193119219_))))
                                                   (_g119191119317_
                                                    (lambda (_g119193119225_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119193119225_))
                                                          (let ((_e119199119227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119193119225_))))
                    (let ((_hd119198119230_
                           (let ()
                             (declare (not safe))
                             (##car _e119199119227_)))
                          (_tl119197119232_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119199119227_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119197119232_))
                          (let ((_e119202119235_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119197119232_))))
                            (let ((_hd119201119238_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119202119235_)))
                                  (_tl119200119240_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119202119235_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119201119238_))
                                  (let ((_e119205119243_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119201119238_))))
                                    (let ((_hd119204119246_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119205119243_)))
                                          (_tl119203119248_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119205119243_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119204119246_))
                                          (let ((_e119208119251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119204119246_))))
                                            (let ((_hd119207119254_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119208119251_)))
                                                  (_tl119206119256_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119208119251_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119207119254_))
                                                  (let ((_e119211119259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119207119254_))))
                                                    (let ((_hd119210119262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119211119259_)))
                                                          (_tl119209119264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119211119259_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119209119264_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119206119256_))
                      (let ((_e119214119267_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119206119256_))))
                        (let ((_hd119213119270_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119214119267_)))
                              (_tl119212119272_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119214119267_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119212119272_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119203119248_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119200119240_))
                                      (let ((_e119217119275_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119200119240_))))
                                        (let ((_hd119216119278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119217119275_)))
                                              (_tl119215119280_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119217119275_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119215119280_))
                                              ((lambda (_L119283_
                                                        _L119284_
                                                        _L119285_)
                                                 (let* ((_lambda-id119309_
                                                         (let ((__tmp129159
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119178_)))
                       (__tmp129158 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129159 __tmp129158)))
                (_lambda-id119311_
                 (let ((__tmp129160
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118615_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119309_ __tmp129160)))
                (_g129161_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119311_)))
                (_new-case-lambda-expr119314_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119283_
                    _L119285_
                    _lambda-id119311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129163
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119178_)))
                                                         (__tmp129162
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119311_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129163
                                                      '" => "
                                                      __tmp129162))
                                                   (let ((__tmp129166
                                                          (let ((__tmp129167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126730126731_
                            _L119178_
                            _new-case-lambda-expr119314_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129167 _rest118778_)))
                 (__tmp129164
                  (let ((__tmp129165
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126732126733_
                            _lambda-id119311_
                            _L119284_))))
                    (declare (not safe))
                    (cons __tmp129165 _bind118758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118755_
                                                      __tmp129166
                                                      __tmp129164))))
                                               _hd119216119278_
                                               _hd119213119270_
                                               _hd119210119262_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119192119222_
                                                 _g119193119225_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119192119222_ _g119193119225_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119192119222_ _g119193119225_)))
                              (let ()
                                (declare (not safe))
                                (_g119192119222_ _g119193119225_)))))
                      (let ()
                        (declare (not safe))
                        (_g119192119222_ _g119193119225_)))
                  (let ()
                    (declare (not safe))
                    (_g119192119222_ _g119193119225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119192119222_
                                                     _g119193119225_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119192119222_
                                             _g119193119225_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119192119222_ _g119193119225_)))))
                          (let ()
                            (declare (not safe))
                            (_g119192119222_ _g119193119225_)))))
                  (let ()
                    (declare (not safe))
                    (_g119192119222_ _g119193119225_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119191119317_ _L119177_))))
                                         (___kont128663128664_
                                          (lambda (_L118901_ _L118902_)
                                            (let* ((_g118916118969_
                                                    (lambda (_g118917118966_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118917118966_))))
                                                   (_g118915119145_
                                                    (lambda (_g118917118972_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118917118972_))
                                                          (let ((_e118925118974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118917118972_))))
                    (let ((_hd118924118977_
                           (let ()
                             (declare (not safe))
                             (##car _e118925118974_)))
                          (_tl118923118979_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118925118974_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118923118979_))
                          (let ((_e118928118982_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118923118979_))))
                            (let ((_hd118927118985_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118928118982_)))
                                  (_tl118926118987_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118928118982_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118927118985_))
                                  (let ((_e118931118990_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118927118985_))))
                                    (let ((_hd118930118993_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118931118990_)))
                                          (_tl118929118995_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118931118990_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118930118993_))
                                          (let ((_e118934118998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118930118993_))))
                                            (let ((_hd118933119001_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118934118998_)))
                                                  (_tl118932119003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118934118998_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118933119001_))
                                                  (let ((_e118937119006_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118933119001_))))
                                                    (let ((_hd118936119009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118937119006_)))
                                                          (_tl118935119011_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118937119006_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118935119011_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118932119003_))
                      (let ((_e118940119014_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118932119003_))))
                        (let ((_hd118939119017_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118940119014_)))
                              (_tl118938119019_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118940119014_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118939119017_))
                              (let ((_e118943119022_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118939119017_))))
                                (let ((_hd118942119025_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118943119022_)))
                                      (_tl118941119027_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118943119022_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118941119027_))
                                      (let ((_e118946119030_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118941119027_))))
                                        (let ((_hd118945119033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118946119030_)))
                                              (_tl118944119035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118946119030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118945119033_))
                                              (let ((_e118949119038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118945119033_))))
                                                (let ((_hd118948119041_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118949119038_)))
                                                      (_tl118947119043_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118949119038_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118948119041_))
                                                      (let ((_e118952119046_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118948119041_))))
                (let ((_hd118951119049_
                       (let () (declare (not safe)) (##car _e118952119046_)))
                      (_tl118950119051_
                       (let () (declare (not safe)) (##cdr _e118952119046_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118951119049_))
                      (let ((_e118955119054_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118951119049_))))
                        (let ((_hd118954119057_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118955119054_)))
                              (_tl118953119059_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118955119054_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118953119059_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118950119051_))
                                  (let ((_e118958119062_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118950119051_))))
                                    (let ((_hd118957119065_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118958119062_)))
                                          (_tl118956119067_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118958119062_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118956119067_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118947119043_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118944119035_))
                                                  (let ((_e118961119070_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118944119035_))))
                                                    (let ((_hd118960119073_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118961119070_)))
                                                          (_tl118959119075_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118961119070_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118959119075_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118938119019_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118929118995_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118926118987_))
                              (let ((_e118964119078_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118926118987_))))
                                (let ((_hd118963119081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118964119078_)))
                                      (_tl118962119083_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118964119078_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118962119083_))
                                      ((lambda (_L119086_
                                                _L119087_
                                                _L119088_
                                                _L119089_
                                                _L119090_)
                                         (let* ((_get-kws-id119130_
                                                 (let ((__tmp129169
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118902_)))
                                                       (__tmp129168
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129169
                                                    __tmp129168)))
                                                (_get-kws-id119132_
                                                 (let ((__tmp129170
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118615_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119130_
                                                    __tmp129170)))
                                                (_main-id119134_
                                                 (let ((__tmp129172
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118902_)))
                                                       (__tmp129171
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129172
                                                    __tmp129171)))
                                                (_main-id119136_
                                                 (let ((__tmp129173
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118615_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119134_
                                                    __tmp129173)))
                                                (_g129174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119132_)))
                                                (_g129175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119136_)))
                                                (_new-kw-dispatch119140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119086_
                                                    _L119090_
                                                    _get-kws-id119132_)))
                                                (_new-get-kws119142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119087_
                                                    _L119089_
                                                    _main-id119136_))))
                                           (let ((__tmp129178
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118902_)))
                                                 (__tmp129177
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119132_)))
                                                 (__tmp129176
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119136_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129178
                                              '" => "
                                              __tmp129177
                                              '" => "
                                              __tmp129176))
                                           (let ((__tmp129179
                                                  (let ((__tmp129184
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126730126731_
                                                            _main-id119136_
                                                            _L119088_
                                                            '#f)))
                                                        (__tmp129180
                                                         (let ((__tmp129183
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126730126731_
                           _get-kws-id119132_
                           _new-get-kws119142_
                           '#f)))
                       (__tmp129181
                        (let ((__tmp129182
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126730126731_
                                  _L118902_
                                  _new-kw-dispatch119140_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129182 _rest118778_))))
                   (declare (not safe))
                   (cons __tmp129183 __tmp129181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129184
                                                          __tmp129180))))
                                             (declare (not safe))
                                             (_lp118755_
                                              __tmp129179
                                              _bind118758_))))
                                       _hd118963119081_
                                       _hd118960119073_
                                       _hd118957119065_
                                       _hd118954119057_
                                       _hd118936119009_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118916118969_ _g118917118972_)))))
                              (let ()
                                (declare (not safe))
                                (_g118916118969_ _g118917118972_)))
                          (let ()
                            (declare (not safe))
                            (_g118916118969_ _g118917118972_)))
                      (let ()
                        (declare (not safe))
                        (_g118916118969_ _g118917118972_)))
                  (let ()
                    (declare (not safe))
                    (_g118916118969_ _g118917118972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118916118969_
                                                     _g118917118972_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118916118969_
                                                 _g118917118972_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118916118969_
                                             _g118917118972_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118916118969_ _g118917118972_)))
                              (let ()
                                (declare (not safe))
                                (_g118916118969_ _g118917118972_)))))
                      (let ()
                        (declare (not safe))
                        (_g118916118969_ _g118917118972_)))))
              (let ()
                (declare (not safe))
                (_g118916118969_ _g118917118972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118916118969_
                                                 _g118917118972_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118916118969_ _g118917118972_)))))
                              (let ()
                                (declare (not safe))
                                (_g118916118969_ _g118917118972_)))))
                      (let ()
                        (declare (not safe))
                        (_g118916118969_ _g118917118972_)))
                  (let ()
                    (declare (not safe))
                    (_g118916118969_ _g118917118972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118916118969_
                                                     _g118917118972_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118916118969_
                                             _g118917118972_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118916118969_ _g118917118972_)))))
                          (let ()
                            (declare (not safe))
                            (_g118916118969_ _g118917118972_)))))
                  (let ()
                    (declare (not safe))
                    (_g118916118969_ _g118917118972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118915119145_ _L118901_))))
                                         (___kont128665128666_
                                          (lambda (_L118852_ _L118853_)
                                            (let ((__tmp129185
                                                   (let ((__tmp129186
                                                          (let ((__tmp129187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129188
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118852_))))
                           (declare (not safe))
                           (cons __tmp129188 '()))))
                    (declare (not safe))
                    (cons _L118853_ __tmp129187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129186
                                                           _bind118758_))))
                                              (declare (not safe))
                                              (_lp118755_
                                               _rest118778_
                                               __tmp129185)))))
                                     (let* ((___match128732128733_
                                             (lambda (_e118812118877_
                                                      _hd118811118880_
                                                      _tl118810118882_
                                                      _e118815118885_
                                                      _hd118814118888_
                                                      _tl118813118890_
                                                      _e118818118893_
                                                      _hd118817118896_
                                                      _tl118816118898_)
                                               (let ((_L118901_
                                                      _hd118817118896_)
                                                     (_L118902_
                                                      _hd118814118888_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118902_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118901_)))
                                                     (___kont128663128664_
                                                      _L118901_
                                                      _L118902_)
                                                     (___kont128665128666_
                                                      _hd118817118896_
                                                      _hd118811118880_)))))
                                            (___match128710128711_
                                             (lambda (_e118801119153_
                                                      _hd118800119156_
                                                      _tl118799119158_
                                                      _e118804119161_
                                                      _hd118803119164_
                                                      _tl118802119166_
                                                      _e118807119169_
                                                      _hd118806119172_
                                                      _tl118805119174_)
                                               (let ((_L119177_
                                                      _hd118806119172_)
                                                     (_L119178_
                                                      _hd118803119164_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119178_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119177_)))
                                                     (___kont128661128662_
                                                      _L119177_
                                                      _L119178_)
                                                     (___match128732128733_
                                                      _e118801119153_
                                                      _hd118800119156_
                                                      _tl118799119158_
                                                      _e118804119161_
                                                      _hd118803119164_
                                                      _tl118802119166_
                                                      _e118807119169_
                                                      _hd118806119172_
                                                      _tl118805119174_)))))
                                            (___match128688128689_
                                             (lambda (_e118790119325_
                                                      _hd118789119328_
                                                      _tl118788119330_
                                                      _e118793119333_
                                                      _hd118792119336_
                                                      _tl118791119338_
                                                      _e118796119341_
                                                      _hd118795119344_
                                                      _tl118794119346_)
                                               (let ((_L119349_
                                                      _hd118795119344_)
                                                     (_L119350_
                                                      _hd118792119336_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119350_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119349_)))
                                                     (___kont128659128660_
                                                      _L119349_
                                                      _L119350_)
                                                     (___match128710128711_
                                                      _e118790119325_
                                                      _hd118789119328_
                                                      _tl118788119330_
                                                      _e118793119333_
                                                      _hd118792119336_
                                                      _tl118791119338_
                                                      _e118796119341_
                                                      _hd118795119344_
                                                      _tl118794119346_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128657128658_))
                                           (let ((_e118790119325_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128657128658_))))
                                             (let ((_tl118788119330_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118790119325_)))
                                                   (_hd118789119328_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118790119325_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118789119328_))
                                                   (let ((_e118793119333_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118789119328_))))
                                                     (let ((_tl118791119338_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118793119333_)))
                                                           (_hd118792119336_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118793119333_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118791119338_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118788119330_))
                       (let ((_e118796119341_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118788119330_))))
                         (let ((_tl118794119346_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118796119341_)))
                               (_hd118795119344_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118796119341_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118794119346_))
                               (___match128688128689_
                                _e118790119325_
                                _hd118789119328_
                                _tl118788119330_
                                _e118793119333_
                                _hd118792119336_
                                _tl118791119338_
                                _e118796119341_
                                _hd118795119344_
                                _tl118794119346_)
                               (let ()
                                 (declare (not safe))
                                 (_g118784118831_)))))
                       (let () (declare (not safe)) (_g118784118831_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118788119330_))
                       (let ((_e118826118844_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118788119330_))))
                         (let ((_tl118824118849_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118826118844_)))
                               (_hd118825118847_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118826118844_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118824118849_))
                               (___kont128665128666_
                                _hd118825118847_
                                _hd118789119328_)
                               (let ()
                                 (declare (not safe))
                                 (_g118784118831_)))))
                       (let () (declare (not safe)) (_g118784118831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118788119330_))
                                                       (let ((_e118826118844_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118788119330_))))
                 (let ((_tl118824118849_
                        (let () (declare (not safe)) (##cdr _e118826118844_)))
                       (_hd118825118847_
                        (let () (declare (not safe)) (##car _e118826118844_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118824118849_))
                       (___kont128665128666_ _hd118825118847_ _hd118789119328_)
                       (let () (declare (not safe)) (_g118784118831_)))))
               (let () (declare (not safe)) (_g118784118831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118784118831_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118759118767_))
                             (let ((_hd118764119445_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118759118767_)))
                                   (_tl118765119447_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118759118767_))))
                               (let* ((_hd119450_ _hd118764119445_)
                                      (_rest119452_ _tl118765119447_))
                                 (declare (not safe))
                                 (_K118763119442_ _rest119452_ _hd119450_)))
                             (let ()
                               (declare (not safe))
                               (_else118761118775_))))))))
          (let* ((___stx128749128750_ _stx118615_)
                 (_g118621118648_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128749128750_)))))
            (let ((___kont128751128752_
                   (lambda (_L118708_ _L118709_ _L118710_)
                     (let ((__tmp129190
                            (lambda ()
                              (let ((_hd118747_
                                     (let ((__tmp129191
                                            (let ((__tmp129192
                                                   (lambda (_g118739118742_
                                                            _g118740118744_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118739118742_
                                                             _g118740118744_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129192
                                                      '()
                                                      _L118709_))))
                                       (declare (not safe))
                                       (_compile-bindings118618_ __tmp129191)))
                                    (_body118748_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118708_))))
                                (let ((__tmp129193
                                       (let ((__tmp129194
                                              (let ((__tmp129195
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118748_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118747_
                                                      __tmp129195))))
                                         (declare (not safe))
                                         (cons _L118710_ __tmp129194))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129193
                                   _stx118615_)))))
                           (__tmp129189
                            (let ((__obj128814
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128814)
                              __obj128814)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129190
                        gx#current-expander-context
                        __tmp129189))))
                  (___kont128755128756_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118615_)))))
              (let ((___match128776128777_
                     (lambda (_e118628118660_
                              _hd118627118663_
                              _tl118626118665_
                              _e118631118668_
                              _hd118630118671_
                              _tl118629118673_
                              ___splice128753128754_
                              _target118632118676_
                              _tl118634118678_)
                       (letrec ((_loop118635118681_
                                 (lambda (_hd118633118684_ _bind118639118686_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118633118684_))
                                       (let ((_e118636118689_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118633118684_))))
                                         (let ((_lp-tl118638118694_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118636118689_)))
                                               (_lp-hd118637118692_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118636118689_))))
                                           (let ((__tmp129198
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118637118692_
                                                          _bind118639118686_))))
                                             (declare (not safe))
                                             (_loop118635118681_
                                              _lp-tl118638118694_
                                              __tmp129198))))
                                       (let ((_bind118640118697_
                                              (reverse _bind118639118686_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118629118673_))
                                             (let ((_e118643118700_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118629118673_))))
                                               (let ((_tl118641118705_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118643118700_)))
                                                     (_hd118642118703_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118643118700_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118641118705_))
                                                     (let ((_L118708_
                                                            _hd118642118703_)
                                                           (_L118709_
                                                            _bind118640118697_)
                                                           (_L118710_
                                                            _hd118627118663_))
                                                       (if (let ((__tmp129196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129197
                                 (lambda (_g118731118734_ _g118732118736_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118731118734_ _g118732118736_)))))
                            (declare (not safe))
                            (foldr1 __tmp129197 '() _L118709_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129196))
                   (___kont128751128752_ _L118708_ _L118709_ _L118710_)
                   (___kont128755128756_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128755128756_))))
                                             (___kont128755128756_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118635118681_ _target118632118676_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128749128750_))
                    (let ((_e118628118660_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128749128750_))))
                      (let ((_tl118626118665_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118628118660_)))
                            (_hd118627118663_
                             (let ()
                               (declare (not safe))
                               (##car _e118628118660_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118626118665_))
                            (let ((_e118631118668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118626118665_))))
                              (let ((_tl118629118673_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118631118668_)))
                                    (_hd118630118671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118631118668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118630118671_))
                                    (let ((___splice128753128754_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118630118671_
                                              '0))))
                                      (let ((_tl118634118678_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128753128754_
                                                '1)))
                                            (_target118632118676_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128753128754_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118634118678_))
                                            (___match128776128777_
                                             _e118628118660_
                                             _hd118627118663_
                                             _tl118626118665_
                                             _e118631118668_
                                             _hd118630118671_
                                             _tl118629118673_
                                             ___splice128753128754_
                                             _target118632118676_
                                             _tl118634118678_)
                                            (___kont128755128756_))))
                                    (___kont128755128756_))))
                            (___kont128755128756_))))
                    (___kont128755128756_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118533_)
        (let* ((___stx128779128780_ _bind118533_)
               (_g118536118553_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128779128780_)))))
          (let ((___kont128781128782_
                 (lambda (_L118589_ _L118590_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118590_))
                       (let ((_$e118606_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118589_))))
                         (if _$e118606_
                             _$e118606_
                             (let ((_$e118609_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118589_))))
                               (if _$e118609_
                                   _$e118609_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118589_))))))
                       '#f)))
                (___kont128783128784_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128779128780_))
                (let ((_e118542118565_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128779128780_))))
                  (let ((_tl118540118570_
                         (let () (declare (not safe)) (##cdr _e118542118565_)))
                        (_hd118541118568_
                         (let ()
                           (declare (not safe))
                           (##car _e118542118565_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118541118568_))
                        (let ((_e118545118573_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118541118568_))))
                          (let ((_tl118543118578_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118545118573_)))
                                (_hd118544118576_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118545118573_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118543118578_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118540118570_))
                                    (let ((_e118548118581_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118540118570_))))
                                      (let ((_tl118546118586_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118548118581_)))
                                            (_hd118547118584_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118548118581_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118546118586_))
                                            (___kont128781128782_
                                             _hd118547118584_
                                             _hd118544118576_)
                                            (___kont128783128784_))))
                                    (___kont128783128784_))
                                (___kont128783128784_))))
                        (___kont128783128784_))))
                (___kont128783128784_))))))))
