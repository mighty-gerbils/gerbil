(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1709213451)
  (begin
    (define gxc#&collect-top-level-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126730_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128823 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126730_ __tmp128823))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126730_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126730_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126730_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126730_
              '%#define-values
              gxc#collect-top-level-type-define-values%))
           _tbl126730_))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx126713_ . _args126715_)
        (let ((__tmp128825
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126715_)
                     (gxc#compile-e__0 _stx126713_)
                     (let ((_arg1126720_ (car _args126715_))
                           (_rest126722_ (cdr _args126715_)))
                       (if (null? _rest126722_)
                           (gxc#compile-e__1 _stx126713_ _arg1126720_)
                           (let ((_arg2126725_ (car _rest126722_))
                                 (_rest126727_ (cdr _rest126722_)))
                             (if (null? _rest126727_)
                                 (gxc#compile-e__2
                                  _stx126713_
                                  _arg1126720_
                                  _arg2126725_)
                                 (apply gxc#compile-e
                                        _stx126713_
                                        _arg1126720_
                                        _arg2126725_
                                        _rest126727_))))))))
              (__tmp128824 (force gxc#&collect-top-level-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128825
           gxc#current-compile-methods
           __tmp128824))))
    (define gxc#&basic-expression-top-level-type
      (make-promise
       (lambda ()
         (let ((_tbl126710_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128826 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126710_ __tmp128826))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126710_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126710_ '%#call gxc#basic-expression-type-call%))
           _tbl126710_))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx126693_ . _args126695_)
        (let ((__tmp128828
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126695_)
                     (gxc#compile-e__0 _stx126693_)
                     (let ((_arg1126700_ (car _args126695_))
                           (_rest126702_ (cdr _args126695_)))
                       (if (null? _rest126702_)
                           (gxc#compile-e__1 _stx126693_ _arg1126700_)
                           (let ((_arg2126705_ (car _rest126702_))
                                 (_rest126707_ (cdr _rest126702_)))
                             (if (null? _rest126707_)
                                 (gxc#compile-e__2
                                  _stx126693_
                                  _arg1126700_
                                  _arg2126705_)
                                 (apply gxc#compile-e
                                        _stx126693_
                                        _arg1126700_
                                        _arg2126705_
                                        _rest126707_))))))))
              (__tmp128827 (force gxc#&basic-expression-top-level-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128828
           gxc#current-compile-methods
           __tmp128827))))
    (define gxc#&collect-type-info
      (make-promise
       (lambda ()
         (let ((_tbl126690_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128829 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl126690_ __tmp128829))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#begin-syntax gxc#collect-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#module gxc#collect-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126690_
              '%#define-values
              gxc#collect-type-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126690_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126690_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126690_
              '%#let-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126690_
              '%#letrec-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126690_
              '%#letrec*-values
              gxc#collect-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#call gxc#collect-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126690_ '%#set! gxc#collect-body-setq%))
           _tbl126690_))))
    (define gxc#apply-collect-type-info
      (lambda (_stx126673_ . _args126675_)
        (let ((__tmp128831
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126675_)
                     (gxc#compile-e__0 _stx126673_)
                     (let ((_arg1126680_ (car _args126675_))
                           (_rest126682_ (cdr _args126675_)))
                       (if (null? _rest126682_)
                           (gxc#compile-e__1 _stx126673_ _arg1126680_)
                           (let ((_arg2126685_ (car _rest126682_))
                                 (_rest126687_ (cdr _rest126682_)))
                             (if (null? _rest126687_)
                                 (gxc#compile-e__2
                                  _stx126673_
                                  _arg1126680_
                                  _arg2126685_)
                                 (apply gxc#compile-e
                                        _stx126673_
                                        _arg1126680_
                                        _arg2126685_
                                        _rest126687_))))))))
              (__tmp128830 (force gxc#&collect-type-info)))
          (declare (not safe))
          (call-with-parameters
           __tmp128831
           gxc#current-compile-methods
           __tmp128830))))
    (define gxc#&basic-expression-type
      (make-promise
       (lambda ()
         (let ((_tbl126670_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128832 (force gxc#&false)))
             (declare (not safe))
             (hash-merge! _tbl126670_ __tmp128832))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#begin gxc#basic-expression-type-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#begin-annotation
              gxc#basic-expression-type-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#lambda
              gxc#basic-expression-type-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#case-lambda
              gxc#basic-expression-type-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#let-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#letrec-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126670_
              '%#letrec*-values
              gxc#basic-expression-type-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#call gxc#basic-expression-type-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl126670_ '%#ref gxc#basic-expression-type-ref%))
           _tbl126670_))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx126653_ . _args126655_)
        (let ((__tmp128834
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126655_)
                     (gxc#compile-e__0 _stx126653_)
                     (let ((_arg1126660_ (car _args126655_))
                           (_rest126662_ (cdr _args126655_)))
                       (if (null? _rest126662_)
                           (gxc#compile-e__1 _stx126653_ _arg1126660_)
                           (let ((_arg2126665_ (car _rest126662_))
                                 (_rest126667_ (cdr _rest126662_)))
                             (if (null? _rest126667_)
                                 (gxc#compile-e__2
                                  _stx126653_
                                  _arg1126660_
                                  _arg2126665_)
                                 (apply gxc#compile-e
                                        _stx126653_
                                        _arg1126660_
                                        _arg2126665_
                                        _rest126667_))))))))
              (__tmp128833 (force gxc#&basic-expression-type)))
          (declare (not safe))
          (call-with-parameters
           __tmp128834
           gxc#current-compile-methods
           __tmp128833))))
    (define gxc#&lift-top-lambdas
      (make-promise
       (lambda ()
         (let ((_tbl126650_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp128835 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl126650_ __tmp128835))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#define-values
              gxc#lift-top-lambda-define-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#let-values
              gxc#lift-top-lambda-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#letrec-values
              gxc#lift-top-lambda-letrec-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl126650_
              '%#letrec*-values
              gxc#lift-top-lambda-letrec-values%))
           _tbl126650_))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx126633_ . _args126635_)
        (let ((__tmp128837
               (lambda ()
                 (declare (not safe))
                 (if (null? _args126635_)
                     (gxc#compile-e__0 _stx126633_)
                     (let ((_arg1126640_ (car _args126635_))
                           (_rest126642_ (cdr _args126635_)))
                       (if (null? _rest126642_)
                           (gxc#compile-e__1 _stx126633_ _arg1126640_)
                           (let ((_arg2126645_ (car _rest126642_))
                                 (_rest126647_ (cdr _rest126642_)))
                             (if (null? _rest126647_)
                                 (gxc#compile-e__2
                                  _stx126633_
                                  _arg1126640_
                                  _arg2126645_)
                                 (apply gxc#compile-e
                                        _stx126633_
                                        _arg1126640_
                                        _arg2126645_
                                        _rest126647_))))))))
              (__tmp128836 (force gxc#&lift-top-lambdas)))
          (declare (not safe))
          (call-with-parameters
           __tmp128837
           gxc#current-compile-methods
           __tmp128836))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_stx126536_)
        (let* ((___stx126743126744_ _stx126536_)
               (_g126539126559_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126743126744_)))))
          (let ((___kont126745126746_
                 (lambda (_L126603_ _L126604_)
                   (let ((_sym126622_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126604_))))
                     (if (let ((__tmp128838 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128838 _sym126622_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126622_))
                         (let ((_type126623126625_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L126603_))))
                           (if _type126623126625_
                               (let ((_type126628_ _type126623126625_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym126622_
                                  _type126628_))
                               '#f))))))
                (___kont126747126748_ (lambda () '#!void)))
            (let ((___match126776126777_
                   (lambda (_e126545126571_
                            _hd126544126574_
                            _tl126543126576_
                            _e126548126579_
                            _hd126547126582_
                            _tl126546126584_
                            _e126551126587_
                            _hd126550126590_
                            _tl126549126592_
                            _e126554126595_
                            _hd126553126598_
                            _tl126552126600_)
                     (let ((_L126603_ _hd126553126598_)
                           (_L126604_ _hd126550126590_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126604_))
                           (___kont126745126746_ _L126603_ _L126604_)
                           (___kont126747126748_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126743126744_))
                  (let ((_e126545126571_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126743126744_))))
                    (let ((_tl126543126576_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126545126571_)))
                          (_hd126544126574_
                           (let ()
                             (declare (not safe))
                             (##car _e126545126571_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126543126576_))
                          (let ((_e126548126579_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126543126576_))))
                            (let ((_tl126546126584_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126548126579_)))
                                  (_hd126547126582_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126548126579_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126547126582_))
                                  (let ((_e126551126587_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126547126582_))))
                                    (let ((_tl126549126592_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126551126587_)))
                                          (_hd126550126590_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126551126587_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126549126592_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126546126584_))
                                              (let ((_e126554126595_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126546126584_))))
                                                (let ((_tl126552126600_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126554126595_)))
                                                      (_hd126553126598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126554126595_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126552126600_))
                                                      (___match126776126777_
                                                       _e126545126571_
                                                       _hd126544126574_
                                                       _tl126543126576_
                                                       _e126548126579_
                                                       _hd126547126582_
                                                       _tl126546126584_
                                                       _e126551126587_
                                                       _hd126550126590_
                                                       _tl126549126592_
                                                       _e126554126595_
                                                       _hd126553126598_
                                                       _tl126552126600_)
                                                      (___kont126747126748_))))
                                              (___kont126747126748_))
                                          (___kont126747126748_))))
                                  (___kont126747126748_))))
                          (___kont126747126748_))))
                  (___kont126747126748_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_stx126392_)
        (let* ((___stx126779126780_ _stx126392_)
               (_g126395126426_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126779126780_)))))
          (let ((___kont126781126782_
                 (lambda (_L126508_ _L126509_)
                   (let ((_sym126525_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126509_))))
                     (if (let ((__tmp128839 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp128839 _sym126525_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym126525_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym126525_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym126525_))
                             (let ((_type126526126528_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L126508_))))
                               (if _type126526126528_
                                   (let ((_type126531_ _type126526126528_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym126525_
                                      _type126531_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__0 _L126508_)))))
                (___kont126783126784_
                 (lambda (_L126455_ _L126456_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__0 _L126455_)))))
            (let ((___match126812126813_
                   (lambda (_e126401126476_
                            _hd126400126479_
                            _tl126399126481_
                            _e126404126484_
                            _hd126403126487_
                            _tl126402126489_
                            _e126407126492_
                            _hd126406126495_
                            _tl126405126497_
                            _e126410126500_
                            _hd126409126503_
                            _tl126408126505_)
                     (let ((_L126508_ _hd126409126503_)
                           (_L126509_ _hd126406126495_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L126509_))
                           (___kont126781126782_ _L126508_ _L126509_)
                           (___kont126783126784_
                            _hd126409126503_
                            _hd126403126487_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126779126780_))
                  (let ((_e126401126476_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126779126780_))))
                    (let ((_tl126399126481_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126401126476_)))
                          (_hd126400126479_
                           (let ()
                             (declare (not safe))
                             (##car _e126401126476_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126399126481_))
                          (let ((_e126404126484_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126399126481_))))
                            (let ((_tl126402126489_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126404126484_)))
                                  (_hd126403126487_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126404126484_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126403126487_))
                                  (let ((_e126407126492_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126403126487_))))
                                    (let ((_tl126405126497_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126407126492_)))
                                          (_hd126406126495_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126407126492_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126405126497_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126402126489_))
                                              (let ((_e126410126500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126402126489_))))
                                                (let ((_tl126408126505_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126410126500_)))
                                                      (_hd126409126503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126410126500_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126408126505_))
                                                      (___match126812126813_
                                                       _e126401126476_
                                                       _hd126400126479_
                                                       _tl126399126481_
                                                       _e126404126484_
                                                       _hd126403126487_
                                                       _tl126402126489_
                                                       _e126407126492_
                                                       _hd126406126495_
                                                       _tl126405126497_
                                                       _e126410126500_
                                                       _hd126409126503_
                                                       _tl126408126505_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126395126426_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126395126426_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126402126489_))
                                              (let ((_e126421126447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126402126489_))))
                                                (let ((_tl126419126452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126421126447_)))
                                                      (_hd126420126450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126421126447_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126419126452_))
                                                      (___kont126783126784_
                                                       _hd126420126450_
                                                       _hd126403126487_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g126395126426_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g126395126426_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126402126489_))
                                      (let ((_e126421126447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126402126489_))))
                                        (let ((_tl126419126452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126421126447_)))
                                              (_hd126420126450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126421126447_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126419126452_))
                                              (___kont126783126784_
                                               _hd126420126450_
                                               _hd126403126487_)
                                              (let ()
                                                (declare (not safe))
                                                (_g126395126426_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126395126426_))))))
                          (let () (declare (not safe)) (_g126395126426_)))))
                  (let () (declare (not safe)) (_g126395126426_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_stx126177_)
        (letrec ((_collect-e126179_
                  (lambda (_hd126336_ _expr126337_)
                    (let* ((___stx126835126836_ _hd126336_)
                           (_g126340126350_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx126835126836_)))))
                      (let ((___kont126837126838_
                             (lambda (_L126370_)
                               (let ((_sym126381_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L126370_))))
                                 (if (let ((__tmp128840
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp128840 _sym126381_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym126381_))
                                     (let ((_type126382126384_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr126337_))))
                                       (if _type126382126384_
                                           (let ((_type126387_
                                                  _type126382126384_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym126381_
                                              _type126387_
                                              '#t))
                                           '#f))))))
                            (___kont126839126840_ (lambda () '#!void)))
                        (let ((___match126848126849_
                               (lambda (_e126345126362_
                                        _hd126344126365_
                                        _tl126343126367_)
                                 (let ((_L126370_ _hd126344126365_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L126370_))
                                       (___kont126837126838_ _L126370_)
                                       (___kont126839126840_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx126835126836_))
                              (let ((_e126345126362_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx126835126836_))))
                                (let ((_tl126343126367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126345126362_)))
                                      (_hd126344126365_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126345126362_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126343126367_))
                                      (___match126848126849_
                                       _e126345126362_
                                       _hd126344126365_
                                       _tl126343126367_)
                                      (___kont126839126840_))))
                              (___kont126839126840_))))))))
          (let* ((_g126181126216_
                  (lambda (_g126182126213_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g126182126213_))))
                 (_g126180126333_
                  (lambda (_g126182126219_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g126182126219_))
                        (let ((_e126188126221_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g126182126219_))))
                          (let ((_hd126187126224_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e126188126221_)))
                                (_tl126186126226_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e126188126221_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126186126226_))
                                (let ((_e126191126229_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126186126226_))))
                                  (let ((_hd126190126232_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126191126229_)))
                                        (_tl126189126234_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126191126229_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd126190126232_))
                                        (let ((_g128841_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd126190126232_
                                                  '0))))
                                          (begin
                                            (let ((_g128842_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g128841_)
                                                         (##vector-length
                                                          _g128841_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g128842_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g128842_)))
                                            (let ((_target126192126237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128841_
                                                      0)))
                                                  (_tl126194126239_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g128841_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126194126239_))
                                                  (letrec ((_loop126195126242_
                                                            (lambda (_hd126193126245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr126199126247_
                             _hd126200126249_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126193126245_))
                          (let ((_e126196126252_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126193126245_))))
                            (let ((_lp-hd126197126255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126196126252_)))
                                  (_lp-tl126198126257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126196126252_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd126197126255_))
                                  (let ((_e126205126260_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd126197126255_))))
                                    (let ((_hd126204126263_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126205126260_)))
                                          (_tl126203126265_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126205126260_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126203126265_))
                                          (let ((_e126208126268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126203126265_))))
                                            (let ((_hd126207126271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126208126268_)))
                                                  (_tl126206126273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126208126268_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126206126273_))
                                                  (let ((__tmp128847
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd126207126271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr126199126247_)))
                (__tmp128846
                 (let ()
                   (declare (not safe))
                   (cons _hd126204126263_ _hd126200126249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop126195126242_
                                                     _lp-tl126198126257_
                                                     __tmp128847
                                                     __tmp128846))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126181126216_
                                                     _g126182126219_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g126181126216_
                                             _g126182126219_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g126181126216_ _g126182126219_)))))
                          (let ((_expr126201126276_
                                 (reverse _expr126199126247_))
                                (_hd126202126278_ (reverse _hd126200126249_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl126189126234_))
                                (let ((_e126211126281_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl126189126234_))))
                                  (let ((_hd126210126284_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e126211126281_)))
                                        (_tl126209126286_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e126211126281_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl126209126286_))
                                        ((lambda (_L126289_
                                                  _L126290_
                                                  _L126291_)
                                           (for-each
                                            _collect-e126179_
                                            (let ((__tmp128843
                                                   (lambda (_g126311126314_
                                                            _g126312126316_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126311126314_
                                                             _g126312126316_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128843
                                                      '()
                                                      _L126291_))
                                            (let ((__tmp128844
                                                   (lambda (_g126318126321_
                                                            _g126319126323_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126318126321_
                                                             _g126319126323_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128844
                                                      '()
                                                      _L126290_)))
                                           (for-each
                                            gxc#compile-e
                                            (let ((__tmp128845
                                                   (lambda (_g126325126328_
                                                            _g126326126330_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g126325126328_
                                                             _g126326126330_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp128845
                                                      '()
                                                      _L126290_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _L126289_)))
                                         _hd126210126284_
                                         _expr126201126276_
                                         _hd126202126278_)
                                        (let ()
                                          (declare (not safe))
                                          (_g126181126216_ _g126182126219_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126181126216_ _g126182126219_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop126195126242_
                                                       _target126192126237_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g126181126216_
                                                     _g126182126219_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g126181126216_ _g126182126219_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g126181126216_ _g126182126219_)))))
                        (let ()
                          (declare (not safe))
                          (_g126181126216_ _g126182126219_))))))
            (declare (not safe))
            (_g126180126333_ _stx126177_)))))
    (define gxc#collect-type-call%
      (lambda (_stx125669_)
        (let* ((___stx126851126852_ _stx125669_)
               (_g125673125788_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx126851126852_)))))
          (let ((___kont126853126854_
                 (lambda (_L126127_ _L126128_ _L126129_ _L126130_ _L126131_)
                   (let ((__tmp128851
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126130_)))
                         (__tmp128850
                          (let () (declare (not safe)) (gx#stx-e _L126129_)))
                         (__tmp128849
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126128_)))
                         (__tmp128848
                          (let () (declare (not safe)) (gx#stx-e _L126127_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128851
                      __tmp128850
                      __tmp128849
                      __tmp128848))))
                (___kont126855126856_
                 (lambda (_L125955_ _L125956_ _L125957_ _L125958_)
                   (let ((__tmp128854
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125957_)))
                         (__tmp128853
                          (let () (declare (not safe)) (gx#stx-e _L125956_)))
                         (__tmp128852
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L125955_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp128854
                      __tmp128853
                      __tmp128852
                      '#f))))
                (___kont126857126858_
                 (lambda (_L125825_)
                   (for-each
                    gxc#compile-e
                    (let ((__tmp128855
                           (lambda (_g125838125841_ _g125839125843_)
                             (let ()
                               (declare (not safe))
                               (cons _g125838125841_ _g125839125843_)))))
                      (declare (not safe))
                      (foldr1 __tmp128855 '() _L125825_))))))
            (let* ((___match127108127109_
                    (lambda (_e125774125793_
                             _hd125773125796_
                             _tl125772125798_
                             ___splice126859126860_
                             _target125775125801_
                             _tl125777125803_)
                      (letrec ((_loop125778125806_
                                (lambda (_hd125776125809_ _expr125782125811_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125776125809_))
                                      (let ((_e125779125814_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125776125809_))))
                                        (let ((_lp-tl125781125819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125779125814_)))
                                              (_lp-hd125780125817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125779125814_))))
                                          (let ((__tmp128856
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd125780125817_
                                                         _expr125782125811_))))
                                            (declare (not safe))
                                            (_loop125778125806_
                                             _lp-tl125781125819_
                                             __tmp128856))))
                                      (let ((_expr125783125822_
                                             (reverse _expr125782125811_)))
                                        (___kont126857126858_
                                         _expr125783125822_))))))
                        (let ()
                          (declare (not safe))
                          (_loop125778125806_ _target125775125801_ '())))))
                   (___match126988126989_
                    (lambda (_e125682125999_
                             _hd125681126002_
                             _tl125680126004_
                             _e125685126007_
                             _hd125684126010_
                             _tl125683126012_
                             _e125688126015_
                             _hd125687126018_
                             _tl125686126020_
                             _e125691126023_
                             _hd125690126026_
                             _tl125689126028_
                             _e125694126031_
                             _hd125693126034_
                             _tl125692126036_
                             _e125697126039_
                             _hd125696126042_
                             _tl125695126044_
                             _e125700126047_
                             _hd125699126050_
                             _tl125698126052_
                             _e125703126055_
                             _hd125702126058_
                             _tl125701126060_
                             _e125706126063_
                             _hd125705126066_
                             _tl125704126068_
                             _e125709126071_
                             _hd125708126074_
                             _tl125707126076_
                             _e125712126079_
                             _hd125711126082_
                             _tl125710126084_
                             _e125715126087_
                             _hd125714126090_
                             _tl125713126092_
                             _e125718126095_
                             _hd125717126098_
                             _tl125716126100_
                             _e125721126103_
                             _hd125720126106_
                             _tl125719126108_
                             _e125724126111_
                             _hd125723126114_
                             _tl125722126116_
                             _e125727126119_
                             _hd125726126122_
                             _tl125725126124_)
                      (let ((_L126127_ _hd125726126122_)
                            (_L126128_ _hd125717126098_)
                            (_L126129_ _hd125708126074_)
                            (_L126130_ _hd125699126050_)
                            (_L126131_ _hd125690126026_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L126131_
                               'bind-method!))
                            (___kont126853126854_
                             _L126127_
                             _L126128_
                             _L126129_
                             _L126130_
                             _L126131_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl125680126004_))
                                (let ((___splice126859126860_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl125680126004_
                                          '0))))
                                  (let ((_tl125777125803_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126859126860_
                                            '1)))
                                        (_target125775125801_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice126859126860_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125777125803_))
                                        (___match127108127109_
                                         _e125682125999_
                                         _hd125681126002_
                                         _tl125680126004_
                                         ___splice126859126860_
                                         _target125775125801_
                                         _tl125777125803_)
                                        (let ()
                                          (declare (not safe))
                                          (_g125673125788_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g125673125788_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx126851126852_))
                  (let ((_e125682125999_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx126851126852_))))
                    (let ((_tl125680126004_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125682125999_)))
                          (_hd125681126002_
                           (let ()
                             (declare (not safe))
                             (##car _e125682125999_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125680126004_))
                          (let ((_e125685126007_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125680126004_))))
                            (let ((_tl125683126012_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125685126007_)))
                                  (_hd125684126010_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125685126007_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125684126010_))
                                  (let ((_e125688126015_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125684126010_))))
                                    (let ((_tl125686126020_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125688126015_)))
                                          (_hd125687126018_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125688126015_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125687126018_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125687126018_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125686126020_))
                                                  (let ((_e125691126023_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125686126020_))))
                                                    (let ((_tl125689126028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125691126023_)))
                                                          (_hd125690126026_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125691126023_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125689126028_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl125683126012_))
                      (let ((_e125694126031_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125683126012_))))
                        (let ((_tl125692126036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125694126031_)))
                              (_hd125693126034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125694126031_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd125693126034_))
                              (let ((_e125697126039_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd125693126034_))))
                                (let ((_tl125695126044_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125697126039_)))
                                      (_hd125696126042_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125697126039_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd125696126042_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd125696126042_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125695126044_))
                                              (let ((_e125700126047_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125695126044_))))
                                                (let ((_tl125698126052_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125700126047_)))
                                                      (_hd125699126050_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125700126047_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125698126052_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125692126036_))
                                                          (let ((_e125703126055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125692126036_))))
                    (let ((_tl125701126060_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125703126055_)))
                          (_hd125702126058_
                           (let ()
                             (declare (not safe))
                             (##car _e125703126055_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125702126058_))
                          (let ((_e125706126063_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125702126058_))))
                            (let ((_tl125704126068_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125706126063_)))
                                  (_hd125705126066_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125706126063_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125705126066_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd125705126066_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125704126068_))
                                          (let ((_e125709126071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125704126068_))))
                                            (let ((_tl125707126076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125709126071_)))
                                                  (_hd125708126074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125709126071_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125707126076_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125701126060_))
                                                      (let ((_e125712126079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125701126060_))))
                (let ((_tl125710126084_
                       (let () (declare (not safe)) (##cdr _e125712126079_)))
                      (_hd125711126082_
                       (let () (declare (not safe)) (##car _e125712126079_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125711126082_))
                      (let ((_e125715126087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125711126082_))))
                        (let ((_tl125713126092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125715126087_)))
                              (_hd125714126090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125715126087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125714126090_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125714126090_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125713126092_))
                                      (let ((_e125718126095_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125713126092_))))
                                        (let ((_tl125716126100_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125718126095_)))
                                              (_hd125717126098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125718126095_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125716126100_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125710126084_))
                                                  (let ((_e125721126103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125710126084_))))
                                                    (let ((_tl125719126108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125721126103_)))
                                                          (_hd125720126106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125721126103_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125720126106_))
                                                          (let ((_e125724126111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125720126106_))))
                    (let ((_tl125722126116_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125724126111_)))
                          (_hd125723126114_
                           (let ()
                             (declare (not safe))
                             (##car _e125724126111_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125723126114_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd125723126114_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125722126116_))
                                  (let ((_e125727126119_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125722126116_))))
                                    (let ((_tl125725126124_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125727126119_)))
                                          (_hd125726126122_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125727126119_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125725126124_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125719126108_))
                                              (___match126988126989_
                                               _e125682125999_
                                               _hd125681126002_
                                               _tl125680126004_
                                               _e125685126007_
                                               _hd125684126010_
                                               _tl125683126012_
                                               _e125688126015_
                                               _hd125687126018_
                                               _tl125686126020_
                                               _e125691126023_
                                               _hd125690126026_
                                               _tl125689126028_
                                               _e125694126031_
                                               _hd125693126034_
                                               _tl125692126036_
                                               _e125697126039_
                                               _hd125696126042_
                                               _tl125695126044_
                                               _e125700126047_
                                               _hd125699126050_
                                               _tl125698126052_
                                               _e125703126055_
                                               _hd125702126058_
                                               _tl125701126060_
                                               _e125706126063_
                                               _hd125705126066_
                                               _tl125704126068_
                                               _e125709126071_
                                               _hd125708126074_
                                               _tl125707126076_
                                               _e125712126079_
                                               _hd125711126082_
                                               _tl125710126084_
                                               _e125715126087_
                                               _hd125714126090_
                                               _tl125713126092_
                                               _e125718126095_
                                               _hd125717126098_
                                               _tl125716126100_
                                               _e125721126103_
                                               _hd125720126106_
                                               _tl125719126108_
                                               _e125724126111_
                                               _hd125723126114_
                                               _tl125722126116_
                                               _e125727126119_
                                               _hd125726126122_
                                               _tl125725126124_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125680126004_))
                                                  (let ((___splice126859126860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125680126004_
                                                            '0))))
                                                    (let ((_tl125777125803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '1)))
                                                          (_target125775125801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125777125803_))
                                                          (___match127108127109_
                                                           _e125682125999_
                                                           _hd125681126002_
                                                           _tl125680126004_
                                                           ___splice126859126860_
                                                           _target125775125801_
                                                           _tl125777125803_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125673125788_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125673125788_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125680126004_))
                                              (let ((___splice126859126860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125680126004_
                                                        '0))))
                                                (let ((_tl125777125803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '1)))
                                                      (_target125775125801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125777125803_))
                                                      (___match127108127109_
                                                       _e125682125999_
                                                       _hd125681126002_
                                                       _tl125680126004_
                                                       ___splice126859126860_
                                                       _target125775125801_
                                                       _tl125777125803_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125673125788_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125680126004_))
                                      (let ((___splice126859126860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125680126004_
                                                '0))))
                                        (let ((_tl125777125803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '1)))
                                              (_target125775125801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125777125803_))
                                              (___match127108127109_
                                               _e125682125999_
                                               _hd125681126002_
                                               _tl125680126004_
                                               ___splice126859126860_
                                               _target125775125801_
                                               _tl125777125803_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125673125788_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125680126004_))
                                  (let ((___splice126859126860_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125680126004_
                                            '0))))
                                    (let ((_tl125777125803_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126859126860_
                                              '1)))
                                          (_target125775125801_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126859126860_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125777125803_))
                                          (___match127108127109_
                                           _e125682125999_
                                           _hd125681126002_
                                           _tl125680126004_
                                           ___splice126859126860_
                                           _target125775125801_
                                           _tl125777125803_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125673125788_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125673125788_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125680126004_))
                              (let ((___splice126859126860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125680126004_
                                        '0))))
                                (let ((_tl125777125803_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126859126860_
                                          '1)))
                                      (_target125775125801_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126859126860_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125777125803_))
                                      (___match127108127109_
                                       _e125682125999_
                                       _hd125681126002_
                                       _tl125680126004_
                                       ___splice126859126860_
                                       _target125775125801_
                                       _tl125777125803_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125673125788_)))))
                              (let ()
                                (declare (not safe))
                                (_g125673125788_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125680126004_))
                      (let ((___splice126859126860_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125680126004_ '0))))
                        (let ((_tl125777125803_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '1)))
                              (_target125775125801_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125777125803_))
                              (___match127108127109_
                               _e125682125999_
                               _hd125681126002_
                               _tl125680126004_
                               ___splice126859126860_
                               _target125775125801_
                               _tl125777125803_)
                              (let ()
                                (declare (not safe))
                                (_g125673125788_)))))
                      (let () (declare (not safe)) (_g125673125788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125710126084_))
                                                      (if (let ((__tmp128857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp128857 'bind-method!))
                  (let ((_L125955_ _hd125717126098_)
                        (_L125956_ _hd125708126074_)
                        (_L125957_ _hd125699126050_)
                        (_L125958_ _hd125690126026_))
                    (___kont126855126856_
                     _L125955_
                     _L125956_
                     _L125957_
                     _L125958_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125680126004_))
                      (let ((___splice126859126860_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125680126004_ '0))))
                        (let ((_tl125777125803_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '1)))
                              (_target125775125801_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125777125803_))
                              (___match127108127109_
                               _e125682125999_
                               _hd125681126002_
                               _tl125680126004_
                               ___splice126859126860_
                               _target125775125801_
                               _tl125777125803_)
                              (let ()
                                (declare (not safe))
                                (_g125673125788_)))))
                      (let () (declare (not safe)) (_g125673125788_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125680126004_))
                  (let ((___splice126859126860_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125680126004_ '0))))
                    (let ((_tl125777125803_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126859126860_ '1)))
                          (_target125775125801_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126859126860_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125777125803_))
                          (___match127108127109_
                           _e125682125999_
                           _hd125681126002_
                           _tl125680126004_
                           ___splice126859126860_
                           _target125775125801_
                           _tl125777125803_)
                          (let () (declare (not safe)) (_g125673125788_)))))
                  (let () (declare (not safe)) (_g125673125788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125680126004_))
                                                  (let ((___splice126859126860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125680126004_
                                                            '0))))
                                                    (let ((_tl125777125803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '1)))
                                                          (_target125775125801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125777125803_))
                                                          (___match127108127109_
                                                           _e125682125999_
                                                           _hd125681126002_
                                                           _tl125680126004_
                                                           ___splice126859126860_
                                                           _target125775125801_
                                                           _tl125777125803_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125673125788_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125673125788_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125680126004_))
                                          (let ((___splice126859126860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125680126004_
                                                    '0))))
                                            (let ((_tl125777125803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126859126860_
                                                      '1)))
                                                  (_target125775125801_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126859126860_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125777125803_))
                                                  (___match127108127109_
                                                   _e125682125999_
                                                   _hd125681126002_
                                                   _tl125680126004_
                                                   ___splice126859126860_
                                                   _target125775125801_
                                                   _tl125777125803_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125673125788_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125673125788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125680126004_))
                                      (let ((___splice126859126860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125680126004_
                                                '0))))
                                        (let ((_tl125777125803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '1)))
                                              (_target125775125801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125777125803_))
                                              (___match127108127109_
                                               _e125682125999_
                                               _hd125681126002_
                                               _tl125680126004_
                                               ___splice126859126860_
                                               _target125775125801_
                                               _tl125777125803_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125673125788_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125680126004_))
                                  (let ((___splice126859126860_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125680126004_
                                            '0))))
                                    (let ((_tl125777125803_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126859126860_
                                              '1)))
                                          (_target125775125801_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126859126860_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125777125803_))
                                          (___match127108127109_
                                           _e125682125999_
                                           _hd125681126002_
                                           _tl125680126004_
                                           ___splice126859126860_
                                           _target125775125801_
                                           _tl125777125803_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125673125788_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125673125788_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125680126004_))
                          (let ((___splice126859126860_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125680126004_
                                    '0))))
                            (let ((_tl125777125803_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126859126860_ '1)))
                                  (_target125775125801_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126859126860_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125777125803_))
                                  (___match127108127109_
                                   _e125682125999_
                                   _hd125681126002_
                                   _tl125680126004_
                                   ___splice126859126860_
                                   _target125775125801_
                                   _tl125777125803_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125673125788_)))))
                          (let () (declare (not safe)) (_g125673125788_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125680126004_))
                  (let ((___splice126859126860_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125680126004_ '0))))
                    (let ((_tl125777125803_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126859126860_ '1)))
                          (_target125775125801_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126859126860_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125777125803_))
                          (___match127108127109_
                           _e125682125999_
                           _hd125681126002_
                           _tl125680126004_
                           ___splice126859126860_
                           _target125775125801_
                           _tl125777125803_)
                          (let () (declare (not safe)) (_g125673125788_)))))
                  (let () (declare (not safe)) (_g125673125788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125680126004_))
                                                      (let ((___splice126859126860_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125680126004_ '0))))
                (let ((_tl125777125803_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126859126860_ '1)))
                      (_target125775125801_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126859126860_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125777125803_))
                      (___match127108127109_
                       _e125682125999_
                       _hd125681126002_
                       _tl125680126004_
                       ___splice126859126860_
                       _target125775125801_
                       _tl125777125803_)
                      (let () (declare (not safe)) (_g125673125788_)))))
              (let () (declare (not safe)) (_g125673125788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125680126004_))
                                              (let ((___splice126859126860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125680126004_
                                                        '0))))
                                                (let ((_tl125777125803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '1)))
                                                      (_target125775125801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125777125803_))
                                                      (___match127108127109_
                                                       _e125682125999_
                                                       _hd125681126002_
                                                       _tl125680126004_
                                                       ___splice126859126860_
                                                       _target125775125801_
                                                       _tl125777125803_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125673125788_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125680126004_))
                                          (let ((___splice126859126860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125680126004_
                                                    '0))))
                                            (let ((_tl125777125803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126859126860_
                                                      '1)))
                                                  (_target125775125801_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126859126860_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125777125803_))
                                                  (___match127108127109_
                                                   _e125682125999_
                                                   _hd125681126002_
                                                   _tl125680126004_
                                                   ___splice126859126860_
                                                   _target125775125801_
                                                   _tl125777125803_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125673125788_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125673125788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125680126004_))
                                      (let ((___splice126859126860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125680126004_
                                                '0))))
                                        (let ((_tl125777125803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '1)))
                                              (_target125775125801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125777125803_))
                                              (___match127108127109_
                                               _e125682125999_
                                               _hd125681126002_
                                               _tl125680126004_
                                               ___splice126859126860_
                                               _target125775125801_
                                               _tl125777125803_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125673125788_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125680126004_))
                              (let ((___splice126859126860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125680126004_
                                        '0))))
                                (let ((_tl125777125803_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126859126860_
                                          '1)))
                                      (_target125775125801_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126859126860_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125777125803_))
                                      (___match127108127109_
                                       _e125682125999_
                                       _hd125681126002_
                                       _tl125680126004_
                                       ___splice126859126860_
                                       _target125775125801_
                                       _tl125777125803_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125673125788_)))))
                              (let ()
                                (declare (not safe))
                                (_g125673125788_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125680126004_))
                      (let ((___splice126859126860_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125680126004_ '0))))
                        (let ((_tl125777125803_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '1)))
                              (_target125775125801_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125777125803_))
                              (___match127108127109_
                               _e125682125999_
                               _hd125681126002_
                               _tl125680126004_
                               ___splice126859126860_
                               _target125775125801_
                               _tl125777125803_)
                              (let ()
                                (declare (not safe))
                                (_g125673125788_)))))
                      (let () (declare (not safe)) (_g125673125788_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl125680126004_))
                  (let ((___splice126859126860_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl125680126004_ '0))))
                    (let ((_tl125777125803_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126859126860_ '1)))
                          (_target125775125801_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice126859126860_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125777125803_))
                          (___match127108127109_
                           _e125682125999_
                           _hd125681126002_
                           _tl125680126004_
                           ___splice126859126860_
                           _target125775125801_
                           _tl125777125803_)
                          (let () (declare (not safe)) (_g125673125788_)))))
                  (let () (declare (not safe)) (_g125673125788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125680126004_))
                                                  (let ((___splice126859126860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125680126004_
                                                            '0))))
                                                    (let ((_tl125777125803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '1)))
                                                          (_target125775125801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125777125803_))
                                                          (___match127108127109_
                                                           _e125682125999_
                                                           _hd125681126002_
                                                           _tl125680126004_
                                                           ___splice126859126860_
                                                           _target125775125801_
                                                           _tl125777125803_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125673125788_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125673125788_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125680126004_))
                                              (let ((___splice126859126860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125680126004_
                                                        '0))))
                                                (let ((_tl125777125803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '1)))
                                                      (_target125775125801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125777125803_))
                                                      (___match127108127109_
                                                       _e125682125999_
                                                       _hd125681126002_
                                                       _tl125680126004_
                                                       ___splice126859126860_
                                                       _target125775125801_
                                                       _tl125777125803_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125673125788_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl125680126004_))
                                          (let ((___splice126859126860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl125680126004_
                                                    '0))))
                                            (let ((_tl125777125803_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126859126860_
                                                      '1)))
                                                  (_target125775125801_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice126859126860_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125777125803_))
                                                  (___match127108127109_
                                                   _e125682125999_
                                                   _hd125681126002_
                                                   _tl125680126004_
                                                   ___splice126859126860_
                                                   _target125775125801_
                                                   _tl125777125803_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125673125788_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g125673125788_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl125680126004_))
                                  (let ((___splice126859126860_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl125680126004_
                                            '0))))
                                    (let ((_tl125777125803_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126859126860_
                                              '1)))
                                          (_target125775125801_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice126859126860_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125777125803_))
                                          (___match127108127109_
                                           _e125682125999_
                                           _hd125681126002_
                                           _tl125680126004_
                                           ___splice126859126860_
                                           _target125775125801_
                                           _tl125777125803_)
                                          (let ()
                                            (declare (not safe))
                                            (_g125673125788_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g125673125788_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl125680126004_))
                          (let ((___splice126859126860_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl125680126004_
                                    '0))))
                            (let ((_tl125777125803_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice126859126860_ '1)))
                                  (_target125775125801_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice126859126860_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl125777125803_))
                                  (___match127108127109_
                                   _e125682125999_
                                   _hd125681126002_
                                   _tl125680126004_
                                   ___splice126859126860_
                                   _target125775125801_
                                   _tl125777125803_)
                                  (let ()
                                    (declare (not safe))
                                    (_g125673125788_)))))
                          (let () (declare (not safe)) (_g125673125788_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl125680126004_))
                      (let ((___splice126859126860_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl125680126004_ '0))))
                        (let ((_tl125777125803_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '1)))
                              (_target125775125801_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice126859126860_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl125777125803_))
                              (___match127108127109_
                               _e125682125999_
                               _hd125681126002_
                               _tl125680126004_
                               ___splice126859126860_
                               _target125775125801_
                               _tl125777125803_)
                              (let ()
                                (declare (not safe))
                                (_g125673125788_)))))
                      (let () (declare (not safe)) (_g125673125788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl125680126004_))
                                                      (let ((___splice126859126860_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl125680126004_ '0))))
                (let ((_tl125777125803_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126859126860_ '1)))
                      (_target125775125801_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice126859126860_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl125777125803_))
                      (___match127108127109_
                       _e125682125999_
                       _hd125681126002_
                       _tl125680126004_
                       ___splice126859126860_
                       _target125775125801_
                       _tl125777125803_)
                      (let () (declare (not safe)) (_g125673125788_)))))
              (let () (declare (not safe)) (_g125673125788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl125680126004_))
                                                  (let ((___splice126859126860_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl125680126004_
                                                            '0))))
                                                    (let ((_tl125777125803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '1)))
                                                          (_target125775125801_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice126859126860_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125777125803_))
                                                          (___match127108127109_
                                                           _e125682125999_
                                                           _hd125681126002_
                                                           _tl125680126004_
                                                           ___splice126859126860_
                                                           _target125775125801_
                                                           _tl125777125803_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g125673125788_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g125673125788_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl125680126004_))
                                              (let ((___splice126859126860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl125680126004_
                                                        '0))))
                                                (let ((_tl125777125803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '1)))
                                                      (_target125775125801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice126859126860_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125777125803_))
                                                      (___match127108127109_
                                                       _e125682125999_
                                                       _hd125681126002_
                                                       _tl125680126004_
                                                       ___splice126859126860_
                                                       _target125775125801_
                                                       _tl125777125803_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g125673125788_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl125680126004_))
                                      (let ((___splice126859126860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl125680126004_
                                                '0))))
                                        (let ((_tl125777125803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '1)))
                                              (_target125775125801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice126859126860_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125777125803_))
                                              (___match127108127109_
                                               _e125682125999_
                                               _hd125681126002_
                                               _tl125680126004_
                                               ___splice126859126860_
                                               _target125775125801_
                                               _tl125777125803_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125673125788_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125673125788_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl125680126004_))
                              (let ((___splice126859126860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl125680126004_
                                        '0))))
                                (let ((_tl125777125803_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126859126860_
                                          '1)))
                                      (_target125775125801_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice126859126860_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125777125803_))
                                      (___match127108127109_
                                       _e125682125999_
                                       _hd125681126002_
                                       _tl125680126004_
                                       ___splice126859126860_
                                       _target125775125801_
                                       _tl125777125803_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125673125788_)))))
                              (let ()
                                (declare (not safe))
                                (_g125673125788_))))))
                  (let () (declare (not safe)) (_g125673125788_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_stx125609_)
        (let* ((___stx127111127112_ _stx125609_)
               (_g125612125625_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127111127112_)))))
          (let ((___kont127113127114_
                 (lambda (_L125653_)
                   (let () (declare (not safe)) (gxc#compile-e__0 _L125653_))))
                (___kont127115127116_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127111127112_))
                (let ((_e125617125637_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127111127112_))))
                  (let ((_tl125615125642_
                         (let () (declare (not safe)) (##cdr _e125617125637_)))
                        (_hd125616125640_
                         (let ()
                           (declare (not safe))
                           (##car _e125617125637_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125615125642_))
                        (let ((_e125620125645_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125615125642_))))
                          (let ((_tl125618125650_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125620125645_)))
                                (_hd125619125648_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125620125645_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl125618125650_))
                                (___kont127113127114_ _hd125619125648_)
                                (___kont127115127116_))))
                        (___kont127115127116_))))
                (___kont127115127116_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_stx125489_)
        (let* ((_g125491125508_
                (lambda (_g125492125505_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125492125505_))))
               (_g125490125606_
                (lambda (_g125492125511_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125492125511_))
                      (let ((_e125497125513_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125492125511_))))
                        (let ((_hd125496125516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125497125513_)))
                              (_tl125495125518_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125497125513_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125495125518_))
                              (let ((_e125500125521_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125495125518_))))
                                (let ((_hd125499125524_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125500125521_)))
                                      (_tl125498125526_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125500125521_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125498125526_))
                                      (let ((_e125503125529_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125498125526_))))
                                        (let ((_hd125502125532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125503125529_)))
                                              (_tl125501125534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125503125529_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125501125534_))
                                              ((lambda (_L125537_ _L125538_)
                                                 (let* ((___stx127133127134_
                                                         _L125538_)
                                                        (_g125554125565_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx127133127134_)))))
                                                   (let ((___kont127135127136_
                                                          (lambda (_L125585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L125586_)
                    (let ((_$e125598_
                           (let ((__tmp128858
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L125586_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp128858))))
                      (if _$e125598_
                          ((lambda (_type-e125601_)
                             (_type-e125601_ _stx125489_ _L125538_))
                           _$e125598_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _L125537_))))))
                 (___kont127137127138_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__0 _L125537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match127144127145_
                                                            (lambda (_e125560125577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd125559125580_
                             _tl125558125582_)
                      (let ((_L125585_ _tl125558125582_)
                            (_L125586_ _hd125559125580_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L125586_))
                            (___kont127135127136_ _L125585_ _L125586_)
                            (___kont127137127138_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx127133127134_))
                   (let ((_e125560125577_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx127133127134_))))
                     (let ((_tl125558125582_
                            (let ()
                              (declare (not safe))
                              (##cdr _e125560125577_)))
                           (_hd125559125580_
                            (let ()
                              (declare (not safe))
                              (##car _e125560125577_))))
                       (___match127144127145_
                        _e125560125577_
                        _hd125559125580_
                        _tl125558125582_)))
                   (___kont127137127138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd125502125532_
                                               _hd125499125524_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125491125508_
                                                 _g125492125511_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125491125508_ _g125492125511_)))))
                              (let ()
                                (declare (not safe))
                                (_g125491125508_ _g125492125511_)))))
                      (let ()
                        (declare (not safe))
                        (_g125491125508_ _g125492125511_))))))
          (declare (not safe))
          (_g125490125606_ _stx125489_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx125333_ _ann125334_)
        (let* ((_g125336125373_
                (lambda (_g125337125370_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125337125370_))))
               (_g125335125486_
                (lambda (_g125337125376_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125337125376_))
                      (let ((_e125347125378_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125337125376_))))
                        (let ((_hd125346125381_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125347125378_)))
                              (_tl125345125383_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125347125378_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125345125383_))
                              (let ((_e125350125386_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125345125383_))))
                                (let ((_hd125349125389_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125350125386_)))
                                      (_tl125348125391_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125350125386_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125348125391_))
                                      (let ((_e125353125394_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125348125391_))))
                                        (let ((_hd125352125397_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125353125394_)))
                                              (_tl125351125399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125353125394_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125351125399_))
                                              (let ((_e125356125402_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125351125399_))))
                                                (let ((_hd125355125405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125356125402_)))
                                                      (_tl125354125407_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125356125402_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125354125407_))
                                                      (let ((_e125359125410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125354125407_))))
                (let ((_hd125358125413_
                       (let () (declare (not safe)) (##car _e125359125410_)))
                      (_tl125357125415_
                       (let () (declare (not safe)) (##cdr _e125359125410_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl125357125415_))
                      (let ((_e125362125418_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl125357125415_))))
                        (let ((_hd125361125421_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125362125418_)))
                              (_tl125360125423_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125362125418_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125360125423_))
                              (let ((_e125365125426_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125360125423_))))
                                (let ((_hd125364125429_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125365125426_)))
                                      (_tl125363125431_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125365125426_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125363125431_))
                                      (let ((_e125368125434_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125363125431_))))
                                        (let ((_hd125367125437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125368125434_)))
                                              (_tl125366125439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125368125434_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125366125439_))
                                              ((lambda (_L125442_
                                                        _L125443_
                                                        _L125444_
                                                        _L125445_
                                                        _L125446_
                                                        _L125447_
                                                        _L125448_)
                                                 (let ((_type-id125478_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125448_)))
                                                       (_super125479_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L125447_)))
                                                       (_slots125480_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L125446_)))
                                                       (_ctor-method125481_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125445_)))
                                                       (_struct?125482_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125444_)))
                                                       (_final?125483_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L125443_)))
                                                       (_metaclass125484_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L125442_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L125442_))
                                                            '#f)))
                                                   (let ((__obj128816
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
                                                      __obj128816
                                                      _type-id125478_
                                                      _super125479_
                                                      _slots125480_
                                                      _ctor-method125481_
                                                      _struct?125482_
                                                      _final?125483_
                                                      _metaclass125484_)
                                                     __obj128816)))
                                               _hd125367125437_
                                               _hd125364125429_
                                               _hd125361125421_
                                               _hd125358125413_
                                               _hd125355125405_
                                               _hd125352125397_
                                               _hd125349125389_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125336125373_
                                                 _g125337125376_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125336125373_ _g125337125376_)))))
                              (let ()
                                (declare (not safe))
                                (_g125336125373_ _g125337125376_)))))
                      (let ()
                        (declare (not safe))
                        (_g125336125373_ _g125337125376_)))))
              (let ()
                (declare (not safe))
                (_g125336125373_ _g125337125376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125336125373_
                                                 _g125337125376_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125336125373_ _g125337125376_)))))
                              (let ()
                                (declare (not safe))
                                (_g125336125373_ _g125337125376_)))))
                      (let ()
                        (declare (not safe))
                        (_g125336125373_ _g125337125376_))))))
          (declare (not safe))
          (_g125335125486_ _ann125334_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx125281_ _ann125282_)
        (let* ((_g125284125297_
                (lambda (_g125285125294_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125285125294_))))
               (_g125283125330_
                (lambda (_g125285125300_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125285125300_))
                      (let ((_e125289125302_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125285125300_))))
                        (let ((_hd125288125305_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125289125302_)))
                              (_tl125287125307_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125289125302_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125287125307_))
                              (let ((_e125292125310_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125287125307_))))
                                (let ((_hd125291125313_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125292125310_)))
                                      (_tl125290125315_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125292125310_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125290125315_))
                                      ((lambda (_L125318_)
                                         (let ((__tmp128859
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125318_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp128859)))
                                       _hd125291125313_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125284125297_ _g125285125300_)))))
                              (let ()
                                (declare (not safe))
                                (_g125284125297_ _g125285125300_)))))
                      (let ()
                        (declare (not safe))
                        (_g125284125297_ _g125285125300_))))))
          (declare (not safe))
          (_g125283125330_ _ann125282_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx125229_ _ann125230_)
        (let* ((_g125232125245_
                (lambda (_g125233125242_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125233125242_))))
               (_g125231125278_
                (lambda (_g125233125248_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125233125248_))
                      (let ((_e125237125250_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125233125248_))))
                        (let ((_hd125236125253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125237125250_)))
                              (_tl125235125255_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125237125250_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125235125255_))
                              (let ((_e125240125258_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125235125255_))))
                                (let ((_hd125239125261_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125240125258_)))
                                      (_tl125238125263_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125240125258_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125238125263_))
                                      ((lambda (_L125266_)
                                         (let ((__tmp128860
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125266_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp128860)))
                                       _hd125239125261_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125232125245_ _g125233125248_)))))
                              (let ()
                                (declare (not safe))
                                (_g125232125245_ _g125233125248_)))))
                      (let ()
                        (declare (not safe))
                        (_g125232125245_ _g125233125248_))))))
          (declare (not safe))
          (_g125231125278_ _ann125230_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx125145_ _ann125146_)
        (let* ((_g125148125169_
                (lambda (_g125149125166_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125149125166_))))
               (_g125147125226_
                (lambda (_g125149125172_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125149125172_))
                      (let ((_e125155125174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125149125172_))))
                        (let ((_hd125154125177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125155125174_)))
                              (_tl125153125179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125155125174_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125153125179_))
                              (let ((_e125158125182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125153125179_))))
                                (let ((_hd125157125185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125158125182_)))
                                      (_tl125156125187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125158125182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125156125187_))
                                      (let ((_e125161125190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125156125187_))))
                                        (let ((_hd125160125193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125161125190_)))
                                              (_tl125159125195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125161125190_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125159125195_))
                                              (let ((_e125164125198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125159125195_))))
                                                (let ((_hd125163125201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125164125198_)))
                                                      (_tl125162125203_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125164125198_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125162125203_))
                                                      ((lambda (_L125206_
                                                                _L125207_
                                                                _L125208_)
                                                         (let ((__tmp128863
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125208_)))
                       (__tmp128862
                        (let () (declare (not safe)) (gx#stx-e _L125207_)))
                       (__tmp128861
                        (let () (declare (not safe)) (gx#stx-e _L125206_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp128863
                    __tmp128862
                    __tmp128861)))
               _hd125163125201_
               _hd125160125193_
               _hd125157125185_)
              (let ()
                (declare (not safe))
                (_g125148125169_ _g125149125172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125148125169_
                                                 _g125149125172_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125148125169_ _g125149125172_)))))
                              (let ()
                                (declare (not safe))
                                (_g125148125169_ _g125149125172_)))))
                      (let ()
                        (declare (not safe))
                        (_g125148125169_ _g125149125172_))))))
          (declare (not safe))
          (_g125147125226_ _ann125146_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx125061_ _ann125062_)
        (let* ((_g125064125085_
                (lambda (_g125065125082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125065125082_))))
               (_g125063125142_
                (lambda (_g125065125088_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125065125088_))
                      (let ((_e125071125090_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125065125088_))))
                        (let ((_hd125070125093_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125071125090_)))
                              (_tl125069125095_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125071125090_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125069125095_))
                              (let ((_e125074125098_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125069125095_))))
                                (let ((_hd125073125101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125074125098_)))
                                      (_tl125072125103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125074125098_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125072125103_))
                                      (let ((_e125077125106_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125072125103_))))
                                        (let ((_hd125076125109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125077125106_)))
                                              (_tl125075125111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125077125106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125075125111_))
                                              (let ((_e125080125114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125075125111_))))
                                                (let ((_hd125079125117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125080125114_)))
                                                      (_tl125078125119_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125080125114_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl125078125119_))
                                                      ((lambda (_L125122_
                                                                _L125123_
                                                                _L125124_)
                                                         (let ((__tmp128866
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L125124_)))
                       (__tmp128865
                        (let () (declare (not safe)) (gx#stx-e _L125123_)))
                       (__tmp128864
                        (let () (declare (not safe)) (gx#stx-e _L125122_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp128866
                    __tmp128865
                    __tmp128864)))
               _hd125079125117_
               _hd125076125109_
               _hd125073125101_)
              (let ()
                (declare (not safe))
                (_g125064125085_ _g125065125088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g125064125085_
                                                 _g125065125088_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125064125085_ _g125065125088_)))))
                              (let ()
                                (declare (not safe))
                                (_g125064125085_ _g125065125088_)))))
                      (let ()
                        (declare (not safe))
                        (_g125064125085_ _g125065125088_))))))
          (declare (not safe))
          (_g125063125142_ _ann125062_))))
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
      (lambda (_stx124181_)
        (let* ((___stx127147127148_ _stx124181_)
               (_g124187124383_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127147127148_)))))
          (let ((___kont127149127150_
                 (lambda (_L125049_)
                   (let ((__obj128817
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128817
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L125049_))
                      '#f)
                     __obj128817)))
                (___kont127151127152_
                 (lambda (_L124976_
                          _L124977_
                          _L124978_
                          _L124979_
                          _L124980_
                          _L124981_)
                   (let* ((_tab125031_
                           (let () (declare (not safe)) (gx#stx-e _L124978_)))
                          (_keys125033_
                           (if _tab125031_
                               (let ((__tmp128867 (vector->list _tab125031_)))
                                 (declare (not safe))
                                 (filter values __tmp128867))
                               '#f)))
                     (let ((__tmp128868
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L124977_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys125033_
                        __tmp128868)))))
                (___kont127153127154_
                 (lambda (_L124709_
                          _L124710_
                          _L124711_
                          _L124712_
                          _L124713_
                          _L124714_
                          _L124715_
                          _L124716_
                          _L124717_
                          _L124718_)
                   (let ((__tmp128870
                          (map gx#stx-e
                               (let ((__tmp128871
                                      (lambda (_g124811124814_ _g124812124816_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g124811124814_
                                                _g124812124816_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp128871 '() _L124711_))))
                         (__tmp128869
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L124715_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp128870
                      __tmp128869))))
                (___kont127157127158_
                 (lambda (_L124419_)
                   (let ((__obj128818
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128818
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124419_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L124419_)))
                     __obj128818)))
                (___kont127159127160_
                 (lambda (_L124396_)
                   (let ((__obj128819
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj128819
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L124396_))
                      '#f)
                     __obj128819))))
            (let* ((___match127466127467_
                    (lambda (_e124374124411_ _hd124373124414_ _tl124372124416_)
                      (let ((_L124419_ _tl124372124416_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L124419_))
                            (___kont127157127158_ _L124419_)
                            (___kont127159127160_ _tl124372124416_)))))
                   (___match127460127461_
                    (lambda (_e124268124433_
                             _hd124267124436_
                             _tl124266124438_
                             _e124271124441_
                             _hd124270124444_
                             _tl124269124446_
                             _e124274124449_
                             _hd124273124452_
                             _tl124272124454_
                             _e124277124457_
                             _hd124276124460_
                             _tl124275124462_
                             _e124280124465_
                             _hd124279124468_
                             _tl124278124470_
                             _e124283124473_
                             _hd124282124476_
                             _tl124281124478_
                             _e124286124481_
                             _hd124285124484_
                             _tl124284124486_
                             _e124289124489_
                             _hd124288124492_
                             _tl124287124494_
                             _e124292124497_
                             _hd124291124500_
                             _tl124290124502_
                             _e124295124505_
                             _hd124294124508_
                             _tl124293124510_
                             _e124298124513_
                             _hd124297124516_
                             _tl124296124518_
                             _e124301124521_
                             _hd124300124524_
                             _tl124299124526_
                             _e124304124529_
                             _hd124303124532_
                             _tl124302124534_
                             _e124307124537_
                             _hd124306124540_
                             _tl124305124542_
                             ___splice127155127156_
                             _target124308124545_
                             _tl124310124547_
                             _e124325124550_
                             _hd124324124553_
                             _tl124323124555_
                             _e124328124558_
                             _hd124327124561_
                             _tl124326124563_
                             _e124331124566_
                             _hd124330124569_
                             _tl124329124571_)
                      (letrec ((_loop124311124574_
                                (lambda (_hd124309124577_
                                         _-absent-value124315124579_
                                         _key124316124581_
                                         _-xkwvar124317124583_
                                         _-hash-ref124318124585_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124309124577_))
                                      (let ((_e124312124588_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124309124577_))))
                                        (let ((_lp-tl124314124593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124312124588_)))
                                              (_lp-hd124313124591_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124312124588_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd124313124591_))
                                              (let ((_e124334124596_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd124313124591_))))
                                                (let ((_tl124332124601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124334124596_)))
                                                      (_hd124333124599_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124334124596_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd124333124599_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd124333124599_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl124332124601_))
                      (let ((_e124337124604_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl124332124601_))))
                        (let ((_tl124335124609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124337124604_)))
                              (_hd124336124607_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124337124604_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd124336124607_))
                              (let ((_e124340124612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd124336124607_))))
                                (let ((_tl124338124617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124340124612_)))
                                      (_hd124339124615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124340124612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd124339124615_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd124339124615_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124338124617_))
                                              (let ((_e124343124620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124338124617_))))
                                                (let ((_tl124341124625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124343124620_)))
                                                      (_hd124342124623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124343124620_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124341124625_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124335124609_))
                                                          (let ((_e124346124628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124335124609_))))
                    (let ((_tl124344124633_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124346124628_)))
                          (_hd124345124631_
                           (let ()
                             (declare (not safe))
                             (##car _e124346124628_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124345124631_))
                          (let ((_e124349124636_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124345124631_))))
                            (let ((_tl124347124641_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124349124636_)))
                                  (_hd124348124639_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124349124636_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124348124639_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124348124639_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124347124641_))
                                          (let ((_e124352124644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124347124641_))))
                                            (let ((_tl124350124649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124352124644_)))
                                                  (_hd124351124647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124352124644_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124350124649_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124344124633_))
                                                      (let ((_e124355124652_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124344124633_))))
                (let ((_tl124353124657_
                       (let () (declare (not safe)) (##cdr _e124355124652_)))
                      (_hd124354124655_
                       (let () (declare (not safe)) (##car _e124355124652_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124354124655_))
                      (let ((_e124358124660_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124354124655_))))
                        (let ((_tl124356124665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124358124660_)))
                              (_hd124357124663_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124358124660_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124357124663_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd124357124663_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124356124665_))
                                      (let ((_e124361124668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124356124665_))))
                                        (let ((_tl124359124673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124361124668_)))
                                              (_hd124360124671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124361124668_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124359124673_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124353124657_))
                                                  (let ((_e124364124676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124353124657_))))
                                                    (let ((_tl124362124681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124364124676_)))
                                                          (_hd124363124679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124364124676_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124363124679_))
                                                          (let ((_e124367124684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124363124679_))))
                    (let ((_tl124365124689_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124367124684_)))
                          (_hd124366124687_
                           (let ()
                             (declare (not safe))
                             (##car _e124367124684_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124366124687_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124366124687_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124365124689_))
                                  (let ((_e124370124692_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124365124689_))))
                                    (let ((_tl124368124697_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124370124692_)))
                                          (_hd124369124695_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124370124692_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124368124697_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124362124681_))
                                              (let ((__tmp128886
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124369124695_
                                                             _-absent-value124315124579_)))
                                                    (__tmp128885
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124360124671_
                                                             _key124316124581_)))
                                                    (__tmp128884
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124351124647_
                                                             _-xkwvar124317124583_)))
                                                    (__tmp128883
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd124342124623_
                                                             _-hash-ref124318124585_))))
                                                (declare (not safe))
                                                (_loop124311124574_
                                                 _lp-tl124314124593_
                                                 __tmp128886
                                                 __tmp128885
                                                 __tmp128884
                                                 __tmp128883))
                                              (___match127466127467_
                                               _e124268124433_
                                               _hd124267124436_
                                               _tl124266124438_))
                                          (___match127466127467_
                                           _e124268124433_
                                           _hd124267124436_
                                           _tl124266124438_))))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))
                              (___match127466127467_
                               _e124268124433_
                               _hd124267124436_
                               _tl124266124438_))
                          (___match127466127467_
                           _e124268124433_
                           _hd124267124436_
                           _tl124266124438_))))
                  (___match127466127467_
                   _e124268124433_
                   _hd124267124436_
                   _tl124266124438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_))
                                              (___match127466127467_
                                               _e124268124433_
                                               _hd124267124436_
                                               _tl124266124438_))))
                                      (___match127466127467_
                                       _e124268124433_
                                       _hd124267124436_
                                       _tl124266124438_))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))
                              (___match127466127467_
                               _e124268124433_
                               _hd124267124436_
                               _tl124266124438_))))
                      (___match127466127467_
                       _e124268124433_
                       _hd124267124436_
                       _tl124266124438_))))
              (___match127466127467_
               _e124268124433_
               _hd124267124436_
               _tl124266124438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_))))
                                          (___match127466127467_
                                           _e124268124433_
                                           _hd124267124436_
                                           _tl124266124438_))
                                      (___match127466127467_
                                       _e124268124433_
                                       _hd124267124436_
                                       _tl124266124438_))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))))
                          (___match127466127467_
                           _e124268124433_
                           _hd124267124436_
                           _tl124266124438_))))
                  (___match127466127467_
                   _e124268124433_
                   _hd124267124436_
                   _tl124266124438_))
              (___match127466127467_
               _e124268124433_
               _hd124267124436_
               _tl124266124438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127466127467_
                                               _e124268124433_
                                               _hd124267124436_
                                               _tl124266124438_))
                                          (___match127466127467_
                                           _e124268124433_
                                           _hd124267124436_
                                           _tl124266124438_))
                                      (___match127466127467_
                                       _e124268124433_
                                       _hd124267124436_
                                       _tl124266124438_))))
                              (___match127466127467_
                               _e124268124433_
                               _hd124267124436_
                               _tl124266124438_))))
                      (___match127466127467_
                       _e124268124433_
                       _hd124267124436_
                       _tl124266124438_))
                  (___match127466127467_
                   _e124268124433_
                   _hd124267124436_
                   _tl124266124438_))
              (___match127466127467_
               _e124268124433_
               _hd124267124436_
               _tl124266124438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127466127467_
                                               _e124268124433_
                                               _hd124267124436_
                                               _tl124266124438_))))
                                      (let ((_-hash-ref124322124706_
                                             (reverse _-hash-ref124318124585_))
                                            (_-xkwvar124321124704_
                                             (reverse _-xkwvar124317124583_))
                                            (_key124320124702_
                                             (reverse _key124316124581_))
                                            (_-absent-value124319124700_
                                             (reverse _-absent-value124315124579_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl124275124462_))
                                            (let ((_L124709_ _hd124330124569_)
                                                  (_L124710_
                                                   _-absent-value124319124700_)
                                                  (_L124711_ _key124320124702_)
                                                  (_L124712_
                                                   _-xkwvar124321124704_)
                                                  (_L124713_
                                                   _-hash-ref124322124706_)
                                                  (_L124714_ _hd124306124540_)
                                                  (_L124715_ _hd124297124516_)
                                                  (_L124716_ _hd124288124492_)
                                                  (_L124717_ _tl124272124454_)
                                                  (_L124718_ _hd124273124452_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124718_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L124717_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L124716_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L124718_
                                                          _L124714_))
                                                       (let ((__tmp128881
                                                              (let ((__tmp128882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g124771124774_ _g124772124776_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124771124774_ _g124772124776_)))))
                        (declare (not safe))
                        (foldr1 __tmp128882 '() _L124711_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp128881))
               (let ((__tmp128880
                      (lambda (_g124778124780_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124778124780_
                           'hash-ref))))
                     (__tmp128878
                      (let ((__tmp128879
                             (lambda (_g124782124785_ _g124783124787_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124782124785_ _g124783124787_)))))
                        (declare (not safe))
                        (foldr1 __tmp128879 '() _L124713_))))
                 (declare (not safe))
                 (andmap1 __tmp128880 __tmp128878))
               (let ((__tmp128877
                      (lambda (_g124789124791_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g124789124791_
                           'absent-value))))
                     (__tmp128875
                      (let ((__tmp128876
                             (lambda (_g124793124796_ _g124794124798_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124793124796_ _g124794124798_)))))
                        (declare (not safe))
                        (foldr1 __tmp128876 '() _L124710_))))
                 (declare (not safe))
                 (andmap1 __tmp128877 __tmp128875))
               (let ((__tmp128874
                      (lambda (_g124800124802_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g124800124802_ _L124718_))))
                     (__tmp128872
                      (let ((__tmp128873
                             (lambda (_g124804124807_ _g124805124809_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g124804124807_ _g124805124809_)))))
                        (declare (not safe))
                        (foldr1 __tmp128873 '() _L124712_))))
                 (declare (not safe))
                 (andmap1 __tmp128874 __tmp128872)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127153127154_
                                                   _L124709_
                                                   _L124710_
                                                   _L124711_
                                                   _L124712_
                                                   _L124713_
                                                   _L124714_
                                                   _L124715_
                                                   _L124716_
                                                   _L124717_
                                                   _L124718_)
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_)))
                                            (___match127466127467_
                                             _e124268124433_
                                             _hd124267124436_
                                             _tl124266124438_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124311124574_
                           _target124308124545_
                           '()
                           '()
                           '()
                           '())))))
                   (___match127332127333_
                    (lambda (_e124268124433_
                             _hd124267124436_
                             _tl124266124438_
                             _e124271124441_
                             _hd124270124444_
                             _tl124269124446_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124270124444_))
                          (let ((_e124274124449_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124270124444_))))
                            (let ((_tl124272124454_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124274124449_)))
                                  (_hd124273124452_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124274124449_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124269124446_))
                                  (let ((_e124277124457_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124269124446_))))
                                    (let ((_tl124275124462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124277124457_)))
                                          (_hd124276124460_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124277124457_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124276124460_))
                                          (let ((_e124280124465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124276124460_))))
                                            (let ((_tl124278124470_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124280124465_)))
                                                  (_hd124279124468_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124280124465_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124279124468_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124279124468_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124278124470_))
                                                          (let ((_e124283124473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124278124470_))))
                    (let ((_tl124281124478_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124283124473_)))
                          (_hd124282124476_
                           (let ()
                             (declare (not safe))
                             (##car _e124283124473_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124282124476_))
                          (let ((_e124286124481_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124282124476_))))
                            (let ((_tl124284124486_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124286124481_)))
                                  (_hd124285124484_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124286124481_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124285124484_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124285124484_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124284124486_))
                                          (let ((_e124289124489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124284124486_))))
                                            (let ((_tl124287124494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124289124489_)))
                                                  (_hd124288124492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124289124489_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124287124494_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124281124478_))
                                                      (let ((_e124292124497_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124281124478_))))
                (let ((_tl124290124502_
                       (let () (declare (not safe)) (##cdr _e124292124497_)))
                      (_hd124291124500_
                       (let () (declare (not safe)) (##car _e124292124497_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124291124500_))
                      (let ((_e124295124505_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124291124500_))))
                        (let ((_tl124293124510_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124295124505_)))
                              (_hd124294124508_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124295124505_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124294124508_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124294124508_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124293124510_))
                                      (let ((_e124298124513_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124293124510_))))
                                        (let ((_tl124296124518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124298124513_)))
                                              (_hd124297124516_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124298124513_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124296124518_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124290124502_))
                                                  (let ((_e124301124521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124290124502_))))
                                                    (let ((_tl124299124526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124301124521_)))
                                                          (_hd124300124524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124301124521_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124300124524_))
                                                          (let ((_e124304124529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124300124524_))))
                    (let ((_tl124302124534_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124304124529_)))
                          (_hd124303124532_
                           (let ()
                             (declare (not safe))
                             (##car _e124304124529_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124303124532_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124303124532_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124302124534_))
                                  (let ((_e124307124537_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124302124534_))))
                                    (let ((_tl124305124542_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124307124537_)))
                                          (_hd124306124540_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124307124537_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124305124542_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl124299124526_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl124299124526_))
                                                        '1)
                                                  (let ((___splice127155127156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl124299124526_
                                                            '1))))
                                                    (let ((_tl124310124547_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127155127156_
                                                              '1)))
                                                          (_target124308124545_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice127155127156_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124310124547_))
                                                          (let ((_e124325124550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124310124547_))))
                    (let ((_tl124323124555_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124325124550_)))
                          (_hd124324124553_
                           (let ()
                             (declare (not safe))
                             (##car _e124325124550_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124324124553_))
                          (let ((_e124328124558_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124324124553_))))
                            (let ((_tl124326124563_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124328124558_)))
                                  (_hd124327124561_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124328124558_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124327124561_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124327124561_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124326124563_))
                                          (let ((_e124331124566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124326124563_))))
                                            (let ((_tl124329124571_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124331124566_)))
                                                  (_hd124330124569_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124331124566_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124329124571_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124323124555_))
                                                      (___match127460127461_
                                                       _e124268124433_
                                                       _hd124267124436_
                                                       _tl124266124438_
                                                       _e124271124441_
                                                       _hd124270124444_
                                                       _tl124269124446_
                                                       _e124274124449_
                                                       _hd124273124452_
                                                       _tl124272124454_
                                                       _e124277124457_
                                                       _hd124276124460_
                                                       _tl124275124462_
                                                       _e124280124465_
                                                       _hd124279124468_
                                                       _tl124278124470_
                                                       _e124283124473_
                                                       _hd124282124476_
                                                       _tl124281124478_
                                                       _e124286124481_
                                                       _hd124285124484_
                                                       _tl124284124486_
                                                       _e124289124489_
                                                       _hd124288124492_
                                                       _tl124287124494_
                                                       _e124292124497_
                                                       _hd124291124500_
                                                       _tl124290124502_
                                                       _e124295124505_
                                                       _hd124294124508_
                                                       _tl124293124510_
                                                       _e124298124513_
                                                       _hd124297124516_
                                                       _tl124296124518_
                                                       _e124301124521_
                                                       _hd124300124524_
                                                       _tl124299124526_
                                                       _e124304124529_
                                                       _hd124303124532_
                                                       _tl124302124534_
                                                       _e124307124537_
                                                       _hd124306124540_
                                                       _tl124305124542_
                                                       ___splice127155127156_
                                                       _target124308124545_
                                                       _tl124310124547_
                                                       _e124325124550_
                                                       _hd124324124553_
                                                       _tl124323124555_
                                                       _e124328124558_
                                                       _hd124327124561_
                                                       _tl124326124563_
                                                       _e124331124566_
                                                       _hd124330124569_
                                                       _tl124329124571_)
                                                      (___match127466127467_
                                                       _e124268124433_
                                                       _hd124267124436_
                                                       _tl124266124438_))
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_))))
                                          (___match127466127467_
                                           _e124268124433_
                                           _hd124267124436_
                                           _tl124266124438_))
                                      (___match127466127467_
                                       _e124268124433_
                                       _hd124267124436_
                                       _tl124266124438_))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))))
                          (___match127466127467_
                           _e124268124433_
                           _hd124267124436_
                           _tl124266124438_))))
                  (___match127466127467_
                   _e124268124433_
                   _hd124267124436_
                   _tl124266124438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_))
                                              (___match127466127467_
                                               _e124268124433_
                                               _hd124267124436_
                                               _tl124266124438_))
                                          (___match127466127467_
                                           _e124268124433_
                                           _hd124267124436_
                                           _tl124266124438_))))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))
                              (___match127466127467_
                               _e124268124433_
                               _hd124267124436_
                               _tl124266124438_))
                          (___match127466127467_
                           _e124268124433_
                           _hd124267124436_
                           _tl124266124438_))))
                  (___match127466127467_
                   _e124268124433_
                   _hd124267124436_
                   _tl124266124438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_))
                                              (___match127466127467_
                                               _e124268124433_
                                               _hd124267124436_
                                               _tl124266124438_))))
                                      (___match127466127467_
                                       _e124268124433_
                                       _hd124267124436_
                                       _tl124266124438_))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))
                              (___match127466127467_
                               _e124268124433_
                               _hd124267124436_
                               _tl124266124438_))))
                      (___match127466127467_
                       _e124268124433_
                       _hd124267124436_
                       _tl124266124438_))))
              (___match127466127467_
               _e124268124433_
               _hd124267124436_
               _tl124266124438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_))))
                                          (___match127466127467_
                                           _e124268124433_
                                           _hd124267124436_
                                           _tl124266124438_))
                                      (___match127466127467_
                                       _e124268124433_
                                       _hd124267124436_
                                       _tl124266124438_))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))))
                          (___match127466127467_
                           _e124268124433_
                           _hd124267124436_
                           _tl124266124438_))))
                  (___match127466127467_
                   _e124268124433_
                   _hd124267124436_
                   _tl124266124438_))
              (___match127466127467_
               _e124268124433_
               _hd124267124436_
               _tl124266124438_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127466127467_
                                                   _e124268124433_
                                                   _hd124267124436_
                                                   _tl124266124438_))))
                                          (___match127466127467_
                                           _e124268124433_
                                           _hd124267124436_
                                           _tl124266124438_))))
                                  (___match127466127467_
                                   _e124268124433_
                                   _hd124267124436_
                                   _tl124266124438_))))
                          (___match127466127467_
                           _e124268124433_
                           _hd124267124436_
                           _tl124266124438_))))
                   (___match127320127321_
                    (lambda (_e124201124824_
                             _hd124200124827_
                             _tl124199124829_
                             _e124204124832_
                             _hd124203124835_
                             _tl124202124837_
                             _e124207124840_
                             _hd124206124843_
                             _tl124205124845_
                             _e124210124848_
                             _hd124209124851_
                             _tl124208124853_
                             _e124213124856_
                             _hd124212124859_
                             _tl124211124861_
                             _e124216124864_
                             _hd124215124867_
                             _tl124214124869_
                             _e124219124872_
                             _hd124218124875_
                             _tl124217124877_
                             _e124222124880_
                             _hd124221124883_
                             _tl124220124885_
                             _e124225124888_
                             _hd124224124891_
                             _tl124223124893_
                             _e124228124896_
                             _hd124227124899_
                             _tl124226124901_
                             _e124231124904_
                             _hd124230124907_
                             _tl124229124909_
                             _e124234124912_
                             _hd124233124915_
                             _tl124232124917_
                             _e124237124920_
                             _hd124236124923_
                             _tl124235124925_
                             _e124240124928_
                             _hd124239124931_
                             _tl124238124933_
                             _e124243124936_
                             _hd124242124939_
                             _tl124241124941_
                             _e124246124944_
                             _hd124245124947_
                             _tl124244124949_
                             _e124249124952_
                             _hd124248124955_
                             _tl124247124957_
                             _e124252124960_
                             _hd124251124963_
                             _tl124250124965_
                             _e124255124968_
                             _hd124254124971_
                             _tl124253124973_)
                      (let ((_L124976_ _hd124254124971_)
                            (_L124977_ _hd124245124947_)
                            (_L124978_ _hd124236124923_)
                            (_L124979_ _hd124227124899_)
                            (_L124980_ _hd124218124875_)
                            (_L124981_ _hd124203124835_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L124981_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L124980_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L124979_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L124981_ _L124976_)))
                            (___kont127151127152_
                             _L124976_
                             _L124977_
                             _L124978_
                             _L124979_
                             _L124980_
                             _L124981_)
                            (___match127332127333_
                             _e124201124824_
                             _hd124200124827_
                             _tl124199124829_
                             _e124204124832_
                             _hd124203124835_
                             _tl124202124837_)))))
                   (___match127174127175_
                    (lambda (_e124201124824_ _hd124200124827_ _tl124199124829_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124199124829_))
                          (let ((_e124204124832_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124199124829_))))
                            (let ((_tl124202124837_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124204124832_)))
                                  (_hd124203124835_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124204124832_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124202124837_))
                                  (let ((_e124207124840_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124202124837_))))
                                    (let ((_tl124205124845_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124207124840_)))
                                          (_hd124206124843_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124207124840_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd124206124843_))
                                          (let ((_e124210124848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd124206124843_))))
                                            (let ((_tl124208124853_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124210124848_)))
                                                  (_hd124209124851_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124210124848_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd124209124851_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd124209124851_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl124208124853_))
                                                          (let ((_e124213124856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl124208124853_))))
                    (let ((_tl124211124861_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124213124856_)))
                          (_hd124212124859_
                           (let ()
                             (declare (not safe))
                             (##car _e124213124856_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd124212124859_))
                          (let ((_e124216124864_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd124212124859_))))
                            (let ((_tl124214124869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124216124864_)))
                                  (_hd124215124867_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124216124864_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd124215124867_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd124215124867_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124214124869_))
                                          (let ((_e124219124872_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124214124869_))))
                                            (let ((_tl124217124877_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124219124872_)))
                                                  (_hd124218124875_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124219124872_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124217124877_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124211124861_))
                                                      (let ((_e124222124880_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124211124861_))))
                (let ((_tl124220124885_
                       (let () (declare (not safe)) (##cdr _e124222124880_)))
                      (_hd124221124883_
                       (let () (declare (not safe)) (##car _e124222124880_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124221124883_))
                      (let ((_e124225124888_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124221124883_))))
                        (let ((_tl124223124893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124225124888_)))
                              (_hd124224124891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124225124888_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124224124891_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124224124891_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124223124893_))
                                      (let ((_e124228124896_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124223124893_))))
                                        (let ((_tl124226124901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124228124896_)))
                                              (_hd124227124899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124228124896_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124226124901_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124220124885_))
                                                  (let ((_e124231124904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124220124885_))))
                                                    (let ((_tl124229124909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124231124904_)))
                                                          (_hd124230124907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124231124904_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124230124907_))
                                                          (let ((_e124234124912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124230124907_))))
                    (let ((_tl124232124917_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124234124912_)))
                          (_hd124233124915_
                           (let ()
                             (declare (not safe))
                             (##car _e124234124912_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124233124915_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd124233124915_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124232124917_))
                                  (let ((_e124237124920_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124232124917_))))
                                    (let ((_tl124235124925_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124237124920_)))
                                          (_hd124236124923_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124237124920_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124235124925_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124229124909_))
                                              (let ((_e124240124928_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124229124909_))))
                                                (let ((_tl124238124933_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124240124928_)))
                                                      (_hd124239124931_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124240124928_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd124239124931_))
                                                      (let ((_e124243124936_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd124239124931_))))
                (let ((_tl124241124941_
                       (let () (declare (not safe)) (##cdr _e124243124936_)))
                      (_hd124242124939_
                       (let () (declare (not safe)) (##car _e124243124936_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd124242124939_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd124242124939_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124241124941_))
                              (let ((_e124246124944_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124241124941_))))
                                (let ((_tl124244124949_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124246124944_)))
                                      (_hd124245124947_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124246124944_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124244124949_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl124238124933_))
                                          (let ((_e124249124952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl124238124933_))))
                                            (let ((_tl124247124957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e124249124952_)))
                                                  (_hd124248124955_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e124249124952_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd124248124955_))
                                                  (let ((_e124252124960_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd124248124955_))))
                                                    (let ((_tl124250124965_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124252124960_)))
                                                          (_hd124251124963_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124252124960_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd124251124963_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd124251124963_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124250124965_))
                          (let ((_e124255124968_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124250124965_))))
                            (let ((_tl124253124973_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124255124968_)))
                                  (_hd124254124971_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124255124968_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124253124973_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124247124957_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124205124845_))
                                          (___match127320127321_
                                           _e124201124824_
                                           _hd124200124827_
                                           _tl124199124829_
                                           _e124204124832_
                                           _hd124203124835_
                                           _tl124202124837_
                                           _e124207124840_
                                           _hd124206124843_
                                           _tl124205124845_
                                           _e124210124848_
                                           _hd124209124851_
                                           _tl124208124853_
                                           _e124213124856_
                                           _hd124212124859_
                                           _tl124211124861_
                                           _e124216124864_
                                           _hd124215124867_
                                           _tl124214124869_
                                           _e124219124872_
                                           _hd124218124875_
                                           _tl124217124877_
                                           _e124222124880_
                                           _hd124221124883_
                                           _tl124220124885_
                                           _e124225124888_
                                           _hd124224124891_
                                           _tl124223124893_
                                           _e124228124896_
                                           _hd124227124899_
                                           _tl124226124901_
                                           _e124231124904_
                                           _hd124230124907_
                                           _tl124229124909_
                                           _e124234124912_
                                           _hd124233124915_
                                           _tl124232124917_
                                           _e124237124920_
                                           _hd124236124923_
                                           _tl124235124925_
                                           _e124240124928_
                                           _hd124239124931_
                                           _tl124238124933_
                                           _e124243124936_
                                           _hd124242124939_
                                           _tl124241124941_
                                           _e124246124944_
                                           _hd124245124947_
                                           _tl124244124949_
                                           _e124249124952_
                                           _hd124248124955_
                                           _tl124247124957_
                                           _e124252124960_
                                           _hd124251124963_
                                           _tl124250124965_
                                           _e124255124968_
                                           _hd124254124971_
                                           _tl124253124973_)
                                          (___match127332127333_
                                           _e124201124824_
                                           _hd124200124827_
                                           _tl124199124829_
                                           _e124204124832_
                                           _hd124203124835_
                                           _tl124202124837_))
                                      (___match127332127333_
                                       _e124201124824_
                                       _hd124200124827_
                                       _tl124199124829_
                                       _e124204124832_
                                       _hd124203124835_
                                       _tl124202124837_))
                                  (___match127332127333_
                                   _e124201124824_
                                   _hd124200124827_
                                   _tl124199124829_
                                   _e124204124832_
                                   _hd124203124835_
                                   _tl124202124837_))))
                          (___match127332127333_
                           _e124201124824_
                           _hd124200124827_
                           _tl124199124829_
                           _e124204124832_
                           _hd124203124835_
                           _tl124202124837_))
                      (___match127332127333_
                       _e124201124824_
                       _hd124200124827_
                       _tl124199124829_
                       _e124204124832_
                       _hd124203124835_
                       _tl124202124837_))
                  (___match127332127333_
                   _e124201124824_
                   _hd124200124827_
                   _tl124199124829_
                   _e124204124832_
                   _hd124203124835_
                   _tl124202124837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127332127333_
                                                   _e124201124824_
                                                   _hd124200124827_
                                                   _tl124199124829_
                                                   _e124204124832_
                                                   _hd124203124835_
                                                   _tl124202124837_))))
                                          (___match127332127333_
                                           _e124201124824_
                                           _hd124200124827_
                                           _tl124199124829_
                                           _e124204124832_
                                           _hd124203124835_
                                           _tl124202124837_))
                                      (___match127332127333_
                                       _e124201124824_
                                       _hd124200124827_
                                       _tl124199124829_
                                       _e124204124832_
                                       _hd124203124835_
                                       _tl124202124837_))))
                              (___match127332127333_
                               _e124201124824_
                               _hd124200124827_
                               _tl124199124829_
                               _e124204124832_
                               _hd124203124835_
                               _tl124202124837_))
                          (___match127332127333_
                           _e124201124824_
                           _hd124200124827_
                           _tl124199124829_
                           _e124204124832_
                           _hd124203124835_
                           _tl124202124837_))
                      (___match127332127333_
                       _e124201124824_
                       _hd124200124827_
                       _tl124199124829_
                       _e124204124832_
                       _hd124203124835_
                       _tl124202124837_))))
              (___match127332127333_
               _e124201124824_
               _hd124200124827_
               _tl124199124829_
               _e124204124832_
               _hd124203124835_
               _tl124202124837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match127332127333_
                                               _e124201124824_
                                               _hd124200124827_
                                               _tl124199124829_
                                               _e124204124832_
                                               _hd124203124835_
                                               _tl124202124837_))
                                          (___match127332127333_
                                           _e124201124824_
                                           _hd124200124827_
                                           _tl124199124829_
                                           _e124204124832_
                                           _hd124203124835_
                                           _tl124202124837_))))
                                  (___match127332127333_
                                   _e124201124824_
                                   _hd124200124827_
                                   _tl124199124829_
                                   _e124204124832_
                                   _hd124203124835_
                                   _tl124202124837_))
                              (___match127332127333_
                               _e124201124824_
                               _hd124200124827_
                               _tl124199124829_
                               _e124204124832_
                               _hd124203124835_
                               _tl124202124837_))
                          (___match127332127333_
                           _e124201124824_
                           _hd124200124827_
                           _tl124199124829_
                           _e124204124832_
                           _hd124203124835_
                           _tl124202124837_))))
                  (___match127332127333_
                   _e124201124824_
                   _hd124200124827_
                   _tl124199124829_
                   _e124204124832_
                   _hd124203124835_
                   _tl124202124837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127332127333_
                                                   _e124201124824_
                                                   _hd124200124827_
                                                   _tl124199124829_
                                                   _e124204124832_
                                                   _hd124203124835_
                                                   _tl124202124837_))
                                              (___match127332127333_
                                               _e124201124824_
                                               _hd124200124827_
                                               _tl124199124829_
                                               _e124204124832_
                                               _hd124203124835_
                                               _tl124202124837_))))
                                      (___match127332127333_
                                       _e124201124824_
                                       _hd124200124827_
                                       _tl124199124829_
                                       _e124204124832_
                                       _hd124203124835_
                                       _tl124202124837_))
                                  (___match127332127333_
                                   _e124201124824_
                                   _hd124200124827_
                                   _tl124199124829_
                                   _e124204124832_
                                   _hd124203124835_
                                   _tl124202124837_))
                              (___match127332127333_
                               _e124201124824_
                               _hd124200124827_
                               _tl124199124829_
                               _e124204124832_
                               _hd124203124835_
                               _tl124202124837_))))
                      (___match127332127333_
                       _e124201124824_
                       _hd124200124827_
                       _tl124199124829_
                       _e124204124832_
                       _hd124203124835_
                       _tl124202124837_))))
              (___match127332127333_
               _e124201124824_
               _hd124200124827_
               _tl124199124829_
               _e124204124832_
               _hd124203124835_
               _tl124202124837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127332127333_
                                                   _e124201124824_
                                                   _hd124200124827_
                                                   _tl124199124829_
                                                   _e124204124832_
                                                   _hd124203124835_
                                                   _tl124202124837_))))
                                          (___match127332127333_
                                           _e124201124824_
                                           _hd124200124827_
                                           _tl124199124829_
                                           _e124204124832_
                                           _hd124203124835_
                                           _tl124202124837_))
                                      (___match127332127333_
                                       _e124201124824_
                                       _hd124200124827_
                                       _tl124199124829_
                                       _e124204124832_
                                       _hd124203124835_
                                       _tl124202124837_))
                                  (___match127332127333_
                                   _e124201124824_
                                   _hd124200124827_
                                   _tl124199124829_
                                   _e124204124832_
                                   _hd124203124835_
                                   _tl124202124837_))))
                          (___match127332127333_
                           _e124201124824_
                           _hd124200124827_
                           _tl124199124829_
                           _e124204124832_
                           _hd124203124835_
                           _tl124202124837_))))
                  (___match127332127333_
                   _e124201124824_
                   _hd124200124827_
                   _tl124199124829_
                   _e124204124832_
                   _hd124203124835_
                   _tl124202124837_))
              (___match127332127333_
               _e124201124824_
               _hd124200124827_
               _tl124199124829_
               _e124204124832_
               _hd124203124835_
               _tl124202124837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127332127333_
                                                   _e124201124824_
                                                   _hd124200124827_
                                                   _tl124199124829_
                                                   _e124204124832_
                                                   _hd124203124835_
                                                   _tl124202124837_))))
                                          (___match127332127333_
                                           _e124201124824_
                                           _hd124200124827_
                                           _tl124199124829_
                                           _e124204124832_
                                           _hd124203124835_
                                           _tl124202124837_))))
                                  (___match127332127333_
                                   _e124201124824_
                                   _hd124200124827_
                                   _tl124199124829_
                                   _e124204124832_
                                   _hd124203124835_
                                   _tl124202124837_))))
                          (___match127466127467_
                           _e124201124824_
                           _hd124200124827_
                           _tl124199124829_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127147127148_))
                  (let ((_e124192125041_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127147127148_))))
                    (let ((_tl124190125046_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124192125041_)))
                          (_hd124191125044_
                           (let ()
                             (declare (not safe))
                             (##car _e124192125041_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L125049_ _tl124190125046_))
                            (___kont127149127150_ _L125049_))
                          (___match127174127175_
                           _e124192125041_
                           _hd124191125044_
                           _tl124190125046_))))
                  (let () (declare (not safe)) (_g124187124383_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_stx124136_)
        (letrec ((_clause-e124138_
                  (lambda (_form124179_)
                    (let ((__obj128820
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
                       __obj128820
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form124179_))
                       (if (let ((__tmp128887
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp128887))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form124179_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form124179_))
                               '#f)
                           '#f))
                      __obj128820))))
          (let* ((_g124140124150_
                  (lambda (_g124141124147_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g124141124147_))))
                 (_g124139124176_
                  (lambda (_g124141124153_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g124141124153_))
                        (let ((_e124145124155_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g124141124153_))))
                          (let ((_hd124144124158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124145124155_)))
                                (_tl124143124160_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124145124155_))))
                            ((lambda (_L124163_)
                               (let ((_clauses124174_
                                      (map _clause-e124138_ _L124163_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses124174_)))
                             _tl124143124160_)))
                        (let ()
                          (declare (not safe))
                          (_g124140124150_ _g124141124153_))))))
            (declare (not safe))
            (_g124139124176_ _stx124136_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_stx124068_)
        (let* ((_g124070124087_
                (lambda (_g124071124084_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124071124084_))))
               (_g124069124133_
                (lambda (_g124071124090_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124071124090_))
                      (let ((_e124076124092_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124071124090_))))
                        (let ((_hd124075124095_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124076124092_)))
                              (_tl124074124097_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124076124092_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124074124097_))
                              (let ((_e124079124100_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124074124097_))))
                                (let ((_hd124078124103_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124079124100_)))
                                      (_tl124077124105_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124079124100_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124077124105_))
                                      (let ((_e124082124108_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124077124105_))))
                                        (let ((_hd124081124111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124082124108_)))
                                              (_tl124080124113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124082124108_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124080124113_))
                                              ((lambda (_L124116_ _L124117_)
                                                 (let ((__tmp128888
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _L124116_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp128888
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd124081124111_
                                               _hd124078124103_)
                                              (let ()
                                                (declare (not safe))
                                                (_g124070124087_
                                                 _g124071124090_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124070124087_ _g124071124090_)))))
                              (let ()
                                (declare (not safe))
                                (_g124070124087_ _g124071124090_)))))
                      (let ()
                        (declare (not safe))
                        (_g124070124087_ _g124071124090_))))))
          (declare (not safe))
          (_g124069124133_ _stx124068_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_stx123973_)
        (let* ((___stx127475127476_ _stx123973_)
               (_g123976123996_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127475127476_)))))
          (let ((___kont127477127478_
                 (lambda (_L124040_ _L124041_)
                   (let ((_type-e124058124060_
                          (let ((__tmp128889
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L124041_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp128889))))
                     (if _type-e124058124060_
                         (let ((_type-e124063_ _type-e124058124060_))
                           (_type-e124063_ _stx123973_ _L124040_))
                         '#f))))
                (___kont127479127480_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127475127476_))
                (let ((_e123982124008_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127475127476_))))
                  (let ((_tl123980124013_
                         (let () (declare (not safe)) (##cdr _e123982124008_)))
                        (_hd123981124011_
                         (let ()
                           (declare (not safe))
                           (##car _e123982124008_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123980124013_))
                        (let ((_e123985124016_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123980124013_))))
                          (let ((_tl123983124021_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123985124016_)))
                                (_hd123984124019_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123985124016_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123984124019_))
                                (let ((_e123988124024_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123984124019_))))
                                  (let ((_tl123986124029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123988124024_)))
                                        (_hd123987124027_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123988124024_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123987124027_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123987124027_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123986124029_))
                                                (let ((_e123991124032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123986124029_))))
                                                  (let ((_tl123989124037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123991124032_)))
                                                        (_hd123990124035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123991124032_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123989124037_))
                                                        (___kont127477127478_
                                                         _tl123983124021_
                                                         _hd123990124035_)
                                                        (___kont127479127480_))))
                                                (___kont127479127480_))
                                            (___kont127479127480_))
                                        (___kont127479127480_))))
                                (___kont127479127480_))))
                        (___kont127479127480_))))
                (___kont127479127480_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_stx123922_)
        (let* ((_g123924123937_
                (lambda (_g123925123934_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g123925123934_))))
               (_g123923123970_
                (lambda (_g123925123940_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g123925123940_))
                      (let ((_e123929123942_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g123925123940_))))
                        (let ((_hd123928123945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123929123942_)))
                              (_tl123927123947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123929123942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123927123947_))
                              (let ((_e123932123950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123927123947_))))
                                (let ((_hd123931123953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123932123950_)))
                                      (_tl123930123955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123932123950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123930123955_))
                                      ((lambda (_L123958_)
                                         (let ((__tmp128890
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L123958_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp128890)))
                                       _hd123931123953_)
                                      (let ()
                                        (declare (not safe))
                                        (_g123924123937_ _g123925123940_)))))
                              (let ()
                                (declare (not safe))
                                (_g123924123937_ _g123925123940_)))))
                      (let ()
                        (declare (not safe))
                        (_g123924123937_ _g123925123940_))))))
          (declare (not safe))
          (_g123923123970_ _stx123922_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form123156_)
        (let* ((___stx127513127514_ _form123156_)
               (_g123161123318_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127513127514_)))))
          (let ((___kont127515127516_
                 (lambda (_L123842_ _L123843_ _L123844_) '#t))
                (___kont127521127522_
                 (lambda (_L123630_
                          _L123631_
                          _L123632_
                          _L123633_
                          _L123634_
                          _L123635_)
                   '#t))
                (___kont127527127528_
                 (lambda (_L123426_ _L123427_ _L123428_ _L123429_) '#t))
                (___kont127529127530_ (lambda () '#f)))
            (let* ((___match127654127655_
                    (lambda (_e123280123330_
                             _hd123279123333_
                             _tl123278123335_
                             _e123283123338_
                             _hd123282123341_
                             _tl123281123343_
                             _e123286123346_
                             _hd123285123349_
                             _tl123284123351_
                             _e123289123354_
                             _hd123288123357_
                             _tl123287123359_
                             _e123292123362_
                             _hd123291123365_
                             _tl123290123367_
                             _e123295123370_
                             _hd123294123373_
                             _tl123293123375_
                             _e123298123378_
                             _hd123297123381_
                             _tl123296123383_
                             _e123301123386_
                             _hd123300123389_
                             _tl123299123391_
                             _e123304123394_
                             _hd123303123397_
                             _tl123302123399_
                             _e123307123402_
                             _hd123306123405_
                             _tl123305123407_
                             _e123310123410_
                             _hd123309123413_
                             _tl123308123415_
                             _e123313123418_
                             _hd123312123421_
                             _tl123311123423_)
                      (let ((_L123426_ _hd123312123421_)
                            (_L123427_ _hd123303123397_)
                            (_L123428_ _hd123294123373_)
                            (_L123429_ _hd123279123333_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L123429_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L123428_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L123429_ _L123426_))
                                 (let ((__tmp128891
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L123427_
                                           _L123429_))))
                                   (declare (not safe))
                                   (not __tmp128891)))
                            (___kont127527127528_
                             _L123426_
                             _L123427_
                             _L123428_
                             _L123429_)
                            (___kont127529127530_)))))
                   (___match127626127627_
                    (lambda (_e123280123330_
                             _hd123279123333_
                             _tl123278123335_
                             _e123283123338_
                             _hd123282123341_
                             _tl123281123343_
                             _e123286123346_
                             _hd123285123349_
                             _tl123284123351_
                             _e123289123354_
                             _hd123288123357_
                             _tl123287123359_
                             _e123292123362_
                             _hd123291123365_
                             _tl123290123367_
                             _e123295123370_
                             _hd123294123373_
                             _tl123293123375_
                             _e123298123378_
                             _hd123297123381_
                             _tl123296123383_
                             _e123301123386_
                             _hd123300123389_
                             _tl123299123391_
                             _e123304123394_
                             _hd123303123397_
                             _tl123302123399_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl123296123383_))
                          (let ((_e123307123402_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl123296123383_))))
                            (let ((_tl123305123407_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e123307123402_)))
                                  (_hd123306123405_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e123307123402_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd123306123405_))
                                  (let ((_e123310123410_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd123306123405_))))
                                    (let ((_tl123308123415_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123310123410_)))
                                          (_hd123309123413_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123310123410_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd123309123413_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd123309123413_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123308123415_))
                                                  (let ((_e123313123418_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123308123415_))))
                                                    (let ((_tl123311123423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123313123418_)))
                                                          (_hd123312123421_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123313123418_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl123311123423_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl123305123407_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl123281123343_))
                          (___match127654127655_
                           _e123280123330_
                           _hd123279123333_
                           _tl123278123335_
                           _e123283123338_
                           _hd123282123341_
                           _tl123281123343_
                           _e123286123346_
                           _hd123285123349_
                           _tl123284123351_
                           _e123289123354_
                           _hd123288123357_
                           _tl123287123359_
                           _e123292123362_
                           _hd123291123365_
                           _tl123290123367_
                           _e123295123370_
                           _hd123294123373_
                           _tl123293123375_
                           _e123298123378_
                           _hd123297123381_
                           _tl123296123383_
                           _e123301123386_
                           _hd123300123389_
                           _tl123299123391_
                           _e123304123394_
                           _hd123303123397_
                           _tl123302123399_
                           _e123307123402_
                           _hd123306123405_
                           _tl123305123407_
                           _e123310123410_
                           _hd123309123413_
                           _tl123308123415_
                           _e123313123418_
                           _hd123312123421_
                           _tl123311123423_)
                          (___kont127529127530_))
                      (___kont127529127530_))
                  (___kont127529127530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127529127530_))
                                              (___kont127529127530_))
                                          (___kont127529127530_))))
                                  (___kont127529127530_))))
                          (___kont127529127530_))))
                   (___match127556127557_
                    (lambda (_e123216123470_
                             _hd123215123473_
                             _tl123214123475_
                             ___splice127523127524_
                             _target123217123478_
                             _tl123219123480_)
                      (letrec ((_loop123220123483_
                                (lambda (_hd123218123486_ _arg123224123488_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123218123486_))
                                      (let ((_e123221123491_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123218123486_))))
                                        (let ((_lp-tl123223123496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123221123491_)))
                                              (_lp-hd123222123494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123221123491_))))
                                          (let ((__tmp128906
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123222123494_
                                                         _arg123224123488_))))
                                            (declare (not safe))
                                            (_loop123220123483_
                                             _lp-tl123223123496_
                                             __tmp128906))))
                                      (let ((_arg123225123499_
                                             (reverse _arg123224123488_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123214123475_))
                                            (let ((_e123228123502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123214123475_))))
                                              (let ((_tl123226123507_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123228123502_)))
                                                    (_hd123227123505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123228123502_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123227123505_))
                                                    (let ((_e123231123510_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123227123505_))))
                                                      (let ((_tl123229123515_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123231123510_)))
                    (_hd123230123513_
                     (let () (declare (not safe)) (##car _e123231123510_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123230123513_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123230123513_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123229123515_))
                            (let ((_e123234123518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123229123515_))))
                              (let ((_tl123232123523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123234123518_)))
                                    (_hd123233123521_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123234123518_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123233123521_))
                                    (let ((_e123237123526_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123233123521_))))
                                      (let ((_tl123235123531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123237123526_)))
                                            (_hd123236123529_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123237123526_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123236123529_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123236123529_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123235123531_))
                                                    (let ((_e123240123534_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123235123531_))))
                                                      (let ((_tl123238123539_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123240123534_)))
                    (_hd123239123537_
                     (let () (declare (not safe)) (##car _e123240123534_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123238123539_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123232123523_))
                        (let ((_e123243123542_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123232123523_))))
                          (let ((_tl123241123547_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123243123542_)))
                                (_hd123242123545_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123243123542_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123242123545_))
                                (let ((_e123246123550_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123242123545_))))
                                  (let ((_tl123244123555_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123246123550_)))
                                        (_hd123245123553_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123246123550_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123245123553_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123245123553_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123244123555_))
                                                (let ((_e123249123558_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123244123555_))))
                                                  (let ((_tl123247123563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123249123558_)))
                                                        (_hd123248123561_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123249123558_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123247123563_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl123241123547_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl123241123547_))
                              '1)
                        (let ((___splice127525127526_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123241123547_
                                  '1))))
                          (let ((_tl123252123568_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127525127526_ '1)))
                                (_target123250123566_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127525127526_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123252123568_))
                                (let ((_e123261123571_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123252123568_))))
                                  (let ((_tl123259123576_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123261123571_)))
                                        (_hd123260123574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123261123571_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123260123574_))
                                        (let ((_e123264123579_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123260123574_))))
                                          (let ((_tl123262123584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123264123579_)))
                                                (_hd123263123582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123264123579_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd123263123582_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd123263123582_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123262123584_))
                                                        (let ((_e123267123587_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123262123584_))))
                  (let ((_tl123265123592_
                         (let () (declare (not safe)) (##cdr _e123267123587_)))
                        (_hd123266123590_
                         (let ()
                           (declare (not safe))
                           (##car _e123267123587_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123265123592_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl123259123576_))
                            (letrec ((_loop123253123595_
                                      (lambda (_hd123251123598_
                                               _xarg123257123600_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd123251123598_))
                                            (let ((_e123254123603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd123251123598_))))
                                              (let ((_lp-tl123256123608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123254123603_)))
                                                    (_lp-hd123255123606_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123254123603_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd123255123606_))
                                                    (let ((_e123270123611_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd123255123606_))))
                                                      (let ((_tl123268123616_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123270123611_)))
                    (_hd123269123614_
                     (let () (declare (not safe)) (##car _e123270123611_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123269123614_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123269123614_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123268123616_))
                            (let ((_e123273123619_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123268123616_))))
                              (let ((_tl123271123624_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123273123619_)))
                                    (_hd123272123622_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123273123619_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123271123624_))
                                    (let ((__tmp128905
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd123272123622_
                                                   _xarg123257123600_))))
                                      (declare (not safe))
                                      (_loop123253123595_
                                       _lp-tl123256123608_
                                       __tmp128905))
                                    (___match127626127627_
                                     _e123216123470_
                                     _hd123215123473_
                                     _tl123214123475_
                                     _e123228123502_
                                     _hd123227123505_
                                     _tl123226123507_
                                     _e123231123510_
                                     _hd123230123513_
                                     _tl123229123515_
                                     _e123234123518_
                                     _hd123233123521_
                                     _tl123232123523_
                                     _e123237123526_
                                     _hd123236123529_
                                     _tl123235123531_
                                     _e123240123534_
                                     _hd123239123537_
                                     _tl123238123539_
                                     _e123243123542_
                                     _hd123242123545_
                                     _tl123241123547_
                                     _e123246123550_
                                     _hd123245123553_
                                     _tl123244123555_
                                     _e123249123558_
                                     _hd123248123561_
                                     _tl123247123563_))))
                            (___match127626127627_
                             _e123216123470_
                             _hd123215123473_
                             _tl123214123475_
                             _e123228123502_
                             _hd123227123505_
                             _tl123226123507_
                             _e123231123510_
                             _hd123230123513_
                             _tl123229123515_
                             _e123234123518_
                             _hd123233123521_
                             _tl123232123523_
                             _e123237123526_
                             _hd123236123529_
                             _tl123235123531_
                             _e123240123534_
                             _hd123239123537_
                             _tl123238123539_
                             _e123243123542_
                             _hd123242123545_
                             _tl123241123547_
                             _e123246123550_
                             _hd123245123553_
                             _tl123244123555_
                             _e123249123558_
                             _hd123248123561_
                             _tl123247123563_))
                        (___match127626127627_
                         _e123216123470_
                         _hd123215123473_
                         _tl123214123475_
                         _e123228123502_
                         _hd123227123505_
                         _tl123226123507_
                         _e123231123510_
                         _hd123230123513_
                         _tl123229123515_
                         _e123234123518_
                         _hd123233123521_
                         _tl123232123523_
                         _e123237123526_
                         _hd123236123529_
                         _tl123235123531_
                         _e123240123534_
                         _hd123239123537_
                         _tl123238123539_
                         _e123243123542_
                         _hd123242123545_
                         _tl123241123547_
                         _e123246123550_
                         _hd123245123553_
                         _tl123244123555_
                         _e123249123558_
                         _hd123248123561_
                         _tl123247123563_))
                    (___match127626127627_
                     _e123216123470_
                     _hd123215123473_
                     _tl123214123475_
                     _e123228123502_
                     _hd123227123505_
                     _tl123226123507_
                     _e123231123510_
                     _hd123230123513_
                     _tl123229123515_
                     _e123234123518_
                     _hd123233123521_
                     _tl123232123523_
                     _e123237123526_
                     _hd123236123529_
                     _tl123235123531_
                     _e123240123534_
                     _hd123239123537_
                     _tl123238123539_
                     _e123243123542_
                     _hd123242123545_
                     _tl123241123547_
                     _e123246123550_
                     _hd123245123553_
                     _tl123244123555_
                     _e123249123558_
                     _hd123248123561_
                     _tl123247123563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127626127627_
                                                     _e123216123470_
                                                     _hd123215123473_
                                                     _tl123214123475_
                                                     _e123228123502_
                                                     _hd123227123505_
                                                     _tl123226123507_
                                                     _e123231123510_
                                                     _hd123230123513_
                                                     _tl123229123515_
                                                     _e123234123518_
                                                     _hd123233123521_
                                                     _tl123232123523_
                                                     _e123237123526_
                                                     _hd123236123529_
                                                     _tl123235123531_
                                                     _e123240123534_
                                                     _hd123239123537_
                                                     _tl123238123539_
                                                     _e123243123542_
                                                     _hd123242123545_
                                                     _tl123241123547_
                                                     _e123246123550_
                                                     _hd123245123553_
                                                     _tl123244123555_
                                                     _e123249123558_
                                                     _hd123248123561_
                                                     _tl123247123563_))))
                                            (let ((_xarg123258123627_
                                                   (reverse _xarg123257123600_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl123226123507_))
                                                  (let ((_L123630_
                                                         _hd123266123590_)
                                                        (_L123631_
                                                         _xarg123258123627_)
                                                        (_L123632_
                                                         _hd123248123561_)
                                                        (_L123633_
                                                         _hd123239123537_)
                                                        (_L123634_
                                                         _tl123219123480_)
                                                        (_L123635_
                                                         _arg123225123499_))
                                                    (if (and (let ((__tmp128903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp128904
                                   (lambda (_g123678123681_ _g123679123683_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123678123681_
                                             _g123679123683_)))))
                              (declare (not safe))
                              (foldr1 __tmp128904 '() _L123635_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp128903))
                     (let () (declare (not safe)) (gx#identifier? _L123634_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L123633_ 'apply))
                     (fx= (length (let ((__tmp128901
                                         (lambda (_g123685123688_
                                                  _g123686123690_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123685123688_
                                                   _g123686123690_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128901 '() _L123635_)))
                          (length (let ((__tmp128902
                                         (lambda (_g123692123695_
                                                  _g123693123697_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g123692123695_
                                                   _g123693123697_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp128902 '() _L123631_))))
                     (let ((__tmp128899
                            (let ((__tmp128900
                                   (lambda (_g123699123702_ _g123700123704_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123699123702_
                                             _g123700123704_)))))
                              (declare (not safe))
                              (foldr1 __tmp128900 '() _L123635_)))
                           (__tmp128897
                            (let ((__tmp128898
                                   (lambda (_g123706123709_ _g123707123711_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g123706123709_
                                             _g123707123711_)))))
                              (declare (not safe))
                              (foldr1 __tmp128898 '() _L123631_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp128899 __tmp128897))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L123634_ _L123630_))
                     (let ((__tmp128892
                            (let ((__tmp128896
                                   (lambda (_g123713123715_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g123713123715_
                                        _L123632_))))
                                  (__tmp128893
                                   (let ((__tmp128895
                                          (lambda (_g123717123720_
                                                   _g123718123722_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g123717123720_
                                                    _g123718123722_))))
                                         (__tmp128894
                                          (let ()
                                            (declare (not safe))
                                            (cons _L123634_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp128895
                                             __tmp128894
                                             _L123635_))))
                              (declare (not safe))
                              (find __tmp128896 __tmp128893))))
                       (declare (not safe))
                       (not __tmp128892)))
                (___kont127521127522_
                 _L123630_
                 _L123631_
                 _L123632_
                 _L123633_
                 _L123634_
                 _L123635_)
                (___match127626127627_
                 _e123216123470_
                 _hd123215123473_
                 _tl123214123475_
                 _e123228123502_
                 _hd123227123505_
                 _tl123226123507_
                 _e123231123510_
                 _hd123230123513_
                 _tl123229123515_
                 _e123234123518_
                 _hd123233123521_
                 _tl123232123523_
                 _e123237123526_
                 _hd123236123529_
                 _tl123235123531_
                 _e123240123534_
                 _hd123239123537_
                 _tl123238123539_
                 _e123243123542_
                 _hd123242123545_
                 _tl123241123547_
                 _e123246123550_
                 _hd123245123553_
                 _tl123244123555_
                 _e123249123558_
                 _hd123248123561_
                 _tl123247123563_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match127626127627_
                                                   _e123216123470_
                                                   _hd123215123473_
                                                   _tl123214123475_
                                                   _e123228123502_
                                                   _hd123227123505_
                                                   _tl123226123507_
                                                   _e123231123510_
                                                   _hd123230123513_
                                                   _tl123229123515_
                                                   _e123234123518_
                                                   _hd123233123521_
                                                   _tl123232123523_
                                                   _e123237123526_
                                                   _hd123236123529_
                                                   _tl123235123531_
                                                   _e123240123534_
                                                   _hd123239123537_
                                                   _tl123238123539_
                                                   _e123243123542_
                                                   _hd123242123545_
                                                   _tl123241123547_
                                                   _e123246123550_
                                                   _hd123245123553_
                                                   _tl123244123555_
                                                   _e123249123558_
                                                   _hd123248123561_
                                                   _tl123247123563_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop123253123595_ _target123250123566_ '())))
                            (___match127626127627_
                             _e123216123470_
                             _hd123215123473_
                             _tl123214123475_
                             _e123228123502_
                             _hd123227123505_
                             _tl123226123507_
                             _e123231123510_
                             _hd123230123513_
                             _tl123229123515_
                             _e123234123518_
                             _hd123233123521_
                             _tl123232123523_
                             _e123237123526_
                             _hd123236123529_
                             _tl123235123531_
                             _e123240123534_
                             _hd123239123537_
                             _tl123238123539_
                             _e123243123542_
                             _hd123242123545_
                             _tl123241123547_
                             _e123246123550_
                             _hd123245123553_
                             _tl123244123555_
                             _e123249123558_
                             _hd123248123561_
                             _tl123247123563_))
                        (___match127626127627_
                         _e123216123470_
                         _hd123215123473_
                         _tl123214123475_
                         _e123228123502_
                         _hd123227123505_
                         _tl123226123507_
                         _e123231123510_
                         _hd123230123513_
                         _tl123229123515_
                         _e123234123518_
                         _hd123233123521_
                         _tl123232123523_
                         _e123237123526_
                         _hd123236123529_
                         _tl123235123531_
                         _e123240123534_
                         _hd123239123537_
                         _tl123238123539_
                         _e123243123542_
                         _hd123242123545_
                         _tl123241123547_
                         _e123246123550_
                         _hd123245123553_
                         _tl123244123555_
                         _e123249123558_
                         _hd123248123561_
                         _tl123247123563_))))
                (___match127626127627_
                 _e123216123470_
                 _hd123215123473_
                 _tl123214123475_
                 _e123228123502_
                 _hd123227123505_
                 _tl123226123507_
                 _e123231123510_
                 _hd123230123513_
                 _tl123229123515_
                 _e123234123518_
                 _hd123233123521_
                 _tl123232123523_
                 _e123237123526_
                 _hd123236123529_
                 _tl123235123531_
                 _e123240123534_
                 _hd123239123537_
                 _tl123238123539_
                 _e123243123542_
                 _hd123242123545_
                 _tl123241123547_
                 _e123246123550_
                 _hd123245123553_
                 _tl123244123555_
                 _e123249123558_
                 _hd123248123561_
                 _tl123247123563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127626127627_
                                                     _e123216123470_
                                                     _hd123215123473_
                                                     _tl123214123475_
                                                     _e123228123502_
                                                     _hd123227123505_
                                                     _tl123226123507_
                                                     _e123231123510_
                                                     _hd123230123513_
                                                     _tl123229123515_
                                                     _e123234123518_
                                                     _hd123233123521_
                                                     _tl123232123523_
                                                     _e123237123526_
                                                     _hd123236123529_
                                                     _tl123235123531_
                                                     _e123240123534_
                                                     _hd123239123537_
                                                     _tl123238123539_
                                                     _e123243123542_
                                                     _hd123242123545_
                                                     _tl123241123547_
                                                     _e123246123550_
                                                     _hd123245123553_
                                                     _tl123244123555_
                                                     _e123249123558_
                                                     _hd123248123561_
                                                     _tl123247123563_))
                                                (___match127626127627_
                                                 _e123216123470_
                                                 _hd123215123473_
                                                 _tl123214123475_
                                                 _e123228123502_
                                                 _hd123227123505_
                                                 _tl123226123507_
                                                 _e123231123510_
                                                 _hd123230123513_
                                                 _tl123229123515_
                                                 _e123234123518_
                                                 _hd123233123521_
                                                 _tl123232123523_
                                                 _e123237123526_
                                                 _hd123236123529_
                                                 _tl123235123531_
                                                 _e123240123534_
                                                 _hd123239123537_
                                                 _tl123238123539_
                                                 _e123243123542_
                                                 _hd123242123545_
                                                 _tl123241123547_
                                                 _e123246123550_
                                                 _hd123245123553_
                                                 _tl123244123555_
                                                 _e123249123558_
                                                 _hd123248123561_
                                                 _tl123247123563_))))
                                        (___match127626127627_
                                         _e123216123470_
                                         _hd123215123473_
                                         _tl123214123475_
                                         _e123228123502_
                                         _hd123227123505_
                                         _tl123226123507_
                                         _e123231123510_
                                         _hd123230123513_
                                         _tl123229123515_
                                         _e123234123518_
                                         _hd123233123521_
                                         _tl123232123523_
                                         _e123237123526_
                                         _hd123236123529_
                                         _tl123235123531_
                                         _e123240123534_
                                         _hd123239123537_
                                         _tl123238123539_
                                         _e123243123542_
                                         _hd123242123545_
                                         _tl123241123547_
                                         _e123246123550_
                                         _hd123245123553_
                                         _tl123244123555_
                                         _e123249123558_
                                         _hd123248123561_
                                         _tl123247123563_))))
                                (___match127626127627_
                                 _e123216123470_
                                 _hd123215123473_
                                 _tl123214123475_
                                 _e123228123502_
                                 _hd123227123505_
                                 _tl123226123507_
                                 _e123231123510_
                                 _hd123230123513_
                                 _tl123229123515_
                                 _e123234123518_
                                 _hd123233123521_
                                 _tl123232123523_
                                 _e123237123526_
                                 _hd123236123529_
                                 _tl123235123531_
                                 _e123240123534_
                                 _hd123239123537_
                                 _tl123238123539_
                                 _e123243123542_
                                 _hd123242123545_
                                 _tl123241123547_
                                 _e123246123550_
                                 _hd123245123553_
                                 _tl123244123555_
                                 _e123249123558_
                                 _hd123248123561_
                                 _tl123247123563_))))
                        (___match127626127627_
                         _e123216123470_
                         _hd123215123473_
                         _tl123214123475_
                         _e123228123502_
                         _hd123227123505_
                         _tl123226123507_
                         _e123231123510_
                         _hd123230123513_
                         _tl123229123515_
                         _e123234123518_
                         _hd123233123521_
                         _tl123232123523_
                         _e123237123526_
                         _hd123236123529_
                         _tl123235123531_
                         _e123240123534_
                         _hd123239123537_
                         _tl123238123539_
                         _e123243123542_
                         _hd123242123545_
                         _tl123241123547_
                         _e123246123550_
                         _hd123245123553_
                         _tl123244123555_
                         _e123249123558_
                         _hd123248123561_
                         _tl123247123563_))
                    (___match127626127627_
                     _e123216123470_
                     _hd123215123473_
                     _tl123214123475_
                     _e123228123502_
                     _hd123227123505_
                     _tl123226123507_
                     _e123231123510_
                     _hd123230123513_
                     _tl123229123515_
                     _e123234123518_
                     _hd123233123521_
                     _tl123232123523_
                     _e123237123526_
                     _hd123236123529_
                     _tl123235123531_
                     _e123240123534_
                     _hd123239123537_
                     _tl123238123539_
                     _e123243123542_
                     _hd123242123545_
                     _tl123241123547_
                     _e123246123550_
                     _hd123245123553_
                     _tl123244123555_
                     _e123249123558_
                     _hd123248123561_
                     _tl123247123563_))
                (___kont127529127530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127529127530_))
                                            (___kont127529127530_))
                                        (___kont127529127530_))))
                                (___kont127529127530_))))
                        (___kont127529127530_))
                    (___kont127529127530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127529127530_))
                                                (___kont127529127530_))
                                            (___kont127529127530_))))
                                    (___kont127529127530_))))
                            (___kont127529127530_))
                        (___kont127529127530_))
                    (___kont127529127530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127529127530_))))
                                            (___kont127529127530_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123220123483_ _target123217123478_ '())))))
                   (___match127544127545_
                    (lambda (_e123168123730_
                             _hd123167123733_
                             _tl123166123735_
                             ___splice127517127518_
                             _target123169123738_
                             _tl123171123740_)
                      (letrec ((_loop123172123743_
                                (lambda (_hd123170123746_ _arg123176123748_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123170123746_))
                                      (let ((_e123173123751_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123170123746_))))
                                        (let ((_lp-tl123175123756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123173123751_)))
                                              (_lp-hd123174123754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123173123751_))))
                                          (let ((__tmp128920
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd123174123754_
                                                         _arg123176123748_))))
                                            (declare (not safe))
                                            (_loop123172123743_
                                             _lp-tl123175123756_
                                             __tmp128920))))
                                      (let ((_arg123177123759_
                                             (reverse _arg123176123748_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123166123735_))
                                            (let ((_e123180123762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123166123735_))))
                                              (let ((_tl123178123767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123180123762_)))
                                                    (_hd123179123765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123180123762_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123179123765_))
                                                    (let ((_e123183123770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123179123765_))))
                                                      (let ((_tl123181123775_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123183123770_)))
                    (_hd123182123773_
                     (let () (declare (not safe)) (##car _e123183123770_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123182123773_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123182123773_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123181123775_))
                            (let ((_e123186123778_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123181123775_))))
                              (let ((_tl123184123783_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123186123778_)))
                                    (_hd123185123781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123186123778_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123185123781_))
                                    (let ((_e123189123786_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123185123781_))))
                                      (let ((_tl123187123791_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123189123786_)))
                                            (_hd123188123789_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123189123786_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123188123789_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123188123789_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123187123791_))
                                                    (let ((_e123192123794_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123187123791_))))
                                                      (let ((_tl123190123799_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123192123794_)))
                    (_hd123191123797_
                     (let () (declare (not safe)) (##car _e123192123794_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123190123799_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl123184123783_))
                        (let ((___splice127519127520_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl123184123783_
                                  '0))))
                          (let ((_tl123195123804_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127519127520_ '1)))
                                (_target123193123802_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127519127520_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123195123804_))
                                (letrec ((_loop123196123807_
                                          (lambda (_hd123194123810_
                                                   _xarg123200123812_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123194123810_))
                                                (let ((_e123197123815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123194123810_))))
                                                  (let ((_lp-tl123199123820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123197123815_)))
                                                        (_lp-hd123198123818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123197123815_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd123198123818_))
                                                        (let ((_e123204123823_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd123198123818_))))
                  (let ((_tl123202123828_
                         (let () (declare (not safe)) (##cdr _e123204123823_)))
                        (_hd123203123826_
                         (let ()
                           (declare (not safe))
                           (##car _e123204123823_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123203123826_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123203123826_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123202123828_))
                                (let ((_e123207123831_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123202123828_))))
                                  (let ((_tl123205123836_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123207123831_)))
                                        (_hd123206123834_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123207123831_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123205123836_))
                                        (let ((__tmp128919
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd123206123834_
                                                       _xarg123200123812_))))
                                          (declare (not safe))
                                          (_loop123196123807_
                                           _lp-tl123199123820_
                                           __tmp128919))
                                        (___match127556127557_
                                         _e123168123730_
                                         _hd123167123733_
                                         _tl123166123735_
                                         ___splice127517127518_
                                         _target123169123738_
                                         _tl123171123740_))))
                                (___match127556127557_
                                 _e123168123730_
                                 _hd123167123733_
                                 _tl123166123735_
                                 ___splice127517127518_
                                 _target123169123738_
                                 _tl123171123740_))
                            (___match127556127557_
                             _e123168123730_
                             _hd123167123733_
                             _tl123166123735_
                             ___splice127517127518_
                             _target123169123738_
                             _tl123171123740_))
                        (___match127556127557_
                         _e123168123730_
                         _hd123167123733_
                         _tl123166123735_
                         ___splice127517127518_
                         _target123169123738_
                         _tl123171123740_))))
                (___match127556127557_
                 _e123168123730_
                 _hd123167123733_
                 _tl123166123735_
                 ___splice127517127518_
                 _target123169123738_
                 _tl123171123740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg123201123839_
                                                       (reverse _xarg123200123812_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl123178123767_))
                                                      (let ((_L123842_
                                                             _xarg123201123839_)
                                                            (_L123843_
                                                             _hd123191123797_)
                                                            (_L123844_
                                                             _arg123177123759_))
                                                        (if (and (let ((__tmp128917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp128918
                                       (lambda (_g123872123875_
                                                _g123873123877_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123872123875_
                                                 _g123873123877_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128918 '() _L123844_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp128917))
                         (fx= (length (let ((__tmp128915
                                             (lambda (_g123879123882_
                                                      _g123880123884_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123879123882_
                                                       _g123880123884_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128915 '() _L123844_)))
                              (length (let ((__tmp128916
                                             (lambda (_g123886123889_
                                                      _g123887123891_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g123886123889_
                                                       _g123887123891_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp128916 '() _L123842_))))
                         (let ((__tmp128913
                                (let ((__tmp128914
                                       (lambda (_g123893123896_
                                                _g123894123898_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123893123896_
                                                 _g123894123898_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128914 '() _L123844_)))
                               (__tmp128911
                                (let ((__tmp128912
                                       (lambda (_g123900123903_
                                                _g123901123905_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g123900123903_
                                                 _g123901123905_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp128912 '() _L123842_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp128913
                                    __tmp128911))
                         (let ((__tmp128907
                                (let ((__tmp128910
                                       (lambda (_g123907123909_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g123907123909_
                                            _L123843_))))
                                      (__tmp128908
                                       (let ((__tmp128909
                                              (lambda (_g123911123914_
                                                       _g123912123916_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g123911123914_
                                                        _g123912123916_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp128909 '() _L123844_))))
                                  (declare (not safe))
                                  (find __tmp128910 __tmp128908))))
                           (declare (not safe))
                           (not __tmp128907)))
                    (___kont127515127516_ _L123842_ _L123843_ _L123844_)
                    (___match127556127557_
                     _e123168123730_
                     _hd123167123733_
                     _tl123166123735_
                     ___splice127517127518_
                     _target123169123738_
                     _tl123171123740_)))
              (___match127556127557_
               _e123168123730_
               _hd123167123733_
               _tl123166123735_
               ___splice127517127518_
               _target123169123738_
               _tl123171123740_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop123196123807_
                                     _target123193123802_
                                     '())))
                                (___match127556127557_
                                 _e123168123730_
                                 _hd123167123733_
                                 _tl123166123735_
                                 ___splice127517127518_
                                 _target123169123738_
                                 _tl123171123740_))))
                        (___match127556127557_
                         _e123168123730_
                         _hd123167123733_
                         _tl123166123735_
                         ___splice127517127518_
                         _target123169123738_
                         _tl123171123740_))
                    (___match127556127557_
                     _e123168123730_
                     _hd123167123733_
                     _tl123166123735_
                     ___splice127517127518_
                     _target123169123738_
                     _tl123171123740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127556127557_
                                                     _e123168123730_
                                                     _hd123167123733_
                                                     _tl123166123735_
                                                     ___splice127517127518_
                                                     _target123169123738_
                                                     _tl123171123740_))
                                                (___match127556127557_
                                                 _e123168123730_
                                                 _hd123167123733_
                                                 _tl123166123735_
                                                 ___splice127517127518_
                                                 _target123169123738_
                                                 _tl123171123740_))
                                            (___match127556127557_
                                             _e123168123730_
                                             _hd123167123733_
                                             _tl123166123735_
                                             ___splice127517127518_
                                             _target123169123738_
                                             _tl123171123740_))))
                                    (___match127556127557_
                                     _e123168123730_
                                     _hd123167123733_
                                     _tl123166123735_
                                     ___splice127517127518_
                                     _target123169123738_
                                     _tl123171123740_))))
                            (___match127556127557_
                             _e123168123730_
                             _hd123167123733_
                             _tl123166123735_
                             ___splice127517127518_
                             _target123169123738_
                             _tl123171123740_))
                        (___match127556127557_
                         _e123168123730_
                         _hd123167123733_
                         _tl123166123735_
                         ___splice127517127518_
                         _target123169123738_
                         _tl123171123740_))
                    (___match127556127557_
                     _e123168123730_
                     _hd123167123733_
                     _tl123166123735_
                     ___splice127517127518_
                     _target123169123738_
                     _tl123171123740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127556127557_
                                                     _e123168123730_
                                                     _hd123167123733_
                                                     _tl123166123735_
                                                     ___splice127517127518_
                                                     _target123169123738_
                                                     _tl123171123740_))))
                                            (___match127556127557_
                                             _e123168123730_
                                             _hd123167123733_
                                             _tl123166123735_
                                             ___splice127517127518_
                                             _target123169123738_
                                             _tl123171123740_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop123172123743_ _target123169123738_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127513127514_))
                  (let ((_e123168123730_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127513127514_))))
                    (let ((_tl123166123735_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123168123730_)))
                          (_hd123167123733_
                           (let ()
                             (declare (not safe))
                             (##car _e123168123730_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd123167123733_))
                          (let ((___splice127517127518_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd123167123733_
                                    '0))))
                            (let ((_tl123171123740_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127517127518_ '1)))
                                  (_target123169123738_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127517127518_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl123171123740_))
                                  (___match127544127545_
                                   _e123168123730_
                                   _hd123167123733_
                                   _tl123166123735_
                                   ___splice127517127518_
                                   _target123169123738_
                                   _tl123171123740_)
                                  (___match127556127557_
                                   _e123168123730_
                                   _hd123167123733_
                                   _tl123166123735_
                                   ___splice127517127518_
                                   _target123169123738_
                                   _tl123171123740_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123166123735_))
                              (let ((_e123283123338_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123166123735_))))
                                (let ((_tl123281123343_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123283123338_)))
                                      (_hd123282123341_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123283123338_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd123282123341_))
                                      (let ((_e123286123346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd123282123341_))))
                                        (let ((_tl123284123351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123286123346_)))
                                              (_hd123285123349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123286123346_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd123285123349_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd123285123349_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl123284123351_))
                                                      (let ((_e123289123354_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl123284123351_))))
                (let ((_tl123287123359_
                       (let () (declare (not safe)) (##cdr _e123289123354_)))
                      (_hd123288123357_
                       (let () (declare (not safe)) (##car _e123289123354_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd123288123357_))
                      (let ((_e123292123362_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd123288123357_))))
                        (let ((_tl123290123367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e123292123362_)))
                              (_hd123291123365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e123292123362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd123291123365_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd123291123365_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl123290123367_))
                                      (let ((_e123295123370_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl123290123367_))))
                                        (let ((_tl123293123375_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123295123370_)))
                                              (_hd123294123373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123295123370_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123293123375_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl123287123359_))
                                                  (let ((_e123298123378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl123287123359_))))
                                                    (let ((_tl123296123383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e123298123378_)))
                                                          (_hd123297123381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e123298123378_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd123297123381_))
                                                          (let ((_e123301123386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd123297123381_))))
                    (let ((_tl123299123391_
                           (let ()
                             (declare (not safe))
                             (##cdr _e123301123386_)))
                          (_hd123300123389_
                           (let ()
                             (declare (not safe))
                             (##car _e123301123386_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd123300123389_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd123300123389_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl123299123391_))
                                  (let ((_e123304123394_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl123299123391_))))
                                    (let ((_tl123302123399_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e123304123394_)))
                                          (_hd123303123397_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e123304123394_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123302123399_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl123296123383_))
                                              (let ((_e123307123402_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl123296123383_))))
                                                (let ((_tl123305123407_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e123307123402_)))
                                                      (_hd123306123405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e123307123402_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd123306123405_))
                                                      (let ((_e123310123410_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd123306123405_))))
                (let ((_tl123308123415_
                       (let () (declare (not safe)) (##cdr _e123310123410_)))
                      (_hd123309123413_
                       (let () (declare (not safe)) (##car _e123310123410_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd123309123413_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd123309123413_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl123308123415_))
                              (let ((_e123313123418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl123308123415_))))
                                (let ((_tl123311123423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e123313123418_)))
                                      (_hd123312123421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e123313123418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl123311123423_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl123305123407_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl123281123343_))
                                              (___match127654127655_
                                               _e123168123730_
                                               _hd123167123733_
                                               _tl123166123735_
                                               _e123283123338_
                                               _hd123282123341_
                                               _tl123281123343_
                                               _e123286123346_
                                               _hd123285123349_
                                               _tl123284123351_
                                               _e123289123354_
                                               _hd123288123357_
                                               _tl123287123359_
                                               _e123292123362_
                                               _hd123291123365_
                                               _tl123290123367_
                                               _e123295123370_
                                               _hd123294123373_
                                               _tl123293123375_
                                               _e123298123378_
                                               _hd123297123381_
                                               _tl123296123383_
                                               _e123301123386_
                                               _hd123300123389_
                                               _tl123299123391_
                                               _e123304123394_
                                               _hd123303123397_
                                               _tl123302123399_
                                               _e123307123402_
                                               _hd123306123405_
                                               _tl123305123407_
                                               _e123310123410_
                                               _hd123309123413_
                                               _tl123308123415_
                                               _e123313123418_
                                               _hd123312123421_
                                               _tl123311123423_)
                                              (___kont127529127530_))
                                          (___kont127529127530_))
                                      (___kont127529127530_))))
                              (___kont127529127530_))
                          (___kont127529127530_))
                      (___kont127529127530_))))
              (___kont127529127530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont127529127530_))
                                          (___kont127529127530_))))
                                  (___kont127529127530_))
                              (___kont127529127530_))
                          (___kont127529127530_))))
                  (___kont127529127530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127529127530_))
                                              (___kont127529127530_))))
                                      (___kont127529127530_))
                                  (___kont127529127530_))
                              (___kont127529127530_))))
                      (___kont127529127530_))))
              (___kont127529127530_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont127529127530_))
                                              (___kont127529127530_))))
                                      (___kont127529127530_))))
                              (___kont127529127530_)))))
                  (___kont127529127530_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form122624_)
        (let* ((___stx127657127658_ _form122624_)
               (_g122628122752_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127657127658_)))))
          (let ((___kont127659127660_
                 (lambda (_L123122_ _L123123_ _L123124_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L123123_))))
                (___kont127665127666_
                 (lambda (_L122970_ _L122971_ _L122972_ _L122973_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122970_))))
                (___kont127669127670_
                 (lambda (_L122837_ _L122838_ _L122839_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L122837_)))))
            (let* ((___match127766127767_
                    (lambda (_e122720122757_
                             _hd122719122760_
                             _tl122718122762_
                             _e122723122765_
                             _hd122722122768_
                             _tl122721122770_
                             _e122726122773_
                             _hd122725122776_
                             _tl122724122778_
                             _e122729122781_
                             _hd122728122784_
                             _tl122727122786_
                             _e122732122789_
                             _hd122731122792_
                             _tl122730122794_
                             _e122735122797_
                             _hd122734122800_
                             _tl122733122802_
                             _e122738122805_
                             _hd122737122808_
                             _tl122736122810_
                             _e122741122813_
                             _hd122740122816_
                             _tl122739122818_
                             _e122744122821_
                             _hd122743122824_
                             _tl122742122826_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122736122810_))
                          (let ((_e122747122829_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122736122810_))))
                            (let ((_tl122745122834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122747122829_)))
                                  (_hd122746122832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122747122829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122745122834_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122721122770_))
                                      (___kont127669127670_
                                       _hd122743122824_
                                       _hd122734122800_
                                       _hd122719122760_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122628122752_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122628122752_)))))
                          (let () (declare (not safe)) (_g122628122752_)))))
                   (___match127696127697_
                    (lambda (_e122681122874_
                             _hd122680122877_
                             _tl122679122879_
                             ___splice127667127668_
                             _target122682122882_
                             _tl122684122884_)
                      (letrec ((_loop122685122887_
                                (lambda (_hd122683122890_ _arg122689122892_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122683122890_))
                                      (let ((_e122686122895_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122683122890_))))
                                        (let ((_lp-tl122688122900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122686122895_)))
                                              (_lp-hd122687122898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122686122895_))))
                                          (let ((__tmp128921
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122687122898_
                                                         _arg122689122892_))))
                                            (declare (not safe))
                                            (_loop122685122887_
                                             _lp-tl122688122900_
                                             __tmp128921))))
                                      (let ((_arg122690122903_
                                             (reverse _arg122689122892_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122679122879_))
                                            (let ((_e122693122906_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122679122879_))))
                                              (let ((_tl122691122911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122693122906_)))
                                                    (_hd122692122909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122693122906_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122692122909_))
                                                    (let ((_e122696122914_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122692122909_))))
                                                      (let ((_tl122694122919_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122696122914_)))
                    (_hd122695122917_
                     (let () (declare (not safe)) (##car _e122696122914_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122695122917_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122695122917_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122694122919_))
                            (let ((_e122699122922_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122694122919_))))
                              (let ((_tl122697122927_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122699122922_)))
                                    (_hd122698122925_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122699122922_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122698122925_))
                                    (let ((_e122702122930_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122698122925_))))
                                      (let ((_tl122700122935_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122702122930_)))
                                            (_hd122701122933_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122702122930_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122701122933_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122701122933_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122700122935_))
                                                    (let ((_e122705122938_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122700122935_))))
                                                      (let ((_tl122703122943_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122705122938_)))
                    (_hd122704122941_
                     (let () (declare (not safe)) (##car _e122705122938_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122703122943_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl122697122927_))
                        (let ((_e122708122946_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl122697122927_))))
                          (let ((_tl122706122951_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e122708122946_)))
                                (_hd122707122949_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e122708122946_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd122707122949_))
                                (let ((_e122711122954_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd122707122949_))))
                                  (let ((_tl122709122959_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122711122954_)))
                                        (_hd122710122957_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122711122954_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd122710122957_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd122710122957_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122709122959_))
                                                (let ((_e122714122962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122709122959_))))
                                                  (let ((_tl122712122967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122714122962_)))
                                                        (_hd122713122965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122714122962_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122712122967_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl122691122911_))
                                                            (___kont127665127666_
                                                             _hd122713122965_
                                                             _hd122704122941_
                                                             _tl122684122884_
                                                             _arg122690122903_)
                                                            (___match127766127767_
                                                             _e122681122874_
                                                             _hd122680122877_
                                                             _tl122679122879_
                                                             _e122693122906_
                                                             _hd122692122909_
                                                             _tl122691122911_
                                                             _e122696122914_
                                                             _hd122695122917_
                                                             _tl122694122919_
                                                             _e122699122922_
                                                             _hd122698122925_
                                                             _tl122697122927_
                                                             _e122702122930_
                                                             _hd122701122933_
                                                             _tl122700122935_
                                                             _e122705122938_
                                                             _hd122704122941_
                                                             _tl122703122943_
                                                             _e122708122946_
                                                             _hd122707122949_
                                                             _tl122706122951_
                                                             _e122711122954_
                                                             _hd122710122957_
                                                             _tl122709122959_
                                                             _e122714122962_
                                                             _hd122713122965_
                                                             _tl122712122967_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122628122752_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122628122752_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122628122752_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g122628122752_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g122628122752_)))))
                        (let () (declare (not safe)) (_g122628122752_)))
                    (let () (declare (not safe)) (_g122628122752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122628122752_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122628122752_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g122628122752_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g122628122752_)))))
                            (let () (declare (not safe)) (_g122628122752_)))
                        (let () (declare (not safe)) (_g122628122752_)))
                    (let () (declare (not safe)) (_g122628122752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g122628122752_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g122628122752_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop122685122887_ _target122682122882_ '())))))
                   (___match127684127685_
                    (lambda (_e122635123010_
                             _hd122634123013_
                             _tl122633123015_
                             ___splice127661127662_
                             _target122636123018_
                             _tl122638123020_)
                      (letrec ((_loop122639123023_
                                (lambda (_hd122637123026_ _arg122643123028_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122637123026_))
                                      (let ((_e122640123031_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122637123026_))))
                                        (let ((_lp-tl122642123036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122640123031_)))
                                              (_lp-hd122641123034_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122640123031_))))
                                          (let ((__tmp128923
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd122641123034_
                                                         _arg122643123028_))))
                                            (declare (not safe))
                                            (_loop122639123023_
                                             _lp-tl122642123036_
                                             __tmp128923))))
                                      (let ((_arg122644123039_
                                             (reverse _arg122643123028_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122633123015_))
                                            (let ((_e122647123042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122633123015_))))
                                              (let ((_tl122645123047_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122647123042_)))
                                                    (_hd122646123045_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122647123042_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd122646123045_))
                                                    (let ((_e122650123050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd122646123045_))))
                                                      (let ((_tl122648123055_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122650123050_)))
                    (_hd122649123053_
                     (let () (declare (not safe)) (##car _e122650123050_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd122649123053_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd122649123053_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122648123055_))
                            (let ((_e122653123058_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122648123055_))))
                              (let ((_tl122651123063_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122653123058_)))
                                    (_hd122652123061_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122653123058_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122652123061_))
                                    (let ((_e122656123066_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122652123061_))))
                                      (let ((_tl122654123071_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122656123066_)))
                                            (_hd122655123069_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122656123066_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd122655123069_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd122655123069_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl122654123071_))
                                                    (let ((_e122659123074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl122654123071_))))
                                                      (let ((_tl122657123079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e122659123074_)))
                    (_hd122658123077_
                     (let () (declare (not safe)) (##car _e122659123074_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl122657123079_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl122651123063_))
                        (let ((___splice127663127664_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl122651123063_
                                  '0))))
                          (let ((_tl122662123084_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127663127664_ '1)))
                                (_target122660123082_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice127663127664_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl122662123084_))
                                (letrec ((_loop122663123087_
                                          (lambda (_hd122661123090_
                                                   _xarg122667123092_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122661123090_))
                                                (let ((_e122664123095_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122661123090_))))
                                                  (let ((_lp-tl122666123100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122664123095_)))
                                                        (_lp-hd122665123098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122664123095_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd122665123098_))
                                                        (let ((_e122671123103_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd122665123098_))))
                  (let ((_tl122669123108_
                         (let () (declare (not safe)) (##cdr _e122671123103_)))
                        (_hd122670123106_
                         (let ()
                           (declare (not safe))
                           (##car _e122671123103_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122670123106_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd122670123106_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122669123108_))
                                (let ((_e122674123111_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122669123108_))))
                                  (let ((_tl122672123116_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122674123111_)))
                                        (_hd122673123114_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122674123111_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122672123116_))
                                        (let ((__tmp128922
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd122673123114_
                                                       _xarg122667123092_))))
                                          (declare (not safe))
                                          (_loop122663123087_
                                           _lp-tl122666123100_
                                           __tmp128922))
                                        (___match127696127697_
                                         _e122635123010_
                                         _hd122634123013_
                                         _tl122633123015_
                                         ___splice127661127662_
                                         _target122636123018_
                                         _tl122638123020_))))
                                (___match127696127697_
                                 _e122635123010_
                                 _hd122634123013_
                                 _tl122633123015_
                                 ___splice127661127662_
                                 _target122636123018_
                                 _tl122638123020_))
                            (___match127696127697_
                             _e122635123010_
                             _hd122634123013_
                             _tl122633123015_
                             ___splice127661127662_
                             _target122636123018_
                             _tl122638123020_))
                        (___match127696127697_
                         _e122635123010_
                         _hd122634123013_
                         _tl122633123015_
                         ___splice127661127662_
                         _target122636123018_
                         _tl122638123020_))))
                (___match127696127697_
                 _e122635123010_
                 _hd122634123013_
                 _tl122633123015_
                 ___splice127661127662_
                 _target122636123018_
                 _tl122638123020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg122668123119_
                                                       (reverse _xarg122667123092_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122645123047_))
                                                      (___kont127659127660_
                                                       _xarg122668123119_
                                                       _hd122658123077_
                                                       _arg122644123039_)
                                                      (___match127696127697_
                                                       _e122635123010_
                                                       _hd122634123013_
                                                       _tl122633123015_
                                                       ___splice127661127662_
                                                       _target122636123018_
                                                       _tl122638123020_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop122663123087_
                                     _target122660123082_
                                     '())))
                                (___match127696127697_
                                 _e122635123010_
                                 _hd122634123013_
                                 _tl122633123015_
                                 ___splice127661127662_
                                 _target122636123018_
                                 _tl122638123020_))))
                        (___match127696127697_
                         _e122635123010_
                         _hd122634123013_
                         _tl122633123015_
                         ___splice127661127662_
                         _target122636123018_
                         _tl122638123020_))
                    (___match127696127697_
                     _e122635123010_
                     _hd122634123013_
                     _tl122633123015_
                     ___splice127661127662_
                     _target122636123018_
                     _tl122638123020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127696127697_
                                                     _e122635123010_
                                                     _hd122634123013_
                                                     _tl122633123015_
                                                     ___splice127661127662_
                                                     _target122636123018_
                                                     _tl122638123020_))
                                                (___match127696127697_
                                                 _e122635123010_
                                                 _hd122634123013_
                                                 _tl122633123015_
                                                 ___splice127661127662_
                                                 _target122636123018_
                                                 _tl122638123020_))
                                            (___match127696127697_
                                             _e122635123010_
                                             _hd122634123013_
                                             _tl122633123015_
                                             ___splice127661127662_
                                             _target122636123018_
                                             _tl122638123020_))))
                                    (___match127696127697_
                                     _e122635123010_
                                     _hd122634123013_
                                     _tl122633123015_
                                     ___splice127661127662_
                                     _target122636123018_
                                     _tl122638123020_))))
                            (___match127696127697_
                             _e122635123010_
                             _hd122634123013_
                             _tl122633123015_
                             ___splice127661127662_
                             _target122636123018_
                             _tl122638123020_))
                        (___match127696127697_
                         _e122635123010_
                         _hd122634123013_
                         _tl122633123015_
                         ___splice127661127662_
                         _target122636123018_
                         _tl122638123020_))
                    (___match127696127697_
                     _e122635123010_
                     _hd122634123013_
                     _tl122633123015_
                     ___splice127661127662_
                     _target122636123018_
                     _tl122638123020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127696127697_
                                                     _e122635123010_
                                                     _hd122634123013_
                                                     _tl122633123015_
                                                     ___splice127661127662_
                                                     _target122636123018_
                                                     _tl122638123020_))))
                                            (___match127696127697_
                                             _e122635123010_
                                             _hd122634123013_
                                             _tl122633123015_
                                             ___splice127661127662_
                                             _target122636123018_
                                             _tl122638123020_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop122639123023_ _target122636123018_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx127657127658_))
                  (let ((_e122635123010_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx127657127658_))))
                    (let ((_tl122633123015_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122635123010_)))
                          (_hd122634123013_
                           (let ()
                             (declare (not safe))
                             (##car _e122635123010_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd122634123013_))
                          (let ((___splice127661127662_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd122634123013_
                                    '0))))
                            (let ((_tl122638123020_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice127661127662_ '1)))
                                  (_target122636123018_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice127661127662_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122638123020_))
                                  (___match127684127685_
                                   _e122635123010_
                                   _hd122634123013_
                                   _tl122633123015_
                                   ___splice127661127662_
                                   _target122636123018_
                                   _tl122638123020_)
                                  (___match127696127697_
                                   _e122635123010_
                                   _hd122634123013_
                                   _tl122633123015_
                                   ___splice127661127662_
                                   _target122636123018_
                                   _tl122638123020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122633123015_))
                              (let ((_e122723122765_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122633123015_))))
                                (let ((_tl122721122770_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122723122765_)))
                                      (_hd122722122768_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122723122765_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd122722122768_))
                                      (let ((_e122726122773_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd122722122768_))))
                                        (let ((_tl122724122778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122726122773_)))
                                              (_hd122725122776_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122726122773_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd122725122776_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd122725122776_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl122724122778_))
                                                      (let ((_e122729122781_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl122724122778_))))
                (let ((_tl122727122786_
                       (let () (declare (not safe)) (##cdr _e122729122781_)))
                      (_hd122728122784_
                       (let () (declare (not safe)) (##car _e122729122781_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd122728122784_))
                      (let ((_e122732122789_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd122728122784_))))
                        (let ((_tl122730122794_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122732122789_)))
                              (_hd122731122792_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122732122789_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd122731122792_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd122731122792_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122730122794_))
                                      (let ((_e122735122797_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122730122794_))))
                                        (let ((_tl122733122802_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122735122797_)))
                                              (_hd122734122800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122735122797_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122733122802_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl122727122786_))
                                                  (let ((_e122738122805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl122727122786_))))
                                                    (let ((_tl122736122810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122738122805_)))
                                                          (_hd122737122808_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122738122805_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd122737122808_))
                                                          (let ((_e122741122813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd122737122808_))))
                    (let ((_tl122739122818_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122741122813_)))
                          (_hd122740122816_
                           (let ()
                             (declare (not safe))
                             (##car _e122741122813_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd122740122816_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd122740122816_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl122739122818_))
                                  (let ((_e122744122821_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl122739122818_))))
                                    (let ((_tl122742122826_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122744122821_)))
                                          (_hd122743122824_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122744122821_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl122742122826_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl122736122810_))
                                              (let ((_e122747122829_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl122736122810_))))
                                                (let ((_tl122745122834_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e122747122829_)))
                                                      (_hd122746122832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e122747122829_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl122745122834_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122721122770_))
                                                          (___kont127669127670_
                                                           _hd122743122824_
                                                           _hd122734122800_
                                                           _hd122634123013_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g122628122752_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g122628122752_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g122628122752_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g122628122752_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122628122752_)))
                              (let () (declare (not safe)) (_g122628122752_)))
                          (let () (declare (not safe)) (_g122628122752_)))))
                  (let () (declare (not safe)) (_g122628122752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122628122752_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122628122752_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122628122752_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122628122752_)))
                              (let ()
                                (declare (not safe))
                                (_g122628122752_)))))
                      (let () (declare (not safe)) (_g122628122752_)))))
              (let () (declare (not safe)) (_g122628122752_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122628122752_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g122628122752_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122628122752_)))))
                              (let ()
                                (declare (not safe))
                                (_g122628122752_))))))
                  (let () (declare (not safe)) (_g122628122752_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form122428_)
        (let* ((_g122430122444_
                (lambda (_g122431122441_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g122431122441_))))
               (_g122429122621_
                (lambda (_g122431122447_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g122431122447_))
                      (let ((_e122436122449_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g122431122447_))))
                        (let ((_hd122435122452_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122436122449_)))
                              (_tl122434122454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122436122449_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl122434122454_))
                              (let ((_e122439122457_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl122434122454_))))
                                (let ((_hd122438122460_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e122439122457_)))
                                      (_tl122437122462_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e122439122457_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl122437122462_))
                                      ((lambda (_L122465_ _L122466_)
                                         (let* ((___stx127779127780_ _L122466_)
                                                (_g122481122509_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx127779127780_)))))
                                           (let ((___kont127781127782_
                                                  (lambda (_L122600_)
                                                    (length (let ((__tmp128924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g122610122613_ _g122611122615_)
                             (let ()
                               (declare (not safe))
                               (cons _g122610122613_ _g122611122615_)))))
                      (declare (not safe))
                      (foldr1 __tmp128924 '() _L122600_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127785127786_
                                                  (lambda (_L122551_ _L122552_)
                                                    (let ((__tmp128925
                                                           (length (let ((__tmp128926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g122563122566_ _g122564122568_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g122563122566_
                                            _g122564122568_)))))
                             (declare (not safe))
                             (foldr1 __tmp128926 '() _L122552_)))))
              (declare (not safe))
              (cons __tmp128925 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont127789127790_
                                                  (lambda (_L122514_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match127804127805_
                                                     (lambda (___splice127787127788_
                                                              _target122495122527_
                                                              _tl122497122529_)
                                                       (letrec ((_loop122498122532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122496122535_ _arg122502122537_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122496122535_))
                               (let ((_e122499122540_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122496122535_))))
                                 (let ((_lp-tl122501122545_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122499122540_)))
                                       (_lp-hd122500122543_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122499122540_))))
                                   (let ((__tmp128927
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122500122543_
                                                  _arg122502122537_))))
                                     (declare (not safe))
                                     (_loop122498122532_
                                      _lp-tl122501122545_
                                      __tmp128927))))
                               (let ((_arg122503122548_
                                      (reverse _arg122502122537_)))
                                 (___kont127785127786_
                                  _tl122497122529_
                                  _arg122503122548_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122498122532_ _target122495122527_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match127798127799_
                                                     (lambda (___splice127783127784_
                                                              _target122484122576_
                                                              _tl122486122578_)
                                                       (letrec ((_loop122487122581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd122485122584_ _arg122491122586_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122485122584_))
                               (let ((_e122488122589_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122485122584_))))
                                 (let ((_lp-tl122490122594_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122488122589_)))
                                       (_lp-hd122489122592_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122488122589_))))
                                   (let ((__tmp128928
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd122489122592_
                                                  _arg122491122586_))))
                                     (declare (not safe))
                                     (_loop122487122581_
                                      _lp-tl122490122594_
                                      __tmp128928))))
                               (let ((_arg122492122597_
                                      (reverse _arg122491122586_)))
                                 (___kont127781127782_ _arg122492122597_))))))
                 (let ()
                   (declare (not safe))
                   (_loop122487122581_ _target122484122576_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx127779127780_))
                                                   (let ((___splice127783127784_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx127779127780_
                                                             '0))))
                                                     (let ((_tl122486122578_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127783127784_
                                                               '1)))
                                                           (_target122484122576_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice127783127784_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122486122578_))
                                                           (___match127798127799_
                                                            ___splice127783127784_
                                                            _target122484122576_
                                                            _tl122486122578_)
                                                           (___match127804127805_
                                                            ___splice127783127784_
                                                            _target122484122576_
                                                            _tl122486122578_))))
                                                   (___kont127789127790_
                                                    ___stx127779127780_))))))
                                       _hd122438122460_
                                       _hd122435122452_)
                                      (let ()
                                        (declare (not safe))
                                        (_g122430122444_ _g122431122447_)))))
                              (let ()
                                (declare (not safe))
                                (_g122430122444_ _g122431122447_)))))
                      (let ()
                        (declare (not safe))
                        (_g122430122444_ _g122431122447_))))))
          (declare (not safe))
          (_g122429122621_ _form122428_))))
    (define gxc#lambda-expr?
      (lambda (_expr122381_)
        (let* ((___stx127807127808_ _expr122381_)
               (_g122384122394_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127807127808_)))))
          (let ((___kont127809127810_ (lambda (_L122414_) '#t))
                (___kont127811127812_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127807127808_))
                (let ((_e122389122406_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127807127808_))))
                  (let ((_tl122387122411_
                         (let () (declare (not safe)) (##cdr _e122389122406_)))
                        (_hd122388122409_
                         (let ()
                           (declare (not safe))
                           (##car _e122389122406_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122388122409_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd122388122409_))
                            (___kont127809127810_ _tl122387122411_)
                            (___kont127811127812_))
                        (___kont127811127812_))))
                (___kont127811127812_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr122334_)
        (let* ((___stx127825127826_ _expr122334_)
               (_g122337122347_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127825127826_)))))
          (let ((___kont127827127828_ (lambda (_L122367_) '#t))
                (___kont127829127830_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127825127826_))
                (let ((_e122342122359_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127825127826_))))
                  (let ((_tl122340122364_
                         (let () (declare (not safe)) (##cdr _e122342122359_)))
                        (_hd122341122362_
                         (let ()
                           (declare (not safe))
                           (##car _e122342122359_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122341122362_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd122341122362_))
                            (___kont127827127828_ _tl122340122364_)
                            (___kont127829127830_))
                        (___kont127829127830_))))
                (___kont127829127830_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr122203_)
        (let* ((___stx127843127844_ _expr122203_)
               (_g122206122236_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127843127844_)))))
          (let ((___kont127845127846_
                 (lambda (_L122304_ _L122305_ _L122306_)
                   (if (let () (declare (not safe)) (gx#identifier? _L122306_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L122305_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L122304_))
                           '#f)
                       '#f)))
                (___kont127847127848_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127843127844_))
                (let ((_e122213122248_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127843127844_))))
                  (let ((_tl122211122253_
                         (let () (declare (not safe)) (##cdr _e122213122248_)))
                        (_hd122212122251_
                         (let ()
                           (declare (not safe))
                           (##car _e122213122248_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd122212122251_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd122212122251_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl122211122253_))
                                (let ((_e122216122256_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl122211122253_))))
                                  (let ((_tl122214122261_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e122216122256_)))
                                        (_hd122215122259_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e122216122256_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd122215122259_))
                                        (let ((_e122219122264_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd122215122259_))))
                                          (let ((_tl122217122269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122219122264_)))
                                                (_hd122218122267_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122219122264_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd122218122267_))
                                                (let ((_e122222122272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd122218122267_))))
                                                  (let ((_tl122220122277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122222122272_)))
                                                        (_hd122221122275_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122222122272_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd122221122275_))
                                                        (let ((_e122225122280_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd122221122275_))))
                  (let ((_tl122223122285_
                         (let () (declare (not safe)) (##cdr _e122225122280_)))
                        (_hd122224122283_
                         (let ()
                           (declare (not safe))
                           (##car _e122225122280_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl122223122285_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122220122277_))
                            (let ((_e122228122288_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122220122277_))))
                              (let ((_tl122226122293_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122228122288_)))
                                    (_hd122227122291_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122228122288_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl122226122293_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl122217122269_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl122214122261_))
                                            (let ((_e122231122296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl122214122261_))))
                                              (let ((_tl122229122301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e122231122296_)))
                                                    (_hd122230122299_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e122231122296_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl122229122301_))
                                                    (___kont127845127846_
                                                     _hd122230122299_
                                                     _hd122227122291_
                                                     _hd122224122283_)
                                                    (___kont127847127848_))))
                                            (___kont127847127848_))
                                        (___kont127847127848_))
                                    (___kont127847127848_))))
                            (___kont127847127848_))
                        (___kont127847127848_))))
                (___kont127847127848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127847127848_))))
                                        (___kont127847127848_))))
                                (___kont127847127848_))
                            (___kont127847127848_))
                        (___kont127847127848_))))
                (___kont127847127848_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr121528_)
        (let* ((___stx127905127906_ _expr121528_)
               (_g121531121689_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx127905127906_)))))
          (let ((___kont127907127908_
                 (lambda (_L122077_
                          _L122078_
                          _L122079_
                          _L122080_
                          _L122081_
                          _L122082_
                          _L122083_
                          _L122084_
                          _L122085_
                          _L122086_
                          _L122087_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L122084_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L122080_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L122079_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L122087_
                                      _L122078_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L122086_
                                          _L122083_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122081_
                                              _L122077_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L122085_
                                              _L122082_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont127909127910_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx127905127906_))
                (let ((_e121546121701_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx127905127906_))))
                  (let ((_tl121544121706_
                         (let () (declare (not safe)) (##cdr _e121546121701_)))
                        (_hd121545121704_
                         (let ()
                           (declare (not safe))
                           (##car _e121546121701_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121545121704_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd121545121704_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121544121706_))
                                (let ((_e121549121709_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121544121706_))))
                                  (let ((_tl121547121714_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121549121709_)))
                                        (_hd121548121712_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121549121709_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd121548121712_))
                                        (let ((_e121552121717_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd121548121712_))))
                                          (let ((_tl121550121722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121552121717_)))
                                                (_hd121551121720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121552121717_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121551121720_))
                                                (let ((_e121555121725_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121551121720_))))
                                                  (let ((_tl121553121730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121555121725_)))
                                                        (_hd121554121728_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121555121725_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121554121728_))
                                                        (let ((_e121558121733_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121554121728_))))
                  (let ((_tl121556121738_
                         (let () (declare (not safe)) (##cdr _e121558121733_)))
                        (_hd121557121736_
                         (let ()
                           (declare (not safe))
                           (##car _e121558121733_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl121556121738_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121553121730_))
                            (let ((_e121561121741_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121553121730_))))
                              (let ((_tl121559121746_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121561121741_)))
                                    (_hd121560121744_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121561121741_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121560121744_))
                                    (let ((_e121564121749_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121560121744_))))
                                      (let ((_tl121562121754_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121564121749_)))
                                            (_hd121563121752_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121564121749_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121563121752_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd121563121752_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121562121754_))
                                                    (let ((_e121567121757_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121562121754_))))
                                                      (let ((_tl121565121762_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121567121757_)))
                    (_hd121566121760_
                     (let () (declare (not safe)) (##car _e121567121757_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121566121760_))
                    (let ((_e121570121765_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121566121760_))))
                      (let ((_tl121568121770_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121570121765_)))
                            (_hd121569121768_
                             (let ()
                               (declare (not safe))
                               (##car _e121570121765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121569121768_))
                            (let ((_e121573121773_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121569121768_))))
                              (let ((_tl121571121778_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121573121773_)))
                                    (_hd121572121776_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121573121773_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121572121776_))
                                    (let ((_e121576121781_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121572121776_))))
                                      (let ((_tl121574121786_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121576121781_)))
                                            (_hd121575121784_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121576121781_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121574121786_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121571121778_))
                                                (let ((_e121579121789_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121571121778_))))
                                                  (let ((_tl121577121794_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121579121789_)))
                                                        (_hd121578121792_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121579121789_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121577121794_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl121568121770_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121565121762_))
                        (let ((_e121582121797_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121565121762_))))
                          (let ((_tl121580121802_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121582121797_)))
                                (_hd121581121800_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121582121797_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121581121800_))
                                (let ((_e121585121805_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121581121800_))))
                                  (let ((_tl121583121810_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121585121805_)))
                                        (_hd121584121808_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121585121805_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121584121808_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd121584121808_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121583121810_))
                                                (let ((_e121588121813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121583121810_))))
                                                  (let ((_tl121586121818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121588121813_)))
                                                        (_hd121587121816_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121588121813_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121587121816_))
                                                        (let ((_e121591121821_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121587121816_))))
                  (let ((_tl121589121826_
                         (let () (declare (not safe)) (##cdr _e121591121821_)))
                        (_hd121590121824_
                         (let ()
                           (declare (not safe))
                           (##car _e121591121821_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121586121818_))
                        (let ((_e121594121829_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121586121818_))))
                          (let ((_tl121592121834_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121594121829_)))
                                (_hd121593121832_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121594121829_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121593121832_))
                                (let ((_e121597121837_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121593121832_))))
                                  (let ((_tl121595121842_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121597121837_)))
                                        (_hd121596121840_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121597121837_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121596121840_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd121596121840_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121595121842_))
                                                (let ((_e121600121845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121595121842_))))
                                                  (let ((_tl121598121850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121600121845_)))
                                                        (_hd121599121848_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121600121845_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd121599121848_))
                                                        (let ((_e121603121853_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd121599121848_))))
                  (let ((_tl121601121858_
                         (let () (declare (not safe)) (##cdr _e121603121853_)))
                        (_hd121602121856_
                         (let ()
                           (declare (not safe))
                           (##car _e121603121853_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd121602121856_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd121602121856_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl121601121858_))
                                (let ((_e121606121861_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl121601121858_))))
                                  (let ((_tl121604121866_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121606121861_)))
                                        (_hd121605121864_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121606121861_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121604121866_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121598121850_))
                                            (let ((_e121609121869_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121598121850_))))
                                              (let ((_tl121607121874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121609121869_)))
                                                    (_hd121608121872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121609121869_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121608121872_))
                                                    (let ((_e121612121877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121608121872_))))
                                                      (let ((_tl121610121882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121612121877_)))
                    (_hd121611121880_
                     (let () (declare (not safe)) (##car _e121612121877_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121611121880_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd121611121880_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121610121882_))
                            (let ((_e121615121885_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121610121882_))))
                              (let ((_tl121613121890_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121615121885_)))
                                    (_hd121614121888_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121615121885_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121613121890_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121607121874_))
                                        (let ((_e121618121893_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121607121874_))))
                                          (let ((_tl121616121898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121618121893_)))
                                                (_hd121617121896_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121618121893_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd121617121896_))
                                                (let ((_e121621121901_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd121617121896_))))
                                                  (let ((_tl121619121906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121621121901_)))
                                                        (_hd121620121904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121621121901_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd121620121904_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd121620121904_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl121619121906_))
                        (let ((_e121624121909_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121619121906_))))
                          (let ((_tl121622121914_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121624121909_)))
                                (_hd121623121912_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121624121909_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl121622121914_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl121592121834_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl121580121802_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121559121746_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121550121722_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121547121714_))
                                                    (let ((_e121627121917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121547121714_))))
                                                      (let ((_tl121625121922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121627121917_)))
                    (_hd121626121920_
                     (let () (declare (not safe)) (##car _e121627121917_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121626121920_))
                    (let ((_e121630121925_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121626121920_))))
                      (let ((_tl121628121930_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121630121925_)))
                            (_hd121629121928_
                             (let ()
                               (declare (not safe))
                               (##car _e121630121925_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121629121928_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd121629121928_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121628121930_))
                                    (let ((_e121633121933_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121628121930_))))
                                      (let ((_tl121631121938_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121633121933_)))
                                            (_hd121632121936_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121633121933_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121631121938_))
                                            (let ((_e121636121941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121631121938_))))
                                              (let ((_tl121634121946_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121636121941_)))
                                                    (_hd121635121944_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121636121941_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd121635121944_))
                                                    (let ((_e121639121949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd121635121944_))))
                                                      (let ((_tl121637121954_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121639121949_)))
                    (_hd121638121952_
                     (let () (declare (not safe)) (##car _e121639121949_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd121638121952_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd121638121952_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121637121954_))
                            (let ((_e121642121957_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121637121954_))))
                              (let ((_tl121640121962_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121642121957_)))
                                    (_hd121641121960_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121642121957_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd121641121960_))
                                    (let ((_e121645121965_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd121641121960_))))
                                      (let ((_tl121643121970_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121645121965_)))
                                            (_hd121644121968_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121645121965_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd121644121968_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd121644121968_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121643121970_))
                                                    (let ((_e121648121973_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121643121970_))))
                                                      (let ((_tl121646121978_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121648121973_)))
                    (_hd121647121976_
                     (let () (declare (not safe)) (##car _e121648121973_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl121646121978_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl121640121962_))
                        (let ((_e121651121981_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl121640121962_))))
                          (let ((_tl121649121986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121651121981_)))
                                (_hd121650121984_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121651121981_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd121650121984_))
                                (let ((_e121654121989_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd121650121984_))))
                                  (let ((_tl121652121994_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e121654121989_)))
                                        (_hd121653121992_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e121654121989_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd121653121992_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd121653121992_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl121652121994_))
                                                (let ((_e121657121997_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl121652121994_))))
                                                  (let ((_tl121655122002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e121657121997_)))
                                                        (_hd121656122000_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e121657121997_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121655122002_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl121649121986_))
                                                            (let ((_e121660122005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl121649121986_))))
                      (let ((_tl121658122010_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121660122005_)))
                            (_hd121659122008_
                             (let ()
                               (declare (not safe))
                               (##car _e121660122005_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd121659122008_))
                            (let ((_e121663122013_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd121659122008_))))
                              (let ((_tl121661122018_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121663122013_)))
                                    (_hd121662122016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121663122013_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd121662122016_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd121662122016_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl121661122018_))
                                            (let ((_e121666122021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl121661122018_))))
                                              (let ((_tl121664122026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e121666122021_)))
                                                    (_hd121665122024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e121666122021_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121664122026_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl121658122010_))
                                                        (let ((_e121669122029_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl121658122010_))))
                  (let ((_tl121667122034_
                         (let () (declare (not safe)) (##cdr _e121669122029_)))
                        (_hd121668122032_
                         (let ()
                           (declare (not safe))
                           (##car _e121669122029_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd121668122032_))
                        (let ((_e121672122037_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd121668122032_))))
                          (let ((_tl121670122042_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e121672122037_)))
                                (_hd121671122040_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e121672122037_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd121671122040_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd121671122040_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl121670122042_))
                                        (let ((_e121675122045_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl121670122042_))))
                                          (let ((_tl121673122050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e121675122045_)))
                                                (_hd121674122048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e121675122045_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121673122050_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl121667122034_))
                                                    (let ((_e121678122053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl121667122034_))))
                                                      (let ((_tl121676122058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e121678122053_)))
                    (_hd121677122056_
                     (let () (declare (not safe)) (##car _e121678122053_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd121677122056_))
                    (let ((_e121681122061_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd121677122056_))))
                      (let ((_tl121679122066_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121681122061_)))
                            (_hd121680122064_
                             (let ()
                               (declare (not safe))
                               (##car _e121681122061_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd121680122064_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd121680122064_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl121679122066_))
                                    (let ((_e121684122069_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl121679122066_))))
                                      (let ((_tl121682122074_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e121684122069_)))
                                            (_hd121683122072_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e121684122069_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121682122074_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl121676122058_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl121634121946_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl121625121922_))
                                                        (___kont127907127908_
                                                         _hd121683122072_
                                                         _hd121674122048_
                                                         _hd121656122000_
                                                         _hd121647121976_
                                                         _hd121632121936_
                                                         _hd121623121912_
                                                         _hd121614121888_
                                                         _hd121605121864_
                                                         _hd121590121824_
                                                         _hd121575121784_
                                                         _hd121557121736_)
                                                        (___kont127909127910_))
                                                    (___kont127909127910_))
                                                (___kont127909127910_))
                                            (___kont127909127910_))))
                                    (___kont127909127910_))
                                (___kont127909127910_))
                            (___kont127909127910_))))
                    (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127909127910_))
                                                (___kont127909127910_))))
                                        (___kont127909127910_))
                                    (___kont127909127910_))
                                (___kont127909127910_))))
                        (___kont127909127910_))))
                (___kont127909127910_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127909127910_))))
                                            (___kont127909127910_))
                                        (___kont127909127910_))
                                    (___kont127909127910_))))
                            (___kont127909127910_))))
                    (___kont127909127910_))
                (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127909127910_))
                                            (___kont127909127910_))
                                        (___kont127909127910_))))
                                (___kont127909127910_))))
                        (___kont127909127910_))
                    (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127909127910_))
                                                (___kont127909127910_))
                                            (___kont127909127910_))))
                                    (___kont127909127910_))))
                            (___kont127909127910_))
                        (___kont127909127910_))
                    (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127909127910_))))
                                            (___kont127909127910_))))
                                    (___kont127909127910_))
                                (___kont127909127910_))
                            (___kont127909127910_))))
                    (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127909127910_))
                                                (___kont127909127910_))
                                            (___kont127909127910_))
                                        (___kont127909127910_))
                                    (___kont127909127910_))
                                (___kont127909127910_))))
                        (___kont127909127910_))
                    (___kont127909127910_))
                (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127909127910_))))
                                        (___kont127909127910_))
                                    (___kont127909127910_))))
                            (___kont127909127910_))
                        (___kont127909127910_))
                    (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127909127910_))))
                                            (___kont127909127910_))
                                        (___kont127909127910_))))
                                (___kont127909127910_))
                            (___kont127909127910_))
                        (___kont127909127910_))))
                (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127909127910_))
                                            (___kont127909127910_))
                                        (___kont127909127910_))))
                                (___kont127909127910_))))
                        (___kont127909127910_))))
                (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127909127910_))
                                            (___kont127909127910_))
                                        (___kont127909127910_))))
                                (___kont127909127910_))))
                        (___kont127909127910_))
                    (___kont127909127910_))
                (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127909127910_))
                                            (___kont127909127910_))))
                                    (___kont127909127910_))))
                            (___kont127909127910_))))
                    (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont127909127910_))
                                                (___kont127909127910_))
                                            (___kont127909127910_))))
                                    (___kont127909127910_))))
                            (___kont127909127910_))
                        (___kont127909127910_))))
                (___kont127909127910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont127909127910_))))
                                        (___kont127909127910_))))
                                (___kont127909127910_))
                            (___kont127909127910_))
                        (___kont127909127910_))))
                (___kont127909127910_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx121270_ _id121271_ _clauses121272_ _gensym?121273_)
        (let _lp121275_ ((_rest121277_ _clauses121272_)
                         (_ids121278_ '())
                         (_impls121279_ '())
                         (_clauses121280_ '()))
          (let* ((_rest121281121289_ _rest121277_)
                 (_else121283121297_
                  (lambda ()
                    (values (reverse _ids121278_)
                            (reverse _impls121279_)
                            (reverse _clauses121280_))))
                 (_K121285121502_
                  (lambda (_rest121300_ _clause121301_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause121301_))
                        (let ((__tmp128984
                               (let ()
                                 (declare (not safe))
                                 (cons _clause121301_ _clauses121280_))))
                          (declare (not safe))
                          (_lp121275_
                           _rest121300_
                           _ids121278_
                           _impls121279_
                           __tmp128984))
                        (let* ((_g121303121314_
                                (lambda (_g121304121311_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g121304121311_))))
                               (_g121302121499_
                                (lambda (_g121304121317_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g121304121317_))
                                      (let ((_e121309121319_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g121304121317_))))
                                        (let ((_hd121308121322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121309121319_)))
                                              (_tl121307121324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121309121319_))))
                                          ((lambda (_L121327_ _L121328_)
                                             (let* ((_id121345_
                                                     (let ((__tmp128931
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id121271_)))
                                                           (__tmp128930
                                                            (length _clauses121280_))
                                                           (__tmp128929
                                                            (if _gensym?121273_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp128931
                                                        '"__"
                                                        __tmp128930
                                                        __tmp128929)))
                                                    (_id121347_
                                                     (let ((__tmp128932
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx121270_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id121345_
                                                        __tmp128932)))
                                                    (_impl121349_
                                                     (let ((__tmp128933
                                                            (let ((__tmp128935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp128934
                           (let ()
                             (declare (not safe))
                             (cons _L121328_ _L121327_))))
                      (declare (not safe))
                      (cons __tmp128935 __tmp128934))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp128933 _stx121270_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause121496_
                                                     (let* ((___stx128289128290_
                                                             _L121328_)
                                                            (_g121353121381_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx128289128290_)))))
               (let ((___kont128291128292_
                      (lambda (_L121475_)
                        (let ((__tmp128936
                               (let ((__tmp128937
                                      (let ((__tmp128938
                                             (let ((__tmp128939
                                                    (let ((__tmp128945
                                                           (let ((__tmp128946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id121347_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128946)))
                  (__tmp128940
                   (let ((__tmp128941
                          (lambda (_g121485121488_ _g121486121490_)
                            (let ((__tmp128942
                                   (let ((__tmp128944
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp128943
                                          (let ()
                                            (declare (not safe))
                                            (cons _g121485121488_ '()))))
                                     (declare (not safe))
                                     (cons __tmp128944 __tmp128943))))
                              (declare (not safe))
                              (cons __tmp128942 _g121486121490_)))))
                     (declare (not safe))
                     (foldr1 __tmp128941 '() _L121475_))))
              (declare (not safe))
              (cons __tmp128945 __tmp128940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128939))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128938
                                         _stx121270_))))
                                 (declare (not safe))
                                 (cons __tmp128937 '()))))
                          (declare (not safe))
                          (cons _L121328_ __tmp128936))))
                     (___kont128295128296_
                      (lambda (_L121426_ _L121427_)
                        (let ((__tmp128947
                               (let ((__tmp128948
                                      (let ((__tmp128949
                                             (let ((__tmp128950
                                                    (let ((__tmp128964
                                                           (let ((__tmp128965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128965)))
                  (__tmp128951
                   (let ((__tmp128962
                          (let ((__tmp128963
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121347_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128963)))
                         (__tmp128952
                          (let ((__tmp128958
                                 (let ((__tmp128959
                                        (let ((__tmp128961
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp128960
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L121426_ '()))))
                                          (declare (not safe))
                                          (cons __tmp128961 __tmp128960))))
                                   (declare (not safe))
                                   (cons __tmp128959 '())))
                                (__tmp128953
                                 (let ((__tmp128954
                                        (lambda (_g121438121441_
                                                 _g121439121443_)
                                          (let ((__tmp128955
                                                 (let ((__tmp128957
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp128956
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g121438121441_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp128957
                                                         __tmp128956))))
                                            (declare (not safe))
                                            (cons __tmp128955
                                                  _g121439121443_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp128954 '() _L121427_))))
                            (declare (not safe))
                            (foldr1 cons __tmp128958 __tmp128953))))
                     (declare (not safe))
                     (cons __tmp128962 __tmp128952))))
              (declare (not safe))
              (cons __tmp128964 __tmp128951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128950))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128949
                                         _stx121270_))))
                                 (declare (not safe))
                                 (cons __tmp128948 '()))))
                          (declare (not safe))
                          (cons _L121328_ __tmp128947))))
                     (___kont128299128300_
                      (lambda (_L121386_)
                        (let ((__tmp128966
                               (let ((__tmp128967
                                      (let ((__tmp128968
                                             (let ((__tmp128969
                                                    (let ((__tmp128977
                                                           (let ((__tmp128978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp128978)))
                  (__tmp128970
                   (let ((__tmp128975
                          (let ((__tmp128976
                                 (let ()
                                   (declare (not safe))
                                   (cons _id121347_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp128976)))
                         (__tmp128971
                          (let ((__tmp128972
                                 (let ((__tmp128974
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp128973
                                        (let ()
                                          (declare (not safe))
                                          (cons _L121386_ '()))))
                                   (declare (not safe))
                                   (cons __tmp128974 __tmp128973))))
                            (declare (not safe))
                            (cons __tmp128972 '()))))
                     (declare (not safe))
                     (cons __tmp128975 __tmp128971))))
              (declare (not safe))
              (cons __tmp128977 __tmp128970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp128969))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp128968
                                         _stx121270_))))
                                 (declare (not safe))
                                 (cons __tmp128967 '()))))
                          (declare (not safe))
                          (cons _L121328_ __tmp128966)))))
                 (let* ((___match128314128315_
                         (lambda (___splice128297128298_
                                  _target121367121402_
                                  _tl121369121404_)
                           (letrec ((_loop121370121407_
                                     (lambda (_hd121368121410_
                                              _arg121374121412_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121368121410_))
                                           (let ((_e121371121415_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121368121410_))))
                                             (let ((_lp-tl121373121420_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121371121415_)))
                                                   (_lp-hd121372121418_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121371121415_))))
                                               (let ((__tmp128979
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121372121418_
                                                              _arg121374121412_))))
                                                 (declare (not safe))
                                                 (_loop121370121407_
                                                  _lp-tl121373121420_
                                                  __tmp128979))))
                                           (let ((_arg121375121423_
                                                  (reverse _arg121374121412_)))
                                             (___kont128295128296_
                                              _tl121369121404_
                                              _arg121375121423_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121370121407_
                                _target121367121402_
                                '())))))
                        (___match128308128309_
                         (lambda (___splice128293128294_
                                  _target121356121451_
                                  _tl121358121453_)
                           (letrec ((_loop121359121456_
                                     (lambda (_hd121357121459_
                                              _arg121363121461_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd121357121459_))
                                           (let ((_e121360121464_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd121357121459_))))
                                             (let ((_lp-tl121362121469_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121360121464_)))
                                                   (_lp-hd121361121467_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121360121464_))))
                                               (let ((__tmp128980
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd121361121467_
                                                              _arg121363121461_))))
                                                 (declare (not safe))
                                                 (_loop121359121456_
                                                  _lp-tl121362121469_
                                                  __tmp128980))))
                                           (let ((_arg121364121472_
                                                  (reverse _arg121363121461_)))
                                             (___kont128291128292_
                                              _arg121364121472_))))))
                             (let ()
                               (declare (not safe))
                               (_loop121359121456_
                                _target121356121451_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx128289128290_))
                       (let ((___splice128293128294_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx128289128290_
                                 '0))))
                         (let ((_tl121358121453_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128293128294_ '1)))
                               (_target121356121451_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice128293128294_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121358121453_))
                               (___match128308128309_
                                ___splice128293128294_
                                _target121356121451_
                                _tl121358121453_)
                               (___match128314128315_
                                ___splice128293128294_
                                _target121356121451_
                                _tl121358121453_))))
                       (___kont128299128300_ ___stx128289128290_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp128983
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id121347_
                                                              _ids121278_)))
                                                     (__tmp128982
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl121349_
                                                              _impls121279_)))
                                                     (__tmp128981
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause121496_
                                                              _clauses121280_))))
                                                 (declare (not safe))
                                                 (_lp121275_
                                                  _rest121300_
                                                  __tmp128983
                                                  __tmp128982
                                                  __tmp128981))))
                                           _tl121307121324_
                                           _hd121308121322_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g121303121314_ _g121304121317_))))))
                          (declare (not safe))
                          (_g121302121499_ _clause121301_))))))
            (if (let () (declare (not safe)) (##pair? _rest121281121289_))
                (let ((_hd121286121505_
                       (let ()
                         (declare (not safe))
                         (##car _rest121281121289_)))
                      (_tl121287121507_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest121281121289_))))
                  (let* ((_clause121510_ _hd121286121505_)
                         (_rest121512_ _tl121287121507_))
                    (declare (not safe))
                    (_K121285121502_ _rest121512_ _clause121510_)))
                (let () (declare (not safe)) (_else121283121297_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx121517_ _id121518_ _clauses121519_)
        (let ((_gensym?121521_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx121517_
           _id121518_
           _clauses121519_
           _gensym?121521_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g128986_
        (let ((_g128985_ (let () (declare (not safe)) (##length _g128986_))))
          (cond ((let () (declare (not safe)) (##fx= _g128985_ 3))
                 (apply (lambda (_stx121517_ _id121518_ _clauses121519_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx121517_
                             _id121518_
                             _clauses121519_)))
                        _g128986_))
                ((let () (declare (not safe)) (##fx= _g128985_ 4))
                 (apply (lambda (_stx121523_
                                 _id121524_
                                 _clauses121525_
                                 _gensym?121526_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx121523_
                             _id121524_
                             _clauses121525_
                             _gensym?121526_)))
                        _g128986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g128986_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_stx120547_)
        (letrec ((_case-lambda-clause-def120549_
                  (lambda (_id121266_ _impl121267_)
                    (let ((__tmp128987
                           (let ((__tmp128988
                                  (let ((__tmp128991
                                         (let ()
                                           (declare (not safe))
                                           (cons _id121266_ '())))
                                        (__tmp128989
                                         (let ((__tmp128990
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _impl121267_))))
                                           (declare (not safe))
                                           (cons __tmp128990 '()))))
                                    (declare (not safe))
                                    (cons __tmp128991 __tmp128989))))
                             (declare (not safe))
                             (cons '%#define-values __tmp128988))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp128987 _stx120547_))))
                 (_opt-lambda-dispatch-name120550_
                  (lambda (_id121262_)
                    (if (uninterned-symbol? _id121262_)
                        (let ((_str121264_ (symbol->string _id121262_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str121264_))
                              '"%"
                              _id121262_))
                        _id121262_)))
                 (_kw-lambda-dispatch-name120551_
                  (lambda (_id121257_ _name121258_)
                    (if (uninterned-symbol? _id121257_)
                        (let ((_str121260_ (symbol->string _id121257_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str121260_))
                              _name121258_
                              _id121257_))
                        _id121257_))))
          (let* ((___stx128337128338_ _stx120547_)
                 (_g120556120615_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128337128338_)))))
            (let ((___kont128339128340_
                   (lambda (_L121166_ _L121167_)
                     (let* ((___stx128317128318_ _L121166_)
                            (_g121184121198_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128317128318_)))))
                       (let ((___kont128319128320_
                              (lambda (_L121242_) _stx120547_))
                             (___kont128321128322_
                              (lambda (_L121211_)
                                (let ((_g128992_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx120547_
                                          _L121167_
                                          _L121211_))))
                                  (begin
                                    (let ((_g128993_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g128992_)
                                                 (##vector-length _g128992_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g128993_ 3)))
                                          (error "Context expects 3 values"
                                                 _g128993_)))
                                    (let ((_ids121221_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128992_ 0)))
                                          (_impls121222_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128992_ 1)))
                                          (_clauses121223_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g128992_ 2))))
                                      (let* ((_g128994_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids121221_))
                                             (_defs121226_
                                              (map _case-lambda-clause-def120549_
                                                   _ids121221_
                                                   _impls121222_)))
                                        (let ((__tmp128996
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L121167_)))
                                              (__tmp128995
                                               (map gxc#identifier-symbol
                                                    _ids121221_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp128996
                                           '" => "
                                           __tmp128995))
                                        (let ((__tmp128997
                                               (let ((__tmp128998
                                                      (let ((__tmp128999
                                                             (let ((__tmp129000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp129001
                                   (let ((__tmp129002
                                          (let ((__tmp129007
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L121167_ '())))
                                                (__tmp129003
                                                 (let ((__tmp129004
                                                        (let ((__tmp129006
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses121223_)))
                      (__tmp129005
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp129006 __tmp129005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129004 '()))))
                                            (declare (not safe))
                                            (cons __tmp129007 __tmp129003))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp129002))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129001
                               _stx120547_))))
                       (declare (not safe))
                       (cons __tmp129000 '()))))
                (declare (not safe))
                (foldr1 cons __tmp128999 _defs121226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp128998))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp128997
                                           _stx120547_)))))))))
                         (let ((___match128328128329_
                                (lambda (_e121189121234_
                                         _hd121188121237_
                                         _tl121187121239_)
                                  (let ((_L121242_ _tl121187121239_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L121242_))
                                        (___kont128319128320_ _L121242_)
                                        (___kont128321128322_
                                         _tl121187121239_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx128317128318_))
                               (let ((_e121189121234_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx128317128318_))))
                                 (let ((_tl121187121239_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e121189121234_)))
                                       (_hd121188121237_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e121189121234_))))
                                   (___match128328128329_
                                    _e121189121234_
                                    _hd121188121237_
                                    _tl121187121239_)))
                               (let ()
                                 (declare (not safe))
                                 (_g121184121198_))))))))
                  (___kont128341128342_
                   (lambda (_L120984_ _L120985_)
                     (let* ((_g121001121031_
                             (lambda (_g121002121028_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g121002121028_))))
                            (_g121000121126_
                             (lambda (_g121002121034_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g121002121034_))
                                   (let ((_e121008121036_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g121002121034_))))
                                     (let ((_hd121007121039_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e121008121036_)))
                                           (_tl121006121041_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e121008121036_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl121006121041_))
                                           (let ((_e121011121044_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl121006121041_))))
                                             (let ((_hd121010121047_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121011121044_)))
                                                   (_tl121009121049_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121011121044_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121010121047_))
                                                   (let ((_e121014121052_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121010121047_))))
                                                     (let ((_hd121013121055_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121014121052_)))
                                                           (_tl121012121057_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121014121052_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd121013121055_))
                                                           (let ((_e121017121060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd121013121055_))))
                     (let ((_hd121016121063_
                            (let ()
                              (declare (not safe))
                              (##car _e121017121060_)))
                           (_tl121015121065_
                            (let ()
                              (declare (not safe))
                              (##cdr _e121017121060_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd121016121063_))
                           (let ((_e121020121068_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd121016121063_))))
                             (let ((_hd121019121071_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e121020121068_)))
                                   (_tl121018121073_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e121020121068_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl121018121073_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl121015121065_))
                                       (let ((_e121023121076_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl121015121065_))))
                                         (let ((_hd121022121079_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121023121076_)))
                                               (_tl121021121081_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121023121076_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl121021121081_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl121012121057_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121009121049_))
                                                       (let ((_e121026121084_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121009121049_))))
                 (let ((_hd121025121087_
                        (let () (declare (not safe)) (##car _e121026121084_)))
                       (_tl121024121089_
                        (let () (declare (not safe)) (##cdr _e121026121084_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121024121089_))
                       ((lambda (_L121092_ _L121093_ _L121094_)
                          (let* ((_lambda-id121118_
                                  (let ((__tmp129010
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L120985_)))
                                        (__tmp129008
                                         (let ((__tmp129009
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L121094_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name120550_
                                            __tmp129009))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp129010
                                     '"__"
                                     __tmp129008)))
                                 (_lambda-id121120_
                                  (let ((__tmp129011
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx120547_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id121118_
                                     __tmp129011)))
                                 (_g129012_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id121120_)))
                                 (_new-case-lambda-expr121123_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L121092_
                                     _L121094_
                                     _lambda-id121120_))))
                            (let ((__tmp129014
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L120985_)))
                                  (__tmp129013
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id121120_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp129014
                               '" => "
                               __tmp129013))
                            (let ((__tmp129015
                                   (let ((__tmp129016
                                          (let ((__tmp129024
                                                 (let ((__tmp129025
                                                        (let ((__tmp129026
                                                               (let ((__tmp129029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id121120_ '())))
                             (__tmp129027
                              (let ((__tmp129028
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L121093_))))
                                (declare (not safe))
                                (cons __tmp129028 '()))))
                         (declare (not safe))
                         (cons __tmp129029 __tmp129027))))
                  (declare (not safe))
                  (cons '%#define-values __tmp129026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp129025
                                                    _stx120547_)))
                                                (__tmp129017
                                                 (let ((__tmp129018
                                                        (let ((__tmp129019
                                                               (let ((__tmp129020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp129021
                                     (let ((__tmp129023
                                            (let ()
                                              (declare (not safe))
                                              (cons _L120985_ '())))
                                           (__tmp129022
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr121123_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp129023 __tmp129022))))
                                (declare (not safe))
                                (cons '%#define-values __tmp129021))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp129020 _stx120547_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values% __tmp129019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp129018 '()))))
                                            (declare (not safe))
                                            (cons __tmp129024 __tmp129017))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp129016))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp129015
                               _stx120547_))))
                        _hd121025121087_
                        _hd121022121079_
                        _hd121019121071_)
                       (let ()
                         (declare (not safe))
                         (_g121001121031_ _g121002121034_)))))
               (let () (declare (not safe)) (_g121001121031_ _g121002121034_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121001121031_
                                                      _g121002121034_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g121001121031_
                                                  _g121002121034_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g121001121031_ _g121002121034_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g121001121031_ _g121002121034_)))))
                           (let ()
                             (declare (not safe))
                             (_g121001121031_ _g121002121034_)))))
                   (let ()
                     (declare (not safe))
                     (_g121001121031_ _g121002121034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g121001121031_
                                                      _g121002121034_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g121001121031_
                                              _g121002121034_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g121001121031_ _g121002121034_))))))
                       (declare (not safe))
                       (_g121000121126_ _L120984_))))
                  (___kont128343128344_
                   (lambda (_L120698_ _L120699_)
                     (let* ((_g120715120768_
                             (lambda (_g120716120765_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g120716120765_))))
                            (_g120714120944_
                             (lambda (_g120716120771_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g120716120771_))
                                   (let ((_e120724120773_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g120716120771_))))
                                     (let ((_hd120723120776_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e120724120773_)))
                                           (_tl120722120778_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e120724120773_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl120722120778_))
                                           (let ((_e120727120781_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl120722120778_))))
                                             (let ((_hd120726120784_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120727120781_)))
                                                   (_tl120725120786_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120727120781_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120726120784_))
                                                   (let ((_e120730120789_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120726120784_))))
                                                     (let ((_hd120729120792_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120730120789_)))
                                                           (_tl120728120794_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120730120789_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd120729120792_))
                                                           (let ((_e120733120797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd120729120792_))))
                     (let ((_hd120732120800_
                            (let ()
                              (declare (not safe))
                              (##car _e120733120797_)))
                           (_tl120731120802_
                            (let ()
                              (declare (not safe))
                              (##cdr _e120733120797_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd120732120800_))
                           (let ((_e120736120805_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd120732120800_))))
                             (let ((_hd120735120808_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120736120805_)))
                                   (_tl120734120810_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120736120805_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120734120810_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl120731120802_))
                                       (let ((_e120739120813_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl120731120802_))))
                                         (let ((_hd120738120816_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120739120813_)))
                                               (_tl120737120818_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120739120813_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd120738120816_))
                                               (let ((_e120742120821_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd120738120816_))))
                                                 (let ((_hd120741120824_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120742120821_)))
                                                       (_tl120740120826_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120742120821_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120740120826_))
                                                       (let ((_e120745120829_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120740120826_))))
                 (let ((_hd120744120832_
                        (let () (declare (not safe)) (##car _e120745120829_)))
                       (_tl120743120834_
                        (let () (declare (not safe)) (##cdr _e120745120829_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd120744120832_))
                       (let ((_e120748120837_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd120744120832_))))
                         (let ((_hd120747120840_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120748120837_)))
                               (_tl120746120842_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120748120837_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd120747120840_))
                               (let ((_e120751120845_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd120747120840_))))
                                 (let ((_hd120750120848_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e120751120845_)))
                                       (_tl120749120850_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e120751120845_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120750120848_))
                                       (let ((_e120754120853_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120750120848_))))
                                         (let ((_hd120753120856_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120754120853_)))
                                               (_tl120752120858_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120754120853_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl120752120858_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl120749120850_))
                                                   (let ((_e120757120861_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl120749120850_))))
                                                     (let ((_hd120756120864_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120757120861_)))
                                                           (_tl120755120866_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120757120861_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120755120866_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl120746120842_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl120743120834_))
                           (let ((_e120760120869_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl120743120834_))))
                             (let ((_hd120759120872_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e120760120869_)))
                                   (_tl120758120874_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e120760120869_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl120758120874_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl120737120818_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl120728120794_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl120725120786_))
                                               (let ((_e120763120877_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl120725120786_))))
                                                 (let ((_hd120762120880_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e120763120877_)))
                                                       (_tl120761120882_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e120763120877_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl120761120882_))
                                                       ((lambda (_L120885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L120886_
                         _L120887_
                         _L120888_
                         _L120889_)
                  (let* ((_get-kws-id120929_
                          (let ((__tmp129032
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120699_)))
                                (__tmp129030
                                 (let ((__tmp129031
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120889_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120551_
                                    __tmp129031
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129032 '"__" __tmp129030)))
                         (_get-kws-id120931_
                          (let ((__tmp129033
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120547_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id120929_
                             __tmp129033)))
                         (_main-id120933_
                          (let ((__tmp129036
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L120699_)))
                                (__tmp129034
                                 (let ((__tmp129035
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L120888_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name120551_
                                    __tmp129035
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp129036 '"__" __tmp129034)))
                         (_main-id120935_
                          (let ((__tmp129037
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx120547_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id120933_
                             __tmp129037)))
                         (_g129038_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id120931_)))
                         (_g129039_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id120935_)))
                         (_new-kw-dispatch120939_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120885_
                             _L120889_
                             _get-kws-id120931_)))
                         (_new-get-kws120941_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L120886_
                             _L120888_
                             _main-id120935_))))
                    (let ((__tmp129042
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L120699_)))
                          (__tmp129041
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id120931_)))
                          (__tmp129040
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id120935_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp129042
                       '" => "
                       __tmp129041
                       '" => "
                       __tmp129040))
                    (let ((__tmp129043
                           (let ((__tmp129044
                                  (let ((__tmp129057
                                         (let ((__tmp129058
                                                (let ((__tmp129059
                                                       (let ((__tmp129060
                                                              (let ((__tmp129062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id120935_ '())))
                            (__tmp129061
                             (let ()
                               (declare (not safe))
                               (cons _L120887_ '()))))
                        (declare (not safe))
                        (cons __tmp129062 __tmp129061))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129059
                                                   _stx120547_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            __tmp129058)))
                                        (__tmp129045
                                         (let ((__tmp129052
                                                (let ((__tmp129053
                                                       (let ((__tmp129054
                                                              (let ((__tmp129056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id120931_ '())))
                            (__tmp129055
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws120941_ '()))))
                        (declare (not safe))
                        (cons __tmp129056 __tmp129055))))
                 (declare (not safe))
                 (cons '%#define-values __tmp129054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129053
                                                   _stx120547_)))
                                               (__tmp129046
                                                (let ((__tmp129047
                                                       (let ((__tmp129048
                                                              (let ((__tmp129049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp129051
                                    (let ()
                                      (declare (not safe))
                                      (cons _L120699_ '())))
                                   (__tmp129050
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch120939_ '()))))
                               (declare (not safe))
                               (cons __tmp129051 __tmp129050))))
                        (declare (not safe))
                        (cons '%#define-values __tmp129049))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp129048 _stx120547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp129047 '()))))
                                           (declare (not safe))
                                           (cons __tmp129052 __tmp129046))))
                                    (declare (not safe))
                                    (cons __tmp129057 __tmp129045))))
                             (declare (not safe))
                             (cons '%#begin __tmp129044))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp129043 _stx120547_))))
                _hd120762120880_
                _hd120759120872_
                _hd120756120864_
                _hd120753120856_
                _hd120735120808_)
               (let ()
                 (declare (not safe))
                 (_g120715120768_ _g120716120771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120715120768_
                                                  _g120716120771_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g120715120768_
                                              _g120716120771_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g120715120768_ _g120716120771_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120715120768_ _g120716120771_)))))
                           (let ()
                             (declare (not safe))
                             (_g120715120768_ _g120716120771_)))
                       (let ()
                         (declare (not safe))
                         (_g120715120768_ _g120716120771_)))
                   (let ()
                     (declare (not safe))
                     (_g120715120768_ _g120716120771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120715120768_
                                                      _g120716120771_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120715120768_
                                                  _g120716120771_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120715120768_ _g120716120771_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g120715120768_ _g120716120771_)))))
                       (let ()
                         (declare (not safe))
                         (_g120715120768_ _g120716120771_)))))
               (let ()
                 (declare (not safe))
                 (_g120715120768_ _g120716120771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g120715120768_
                                                  _g120716120771_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g120715120768_ _g120716120771_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g120715120768_ _g120716120771_)))))
                           (let ()
                             (declare (not safe))
                             (_g120715120768_ _g120716120771_)))))
                   (let ()
                     (declare (not safe))
                     (_g120715120768_ _g120716120771_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g120715120768_
                                                      _g120716120771_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g120715120768_
                                              _g120716120771_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g120715120768_ _g120716120771_))))))
                       (declare (not safe))
                       (_g120714120944_ _L120698_))))
                  (___kont128345128346_
                   (lambda (_L120644_ _L120645_)
                     (let ((__tmp129063
                            (let ((__tmp129064
                                   (let ((__tmp129065
                                          (let ((__tmp129066
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L120644_))))
                                            (declare (not safe))
                                            (cons __tmp129066 '()))))
                                     (declare (not safe))
                                     (cons _L120645_ __tmp129065))))
                              (declare (not safe))
                              (cons '%#define-values __tmp129064))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp129063 _stx120547_)))))
              (let* ((___match128430128431_
                      (lambda (_e120590120666_
                               _hd120589120669_
                               _tl120588120671_
                               _e120593120674_
                               _hd120592120677_
                               _tl120591120679_
                               _e120596120682_
                               _hd120595120685_
                               _tl120594120687_
                               _e120599120690_
                               _hd120598120693_
                               _tl120597120695_)
                        (let ((_L120698_ _hd120598120693_)
                              (_L120699_ _hd120595120685_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120699_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120698_)))
                              (___kont128343128344_ _L120698_ _L120699_)
                              (___kont128345128346_
                               _hd120598120693_
                               _hd120592120677_)))))
                     (___match128402128403_
                      (lambda (_e120576120952_
                               _hd120575120955_
                               _tl120574120957_
                               _e120579120960_
                               _hd120578120963_
                               _tl120577120965_
                               _e120582120968_
                               _hd120581120971_
                               _tl120580120973_
                               _e120585120976_
                               _hd120584120979_
                               _tl120583120981_)
                        (let ((_L120984_ _hd120584120979_)
                              (_L120985_ _hd120581120971_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L120985_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L120984_)))
                              (___kont128341128342_ _L120984_ _L120985_)
                              (___match128430128431_
                               _e120576120952_
                               _hd120575120955_
                               _tl120574120957_
                               _e120579120960_
                               _hd120578120963_
                               _tl120577120965_
                               _e120582120968_
                               _hd120581120971_
                               _tl120580120973_
                               _e120585120976_
                               _hd120584120979_
                               _tl120583120981_)))))
                     (___match128374128375_
                      (lambda (_e120562121134_
                               _hd120561121137_
                               _tl120560121139_
                               _e120565121142_
                               _hd120564121145_
                               _tl120563121147_
                               _e120568121150_
                               _hd120567121153_
                               _tl120566121155_
                               _e120571121158_
                               _hd120570121161_
                               _tl120569121163_)
                        (let ((_L121166_ _hd120570121161_)
                              (_L121167_ _hd120567121153_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L121167_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L121166_)))
                              (___kont128339128340_ _L121166_ _L121167_)
                              (___match128402128403_
                               _e120562121134_
                               _hd120561121137_
                               _tl120560121139_
                               _e120565121142_
                               _hd120564121145_
                               _tl120563121147_
                               _e120568121150_
                               _hd120567121153_
                               _tl120566121155_
                               _e120571121158_
                               _hd120570121161_
                               _tl120569121163_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128337128338_))
                    (let ((_e120562121134_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128337128338_))))
                      (let ((_tl120560121139_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120562121134_)))
                            (_hd120561121137_
                             (let ()
                               (declare (not safe))
                               (##car _e120562121134_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120560121139_))
                            (let ((_e120565121142_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120560121139_))))
                              (let ((_tl120563121147_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120565121142_)))
                                    (_hd120564121145_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120565121142_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd120564121145_))
                                    (let ((_e120568121150_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd120564121145_))))
                                      (let ((_tl120566121155_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120568121150_)))
                                            (_hd120567121153_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120568121150_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120566121155_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120563121147_))
                                                (let ((_e120571121158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120563121147_))))
                                                  (let ((_tl120569121163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120571121158_)))
                                                        (_hd120570121161_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120571121158_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120569121163_))
                                                        (___match128374128375_
                                                         _e120562121134_
                                                         _hd120561121137_
                                                         _tl120560121139_
                                                         _e120565121142_
                                                         _hd120564121145_
                                                         _tl120563121147_
                                                         _e120568121150_
                                                         _hd120567121153_
                                                         _tl120566121155_
                                                         _e120571121158_
                                                         _hd120570121161_
                                                         _tl120569121163_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120556120615_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120556120615_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl120563121147_))
                                                (let ((_e120610120636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl120563121147_))))
                                                  (let ((_tl120608120641_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e120610120636_)))
                                                        (_hd120609120639_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e120610120636_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl120608120641_))
                                                        (___kont128345128346_
                                                         _hd120609120639_
                                                         _hd120564121145_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g120556120615_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120556120615_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl120563121147_))
                                        (let ((_e120610120636_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl120563121147_))))
                                          (let ((_tl120608120641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e120610120636_)))
                                                (_hd120609120639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e120610120636_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl120608120641_))
                                                (___kont128345128346_
                                                 _hd120609120639_
                                                 _hd120564121145_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g120556120615_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g120556120615_))))))
                            (let () (declare (not safe)) (_g120556120615_)))))
                    (let () (declare (not safe)) (_g120556120615_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_stx119479_)
        (letrec* ((_bind-e__126733126734_
                   (lambda (_id120531_ _expr120532_ _compile?120533_)
                     (let ((__tmp129069
                            (let ()
                              (declare (not safe))
                              (cons _id120531_ '())))
                           (__tmp129067
                            (let ((__tmp129068
                                   (if _compile?120533_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr120532_))
                                       _expr120532_)))
                              (declare (not safe))
                              (cons __tmp129068 '()))))
                       (declare (not safe))
                       (cons __tmp129069 __tmp129067))))
                  (_bind-e__0__126735126736_
                   (lambda (_id120538_ _expr120539_)
                     (let ((_compile?120541_ '#t))
                       (declare (not safe))
                       (_bind-e__126733126734_
                        _id120538_
                        _expr120539_
                        _compile?120541_))))
                  (_bind-e119481_
                   (lambda _g129071_
                     (let ((_g129070_
                            (let ()
                              (declare (not safe))
                              (##length _g129071_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129070_ 2))
                              (apply (lambda (_id120538_ _expr120539_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126735126736_
                                          _id120538_
                                          _expr120539_)))
                                     _g129071_))
                             ((let () (declare (not safe)) (##fx= _g129070_ 3))
                              (apply (lambda (_id120543_
                                              _expr120544_
                                              _compile?120545_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126733126734_
                                          _id120543_
                                          _expr120544_
                                          _compile?120545_)))
                                     _g129071_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129071_))))))
                  (_compile-bindings119482_
                   (lambda (_bindings120115_)
                     (let _lp120117_ ((_rest120119_ _bindings120115_)
                                      (_lift1120120_ '())
                                      (_lift2120121_ '())
                                      (_bind120122_ '()))
                       (let* ((_rest120123120131_ _rest120119_)
                              (_else120125120139_
                               (lambda ()
                                 (values (reverse _lift1120120_)
                                         (reverse _lift2120121_)
                                         (reverse _bind120122_))))
                              (_K120127120518_
                               (lambda (_rest120142_ _hd120143_)
                                 (let* ((___stx128473128474_ _hd120143_)
                                        (_g120147120183_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128473128474_)))))
                                   (let ((___kont128475128476_
                                          (lambda (_L120425_ _L120426_)
                                            (let* ((___stx128453128454_
                                                    _L120425_)
                                                   (_g120441120455_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128453128454_)))))
                                              (let ((___kont128455128456_
                                                     (lambda (_L120503_)
                                                       (let ((__tmp129072
                                                              (let ((__tmp129073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126733126734_
                                _L120426_
                                _L120425_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129073 _bind120122_))))
                 (declare (not safe))
                 (_lp120117_
                  _rest120142_
                  _lift1120120_
                  _lift2120121_
                  __tmp129072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128457128458_
                                                     (lambda (_L120468_)
                                                       (let ((_g129074_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx119479_
                         _L120426_
                         _L120468_
                         '#t))))
                 (begin
                   (let ((_g129075_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129074_)
                                (##vector-length _g129074_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129075_ 3)))
                         (error "Context expects 3 values" _g129075_)))
                   (let ((_ids120478_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129074_ 0)))
                         (_impls120479_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129074_ 1)))
                         (_clauses120480_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129074_ 2))))
                     (let* ((_g129076_
                             (for-each gx#core-bind-runtime! _ids120478_))
                            (_xbind120483_
                             (map _bind-e119481_ _ids120478_ _impls120479_))
                            (_expr*120485_
                             (let ((__tmp129078
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses120480_)))
                                   (__tmp129077
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129078
                                __tmp129077)))
                            (_bind*120487_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126733126734_
                                _L120426_
                                _expr*120485_
                                '#f))))
                       (let ((__tmp129080
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L120426_)))
                             (__tmp129079
                              (map gxc#identifier-symbol _ids120478_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129080
                          '" => "
                          __tmp129079))
                       (let ((__tmp129082
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2120121_ _xbind120483_)))
                             (__tmp129081
                              (let ()
                                (declare (not safe))
                                (cons _bind*120487_ _bind120122_))))
                         (declare (not safe))
                         (_lp120117_
                          _rest120142_
                          _lift1120120_
                          __tmp129082
                          __tmp129081)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128464128465_
                                                       (lambda (_e120446120495_
                                                                _hd120445120498_
                                                                _tl120444120500_)
                                                         (let ((_L120503_
                                                                _tl120444120500_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L120503_))
                       (___kont128455128456_ _L120503_)
                       (___kont128457128458_ _tl120444120500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128453128454_))
                                                      (let ((_e120446120495_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128453128454_))))
                (let ((_tl120444120500_
                       (let () (declare (not safe)) (##cdr _e120446120495_)))
                      (_hd120445120498_
                       (let () (declare (not safe)) (##car _e120446120495_))))
                  (___match128464128465_
                   _e120446120495_
                   _hd120445120498_
                   _tl120444120500_)))
              (let () (declare (not safe)) (_g120441120455_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128477128478_
                                          (lambda (_L120253_ _L120254_)
                                            (let* ((_g120268120298_
                                                    (lambda (_g120269120295_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120269120295_))))
                                                   (_g120267120393_
                                                    (lambda (_g120269120301_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120269120301_))
                                                          (let ((_e120275120303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120269120301_))))
                    (let ((_hd120274120306_
                           (let ()
                             (declare (not safe))
                             (##car _e120275120303_)))
                          (_tl120273120308_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120275120303_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120273120308_))
                          (let ((_e120278120311_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120273120308_))))
                            (let ((_hd120277120314_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120278120311_)))
                                  (_tl120276120316_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120278120311_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120277120314_))
                                  (let ((_e120281120319_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120277120314_))))
                                    (let ((_hd120280120322_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120281120319_)))
                                          (_tl120279120324_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120281120319_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120280120322_))
                                          (let ((_e120284120327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120280120322_))))
                                            (let ((_hd120283120330_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120284120327_)))
                                                  (_tl120282120332_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120284120327_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120283120330_))
                                                  (let ((_e120287120335_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120283120330_))))
                                                    (let ((_hd120286120338_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120287120335_)))
                                                          (_tl120285120340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120287120335_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120285120340_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120282120332_))
                      (let ((_e120290120343_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120282120332_))))
                        (let ((_hd120289120346_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120290120343_)))
                              (_tl120288120348_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120290120343_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120288120348_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120279120324_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120276120316_))
                                      (let ((_e120293120351_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120276120316_))))
                                        (let ((_hd120292120354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120293120351_)))
                                              (_tl120291120356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120293120351_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120291120356_))
                                              ((lambda (_L120359_
                                                        _L120360_
                                                        _L120361_)
                                                 (let* ((_lambda-id120385_
                                                         (let ((__tmp129084
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120254_)))
                       (__tmp129083 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129084 __tmp129083)))
                (_lambda-id120387_
                 (let ((__tmp129085
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx119479_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id120385_ __tmp129085)))
                (_g129086_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id120387_)))
                (_new-case-lambda-expr120390_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L120359_
                    _L120361_
                    _lambda-id120387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129088
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120254_)))
                                                         (__tmp129087
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id120387_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129088
                                                      '" => "
                                                      __tmp129087))
                                                   (let ((__tmp129091
                                                          (let ((__tmp129092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126733126734_
                            _L120254_
                            _new-case-lambda-expr120390_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129092 _rest120142_)))
                 (__tmp129089
                  (let ((__tmp129090
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126735126736_
                            _lambda-id120387_
                            _L120360_))))
                    (declare (not safe))
                    (cons __tmp129090 _lift1120120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120117_
                                                      __tmp129091
                                                      __tmp129089
                                                      _lift2120121_
                                                      _bind120122_))))
                                               _hd120292120354_
                                               _hd120289120346_
                                               _hd120286120338_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120268120298_
                                                 _g120269120301_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120268120298_ _g120269120301_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120268120298_ _g120269120301_)))
                              (let ()
                                (declare (not safe))
                                (_g120268120298_ _g120269120301_)))))
                      (let ()
                        (declare (not safe))
                        (_g120268120298_ _g120269120301_)))
                  (let ()
                    (declare (not safe))
                    (_g120268120298_ _g120269120301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120268120298_
                                                     _g120269120301_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120268120298_
                                             _g120269120301_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120268120298_ _g120269120301_)))))
                          (let ()
                            (declare (not safe))
                            (_g120268120298_ _g120269120301_)))))
                  (let ()
                    (declare (not safe))
                    (_g120268120298_ _g120269120301_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120267120393_ _L120253_))))
                                         (___kont128479128480_
                                          (lambda (_L120204_ _L120205_)
                                            (let ((__tmp129093
                                                   (let ((__tmp129094
                                                          (let ((__tmp129095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129096
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L120204_))))
                           (declare (not safe))
                           (cons __tmp129096 '()))))
                    (declare (not safe))
                    (cons _L120205_ __tmp129095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129094
                                                           _bind120122_))))
                                              (declare (not safe))
                                              (_lp120117_
                                               _rest120142_
                                               _lift1120120_
                                               _lift2120121_
                                               __tmp129093)))))
                                     (let* ((___match128524128525_
                                             (lambda (_e120164120229_
                                                      _hd120163120232_
                                                      _tl120162120234_
                                                      _e120167120237_
                                                      _hd120166120240_
                                                      _tl120165120242_
                                                      _e120170120245_
                                                      _hd120169120248_
                                                      _tl120168120250_)
                                               (let ((_L120253_
                                                      _hd120169120248_)
                                                     (_L120254_
                                                      _hd120166120240_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120254_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120253_)))
                                                     (___kont128477128478_
                                                      _L120253_
                                                      _L120254_)
                                                     (___kont128479128480_
                                                      _hd120169120248_
                                                      _hd120163120232_)))))
                                            (___match128502128503_
                                             (lambda (_e120153120401_
                                                      _hd120152120404_
                                                      _tl120151120406_
                                                      _e120156120409_
                                                      _hd120155120412_
                                                      _tl120154120414_
                                                      _e120159120417_
                                                      _hd120158120420_
                                                      _tl120157120422_)
                                               (let ((_L120425_
                                                      _hd120158120420_)
                                                     (_L120426_
                                                      _hd120155120412_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120426_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L120425_)))
                                                     (___kont128475128476_
                                                      _L120425_
                                                      _L120426_)
                                                     (___match128524128525_
                                                      _e120153120401_
                                                      _hd120152120404_
                                                      _tl120151120406_
                                                      _e120156120409_
                                                      _hd120155120412_
                                                      _tl120154120414_
                                                      _e120159120417_
                                                      _hd120158120420_
                                                      _tl120157120422_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128473128474_))
                                           (let ((_e120153120401_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128473128474_))))
                                             (let ((_tl120151120406_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120153120401_)))
                                                   (_hd120152120404_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120153120401_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120152120404_))
                                                   (let ((_e120156120409_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120152120404_))))
                                                     (let ((_tl120154120414_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120156120409_)))
                                                           (_hd120155120412_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120156120409_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120154120414_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120151120406_))
                       (let ((_e120159120417_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120151120406_))))
                         (let ((_tl120157120422_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120159120417_)))
                               (_hd120158120420_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120159120417_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120157120422_))
                               (___match128502128503_
                                _e120153120401_
                                _hd120152120404_
                                _tl120151120406_
                                _e120156120409_
                                _hd120155120412_
                                _tl120154120414_
                                _e120159120417_
                                _hd120158120420_
                                _tl120157120422_)
                               (let ()
                                 (declare (not safe))
                                 (_g120147120183_)))))
                       (let () (declare (not safe)) (_g120147120183_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120151120406_))
                       (let ((_e120178120196_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120151120406_))))
                         (let ((_tl120176120201_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120178120196_)))
                               (_hd120177120199_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120178120196_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120176120201_))
                               (___kont128479128480_
                                _hd120177120199_
                                _hd120152120404_)
                               (let ()
                                 (declare (not safe))
                                 (_g120147120183_)))))
                       (let () (declare (not safe)) (_g120147120183_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120151120406_))
                                                       (let ((_e120178120196_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120151120406_))))
                 (let ((_tl120176120201_
                        (let () (declare (not safe)) (##cdr _e120178120196_)))
                       (_hd120177120199_
                        (let () (declare (not safe)) (##car _e120178120196_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120176120201_))
                       (___kont128479128480_ _hd120177120199_ _hd120152120404_)
                       (let () (declare (not safe)) (_g120147120183_)))))
               (let () (declare (not safe)) (_g120147120183_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120147120183_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120123120131_))
                             (let ((_hd120128120521_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120123120131_)))
                                   (_tl120129120523_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120123120131_))))
                               (let* ((_hd120526_ _hd120128120521_)
                                      (_rest120528_ _tl120129120523_))
                                 (declare (not safe))
                                 (_K120127120518_ _rest120528_ _hd120526_)))
                             (let ()
                               (declare (not safe))
                               (_else120125120139_)))))))
                  (_lift-kw-lambda?119483_
                   (lambda (_bind120039_)
                     (let* ((___stx128541128542_ _bind120039_)
                            (_g120042120059_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx128541128542_)))))
                       (let ((___kont128543128544_
                              (lambda (_L120095_ _L120096_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L120096_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L120095_))
                                    '#f)))
                             (___kont128545128546_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx128541128542_))
                             (let ((_e120048120071_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx128541128542_))))
                               (let ((_tl120046120076_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e120048120071_)))
                                     (_hd120047120074_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e120048120071_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd120047120074_))
                                     (let ((_e120051120079_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd120047120074_))))
                                       (let ((_tl120049120084_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e120051120079_)))
                                             (_hd120050120082_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e120051120079_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl120049120084_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl120046120076_))
                                                 (let ((_e120054120087_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl120046120076_))))
                                                   (let ((_tl120052120092_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e120054120087_)))
                                                         (_hd120053120090_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e120054120087_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl120052120092_))
                                                         (___kont128543128544_
                                                          _hd120053120090_
                                                          _hd120050120082_)
                                                         (___kont128545128546_))))
                                                 (___kont128545128546_))
                                             (___kont128545128546_))))
                                     (___kont128545128546_))))
                             (___kont128545128546_))))))
                  (_lift-kw-lambda-bindings119484_
                   (lambda (_bindings119651_)
                     (let _lp119653_ ((_rest119655_ _bindings119651_)
                                      (_lift1119656_ '())
                                      (_lift2119657_ '())
                                      (_bind119658_ '()))
                       (let* ((_rest119659119667_ _rest119655_)
                              (_else119661119675_
                               (lambda ()
                                 (values (reverse _lift1119656_)
                                         (reverse _lift2119657_)
                                         (reverse _bind119658_))))
                              (_K119663120027_
                               (lambda (_rest119678_ _hd119679_)
                                 (let* ((___stx128571128572_ _hd119679_)
                                        (_g119682119707_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128571128572_)))))
                                   (let ((___kont128573128574_
                                          (lambda (_L119777_ _L119778_)
                                            (let* ((_g119792119845_
                                                    (lambda (_g119793119842_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119793119842_))))
                                                   (_g119791120021_
                                                    (lambda (_g119793119848_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119793119848_))
                                                          (let ((_e119801119850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119793119848_))))
                    (let ((_hd119800119853_
                           (let ()
                             (declare (not safe))
                             (##car _e119801119850_)))
                          (_tl119799119855_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119801119850_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119799119855_))
                          (let ((_e119804119858_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119799119855_))))
                            (let ((_hd119803119861_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119804119858_)))
                                  (_tl119802119863_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119804119858_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119803119861_))
                                  (let ((_e119807119866_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119803119861_))))
                                    (let ((_hd119806119869_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119807119866_)))
                                          (_tl119805119871_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119807119866_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119806119869_))
                                          (let ((_e119810119874_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119806119869_))))
                                            (let ((_hd119809119877_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119810119874_)))
                                                  (_tl119808119879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119810119874_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119809119877_))
                                                  (let ((_e119813119882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119809119877_))))
                                                    (let ((_hd119812119885_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119813119882_)))
                                                          (_tl119811119887_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119813119882_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119811119887_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119808119879_))
                      (let ((_e119816119890_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119808119879_))))
                        (let ((_hd119815119893_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119816119890_)))
                              (_tl119814119895_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119816119890_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd119815119893_))
                              (let ((_e119819119898_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd119815119893_))))
                                (let ((_hd119818119901_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119819119898_)))
                                      (_tl119817119903_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119819119898_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119817119903_))
                                      (let ((_e119822119906_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119817119903_))))
                                        (let ((_hd119821119909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119822119906_)))
                                              (_tl119820119911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119822119906_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd119821119909_))
                                              (let ((_e119825119914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd119821119909_))))
                                                (let ((_hd119824119917_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e119825119914_)))
                                                      (_tl119823119919_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e119825119914_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd119824119917_))
                                                      (let ((_e119828119922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd119824119917_))))
                (let ((_hd119827119925_
                       (let () (declare (not safe)) (##car _e119828119922_)))
                      (_tl119826119927_
                       (let () (declare (not safe)) (##cdr _e119828119922_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd119827119925_))
                      (let ((_e119831119930_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd119827119925_))))
                        (let ((_hd119830119933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119831119930_)))
                              (_tl119829119935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119831119930_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119829119935_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl119826119927_))
                                  (let ((_e119834119938_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl119826119927_))))
                                    (let ((_hd119833119941_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119834119938_)))
                                          (_tl119832119943_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119834119938_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl119832119943_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119823119919_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl119820119911_))
                                                  (let ((_e119837119946_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl119820119911_))))
                                                    (let ((_hd119836119949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119837119946_)))
                                                          (_tl119835119951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119837119946_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119835119951_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl119814119895_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl119805119871_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl119802119863_))
                              (let ((_e119840119954_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl119802119863_))))
                                (let ((_hd119839119957_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e119840119954_)))
                                      (_tl119838119959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e119840119954_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl119838119959_))
                                      ((lambda (_L119962_
                                                _L119963_
                                                _L119964_
                                                _L119965_
                                                _L119966_)
                                         (let* ((_get-kws-id120006_
                                                 (let ((__tmp129098
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119778_)))
                                                       (__tmp129097
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129098
                                                    __tmp129097)))
                                                (_get-kws-id120008_
                                                 (let ((__tmp129099
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119479_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120006_
                                                    __tmp129099)))
                                                (_main-id120010_
                                                 (let ((__tmp129101
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L119778_)))
                                                       (__tmp129100
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129101
                                                    __tmp129100)))
                                                (_main-id120012_
                                                 (let ((__tmp129102
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx119479_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120010_
                                                    __tmp129102)))
                                                (_g129103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120008_)))
                                                (_g129104_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120012_)))
                                                (_new-kw-dispatch120016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119962_
                                                    _L119966_
                                                    _get-kws-id120008_)))
                                                (_new-get-kws120018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119963_
                                                    _L119965_
                                                    _main-id120012_))))
                                           (let ((__tmp129107
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L119778_)))
                                                 (__tmp129106
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120008_)))
                                                 (__tmp129105
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120012_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129107
                                              '" => "
                                              __tmp129106
                                              '" => "
                                              __tmp129105))
                                           (let ((__tmp129112
                                                  (let ((__tmp129113
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126733126734_
                                                            _main-id120012_
                                                            _L119964_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129113
                                                          _lift1119656_)))
                                                 (__tmp129110
                                                  (let ((__tmp129111
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126733126734_
                                                            _get-kws-id120008_
                                                            _new-get-kws120018_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129111
                                                          _lift2119657_)))
                                                 (__tmp129108
                                                  (let ((__tmp129109
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126733126734_
                                                            _L119778_
                                                            _new-kw-dispatch120016_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp129109
                                                          _bind119658_))))
                                             (declare (not safe))
                                             (_lp119653_
                                              _rest119678_
                                              __tmp129112
                                              __tmp129110
                                              __tmp129108))))
                                       _hd119839119957_
                                       _hd119836119949_
                                       _hd119833119941_
                                       _hd119830119933_
                                       _hd119812119885_)
                                      (let ()
                                        (declare (not safe))
                                        (_g119792119845_ _g119793119848_)))))
                              (let ()
                                (declare (not safe))
                                (_g119792119845_ _g119793119848_)))
                          (let ()
                            (declare (not safe))
                            (_g119792119845_ _g119793119848_)))
                      (let ()
                        (declare (not safe))
                        (_g119792119845_ _g119793119848_)))
                  (let ()
                    (declare (not safe))
                    (_g119792119845_ _g119793119848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119792119845_
                                                     _g119793119848_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g119792119845_
                                                 _g119793119848_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g119792119845_
                                             _g119793119848_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119792119845_ _g119793119848_)))
                              (let ()
                                (declare (not safe))
                                (_g119792119845_ _g119793119848_)))))
                      (let ()
                        (declare (not safe))
                        (_g119792119845_ _g119793119848_)))))
              (let ()
                (declare (not safe))
                (_g119792119845_ _g119793119848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g119792119845_
                                                 _g119793119848_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119792119845_ _g119793119848_)))))
                              (let ()
                                (declare (not safe))
                                (_g119792119845_ _g119793119848_)))))
                      (let ()
                        (declare (not safe))
                        (_g119792119845_ _g119793119848_)))
                  (let ()
                    (declare (not safe))
                    (_g119792119845_ _g119793119848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119792119845_
                                                     _g119793119848_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119792119845_
                                             _g119793119848_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119792119845_ _g119793119848_)))))
                          (let ()
                            (declare (not safe))
                            (_g119792119845_ _g119793119848_)))))
                  (let ()
                    (declare (not safe))
                    (_g119792119845_ _g119793119848_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119791120021_ _L119777_))))
                                         (___kont128575128576_
                                          (lambda (_L119728_ _L119729_)
                                            (let ((__tmp129114
                                                   (let ((__tmp129115
                                                          (let ((__tmp129116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L119728_ '()))))
                    (declare (not safe))
                    (cons _L119729_ __tmp129116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129115
                                                           _bind119658_))))
                                              (declare (not safe))
                                              (_lp119653_
                                               _rest119678_
                                               _lift1119656_
                                               _lift2119657_
                                               __tmp129114)))))
                                     (let ((___match128598128599_
                                            (lambda (_e119688119753_
                                                     _hd119687119756_
                                                     _tl119686119758_
                                                     _e119691119761_
                                                     _hd119690119764_
                                                     _tl119689119766_
                                                     _e119694119769_
                                                     _hd119693119772_
                                                     _tl119692119774_)
                                              (let ((_L119777_
                                                     _hd119693119772_)
                                                    (_L119778_
                                                     _hd119690119764_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L119778_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L119777_)))
                                                    (___kont128573128574_
                                                     _L119777_
                                                     _L119778_)
                                                    (___kont128575128576_
                                                     _hd119693119772_
                                                     _hd119687119756_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128571128572_))
                                           (let ((_e119688119753_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128571128572_))))
                                             (let ((_tl119686119758_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e119688119753_)))
                                                   (_hd119687119756_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e119688119753_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd119687119756_))
                                                   (let ((_e119691119761_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd119687119756_))))
                                                     (let ((_tl119689119766_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e119691119761_)))
                                                           (_hd119690119764_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e119691119761_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl119689119766_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl119686119758_))
                       (let ((_e119694119769_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119686119758_))))
                         (let ((_tl119692119774_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119694119769_)))
                               (_hd119693119772_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119694119769_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119692119774_))
                               (___match128598128599_
                                _e119688119753_
                                _hd119687119756_
                                _tl119686119758_
                                _e119691119761_
                                _hd119690119764_
                                _tl119689119766_
                                _e119694119769_
                                _hd119693119772_
                                _tl119692119774_)
                               (let ()
                                 (declare (not safe))
                                 (_g119682119707_)))))
                       (let () (declare (not safe)) (_g119682119707_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl119686119758_))
                       (let ((_e119702119720_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl119686119758_))))
                         (let ((_tl119700119725_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119702119720_)))
                               (_hd119701119723_
                                (let ()
                                  (declare (not safe))
                                  (##car _e119702119720_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl119700119725_))
                               (___kont128575128576_
                                _hd119701119723_
                                _hd119687119756_)
                               (let ()
                                 (declare (not safe))
                                 (_g119682119707_)))))
                       (let () (declare (not safe)) (_g119682119707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl119686119758_))
                                                       (let ((_e119702119720_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl119686119758_))))
                 (let ((_tl119700119725_
                        (let () (declare (not safe)) (##cdr _e119702119720_)))
                       (_hd119701119723_
                        (let () (declare (not safe)) (##car _e119702119720_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl119700119725_))
                       (___kont128575128576_ _hd119701119723_ _hd119687119756_)
                       (let () (declare (not safe)) (_g119682119707_)))))
               (let () (declare (not safe)) (_g119682119707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g119682119707_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest119659119667_))
                             (let ((_hd119664120030_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest119659119667_)))
                                   (_tl119665120032_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest119659119667_))))
                               (let* ((_hd120035_ _hd119664120030_)
                                      (_rest120037_ _tl119665120032_))
                                 (declare (not safe))
                                 (_K119663120027_ _rest120037_ _hd120035_)))
                             (let ()
                               (declare (not safe))
                               (_else119661119675_))))))))
          (let* ((___stx128615128616_ _stx119479_)
                 (_g119487119513_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128615128616_)))))
            (let ((___kont128617128618_
                   (lambda (_L119573_ _L119574_)
                     (let ((__tmp129118
                            (lambda ()
                              (if (let ((__tmp129145
                                         (let ((__tmp129146
                                                (lambda (_g119602119605_
                                                         _g119603119607_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g119602119605_
                                                          _g119603119607_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp129146
                                                   '()
                                                   _L119574_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?119483_
                                            __tmp129145))
                                  (let ((_g129132_
                                         (let ((__tmp129134
                                                (let ((__tmp129135
                                                       (lambda (_g119609119612_
                                                                _g119610119614_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119609119612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119610119614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129135
                                                          '()
                                                          _L119574_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings119484_
                                            __tmp129134))))
                                    (begin
                                      (let ((_g129133_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129132_)
                                                   (##vector-length _g129132_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129133_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129133_)))
                                      (let ((_lift1119617_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129132_ 0)))
                                            (_lift2119618_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129132_ 1)))
                                            (_hd119619_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129132_ 2))))
                                        (let* ((_expr119621_
                                                (let ((__tmp129136
                                                       (let ((__tmp129137
                                                              (let ((__tmp129138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L119573_ '()))))
                        (declare (not safe))
                        (cons _hd119619_ __tmp129138))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129136
                                                   _stx119479_)))
                                               (_expr119623_
                                                (let ((__tmp129139
                                                       (let ((__tmp129140
                                                              (let ((__tmp129141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119621_ '()))))
                        (declare (not safe))
                        (cons _lift2119618_ __tmp129141))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129139
                                                   _stx119479_)))
                                               (_expr119625_
                                                (let ((__tmp129142
                                                       (let ((__tmp129143
                                                              (let ((__tmp129144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr119623_ '()))))
                        (declare (not safe))
                        (cons _lift1119617_ __tmp129144))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129142
                                                   _stx119479_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _expr119625_))))))
                                  (let ((_g129119_
                                         (let ((__tmp129121
                                                (let ((__tmp129122
                                                       (lambda (_g119627119630_
                                                                _g119628119632_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g119627119630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g119628119632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp129122
                                                          '()
                                                          _L119574_))))
                                           (declare (not safe))
                                           (_compile-bindings119482_
                                            __tmp129121))))
                                    (begin
                                      (let ((_g129120_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g129119_)
                                                   (##vector-length _g129119_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g129120_ 3)))
                                            (error "Context expects 3 values"
                                                   _g129120_)))
                                      (let ((_lift1119635_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 0)))
                                            (_lift2119636_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 1)))
                                            (_hd119637_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g129119_ 2))))
                                        (let* ((_body119639_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _L119573_)))
                                               (_expr119641_
                                                (let ((__tmp129123
                                                       (let ((__tmp129124
                                                              (let ((__tmp129125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body119639_ '()))))
                        (declare (not safe))
                        (cons _hd119637_ __tmp129125))))
                 (declare (not safe))
                 (cons '%#let-values __tmp129124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp129123
                                                   _stx119479_)))
                                               (_expr119643_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2119636_))
                                                    _expr119641_
                                                    (let ((__tmp129126
                                                           (let ((__tmp129127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129128
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119641_ '()))))
                            (declare (not safe))
                            (cons _lift2119636_ __tmp129128))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129127))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129126 _stx119479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr119645_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1119635_))
                                                    _expr119643_
                                                    (let ((__tmp129129
                                                           (let ((__tmp129130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129131
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr119643_ '()))))
                            (declare (not safe))
                            (cons _lift1119635_ __tmp129131))))
                     (declare (not safe))
                     (cons '%#let-values __tmp129130))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp129129 _stx119479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr119645_)))))))
                           (__tmp129117
                            (let ((__obj128821
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128821)
                              __obj128821)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129118
                        gx#current-expander-context
                        __tmp129117))))
                  (___kont128621128622_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx119479_)))))
              (let ((___match128642128643_
                     (lambda (_e119493119525_
                              _hd119492119528_
                              _tl119491119530_
                              _e119496119533_
                              _hd119495119536_
                              _tl119494119538_
                              ___splice128619128620_
                              _target119497119541_
                              _tl119499119543_)
                       (letrec ((_loop119500119546_
                                 (lambda (_hd119498119549_ _bind119504119551_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd119498119549_))
                                       (let ((_e119501119554_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd119498119549_))))
                                         (let ((_lp-tl119503119559_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e119501119554_)))
                                               (_lp-hd119502119557_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e119501119554_))))
                                           (let ((__tmp129149
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd119502119557_
                                                          _bind119504119551_))))
                                             (declare (not safe))
                                             (_loop119500119546_
                                              _lp-tl119503119559_
                                              __tmp129149))))
                                       (let ((_bind119505119562_
                                              (reverse _bind119504119551_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl119494119538_))
                                             (let ((_e119508119565_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl119494119538_))))
                                               (let ((_tl119506119570_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e119508119565_)))
                                                     (_hd119507119568_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e119508119565_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl119506119570_))
                                                     (let ((_L119573_
                                                            _hd119507119568_)
                                                           (_L119574_
                                                            _bind119505119562_))
                                                       (if (let ((__tmp129147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129148
                                 (lambda (_g119594119597_ _g119595119599_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g119594119597_ _g119595119599_)))))
                            (declare (not safe))
                            (foldr1 __tmp129148 '() _L119574_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129147))
                   (___kont128617128618_ _L119573_ _L119574_)
                   (___kont128621128622_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128621128622_))))
                                             (___kont128621128622_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop119500119546_ _target119497119541_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128615128616_))
                    (let ((_e119493119525_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128615128616_))))
                      (let ((_tl119491119530_
                             (let ()
                               (declare (not safe))
                               (##cdr _e119493119525_)))
                            (_hd119492119528_
                             (let ()
                               (declare (not safe))
                               (##car _e119493119525_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl119491119530_))
                            (let ((_e119496119533_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl119491119530_))))
                              (let ((_tl119494119538_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e119496119533_)))
                                    (_hd119495119536_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e119496119533_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd119495119536_))
                                    (let ((___splice128619128620_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd119495119536_
                                              '0))))
                                      (let ((_tl119499119543_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128619128620_
                                                '1)))
                                            (_target119497119541_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128619128620_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl119499119543_))
                                            (___match128642128643_
                                             _e119493119525_
                                             _hd119492119528_
                                             _tl119491119530_
                                             _e119496119533_
                                             _hd119495119536_
                                             _tl119494119538_
                                             ___splice128619128620_
                                             _target119497119541_
                                             _tl119499119543_)
                                            (___kont128621128622_))))
                                    (___kont128621128622_))))
                            (___kont128621128622_))))
                    (___kont128621128622_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_stx118623_)
        (letrec* ((_bind-e__126738126739_
                   (lambda (_id119463_ _expr119464_ _compile?119465_)
                     (let ((__tmp129152
                            (let ()
                              (declare (not safe))
                              (cons _id119463_ '())))
                           (__tmp129150
                            (let ((__tmp129151
                                   (if _compile?119465_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _expr119464_))
                                       _expr119464_)))
                              (declare (not safe))
                              (cons __tmp129151 '()))))
                       (declare (not safe))
                       (cons __tmp129152 __tmp129150))))
                  (_bind-e__0__126740126741_
                   (lambda (_id119470_ _expr119471_)
                     (let ((_compile?119473_ '#t))
                       (declare (not safe))
                       (_bind-e__126738126739_
                        _id119470_
                        _expr119471_
                        _compile?119473_))))
                  (_bind-e118625_
                   (lambda _g129154_
                     (let ((_g129153_
                            (let ()
                              (declare (not safe))
                              (##length _g129154_))))
                       (cond ((let () (declare (not safe)) (##fx= _g129153_ 2))
                              (apply (lambda (_id119470_ _expr119471_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__126740126741_
                                          _id119470_
                                          _expr119471_)))
                                     _g129154_))
                             ((let () (declare (not safe)) (##fx= _g129153_ 3))
                              (apply (lambda (_id119475_
                                              _expr119476_
                                              _compile?119477_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__126738126739_
                                          _id119475_
                                          _expr119476_
                                          _compile?119477_)))
                                     _g129154_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g129154_))))))
                  (_compile-bindings118626_
                   (lambda (_rest118761_)
                     (let _lp118763_ ((_rest118765_ _rest118761_)
                                      (_bind118766_ '()))
                       (let* ((_rest118767118775_ _rest118765_)
                              (_else118769118783_
                               (lambda () (reverse _bind118766_)))
                              (_K118771119450_
                               (lambda (_rest118786_ _hd118787_)
                                 (let* ((___stx128665128666_ _hd118787_)
                                        (_g118792118839_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx128665128666_)))))
                                   (let ((___kont128667128668_
                                          (lambda (_L119357_ _L119358_)
                                            (let* ((___stx128645128646_
                                                    _L119357_)
                                                   (_g119373119387_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx128645128646_)))))
                                              (let ((___kont128647128648_
                                                     (lambda (_L119435_)
                                                       (let ((__tmp129155
                                                              (let ((__tmp129156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__126738126739_
                                _L119358_
                                _L119357_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp129156 _bind118766_))))
                 (declare (not safe))
                 (_lp118763_ _rest118786_ __tmp129155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont128649128650_
                                                     (lambda (_L119400_)
                                                       (let ((_g129157_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx118623_
                         _L119358_
                         _L119400_
                         '#t))))
                 (begin
                   (let ((_g129158_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g129157_)
                                (##vector-length _g129157_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g129158_ 3)))
                         (error "Context expects 3 values" _g129158_)))
                   (let ((_ids119410_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129157_ 0)))
                         (_impls119411_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129157_ 1)))
                         (_clauses119412_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g129157_ 2))))
                     (let* ((_g129159_
                             (for-each gx#core-bind-runtime! _ids119410_))
                            (_xbind119415_
                             (map _bind-e118625_ _ids119410_ _impls119411_))
                            (_expr*119417_
                             (let ((__tmp129161
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses119412_)))
                                   (__tmp129160
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp129161
                                __tmp129160)))
                            (_bind*119419_
                             (let ()
                               (declare (not safe))
                               (_bind-e__126738126739_
                                _L119358_
                                _expr*119417_
                                '#f))))
                       (let ((__tmp129163
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L119358_)))
                             (__tmp129162
                              (map gxc#identifier-symbol _ids119410_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp129163
                          '" => "
                          __tmp129162))
                       (let ((__tmp129164
                              (let ((__tmp129165
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind118766_
                                               _xbind119415_))))
                                (declare (not safe))
                                (cons _bind*119419_ __tmp129165))))
                         (declare (not safe))
                         (_lp118763_ _rest118786_ __tmp129164)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match128656128657_
                                                       (lambda (_e119378119427_
                                                                _hd119377119430_
                                                                _tl119376119432_)
                                                         (let ((_L119435_
                                                                _tl119376119432_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L119435_))
                       (___kont128647128648_ _L119435_)
                       (___kont128649128650_ _tl119376119432_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx128645128646_))
                                                      (let ((_e119378119427_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx128645128646_))))
                (let ((_tl119376119432_
                       (let () (declare (not safe)) (##cdr _e119378119427_)))
                      (_hd119377119430_
                       (let () (declare (not safe)) (##car _e119378119427_))))
                  (___match128656128657_
                   _e119378119427_
                   _hd119377119430_
                   _tl119376119432_)))
              (let () (declare (not safe)) (_g119373119387_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont128669128670_
                                          (lambda (_L119185_ _L119186_)
                                            (let* ((_g119200119230_
                                                    (lambda (_g119201119227_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g119201119227_))))
                                                   (_g119199119325_
                                                    (lambda (_g119201119233_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g119201119233_))
                                                          (let ((_e119207119235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g119201119233_))))
                    (let ((_hd119206119238_
                           (let ()
                             (declare (not safe))
                             (##car _e119207119235_)))
                          (_tl119205119240_
                           (let ()
                             (declare (not safe))
                             (##cdr _e119207119235_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl119205119240_))
                          (let ((_e119210119243_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl119205119240_))))
                            (let ((_hd119209119246_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e119210119243_)))
                                  (_tl119208119248_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e119210119243_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd119209119246_))
                                  (let ((_e119213119251_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd119209119246_))))
                                    (let ((_hd119212119254_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e119213119251_)))
                                          (_tl119211119256_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e119213119251_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd119212119254_))
                                          (let ((_e119216119259_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd119212119254_))))
                                            (let ((_hd119215119262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e119216119259_)))
                                                  (_tl119214119264_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e119216119259_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd119215119262_))
                                                  (let ((_e119219119267_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd119215119262_))))
                                                    (let ((_hd119218119270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e119219119267_)))
                                                          (_tl119217119272_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e119219119267_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl119217119272_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl119214119264_))
                      (let ((_e119222119275_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl119214119264_))))
                        (let ((_hd119221119278_
                               (let ()
                                 (declare (not safe))
                                 (##car _e119222119275_)))
                              (_tl119220119280_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e119222119275_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl119220119280_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl119211119256_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl119208119248_))
                                      (let ((_e119225119283_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl119208119248_))))
                                        (let ((_hd119224119286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e119225119283_)))
                                              (_tl119223119288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e119225119283_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl119223119288_))
                                              ((lambda (_L119291_
                                                        _L119292_
                                                        _L119293_)
                                                 (let* ((_lambda-id119317_
                                                         (let ((__tmp129167
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L119186_)))
                       (__tmp129166 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp129167 __tmp129166)))
                (_lambda-id119319_
                 (let ((__tmp129168
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx118623_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id119317_ __tmp129168)))
                (_g129169_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id119319_)))
                (_new-case-lambda-expr119322_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L119291_
                    _L119293_
                    _lambda-id119319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp129171
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L119186_)))
                                                         (__tmp129170
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id119319_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp129171
                                                      '" => "
                                                      __tmp129170))
                                                   (let ((__tmp129174
                                                          (let ((__tmp129175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__126738126739_
                            _L119186_
                            _new-case-lambda-expr119322_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp129175 _rest118786_)))
                 (__tmp129172
                  (let ((__tmp129173
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__126740126741_
                            _lambda-id119319_
                            _L119292_))))
                    (declare (not safe))
                    (cons __tmp129173 _bind118766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp118763_
                                                      __tmp129174
                                                      __tmp129172))))
                                               _hd119224119286_
                                               _hd119221119278_
                                               _hd119218119270_)
                                              (let ()
                                                (declare (not safe))
                                                (_g119200119230_
                                                 _g119201119233_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g119200119230_ _g119201119233_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g119200119230_ _g119201119233_)))
                              (let ()
                                (declare (not safe))
                                (_g119200119230_ _g119201119233_)))))
                      (let ()
                        (declare (not safe))
                        (_g119200119230_ _g119201119233_)))
                  (let ()
                    (declare (not safe))
                    (_g119200119230_ _g119201119233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g119200119230_
                                                     _g119201119233_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g119200119230_
                                             _g119201119233_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g119200119230_ _g119201119233_)))))
                          (let ()
                            (declare (not safe))
                            (_g119200119230_ _g119201119233_)))))
                  (let ()
                    (declare (not safe))
                    (_g119200119230_ _g119201119233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g119199119325_ _L119185_))))
                                         (___kont128671128672_
                                          (lambda (_L118909_ _L118910_)
                                            (let* ((_g118924118977_
                                                    (lambda (_g118925118974_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g118925118974_))))
                                                   (_g118923119153_
                                                    (lambda (_g118925118980_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g118925118980_))
                                                          (let ((_e118933118982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g118925118980_))))
                    (let ((_hd118932118985_
                           (let ()
                             (declare (not safe))
                             (##car _e118933118982_)))
                          (_tl118931118987_
                           (let ()
                             (declare (not safe))
                             (##cdr _e118933118982_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl118931118987_))
                          (let ((_e118936118990_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl118931118987_))))
                            (let ((_hd118935118993_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e118936118990_)))
                                  (_tl118934118995_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e118936118990_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd118935118993_))
                                  (let ((_e118939118998_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd118935118993_))))
                                    (let ((_hd118938119001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118939118998_)))
                                          (_tl118937119003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118939118998_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd118938119001_))
                                          (let ((_e118942119006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd118938119001_))))
                                            (let ((_hd118941119009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e118942119006_)))
                                                  (_tl118940119011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e118942119006_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd118941119009_))
                                                  (let ((_e118945119014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd118941119009_))))
                                                    (let ((_hd118944119017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118945119014_)))
                                                          (_tl118943119019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118945119014_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118943119019_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl118940119011_))
                      (let ((_e118948119022_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl118940119011_))))
                        (let ((_hd118947119025_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118948119022_)))
                              (_tl118946119027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118948119022_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd118947119025_))
                              (let ((_e118951119030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd118947119025_))))
                                (let ((_hd118950119033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118951119030_)))
                                      (_tl118949119035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118951119030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl118949119035_))
                                      (let ((_e118954119038_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl118949119035_))))
                                        (let ((_hd118953119041_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e118954119038_)))
                                              (_tl118952119043_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e118954119038_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd118953119041_))
                                              (let ((_e118957119046_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd118953119041_))))
                                                (let ((_hd118956119049_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e118957119046_)))
                                                      (_tl118955119051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e118957119046_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd118956119049_))
                                                      (let ((_e118960119054_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd118956119049_))))
                (let ((_hd118959119057_
                       (let () (declare (not safe)) (##car _e118960119054_)))
                      (_tl118958119059_
                       (let () (declare (not safe)) (##cdr _e118960119054_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd118959119057_))
                      (let ((_e118963119062_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd118959119057_))))
                        (let ((_hd118962119065_
                               (let ()
                                 (declare (not safe))
                                 (##car _e118963119062_)))
                              (_tl118961119067_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e118963119062_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl118961119067_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl118958119059_))
                                  (let ((_e118966119070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl118958119059_))))
                                    (let ((_hd118965119073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e118966119070_)))
                                          (_tl118964119075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e118966119070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl118964119075_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl118955119051_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl118952119043_))
                                                  (let ((_e118969119078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl118952119043_))))
                                                    (let ((_hd118968119081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e118969119078_)))
                                                          (_tl118967119083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e118969119078_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl118967119083_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl118946119027_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl118937119003_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl118934118995_))
                              (let ((_e118972119086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl118934118995_))))
                                (let ((_hd118971119089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e118972119086_)))
                                      (_tl118970119091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e118972119086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl118970119091_))
                                      ((lambda (_L119094_
                                                _L119095_
                                                _L119096_
                                                _L119097_
                                                _L119098_)
                                         (let* ((_get-kws-id119138_
                                                 (let ((__tmp129177
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118910_)))
                                                       (__tmp129176
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129177
                                                    __tmp129176)))
                                                (_get-kws-id119140_
                                                 (let ((__tmp129178
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118623_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id119138_
                                                    __tmp129178)))
                                                (_main-id119142_
                                                 (let ((__tmp129180
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L118910_)))
                                                       (__tmp129179
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp129180
                                                    __tmp129179)))
                                                (_main-id119144_
                                                 (let ((__tmp129181
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx118623_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id119142_
                                                    __tmp129181)))
                                                (_g129182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id119140_)))
                                                (_g129183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id119144_)))
                                                (_new-kw-dispatch119148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119094_
                                                    _L119098_
                                                    _get-kws-id119140_)))
                                                (_new-get-kws119150_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L119095_
                                                    _L119097_
                                                    _main-id119144_))))
                                           (let ((__tmp129186
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L118910_)))
                                                 (__tmp129185
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id119140_)))
                                                 (__tmp129184
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id119144_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp129186
                                              '" => "
                                              __tmp129185
                                              '" => "
                                              __tmp129184))
                                           (let ((__tmp129187
                                                  (let ((__tmp129192
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__126738126739_
                                                            _main-id119144_
                                                            _L119096_
                                                            '#f)))
                                                        (__tmp129188
                                                         (let ((__tmp129191
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__126738126739_
                           _get-kws-id119140_
                           _new-get-kws119150_
                           '#f)))
                       (__tmp129189
                        (let ((__tmp129190
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__126738126739_
                                  _L118910_
                                  _new-kw-dispatch119148_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp129190 _rest118786_))))
                   (declare (not safe))
                   (cons __tmp129191 __tmp129189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp129192
                                                          __tmp129188))))
                                             (declare (not safe))
                                             (_lp118763_
                                              __tmp129187
                                              _bind118766_))))
                                       _hd118971119089_
                                       _hd118968119081_
                                       _hd118965119073_
                                       _hd118962119065_
                                       _hd118944119017_)
                                      (let ()
                                        (declare (not safe))
                                        (_g118924118977_ _g118925118980_)))))
                              (let ()
                                (declare (not safe))
                                (_g118924118977_ _g118925118980_)))
                          (let ()
                            (declare (not safe))
                            (_g118924118977_ _g118925118980_)))
                      (let ()
                        (declare (not safe))
                        (_g118924118977_ _g118925118980_)))
                  (let ()
                    (declare (not safe))
                    (_g118924118977_ _g118925118980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118924118977_
                                                     _g118925118980_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g118924118977_
                                                 _g118925118980_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g118924118977_
                                             _g118925118980_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118924118977_ _g118925118980_)))
                              (let ()
                                (declare (not safe))
                                (_g118924118977_ _g118925118980_)))))
                      (let ()
                        (declare (not safe))
                        (_g118924118977_ _g118925118980_)))))
              (let ()
                (declare (not safe))
                (_g118924118977_ _g118925118980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g118924118977_
                                                 _g118925118980_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g118924118977_ _g118925118980_)))))
                              (let ()
                                (declare (not safe))
                                (_g118924118977_ _g118925118980_)))))
                      (let ()
                        (declare (not safe))
                        (_g118924118977_ _g118925118980_)))
                  (let ()
                    (declare (not safe))
                    (_g118924118977_ _g118925118980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g118924118977_
                                                     _g118925118980_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g118924118977_
                                             _g118925118980_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g118924118977_ _g118925118980_)))))
                          (let ()
                            (declare (not safe))
                            (_g118924118977_ _g118925118980_)))))
                  (let ()
                    (declare (not safe))
                    (_g118924118977_ _g118925118980_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g118923119153_ _L118909_))))
                                         (___kont128673128674_
                                          (lambda (_L118860_ _L118861_)
                                            (let ((__tmp129193
                                                   (let ((__tmp129194
                                                          (let ((__tmp129195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp129196
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__0 _L118860_))))
                           (declare (not safe))
                           (cons __tmp129196 '()))))
                    (declare (not safe))
                    (cons _L118861_ __tmp129195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp129194
                                                           _bind118766_))))
                                              (declare (not safe))
                                              (_lp118763_
                                               _rest118786_
                                               __tmp129193)))))
                                     (let* ((___match128740128741_
                                             (lambda (_e118820118885_
                                                      _hd118819118888_
                                                      _tl118818118890_
                                                      _e118823118893_
                                                      _hd118822118896_
                                                      _tl118821118898_
                                                      _e118826118901_
                                                      _hd118825118904_
                                                      _tl118824118906_)
                                               (let ((_L118909_
                                                      _hd118825118904_)
                                                     (_L118910_
                                                      _hd118822118896_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L118910_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L118909_)))
                                                     (___kont128671128672_
                                                      _L118909_
                                                      _L118910_)
                                                     (___kont128673128674_
                                                      _hd118825118904_
                                                      _hd118819118888_)))))
                                            (___match128718128719_
                                             (lambda (_e118809119161_
                                                      _hd118808119164_
                                                      _tl118807119166_
                                                      _e118812119169_
                                                      _hd118811119172_
                                                      _tl118810119174_
                                                      _e118815119177_
                                                      _hd118814119180_
                                                      _tl118813119182_)
                                               (let ((_L119185_
                                                      _hd118814119180_)
                                                     (_L119186_
                                                      _hd118811119172_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119186_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L119185_)))
                                                     (___kont128669128670_
                                                      _L119185_
                                                      _L119186_)
                                                     (___match128740128741_
                                                      _e118809119161_
                                                      _hd118808119164_
                                                      _tl118807119166_
                                                      _e118812119169_
                                                      _hd118811119172_
                                                      _tl118810119174_
                                                      _e118815119177_
                                                      _hd118814119180_
                                                      _tl118813119182_)))))
                                            (___match128696128697_
                                             (lambda (_e118798119333_
                                                      _hd118797119336_
                                                      _tl118796119338_
                                                      _e118801119341_
                                                      _hd118800119344_
                                                      _tl118799119346_
                                                      _e118804119349_
                                                      _hd118803119352_
                                                      _tl118802119354_)
                                               (let ((_L119357_
                                                      _hd118803119352_)
                                                     (_L119358_
                                                      _hd118800119344_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L119358_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L119357_)))
                                                     (___kont128667128668_
                                                      _L119357_
                                                      _L119358_)
                                                     (___match128718128719_
                                                      _e118798119333_
                                                      _hd118797119336_
                                                      _tl118796119338_
                                                      _e118801119341_
                                                      _hd118800119344_
                                                      _tl118799119346_
                                                      _e118804119349_
                                                      _hd118803119352_
                                                      _tl118802119354_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx128665128666_))
                                           (let ((_e118798119333_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx128665128666_))))
                                             (let ((_tl118796119338_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e118798119333_)))
                                                   (_hd118797119336_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e118798119333_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd118797119336_))
                                                   (let ((_e118801119341_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd118797119336_))))
                                                     (let ((_tl118799119346_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e118801119341_)))
                                                           (_hd118800119344_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e118801119341_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl118799119346_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl118796119338_))
                       (let ((_e118804119349_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118796119338_))))
                         (let ((_tl118802119354_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118804119349_)))
                               (_hd118803119352_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118804119349_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118802119354_))
                               (___match128696128697_
                                _e118798119333_
                                _hd118797119336_
                                _tl118796119338_
                                _e118801119341_
                                _hd118800119344_
                                _tl118799119346_
                                _e118804119349_
                                _hd118803119352_
                                _tl118802119354_)
                               (let ()
                                 (declare (not safe))
                                 (_g118792118839_)))))
                       (let () (declare (not safe)) (_g118792118839_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl118796119338_))
                       (let ((_e118834118852_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl118796119338_))))
                         (let ((_tl118832118857_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e118834118852_)))
                               (_hd118833118855_
                                (let ()
                                  (declare (not safe))
                                  (##car _e118834118852_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl118832118857_))
                               (___kont128673128674_
                                _hd118833118855_
                                _hd118797119336_)
                               (let ()
                                 (declare (not safe))
                                 (_g118792118839_)))))
                       (let () (declare (not safe)) (_g118792118839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl118796119338_))
                                                       (let ((_e118834118852_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl118796119338_))))
                 (let ((_tl118832118857_
                        (let () (declare (not safe)) (##cdr _e118834118852_)))
                       (_hd118833118855_
                        (let () (declare (not safe)) (##car _e118834118852_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl118832118857_))
                       (___kont128673128674_ _hd118833118855_ _hd118797119336_)
                       (let () (declare (not safe)) (_g118792118839_)))))
               (let () (declare (not safe)) (_g118792118839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g118792118839_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest118767118775_))
                             (let ((_hd118772119453_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest118767118775_)))
                                   (_tl118773119455_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest118767118775_))))
                               (let* ((_hd119458_ _hd118772119453_)
                                      (_rest119460_ _tl118773119455_))
                                 (declare (not safe))
                                 (_K118771119450_ _rest119460_ _hd119458_)))
                             (let ()
                               (declare (not safe))
                               (_else118769118783_))))))))
          (let* ((___stx128757128758_ _stx118623_)
                 (_g118629118656_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx128757128758_)))))
            (let ((___kont128759128760_
                   (lambda (_L118716_ _L118717_ _L118718_)
                     (let ((__tmp129198
                            (lambda ()
                              (let ((_hd118755_
                                     (let ((__tmp129199
                                            (let ((__tmp129200
                                                   (lambda (_g118747118750_
                                                            _g118748118752_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g118747118750_
                                                             _g118748118752_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp129200
                                                      '()
                                                      _L118717_))))
                                       (declare (not safe))
                                       (_compile-bindings118626_ __tmp129199)))
                                    (_body118756_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__0 _L118716_))))
                                (let ((__tmp129201
                                       (let ((__tmp129202
                                              (let ((__tmp129203
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body118756_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd118755_
                                                      __tmp129203))))
                                         (declare (not safe))
                                         (cons _L118718_ __tmp129202))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp129201
                                   _stx118623_)))))
                           (__tmp129197
                            (let ((__obj128822
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj128822)
                              __obj128822)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp129198
                        gx#current-expander-context
                        __tmp129197))))
                  (___kont128763128764_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _stx118623_)))))
              (let ((___match128784128785_
                     (lambda (_e118636118668_
                              _hd118635118671_
                              _tl118634118673_
                              _e118639118676_
                              _hd118638118679_
                              _tl118637118681_
                              ___splice128761128762_
                              _target118640118684_
                              _tl118642118686_)
                       (letrec ((_loop118643118689_
                                 (lambda (_hd118641118692_ _bind118647118694_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd118641118692_))
                                       (let ((_e118644118697_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd118641118692_))))
                                         (let ((_lp-tl118646118702_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e118644118697_)))
                                               (_lp-hd118645118700_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e118644118697_))))
                                           (let ((__tmp129206
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd118645118700_
                                                          _bind118647118694_))))
                                             (declare (not safe))
                                             (_loop118643118689_
                                              _lp-tl118646118702_
                                              __tmp129206))))
                                       (let ((_bind118648118705_
                                              (reverse _bind118647118694_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl118637118681_))
                                             (let ((_e118651118708_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl118637118681_))))
                                               (let ((_tl118649118713_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e118651118708_)))
                                                     (_hd118650118711_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e118651118708_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl118649118713_))
                                                     (let ((_L118716_
                                                            _hd118650118711_)
                                                           (_L118717_
                                                            _bind118648118705_)
                                                           (_L118718_
                                                            _hd118635118671_))
                                                       (if (let ((__tmp129204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp129205
                                 (lambda (_g118739118742_ _g118740118744_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g118739118742_ _g118740118744_)))))
                            (declare (not safe))
                            (foldr1 __tmp129205 '() _L118717_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp129204))
                   (___kont128759128760_ _L118716_ _L118717_ _L118718_)
                   (___kont128763128764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont128763128764_))))
                                             (___kont128763128764_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop118643118689_ _target118640118684_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx128757128758_))
                    (let ((_e118636118668_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx128757128758_))))
                      (let ((_tl118634118673_
                             (let ()
                               (declare (not safe))
                               (##cdr _e118636118668_)))
                            (_hd118635118671_
                             (let ()
                               (declare (not safe))
                               (##car _e118636118668_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl118634118673_))
                            (let ((_e118639118676_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl118634118673_))))
                              (let ((_tl118637118681_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e118639118676_)))
                                    (_hd118638118679_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e118639118676_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd118638118679_))
                                    (let ((___splice128761128762_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd118638118679_
                                              '0))))
                                      (let ((_tl118642118686_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128761128762_
                                                '1)))
                                            (_target118640118684_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice128761128762_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118642118686_))
                                            (___match128784128785_
                                             _e118636118668_
                                             _hd118635118671_
                                             _tl118634118673_
                                             _e118639118676_
                                             _hd118638118679_
                                             _tl118637118681_
                                             ___splice128761128762_
                                             _target118640118684_
                                             _tl118642118686_)
                                            (___kont128763128764_))))
                                    (___kont128763128764_))))
                            (___kont128763128764_))))
                    (___kont128763128764_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind118541_)
        (let* ((___stx128787128788_ _bind118541_)
               (_g118544118561_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128787128788_)))))
          (let ((___kont128789128790_
                 (lambda (_L118597_ _L118598_)
                   (if (let () (declare (not safe)) (gx#identifier? _L118598_))
                       (let ((_$e118614_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L118597_))))
                         (if _$e118614_
                             _$e118614_
                             (let ((_$e118617_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L118597_))))
                               (if _$e118617_
                                   _$e118617_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L118597_))))))
                       '#f)))
                (___kont128791128792_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128787128788_))
                (let ((_e118550118573_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128787128788_))))
                  (let ((_tl118548118578_
                         (let () (declare (not safe)) (##cdr _e118550118573_)))
                        (_hd118549118576_
                         (let ()
                           (declare (not safe))
                           (##car _e118550118573_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd118549118576_))
                        (let ((_e118553118581_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd118549118576_))))
                          (let ((_tl118551118586_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e118553118581_)))
                                (_hd118552118584_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e118553118581_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl118551118586_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl118548118578_))
                                    (let ((_e118556118589_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl118548118578_))))
                                      (let ((_tl118554118594_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e118556118589_)))
                                            (_hd118555118592_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e118556118589_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl118554118594_))
                                            (___kont128789128790_
                                             _hd118555118592_
                                             _hd118552118584_)
                                            (___kont128791128792_))))
                                    (___kont128791128792_))
                                (___kont128791128792_))))
                        (___kont128791128792_))))
                (___kont128791128792_))))))))
